#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinSM.c"
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
# FUNC(NetworkHandleType, LINSM_CODE) LinSM_GetChannelIndex
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM.c"
        .d2line         80,37
#$$ld
.L563:

#$$bf	LinSM_GetChannelIndex,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		LinSM_GetChannelIndex
	.d2_cfa_start __cie
LinSM_GetChannelIndex:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Network=r0 Network=r3
	.d2prologue_end
# (
#   CONST(NetworkHandleType, AUTOMATIC) Network
# )
# {
#     /* Variable to return the LinIf channel index */
#     VAR(NetworkHandleType, AUTOMATIC) ChannelIndex = LINSM_INVALID_CHANNEL;
	.d2line		86
	diab.li		r3,255		# ChannelIndex=r3
#     /* Variable to iterate the loop */
#     VAR(NetworkHandleType, AUTOMATIC) ChannelIterator;
# 
#     for(ChannelIterator = 0U; ChannelIterator < LinSM_NoOfChannel; ChannelIterator++)
	.d2line		90
.Llo2:
	diab.li		r4,0		# ChannelIterator=r4
.L506:
.Llo3:
	rlwinm		r6,r4,0,24,31		# ChannelIterator=r4
.Llo5:
	lis		r5,LinSM_NoOfChannel@ha
	lbz		r5,LinSM_NoOfChannel@l(r5)
	se_cmp		r6,r5
	bc		0,0,.L510	# ge
#     {
#         if(Network == LinSM_ChannelMap_p[ChannelIterator])
	.d2line		92
	rlwinm		r7,r0,0,24,31		# Network=r0
	lis		r5,LinSM_ChannelMap_p@ha
	lwz		r5,LinSM_ChannelMap_p@l(r5)
	rlwinm		r6,r4,0,24,31		# ChannelIterator=r4
	lbzx		r5,r5,r6
	se_cmp		r7,r5
	bc		0,2,.L509	# ne
#         {
#             ChannelIndex = ChannelIterator;
	.d2line		94
	mr		r3,r4		# ChannelIndex=r3 ChannelIndex=r4
	b		.L510
.L509:
#             break;
#         }
#     }
	.d2line		97
	diab.addi		r6,r4,1		# ChannelIterator=r4
	se_addi		r4,1		# ChannelIterator=r4 ChannelIterator=r4
	b		.L506
.L510:
# 
#     /* Return the Lin channel index */
#     return ChannelIndex;
	.d2line		100
.Llo4:
	rlwinm		r3,r3,0,24,31		# ChannelIndex=r3 ChannelIndex=r3
# }/* End of LinSM_GetChannelIndex() */
	.d2line		101
	.d2epilogue_begin
	lwz		r0,20(r1)		# Network=r0
	mtspr		lr,r0		# Network=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L564:
	.type		LinSM_GetChannelIndex,@function
	.size		LinSM_GetChannelIndex,.-LinSM_GetChannelIndex
# Number of nodes = 29

# Allocations for LinSM_GetChannelIndex
#	?a4		Network
#	?a5		ChannelIndex
#	?a6		ChannelIterator
# FUNC(Std_ReturnType, LINSM_CODE) LinSM_SetLinMode
	.align		2
	.section	.text_vle
        .d2line         305,34
#$$ld
.L578:

#$$bf	LinSM_SetLinMode,interprocedural,rasave,nostackparams
	.globl		LinSM_SetLinMode
	.d2_cfa_start __cie
LinSM_SetLinMode:
.Llo6:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel_u8=r31 Channel_u8=r3
	mr		r6,r4		# Mode=r6 Mode=r4
	mr		r30,r5		# EnableTrcvControl=r30 EnableTrcvControl=r5
	.d2prologue_end
# (
#   CONST(NetworkHandleType, AUTOMATIC) Channel_u8,
#   CONST(LinSM_ModeType, AUTOMATIC) Mode,
#   /* PRQA S 3206 1 */ /* A parameter is not used in this function in some pre-compile settings */
#   CONST(boolean, AUTOMATIC) EnableTrcvControl
# )
# {
#     /* Variable to store the mode */
#     VAR(ComM_ModeType, AUTOMATIC) ComMMode;
#     /* PRQA S 3204 1 */ /* The variable could be declared with the 'const' qualifier in some pre-compile settings */
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_OK;
	.d2line		316
	diab.li		r29,0		# retVal=r29
# 
#     switch(Mode)
	.d2line		318
	rlwinm		r6,r6,0,24,31		# Mode=r6 Mode=r6
	se_cmpi		r6,1		# Mode=r6
	bc		1,2,.L549	# eq
.Llo7:
	se_cmpi		r6,2		# Mode=r6
.Llo8:
	bc		1,2,.L542	# eq
.Llo20:
	b		.L548
.L542:
#     {
#         case LINSM_NO_COM:
#             /* Get the mode of ComM_ModeType */
#             ComMMode = COMM_NO_COMMUNICATION;
	.d2line		322
.Llo21:
	diab.li		r0,0
.Llo27:
	stb		r0,8(r1)
#             /* Notify ComM about the state change.Return value not considered as
#              there is nothing to do with it */
#             (void)ComM_BusSM_ModeIndication(LinSM_ChannelMap_p[Channel_u8], &ComMMode);
	.d2line		325
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
	rlwinm		r0,r31,0,24,31		# Channel_u8=r31
	lbzx		r3,r3,r0
	diab.addi		r4,r1,8
.Llo22:
	bl		ComM_BusSM_ModeIndication
# 
#             (void)BswM_LinSM_CurrentState(LinSM_ChannelMap_p[Channel_u8], LINSM_NO_COM);
	.d2line		327
.Llo28:
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
	rlwinm		r0,r31,0,24,31		# Channel_u8=r31
	lbzx		r3,r3,r0
	diab.li		r4,2
	bl		BswM_LinSM_CurrentState
# 
# #if ( STD_ON == LINSM_TRCV_DRIVER_SUPPORTED )
#             if(TRUE == EnableTrcvControl)
	.d2line		330
.Llo29:
	rlwinm		r30,r30,0,24,31		# EnableTrcvControl=r30 EnableTrcvControl=r30
	se_cmpi		r30,1		# EnableTrcvControl=r30
	bc		0,2,.L548	# ne
#             {
#                 /* Get the sleep support status */
#                 switch(LinSM_Channel_p[Channel_u8].LinSM_TransceiverPassiveMode_u8)
	.d2line		333
.Llo30:
	rlwinm		r0,r31,0,24,31		# Channel_u8=r31
	lis		r3,LinSM_Channel_p@ha
	lwz		r3,LinSM_Channel_p@l(r3)
	rlwinm		r4,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	lwz		r6,4(r3)		# Mode=r6
.Llo23:
	se_cmpi		r6,0		# Mode=r6
	bc		1,2,.L544	# eq
	se_cmpi		r6,1		# Mode=r6
	bc		1,2,.L546	# eq
.Llo24:
	b		.L548
.L544:
#                 {
#                     case LINSM_SLEEP:
# 
#                         retVal = LinIf_SetTrcvMode(LinSM_ChannelMap_p[Channel_u8], LINTRCV_TRCV_MODE_SLEEP);
	.d2line		337
.Llo9:
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
.Llo10:
	rlwinm		r31,r31,0,24,31		# Channel_u8=r31 Channel_u8=r31
.Llo11:
	lbzx		r3,r3,r31
	diab.li		r4,2
	bl		LinIf_SetTrcvMode
	mr		r29,r3		# retVal=r29 retVal=r3
	b		.L548
.L546:
#                     break;
#                     case LINSM_STANDBY:
#                         retVal = LinIf_SetTrcvMode(LinSM_ChannelMap_p[Channel_u8], LINTRCV_TRCV_MODE_STANDBY);
	.d2line		340
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
.Llo12:
	rlwinm		r31,r31,0,24,31		# Channel_u8=r31 Channel_u8=r31
.Llo13:
	lbzx		r3,r3,r31
	diab.li		r4,1
	bl		LinIf_SetTrcvMode
	mr		r29,r3		# retVal=r29 retVal=r3
	b		.L548
.L549:
# 
#                     break;
#                     default:
#                     break;
#              }/*PRQA S 2016*/ /*The default state is empty, but it not cause side effect*/
# 
#             }
# #endif
#         break;
#         case LINSM_FULL_COM:
#             /* Get the mode of ComM_ModeType */
#             ComMMode = COMM_FULL_COMMUNICATION;
	.d2line		352
.Llo14:
	diab.li		r0,2
	stb		r0,8(r1)
#             /* Notify ComM about the state change.Return value not considered as
#              there is nothing to do with it */
#             (void)ComM_BusSM_ModeIndication(LinSM_ChannelMap_p[Channel_u8], &ComMMode);
	.d2line		355
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
	rlwinm		r0,r31,0,24,31		# Channel_u8=r31
	lbzx		r3,r3,r0
	diab.addi		r4,r1,8
.Llo25:
	bl		ComM_BusSM_ModeIndication
# 
#             (void)BswM_LinSM_CurrentState(LinSM_ChannelMap_p[Channel_u8], LINSM_FULL_COM);
	.d2line		357
.Llo31:
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
	rlwinm		r0,r31,0,24,31		# Channel_u8=r31
	lbzx		r3,r3,r0
	diab.li		r4,1
	bl		BswM_LinSM_CurrentState
# 
# #if ( STD_ON == LINSM_TRCV_DRIVER_SUPPORTED )
#             if(TRUE == EnableTrcvControl)
	.d2line		360
.Llo32:
	rlwinm		r30,r30,0,24,31		# EnableTrcvControl=r30 EnableTrcvControl=r30
	se_cmpi		r30,1		# EnableTrcvControl=r30
	bc		0,2,.L548	# ne
#             {
#                 /* Get the sleep support status */
#                 if(LINSM_NOT_CONFIGURED != LinSM_Channel_p[Channel_u8].LinSM_TransceiverPassiveMode_u8)
	.d2line		363
.Llo33:
	rlwinm		r0,r31,0,24,31		# Channel_u8=r31
	lis		r3,LinSM_Channel_p@ha
	lwz		r3,LinSM_Channel_p@l(r3)
	rlwinm		r4,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	lwz		r0,4(r3)
	se_cmpi		r0,2
	bc		1,2,.L548	# eq
#                 {
#                     retVal = LinIf_SetTrcvMode(LinSM_ChannelMap_p[Channel_u8], LINTRCV_TRCV_MODE_NORMAL);
	.d2line		365
.Llo15:
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
.Llo16:
	rlwinm		r31,r31,0,24,31		# Channel_u8=r31 Channel_u8=r31
.Llo17:
	lbzx		r3,r3,r31
	diab.li		r4,0
	bl		LinIf_SetTrcvMode
	mr		r29,r3		# retVal=r29 retVal=r3
.L548:
#                 }
#             }
# #endif
#         break;
#         default:
#         break;
# 
#     }  /*PRQA S 2016*/ /*The default state is empty, but it not cause side effect*/
# 
#     return retVal;
	.d2line		375
.Llo18:
	rlwinm		r3,r29,0,24,31		# retVal=r29
# 
# }/* End of LinSM_SetLinMode() */
	.d2line		377
	.d2epilogue_begin
.Llo19:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo34:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo26:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L579:
	.type		LinSM_SetLinMode,@function
	.size		LinSM_SetLinMode,.-LinSM_SetLinMode
# Number of nodes = 130

# Allocations for LinSM_SetLinMode
#	?a4		Channel_u8
#	?a5		Mode
#	?a6		EnableTrcvControl
#	?a7		$$150
#	?a8		$$149
#	SP,8		ComMMode
#	?a9		retVal
# static FUNC(Std_ReturnType, LINSM_CODE) LinSM_ManageLinIfCom
	.align		1
	.section	.text_vle
        .d2line         114,41
#$$ld
.L595:

#$$bf	LinSM_ManageLinIfCom,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinSM_ManageLinIfCom:
.Llo35:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# ChannelIndex=r31 ChannelIndex=r3
	mr		r4,r4		# RqState_u8=r4 RqState_u8=r4
	mr		r5,r5		# SleepSupport_b=r5 SleepSupport_b=r5
	.d2prologue_end
# (
#   CONST(NetworkHandleType, AUTOMATIC) ChannelIndex,
#   CONST(uint8, AUTOMATIC) RqState_u8,
#   CONST(boolean, AUTOMATIC) SleepSupport_b
# )
# {
#     /* Return value of the function */
#     VAR(Std_ReturnType, AUTOMATIC) RetVal = E_OK;
	.d2line		122
	diab.li		r30,0		# RetVal=r30
# 
#     /* Check whether the request is Wakeup/Sleep/ScheduleRq */
#     if ( LINSM_WAKEUP_REQ == RqState_u8 )
	.d2line		125
	rlwinm		r0,r4,0,24,31		# RqState_u8=r4
	se_cmpi		r0,1
	bc		0,2,.L515	# ne
#     {
#         if ( TRUE == SleepSupport_b )
	.d2line		127
.Llo36:
	rlwinm		r5,r5,0,24,31		# SleepSupport_b=r5 SleepSupport_b=r5
.Llo37:
	se_cmpi		r5,1		# SleepSupport_b=r5
	bc		0,2,.L516	# ne
#         {
# #if ( LINSM_ENABLE_CONFIRMATIONS == STD_OFF ) /* [LINSM176] */
#             /* Enter into the critical area */
#             SchM_Enter_LinSM_ExclusiveArea0();
# 
#             /* Set the state of Lin State Manager */
#             LinSM_Interface_p[ChannelIndex].LinSM_CrntMode = LINSM_FULL_COM;
# 
#             /* Exit from the critical area */
#             SchM_Exit_LinSM_ExclusiveArea0();
# 
#             /* Set the Lin mode to Full communication */
#             RetVal = LinSM_SetLinMode(ChannelIndex, LINSM_FULL_COM,TRUE);
# #else
# #if ( STD_ON == LINSM_TRCV_DRIVER_SUPPORTED )
#             /* Get the sleep support status */
#             if(LINSM_NOT_CONFIGURED != LinSM_Channel_p[ChannelIndex].LinSM_TransceiverPassiveMode_u8)
	.d2line		144
.Llo47:
	rlwinm		r4,r31,0,24,31		# RqState_u8=r4 ChannelIndex=r31
.Llo48:
	lis		r3,LinSM_Channel_p@ha
	lwz		r0,LinSM_Channel_p@l(r3)
	rlwinm		r3,r4,4,0,27		# RqState_u8=r4
	se_slwi		r4,2		# RqState_u8=r4 RqState_u8=r4
	subf		r4,r4,r3		# RqState_u8=r4 RqState_u8=r4
	se_add		r4,r0		# RqState_u8=r4 RqState_u8=r4
	lwz		r0,4(r4)		# RqState_u8=r4
	se_cmpi		r0,2
	bc		1,2,.L517	# eq
#             {
#                 RetVal = LinIf_SetTrcvMode(LinSM_ChannelMap_p[ChannelIndex], LINTRCV_TRCV_MODE_NORMAL);
	.d2line		146
.Llo49:
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
	rlwinm		r4,r31,0,24,31		# RqState_u8=r4 ChannelIndex=r31
	lbzx		r3,r3,r4
	diab.li		r4,0		# RqState_u8=r4
	bl		LinIf_SetTrcvMode
	mr		r30,r3		# RetVal=r30 RetVal=r3
.L517:
#             }
# #endif /* LINSM_TRCV_DRIVER_SUPPORTED */
# #endif /* LINSM_ENABLE_CONFIRMATIONS */
#             if (E_OK == RetVal)
	.d2line		150
	rlwinm		r3,r30,0,24,31		# RetVal=r30
	se_cmpi		r3,0
	bc		0,2,.L520	# ne
#             {
#                 /* Call LinIf API for Wakeup process */
#                 RetVal = LinIf_Wakeup(LinSM_ChannelMap_p[ChannelIndex]);  /*[LINSM047]*/
	.d2line		153
.Llo38:
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
.Llo39:
	rlwinm		r31,r31,0,24,31		# ChannelIndex=r31 ChannelIndex=r31
.Llo40:
	lbzx		r3,r3,r31
	bl		LinIf_Wakeup
	mr		r30,r3		# RetVal=r30 RetVal=r3
	b		.L520
.L516:
#             }
#         }
#         else
#         {
#             /* Enter into the critical area */
#             SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		159
.Llo41:
	bl		SchM_Enter_LinSM_ExclusiveArea0
# 
#             /* Set the state of Lin State Manager */
#             LinSM_Interface_p[ChannelIndex].LinSM_CrntMode = LINSM_FULL_COM;
	.d2line		162
	diab.li		r0,1
	lis		r3,LinSM_Interface_p@ha		# ChannelIndex=r3
	lwz		r3,LinSM_Interface_p@l(r3)		# ChannelIndex=r3 ChannelIndex=r3
	rlwinm		r4,r31,3,21,28		# RqState_u8=r4 ChannelIndex=r31
.Llo50:
	se_add		r3,r4		# ChannelIndex=r3 ChannelIndex=r3 RqState_u8=r4
	stb		r0,5(r3)		# ChannelIndex=r3
# 
#             /* Exit from the critical area */
#             SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		165
	bl		SchM_Exit_LinSM_ExclusiveArea0
# 
#             /* Set the Lin mode to Full communication */
#             (void) LinSM_SetLinMode(ChannelIndex, LINSM_FULL_COM, TRUE);
	.d2line		168
.Llo51:
	mr		r3,r31		# ChannelIndex=r3 ChannelIndex=r31
	diab.li		r4,1		# RqState_u8=r4
	diab.li		r5,1		# SleepSupport_b=r5
	bl		LinSM_SetLinMode
	b		.L520
.L515:
# 
#         }
#     }
#     else if ( LINSM_SLEEP_REQ == RqState_u8 )
	.d2line		172
.Llo52:
	rlwinm		r4,r4,0,24,31		# RqState_u8=r4 RqState_u8=r4
	se_cmpi		r4,0		# RqState_u8=r4
	bc		0,2,.L521	# ne
#     {
#         if ( TRUE == SleepSupport_b )
	.d2line		174
.Llo53:
	rlwinm		r5,r5,0,24,31		# SleepSupport_b=r5 SleepSupport_b=r5
	se_cmpi		r5,1		# SleepSupport_b=r5
	bc		0,2,.L522	# ne
#         {
#             /* Call LinIf API for Go-To-Sleep process */
#             RetVal = LinIf_GotoSleep(LinSM_ChannelMap_p[ChannelIndex]);
	.d2line		177
.Llo42:
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
.Llo43:
	rlwinm		r31,r31,0,24,31		# ChannelIndex=r31 ChannelIndex=r31
.Llo44:
	lbzx		r3,r3,r31
	bl		LinIf_GotoSleep
	mr		r30,r3		# RetVal=r30 RetVal=r3
	b		.L520
.L522:
# #if ( LINSM_ENABLE_CONFIRMATIONS == STD_OFF )
#             if (E_OK == RetVal)
#             {
#                 /* Enter into the critical area */
#                 SchM_Enter_LinSM_ExclusiveArea0();
# 
#                 /* Set the state of Lin State Manager */
#                 LinSM_Interface_p[ChannelIndex].LinSM_CrntMode = LINSM_NO_COM;
# 
#                 /* Exit from the critical area */
#                 SchM_Exit_LinSM_ExclusiveArea0();
# 
#                 /* Set the Lin mode to No communication */
#                 (void) LinSM_SetLinMode(ChannelIndex, LINSM_NO_COM,TRUE);
#             }
# #endif
#         }
#         else
#         {
#             /* Enter into the critical area */
#             SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		198
.Llo45:
	bl		SchM_Enter_LinSM_ExclusiveArea0
# 
#             /* Set the state of Lin State Manager */
#             LinSM_Interface_p[ChannelIndex].LinSM_CrntMode = LINSM_NO_COM;
	.d2line		201
	diab.li		r0,2
	lis		r3,LinSM_Interface_p@ha		# ChannelIndex=r3
	lwz		r4,LinSM_Interface_p@l(r3)		# RqState_u8=r4 ChannelIndex=r3
.Llo54:
	rlwinm		r3,r31,3,21,28		# ChannelIndex=r3 ChannelIndex=r31
	se_add		r3,r4		# ChannelIndex=r3 ChannelIndex=r3 RqState_u8=r4
	stb		r0,5(r3)		# ChannelIndex=r3
# 
#             /* Exit from the critical area */
#             SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		204
	bl		SchM_Exit_LinSM_ExclusiveArea0
# 
#             /* Set the Lin mode to No communication */
#             (void) LinSM_SetLinMode(ChannelIndex, LINSM_NO_COM, TRUE);
	.d2line		207
.Llo55:
	mr		r3,r31		# ChannelIndex=r3 ChannelIndex=r31
	diab.li		r4,2		# RqState_u8=r4
	diab.li		r5,1		# SleepSupport_b=r5
	bl		LinSM_SetLinMode
	b		.L520
.L521:
# 
#         }
#     }
#     else
#     {
#         /* Request the LinIf to start communication */
#         RetVal = LinIf_ScheduleRequest (LinSM_ChannelMap_p[ChannelIndex],
	.d2line		214
	lis		r3,LinSM_Interface_p@ha
	lwz		r0,LinSM_Interface_p@l(r3)
	rlwinm		r3,r31,3,21,28		# ChannelIndex=r31
	se_add		r3,r0
	lbz		r4,3(r3)		# RqState_u8=r4
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
	rlwinm		r31,r31,0,24,31		# ChannelIndex=r31 ChannelIndex=r31
.Llo46:
	lbzx		r3,r3,r31
	bl		LinIf_ScheduleRequest
	mr		r30,r3		# RetVal=r30 RetVal=r3
.L520:
#                                        LinSM_Interface_p[ChannelIndex].LinSM_ReqScheduleRef);
# #if ( LINSM_ENABLE_CONFIRMATIONS == STD_OFF )
#         if(E_OK == RetVal)
#         {
#             /* Enter into the critical area */
#             SchM_Enter_LinSM_ExclusiveArea0();
# 
#             /* Set the current Schedule to requested one*/
#             LinSM_Interface_p[ChannelIndex].LinSM_CrntScheduleRef = LinSM_Interface_p[ChannelIndex].LinSM_ReqScheduleRef;
# 
#             /* Exit from the critical area */
#             SchM_Exit_LinSM_ExclusiveArea0();
# 
#             /* Set the Lin mode to No communication */
#             BswM_LinSM_CurrentSchedule(LinSM_ChannelMap_p[ChannelIndex],LinSM_Interface_p[ChannelIndex].LinSM_CrntScheduleRef);
#         }
# #endif
#     }
#     return RetVal;
	.d2line		233
	rlwinm		r3,r30,0,24,31		# ChannelIndex=r3 RetVal=r30
# }/* End of LinSM_ManageLinIfCom() */
	.d2line		234
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo56:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L596:
	.type		LinSM_ManageLinIfCom,@function
	.size		LinSM_ManageLinIfCom,.-LinSM_ManageLinIfCom
# Number of nodes = 145

# Allocations for LinSM_ManageLinIfCom
#	?a4		ChannelIndex
#	?a5		RqState_u8
#	?a6		SleepSupport_b
#	?a7		$$151
#	?a8		RetVal
# static FUNC(void, LINSM_CODE) LinSM_SetTimerForConfirmation
	.align		1
	.section	.text_vle
        .d2line         390,31
#$$ld
.L606:

#$$bf	LinSM_SetTimerForConfirmation,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinSM_SetTimerForConfirmation:
.Llo57:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel_u8=r31 Channel_u8=r3
.Llo58:
	mr		r30,r4		# RqState_u8=r30 RqState_u8=r4
	.d2prologue_end
# (
#   CONST(NetworkHandleType, AUTOMATIC) Channel_u8,
#   CONST(uint8, AUTOMATIC) RqState_u8
# )
# {
#     /* Enter into the critical area */
#     SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		397
.Llo59:
	bl		SchM_Enter_LinSM_ExclusiveArea0
# 
#     /* Check whether the Confirmation Timeout value is not zero */
#     if( 0 < LinSM_Channel_p[Channel_u8].LinSM_ConfirmationTimeout_u16 )
	.d2line		400
.Llo61:
	rlwinm		r5,r31,0,24,31		# Channel_u8=r31
	lis		r3,LinSM_Channel_p@ha
	lwz		r0,LinSM_Channel_p@l(r3)
	rlwinm		r3,r5,4,0,27
	se_slwi		r5,2
	subf		r5,r5,r3
	se_add		r5,r0
	lhz		r0,8(r5)
	se_cmpi		r0,0
	bc		0,1,.L559	# le
#     {
#         /* Set the timer value */
#         LinSM_Interface_p[Channel_u8].LinSM_TimerVal_u16 = \
	.d2line		403
.Llo62:
	rlwinm		r5,r31,0,24,31		# Channel_u8=r31
	lis		r3,LinSM_Channel_p@ha
	lwz		r0,LinSM_Channel_p@l(r3)
	rlwinm		r3,r5,4,0,27
	se_slwi		r5,2
	subf		r5,r5,r3
	se_add		r5,r0
	lhz		r0,8(r5)
	lis		r3,LinSM_Interface_p@ha
	lwz		r4,LinSM_Interface_p@l(r3)
	rlwinm		r3,r31,3,21,28		# Channel_u8=r31
	se_add		r3,r4
	sth		r0,6(r3)
.L559:
#                   LinSM_Channel_p[Channel_u8].LinSM_ConfirmationTimeout_u16;
#     }
# 
#     /* Set the timer flag as true */
#     LinSM_Interface_p[Channel_u8].LinSM_StartTimer_b = TRUE;
	.d2line		408
	diab.li		r0,1
	lis		r3,LinSM_Interface_p@ha
	lwz		r4,LinSM_Interface_p@l(r3)
	rlwinm		r5,r31,3,21,28		# Channel_u8=r31
	add		r31,r4,r5		# Channel_u8=r31
	stb		r0,2(r31)		# Channel_u8=r31
# 
#     /* Set the requested type */
#     LinSM_Interface_p[Channel_u8].LinSM_RequestType_u8 = RqState_u8;
	.d2line		411
	lwz		r0,LinSM_Interface_p@l(r3)
	se_add		r5,r0
	stb		r30,1(r5)		# RqState_u8=r30
# 
#     /* Exit from the critical area */
#     SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		414
	bl		SchM_Exit_LinSM_ExclusiveArea0
# 
# }/* End of LinSM_SetTimerForConfirmation() */
	.d2line		416
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo60:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L607:
	.type		LinSM_SetTimerForConfirmation,@function
	.size		LinSM_SetTimerForConfirmation,.-LinSM_SetTimerForConfirmation
# Number of nodes = 57

# Allocations for LinSM_SetTimerForConfirmation
#	?a4		Channel_u8
#	?a5		RqState_u8
#	?a6		$$153
#	?a7		$$152
# FUNC(Std_ReturnType, LINSM_CODE) LinSM_InterfaceLinIf
	.align		2
	.section	.text_vle
        .d2line         249,34
#$$ld
.L613:

#$$bf	LinSM_InterfaceLinIf,interprocedural,rasave,nostackparams
	.globl		LinSM_InterfaceLinIf
	.d2_cfa_start __cie
LinSM_InterfaceLinIf:
.Llo63:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# NetworkIndex=r31 NetworkIndex=r3
	mr		r30,r4		# RqState_u8=r30 RqState_u8=r4
	.d2prologue_end
# (
#   CONST(NetworkHandleType, AUTOMATIC) NetworkIndex,
#   CONST(uint8, AUTOMATIC) RqState_u8
# )
# {
#     /* Variable for Indication of the confirmation from Lin If */
#     VAR(Std_ReturnType, AUTOMATIC) Return;
#     /* Get the sleep support status */
#     CONST(boolean,AUTOMATIC) SleepSupport_b = LinSM_Channel_p[NetworkIndex].LinSM_SleepSupport_b;
	.d2line		258
.Llo69:
	rlwinm		r0,r31,0,24,31		# NetworkIndex=r31
.Llo70:
	lis		r3,LinSM_Channel_p@ha		# NetworkIndex=r3
	lwz		r3,LinSM_Channel_p@l(r3)		# NetworkIndex=r3 NetworkIndex=r3
	rlwinm		r4,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r4
	lbzx		r28,r3,r0		# SleepSupport_b=r28 NetworkIndex=r3
	mr		r28,r28		# SleepSupport_b=r28 SleepSupport_b=r28
# 
#     /* Send Lin If Request */
#     Return = LinSM_ManageLinIfCom(NetworkIndex, RqState_u8, SleepSupport_b);
	.d2line		261
	mr		r3,r31		# NetworkIndex=r3 NetworkIndex=r31
.Llo64:
	mr		r4,r30		# RqState_u8=r4 RqState_u8=r30
	mr		r5,r28		# SleepSupport_b=r5 SleepSupport_b=r28
	bl		LinSM_ManageLinIfCom
.Llo74:
	mr		r29,r3		# Return=r29 Return=r3
# 
# #if ( LINSM_ENABLE_CONFIRMATIONS == STD_ON )
#     if ( ( TRUE == SleepSupport_b) && ( E_OK == Return ) )
	.d2line		264
	rlwinm		r5,r28,0,24,31		# SleepSupport_b=r5 SleepSupport_b=r28
	se_cmpi		r5,1		# SleepSupport_b=r5
	bc		0,2,.L532	# ne
.Llo65:
	rlwinm		r3,r29,0,24,31		# NetworkIndex=r3 Return=r29
.Llo75:
	se_cmpi		r3,0		# NetworkIndex=r3
	bc		0,2,.L532	# ne
#     {
#         /* Set the timer configurations to wait for LinIf */
#         LinSM_SetTimerForConfirmation(NetworkIndex, RqState_u8);
	.d2line		267
	mr		r3,r31		# NetworkIndex=r3 NetworkIndex=r31
	mr		r4,r30		# RqState_u8=r4 RqState_u8=r30
	bl		LinSM_SetTimerForConfirmation
.L532:
#     }
# 
#     if(( TRUE == SleepSupport_b) && (E_NOT_OK == Return))
	.d2line		270
	rlwinm		r28,r28,0,24,31		# SleepSupport_b=r28 SleepSupport_b=r28
	se_cmpi		r28,1		# SleepSupport_b=r28
	bc		0,2,.L533	# ne
.Llo77:
	rlwinm		r3,r29,0,24,31		# NetworkIndex=r3 Return=r29
	se_cmpi		r3,1		# NetworkIndex=r3
	bc		0,2,.L533	# ne
#     {
#         if(LINSM_SLEEP_REQ == RqState_u8)
	.d2line		272
	rlwinm		r30,r30,0,24,31		# RqState_u8=r30 RqState_u8=r30
	se_cmpi		r30,0		# RqState_u8=r30
	bc		0,2,.L535	# ne
#         {
#             /* Notify the upper layer about the state change, DO NOT set Trcv  */
#             (void) LinSM_SetLinMode(NetworkIndex, LINSM_FULL_COM, FALSE);
	.d2line		275
.Llo71:
	mr		r3,r31		# NetworkIndex=r3 NetworkIndex=r31
	diab.li		r4,1
	diab.li		r5,0		# SleepSupport_b=r5
	bl		LinSM_SetLinMode
	b		.L535
.L533:
#         }
#     }
#     else if((LINSM_SCHDLE_REQ == RqState_u8) && (E_NOT_OK == Return))
	.d2line		278
.Llo72:
	rlwinm		r30,r30,0,24,31		# RqState_u8=r30 RqState_u8=r30
	se_cmpi		r30,2		# RqState_u8=r30
	bc		0,2,.L535	# ne
.Llo73:
	rlwinm		r3,r29,0,24,31		# NetworkIndex=r3 Return=r29
	se_cmpi		r3,1		# NetworkIndex=r3
	bc		0,2,.L535	# ne
#     {
#         BswM_LinSM_CurrentSchedule(LinSM_ChannelMap_p[NetworkIndex],
	.d2line		280
.Llo66:
	lis		r3,LinSM_Interface_p@ha		# NetworkIndex=r3
.Llo67:
	lwz		r0,LinSM_Interface_p@l(r3)		# NetworkIndex=r3
	rlwinm		r3,r31,3,21,28		# NetworkIndex=r3 NetworkIndex=r31
	se_add		r3,r0		# NetworkIndex=r3 NetworkIndex=r3
	lbz		r4,4(r3)		# NetworkIndex=r3
	lis		r3,LinSM_ChannelMap_p@ha		# NetworkIndex=r3
	lwz		r3,LinSM_ChannelMap_p@l(r3)		# NetworkIndex=r3 NetworkIndex=r3
	rlwinm		r31,r31,0,24,31		# NetworkIndex=r31 NetworkIndex=r31
	lbzx		r3,r3,r31		# NetworkIndex=r3 NetworkIndex=r3
.Llo68:
	bl		BswM_LinSM_CurrentSchedule
.L535:
#                                    LinSM_Interface_p[NetworkIndex].LinSM_CrntScheduleRef);
#     }
#     else
#     {
#         /*Do nothing*/
#     }
# #endif /* END LINSM_ENABLE_CONFIRMATIONS */
#     /* Return the function state */
#     return Return;
	.d2line		289
	rlwinm		r3,r29,0,24,31		# NetworkIndex=r3 Return=r29
# }/* End of LinSM_InterfaceLinIf() */
	.d2line		290
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
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
.L614:
	.type		LinSM_InterfaceLinIf,@function
	.size		LinSM_InterfaceLinIf,.-LinSM_InterfaceLinIf
# Number of nodes = 90

# Allocations for LinSM_InterfaceLinIf
#	?a4		NetworkIndex
#	?a5		RqState_u8
#	?a6		$$154
#	?a7		Return
#	?a8		SleepSupport_b

# Allocations for module
	.section	.text_vle
	.0byte		.L622
	.section	.text_vle
#$$ld
.L5:
.L645:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L639:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Types.h"
.L623:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Private.h"
.L565:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM.c"
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
.L569:
	.sleb128	2
	.4byte		.L562-.L2
	.byte		"LinSM_GetChannelIndex"
	.byte		0
	.4byte		.L565
	.uleb128	80
	.uleb128	37
	.4byte		.L566
	.byte		0x1
	.byte		0x1
	.4byte		.L563
	.4byte		.L564
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L565
	.uleb128	80
	.uleb128	37
	.byte		"Network"
	.byte		0
	.4byte		.L570
	.4byte		.L571
	.section	.debug_info,,n
.L572:
	.sleb128	4
	.4byte		.L565
	.uleb128	86
	.uleb128	39
	.byte		"ChannelIndex"
	.byte		0
	.4byte		.L566
	.4byte		.L573
.L574:
	.sleb128	4
	.4byte		.L565
	.uleb128	88
	.uleb128	39
	.byte		"ChannelIterator"
	.byte		0
	.4byte		.L566
	.4byte		.L575
	.section	.debug_info,,n
	.sleb128	0
.L562:
	.section	.debug_info,,n
.L581:
	.sleb128	2
	.4byte		.L577-.L2
	.byte		"LinSM_SetLinMode"
	.byte		0
	.4byte		.L565
	.uleb128	305
	.uleb128	34
	.4byte		.L580
	.byte		0x1
	.byte		0x1
	.4byte		.L578
	.4byte		.L579
	.sleb128	3
	.4byte		.L565
	.uleb128	305
	.uleb128	34
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L570
	.4byte		.L582
	.sleb128	3
	.4byte		.L565
	.uleb128	305
	.uleb128	34
	.byte		"Mode"
	.byte		0
	.4byte		.L583
	.4byte		.L585
	.sleb128	3
	.4byte		.L565
	.uleb128	305
	.uleb128	34
	.byte		"EnableTrcvControl"
	.byte		0
	.4byte		.L586
	.4byte		.L588
	.section	.debug_info,,n
.L589:
	.sleb128	5
	.4byte		.L565
	.uleb128	314
	.uleb128	35
	.byte		"ComMMode"
	.byte		0
	.4byte		.L590
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L591:
	.sleb128	4
	.4byte		.L565
	.uleb128	316
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L580
	.4byte		.L592
	.section	.debug_info,,n
	.sleb128	0
.L577:
	.section	.debug_info,,n
.L597:
	.sleb128	6
	.4byte		.L594-.L2
	.byte		"LinSM_ManageLinIfCom"
	.byte		0
	.4byte		.L565
	.uleb128	114
	.uleb128	41
	.4byte		.L580
	.byte		0x1
	.4byte		.L595
	.4byte		.L596
	.sleb128	3
	.4byte		.L565
	.uleb128	114
	.uleb128	41
	.byte		"ChannelIndex"
	.byte		0
	.4byte		.L570
	.4byte		.L598
	.sleb128	3
	.4byte		.L565
	.uleb128	114
	.uleb128	41
	.byte		"RqState_u8"
	.byte		0
	.4byte		.L599
	.4byte		.L600
	.sleb128	3
	.4byte		.L565
	.uleb128	114
	.uleb128	41
	.byte		"SleepSupport_b"
	.byte		0
	.4byte		.L586
	.4byte		.L601
.L602:
	.sleb128	4
	.4byte		.L565
	.uleb128	122
	.uleb128	36
	.byte		"RetVal"
	.byte		0
	.4byte		.L580
	.4byte		.L603
	.section	.debug_info,,n
	.sleb128	0
.L594:
	.section	.debug_info,,n
.L608:
	.sleb128	7
	.4byte		.L605-.L2
	.byte		"LinSM_SetTimerForConfirmation"
	.byte		0
	.4byte		.L565
	.uleb128	390
	.uleb128	31
	.byte		0x1
	.4byte		.L606
	.4byte		.L607
	.sleb128	3
	.4byte		.L565
	.uleb128	390
	.uleb128	31
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L570
	.4byte		.L609
	.sleb128	3
	.4byte		.L565
	.uleb128	390
	.uleb128	31
	.byte		"RqState_u8"
	.byte		0
	.4byte		.L599
	.4byte		.L610
	.section	.debug_info,,n
	.sleb128	0
.L605:
	.section	.debug_info,,n
.L615:
	.sleb128	2
	.4byte		.L612-.L2
	.byte		"LinSM_InterfaceLinIf"
	.byte		0
	.4byte		.L565
	.uleb128	249
	.uleb128	34
	.4byte		.L580
	.byte		0x1
	.byte		0x1
	.4byte		.L613
	.4byte		.L614
	.sleb128	3
	.4byte		.L565
	.uleb128	249
	.uleb128	34
	.byte		"NetworkIndex"
	.byte		0
	.4byte		.L570
	.4byte		.L616
	.sleb128	3
	.4byte		.L565
	.uleb128	249
	.uleb128	34
	.byte		"RqState_u8"
	.byte		0
	.4byte		.L599
	.4byte		.L617
.L618:
	.sleb128	4
	.4byte		.L565
	.uleb128	256
	.uleb128	36
	.byte		"Return"
	.byte		0
	.4byte		.L580
	.4byte		.L619
.L620:
	.sleb128	4
	.4byte		.L565
	.uleb128	258
	.uleb128	30
	.byte		"SleepSupport_b"
	.byte		0
	.4byte		.L586
	.4byte		.L621
	.section	.debug_info,,n
	.sleb128	0
.L612:
	.section	.debug_info,,n
.L622:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L623
	.uleb128	195
	.uleb128	71
	.byte		"LinSM_Interface_p"
	.byte		0
	.4byte		.L624
	.section	.debug_info,,n
.L628:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L623
	.uleb128	200
	.uleb128	71
	.byte		"LinSM_ChannelMap_p"
	.byte		0
	.4byte		.L629
.L631:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L623
	.uleb128	206
	.uleb128	66
	.byte		"LinSM_Channel_p"
	.byte		0
	.4byte		.L632
.L637:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L623
	.uleb128	232
	.uleb128	46
	.byte		"LinSM_NoOfChannel"
	.byte		0
	.4byte		.L570
	.section	.debug_info,,n
.L638:
	.sleb128	9
	.byte		0x1
	.4byte		.L565
	.uleb128	33
	.uleb128	32
	.byte		"LinSM_InitState"
	.byte		0
	.4byte		.L584
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_InitState
	.0byte		.L638
	.comm		LinSM_InitState,1,0
	.section	.debug_info,,n
.L636:
	.sleb128	10
	.4byte		.L639
	.uleb128	115
	.uleb128	1
	.4byte		.L640-.L2
	.uleb128	12
	.section	.debug_info,,n
.L313:
	.sleb128	11
	.byte		"LinSM_SleepSupport_b"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L314:
	.sleb128	11
	.byte		"LinSM_TransceiverPassiveMode_u8"
	.byte		0
	.4byte		.L641
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L315:
	.sleb128	11
	.byte		"LinSM_ConfirmationTimeout_u16"
	.byte		0
	.4byte		.L643
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L640:
.L627:
	.sleb128	10
	.4byte		.L645
	.uleb128	248
	.uleb128	1
	.4byte		.L646-.L2
	.uleb128	8
.L306:
	.sleb128	11
	.byte		"LinSM_RqConfrmState"
	.byte		0
	.4byte		.L567
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	11
	.byte		"LinSM_RequestType_u8"
	.byte		0
	.4byte		.L567
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L308:
	.sleb128	11
	.byte		"LinSM_StartTimer_b"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L309:
	.sleb128	11
	.byte		"LinSM_ReqScheduleRef"
	.byte		0
	.4byte		.L647
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L310:
	.sleb128	11
	.byte		"LinSM_CrntScheduleRef"
	.byte		0
	.4byte		.L647
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	11
	.byte		"LinSM_CrntMode"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L312:
	.sleb128	11
	.byte		"LinSM_TimerVal_u16"
	.byte		0
	.4byte		.L643
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L646:
	.section	.debug_info,,n
.L642:
	.sleb128	12
	.4byte		.L639
	.uleb128	115
	.uleb128	1
	.4byte		.L648-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"LINSM_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINSM_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINSM_NOT_CONFIGURED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L648:
	.section	.debug_info,,n
.L568:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L567:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L568
.L566:
	.sleb128	15
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L567
	.section	.debug_info,,n
.L570:
	.sleb128	16
	.4byte		.L566
.L580:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L567
.L584:
	.sleb128	15
	.byte		"LinSM_ModeType"
	.byte		0
	.4byte		.L567
.L583:
	.sleb128	16
	.4byte		.L584
.L587:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L568
.L586:
	.sleb128	16
	.4byte		.L587
.L590:
	.sleb128	15
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L567
.L599:
	.sleb128	16
	.4byte		.L567
.L626:
	.sleb128	15
	.byte		"LinSMInterfaceType_t"
	.byte		0
	.4byte		.L627
	.section	.debug_info,,n
.L625:
	.sleb128	17
	.4byte		.L626
.L624:
	.sleb128	16
	.4byte		.L625
.L630:
	.sleb128	17
	.4byte		.L570
.L629:
	.sleb128	16
	.4byte		.L630
.L635:
	.sleb128	15
	.byte		"LinSMChannel"
	.byte		0
	.4byte		.L636
.L634:
	.sleb128	16
	.4byte		.L635
.L633:
	.sleb128	17
	.4byte		.L634
.L632:
	.sleb128	16
	.4byte		.L633
.L641:
	.sleb128	15
	.byte		"LinSM_TrcvPassiveModeType"
	.byte		0
	.4byte		.L642
.L644:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L643:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L644
.L647:
	.sleb128	15
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L567
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L571:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L573:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo3),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo4),4
	.d2locend
.L575:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locend
.L582:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),31
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),31
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),31
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),31
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),31
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L585:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo20),6
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),6
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo25),4
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo26),4
	.d2locend
.L588:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),5
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo21),30
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),5
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),30
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),30
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo26),5
	.d2locend
.L592:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo34),29
	.d2locend
.L598:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),31
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),31
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),31
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),31
	.d2locend
.L600:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo47),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),4
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),4
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),4
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),4
	.d2locend
.L601:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo47),5
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo42),5
	.d2locend
.L603:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo56),30
	.d2locend
.L609:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),31
	.d2locend
.L610:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo61),4
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo60),30
	.d2locend
.L616:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),31
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locend
.L617:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo69),4
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),30
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),30
	.d2locend
.L619:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),29
	.d2locend
.L621:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo77),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinSM_InterfaceLinIf"
	.wrcm.nstrlist "calls", "BswM_LinSM_CurrentSchedule","LinSM_ManageLinIfCom","LinSM_SetLinMode","LinSM_SetTimerForConfirmation"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinSM_SetTimerForConfirmation"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_LinSM_ExclusiveArea0","SchM_Exit_LinSM_ExclusiveArea0"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinSM_ManageLinIfCom"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "LinIf_GotoSleep","LinIf_ScheduleRequest","LinIf_SetTrcvMode","LinIf_Wakeup","LinSM_SetLinMode","SchM_Enter_LinSM_ExclusiveArea0","SchM_Exit_LinSM_ExclusiveArea0"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinSM_SetLinMode"
	.wrcm.nstrlist "calls", "BswM_LinSM_CurrentState","ComM_BusSM_ModeIndication","LinIf_SetTrcvMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinSM_GetChannelIndex"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinSM\ssc\make\..\src\LinSM.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
