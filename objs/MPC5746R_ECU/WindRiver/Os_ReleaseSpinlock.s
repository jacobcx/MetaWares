#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_ReleaseSpinlock.c"
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
# FUNC(StatusType,OS_CODE) ReleaseSpinlock( VAR(SpinlockIdType,AUTOMATIC) spinlockId)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11372:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11368:
	.0byte		.L11366
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_ReleaseSpinlock.c"
        .d2line         53,26
#$$ld
.L11375:

#$$bf	ReleaseSpinlock,interprocedural,rasave,nostackparams
	.globl		ReleaseSpinlock
	.d2_cfa_start __cie
ReleaseSpinlock:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr		# spinlockId=r0
	stw		r0,52(r1)		# spinlockId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# spinlockId=r0 spinlockId=r3
	.d2prologue_end
# {
#     VAR(Os_APICallType, AUTOMATIC) Os_RelaseSpinlockAPI_Call;
#     OS_API_ALLOC(Os_RelaseSpinlockAPI_Call,ReleaseSpinlock);
	.d2line		56
	e_lis		r0,4660		# spinlockId=r0
	e_or2i		r0,22136		# spinlockId=r0
	stw		r0,8(r1)		# spinlockId=r0
	lis		r4,Os_API_ReleaseSpinlock@ha
	e_add16i		r4,r4,Os_API_ReleaseSpinlock@l
	stw		r4,20(r1)
	diab.li		r4,0
	stw		r4,16(r1)
#     Os_RelaseSpinlockAPI_Call.Os_API_Data.Os_API_ReleaseSpinlock.SpinlockId = spinlockId;
	.d2line		57
	sth		r3,24(r1)		# spinlockId=r3
# 
#     OS_SYSCALL(Os_RelaseSpinlockAPI_Call);
	.d2line		59
	diab.addi		r3,r1,8		# spinlockId=r3
.Llo2:
	bl		OS_SYS_CALL
# 
#     return Os_RelaseSpinlockAPI_Call.Os_API_ReturnValue;
	.d2line		61
	lbz		r3,12(r1)		# spinlockId=r3
# }
	.d2line		62
	.d2epilogue_begin
	lwz		r0,52(r1)		# spinlockId=r0
	mtspr		lr,r0		# spinlockId=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11376:
	.type		ReleaseSpinlock,@function
	.size		ReleaseSpinlock,.-ReleaseSpinlock
# Number of nodes = 40

# Allocations for ReleaseSpinlock
#	?a4		spinlockId
#	SP,8		Os_RelaseSpinlockAPI_Call
# FUNC (void, OS_CODE) Os_ReleaseSpinlock ( CONSTP2CONST (Os_ProcStatType, AUTOMATIC, OS_CONST)  callerProc,
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11396:
	.section	.Os_TEXT,,c
#$$ld
.L11392:
	.0byte		.L11390
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_ReleaseSpinlock.c"
        .d2line         124,22
#$$ld
.L11399:

#$$bf	Os_ReleaseSpinlock,interprocedural,rasave,nostackparams
	.globl		Os_ReleaseSpinlock
	.d2_cfa_start __cie
Os_ReleaseSpinlock:
.Llo3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# callerProc=r3 callerProc=r3
	mr		r0,r4		# spinlockId=r0 spinlockId=r4
	.d2prologue_end
#                                           VAR          (SpinlockIdType,  AUTOMATIC)            spinlockId )
# {
#     if ( callerProc->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockDyn->Os_SpinlockSuperseded ==  NULL_PTR )
	.d2line		127
	lwz		r4,8(r3)		# callerProc=r3
.Llo7:
	lwz		r4,40(r4)
	lwz		r4,4(r4)
	lwz		r4,4(r4)
	se_cmpi		r4,0
	bc		0,2,.L11361	# ne
#     {
#         /* [OS696-01] */
#         /* last locked spinlock*/
#         callerProc->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockDyn->Os_SpinlockLockerProc = NULL_PTR;
	.d2line		131
.Llo8:
	diab.li		r5,0
	lwz		r4,8(r3)		# callerProc=r3
	lwz		r4,40(r4)
	lwz		r4,4(r4)
	stw		r5,0(r4)
#         callerProc->Os_ProcDyn->Os_ProcSpinlock = NULL_PTR;
	.d2line		132
	lwz		r3,8(r3)		# callerProc=r3 callerProc=r3
	stw		r5,40(r3)		# callerProc=r3
	b		.L11362
.L11361:
	.section	.Os_TEXT,,c
.L11410:
#     }
#     else
#     {
#         P2CONST (Os_SpinlockStatType, TYPEDEF, OS_CONST) nextSpinlock;
# 
#         nextSpinlock = callerProc->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockDyn->Os_SpinlockSuperseded;
	.d2line		138
	lwz		r4,8(r3)		# callerProc=r3
	lwz		r5,40(r4)		# nextSpinlock=r5
.Llo11:
	lwz		r5,4(r5)		# nextSpinlock=r5 nextSpinlock=r5
	lwz		r5,4(r5)		# nextSpinlock=r5 nextSpinlock=r5
	mr		r5,r5		# nextSpinlock=r5 nextSpinlock=r5
#         callerProc->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockDyn->Os_SpinlockLockerProc = NULL_PTR;
	.d2line		139
	diab.li		r6,0
	lwz		r4,40(r4)
	lwz		r4,4(r4)
	stw		r6,0(r4)
#         callerProc->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockDyn->Os_SpinlockSuperseded = NULL_PTR;
	.d2line		140
	lwz		r4,8(r3)		# callerProc=r3
	lwz		r4,40(r4)
	lwz		r4,4(r4)
	stw		r6,4(r4)
#         callerProc->Os_ProcDyn->Os_ProcSpinlock = nextSpinlock;
	.d2line		141
	lwz		r3,8(r3)		# callerProc=r3 callerProc=r3
	stw		r5,40(r3)		# callerProc=r3 nextSpinlock=r5
	.section	.Os_TEXT,,c
.L11411:
.L11362:
#     }
# 
#     /* Release spinlock now. */
#     OS_PLATFORM_UNLOCK_SPINLOCK_RESOURCE ( OS_GETCOREID(), Os_SpinlockStat[spinlockId].Os_SpinlockLockResourceAddress );
	.d2line		145
.Llo4:
	lis		r3,(Os_SpinlockStat+12)@ha		# callerProc=r3
.Llo5:
	e_add16i		r3,r3,(Os_SpinlockStat+12)@l		# callerProc=r3 callerProc=r3
.Llo9:
	rlwinm		r0,r0,4,12,27		# spinlockId=r0 spinlockId=r0
.Llo10:
	lwzx		r3,r3,r0		# callerProc=r3 callerProc=r3
.Llo6:
	bl		Os_Platform_UnlockResource_Byte
# }
	.d2line		146
	.d2epilogue_begin
	lwz		r0,20(r1)		# spinlockId=r0
	mtspr		lr,r0		# spinlockId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11400:
	.type		Os_ReleaseSpinlock,@function
	.size		Os_ReleaseSpinlock,.-Os_ReleaseSpinlock
# Number of nodes = 103

# Allocations for Os_ReleaseSpinlock
#	?a4		callerProc
#	?a5		spinlockId
#	?a6		nextSpinlock
# OS_API(ReleaseSpinlock)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         75,1
#$$ld
.L11422:

#$$bf	Os_API_ReleaseSpinlock,interprocedural,rasave,nostackparams
	.globl		Os_API_ReleaseSpinlock
	.d2_cfa_start __cie
Os_API_ReleaseSpinlock:
.Llo12:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo18:
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	mr		r30,r4		# callerProc=r30 callerProc=r4
	.d2prologue_end
# {
#     VAR(StatusType, AUTOMATIC) retVal = E_OK;
	.d2line		77
	diab.li		r0,0		# retVal=r0
#     CONST(SpinlockIdType, AUTOMATIC) spinlockId = Os_APICall->Os_API_Data.Os_API_ReleaseSpinlock.SpinlockId;
	.d2line		78
.Llo19:
	lhz		r28,16(r31)		# Os_APICall=r31
.Llo30:
	mr		r28,r28		# spinlockId=r28 spinlockId=r28
#   #if defined(OS_CONFIG_HOOK) || defined(OS_MODULE_ORTISUPPORT) || defined(OS_CONFIG_USEPARAMETERACCESS)
#     CONST(CoreIdType, AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		80
	mfspr		r27,286		# coreId=r27
	mr		r27,r27		# coreId=r27 coreId=r27
#   #endif /* OS_CONFIG_HOOK || OS_MODULE_ORTISUPPORT || OS_CONFIG_USEPARAMETERACCESS */
# 
#     OS_TRACE(ReleaseSpinlock_Entry , coreId);
	.d2line		83
	diab.li		r0,103		# retVal=r0
.Llo20:
	lis		r3,(Os_Core_DynShared+120)@ha
.Llo13:
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	rlwinm		r5,r27,0,16,31		# coreId=r27
	e_mulli		r4,r5,152
.Llo16:
	stbx		r0,r3,r4		# retVal=r0
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     if(OS_HOOKID_NONE != OS_GET_CORE_HOOK_DYN(coreId)->Os_HookID)
	.d2line		87
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	e_mulli		r5,r5,20
	lwzx		r3,r3,r5
	lhz		r0,100(r3)		# retVal=r0
	se_cmpi		r0,1		# retVal=r0
	bc		1,2,.L11348	# eq
#     {
#         /* [OS088-03-324] [OS088-03-325] [OS088-03-326] [OS088-03-327] [OS088-03-328]
#          * [OS088-03-329] [OS088-03-330] [OS088-03-376] [OS088-03-419] [OS088-03-463]
#          * [OS-MGC-0056-39] [OS-MGC-0056-82]
#          */
#         OS_FATAL_ERROR ( E_OS_SYS_CALLEVEL );
	.d2line		93
.Llo14:
	diab.li		r4,53
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# retVal=r0
.Llo21:
	rlwinm		r0,r0,0,16,31		# retVal=r0 retVal=r0
	e_mulli		r0,r0,152		# retVal=r0 retVal=r0
.Llo22:
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11348:
#     }
# 
#   #endif
# 
#     /* List of requirements that are not checked (automatically satisfied):
#      * [OS088-01-195] [OS088-01-196] [OS-MGC-0077]
#      */
# 
#     /* [OS693-01],[OS694]
#      * Do not check the interrupt status and the resource occupation */
#     retVal = Os_Spinlock_Err_Stat(spinlockId,callerProc);
	.d2line		104
	rlwinm		r3,r28,0,16,31		# retVal=r3 spinlockId=r28
	mr		r4,r30		# callerProc=r4 callerProc=r30
	bl		Os_Spinlock_Err_Stat
.Llo23:
	mr		r3,r3		# retVal=r3 retVal=r3
#     retVal = (retVal == E_OK) ? Os_Spinlock_Err_DynUnLock(spinlockId,callerProc):retVal;
	.d2line		105
	rlwinm		r0,r3,0,24,31		# retVal=r0 retVal=r3
	se_cmpi		r0,0		# retVal=r0
	bc		0,2,.L11353	# ne
.Llo24:
	rlwinm		r3,r28,0,16,31		# retVal=r3 spinlockId=r28
	mr		r4,r30		# callerProc=r4 callerProc=r30
	bl		Os_Spinlock_Err_DynUnLock
.Llo25:
	b		.L11354
.L11353:
	mr		r3,r3		# retVal=r3 retVal=r3
.L11354:
	mr		r29,r3		# retVal=r29 retVal=r3
# 
#     /* [OS697-01] [OS697-02] */
#     if ( E_OK == retVal )
	.d2line		108
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11350	# ne
#     {
#         Os_ReleaseSpinlock ( callerProc, spinlockId );
	.d2line		110
.Llo26:
	mr		r3,r30		# callerProc=r3 callerProc=r30
.Llo27:
	mr		r4,r28		# spinlockId=r4 spinlockId=r28
	bl		Os_ReleaseSpinlock
	b		.L11351
.L11350:
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
#         OS_GET_PARAMETER_ERRORCODE(coreId).Os_Err_SpinlockID = spinlockId;
	.d2line		115
	lis		r3,(Os_Core_DynShared+112)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+112)@l		# retVal=r3 retVal=r3
	rlwinm		r5,r27,0,16,31		# coreId=r27
	e_mulli		r5,r5,152
	sthx		r28,r3,r5		# retVal=r3 spinlockId=r28
#       #endif
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_ReleaseSpinlock, callerProc); /* [OS001-302.v1-35] */
	.d2line		117
	rlwinm		r3,r29,0,24,31		# retVal=r3 retVal=r29
	mr		r5,r30		# callerProc=r5 callerProc=r30
	diab.li		r4,26
	bl		Os_Call_ErrorHook
.L11351:
#     }
# 
#     Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		120
.Llo17:
	stb		r29,4(r31)		# Os_APICall=r31 retVal=r29
#     OS_TRACE(ReleaseSpinlock_Exit , coreId);
	.d2line		121
	diab.li		r3,102		# retVal=r3
	lis		r4,(Os_Core_DynShared+120)@ha		# spinlockId=r4
.Llo31:
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l		# spinlockId=r4 spinlockId=r4
.Llo32:
	rlwinm		r27,r27,0,16,31		# coreId=r27 coreId=r27
	e_mulli		r27,r27,152		# coreId=r27 coreId=r27
.Llo33:
	stbx		r3,r4,r27		# spinlockId=r4 retVal=r3
# }
	.d2line		122
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo15:
	lwz		r0,52(r1)		# retVal=r0
.Llo28:
	mtspr		lr,r0		# retVal=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo29:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11423:
	.type		Os_API_ReleaseSpinlock,@function
	.size		Os_API_ReleaseSpinlock,.-Os_API_ReleaseSpinlock
# Number of nodes = 144

# Allocations for Os_API_ReleaseSpinlock
#	?a4		Os_APICall
#	?a5		callerProc
#	?a6		$$2350
#	?a7		retVal
#	?a8		spinlockId
#	?a9		coreId

# Allocations for module
	.section	.text_vle
	.0byte		.L11440
	.section	.text_vle
	.0byte		.L11444
	.section	.Os_BSS,,b
	.0byte		.L11451
	.section	.text_vle
#$$ld
.L5:
.L11934:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L11931:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11929:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11927:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11925:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11910:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11908:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11891:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11871:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11827:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11780:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11777:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11752:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11512:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11456:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11445:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11441:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SpinlockCfgTypes.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11369:
.L11377:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_ReleaseSpinlock.c"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11393:
.L11401:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_ReleaseSpinlock.c"
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
	.uleb128	9
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
	.uleb128	12
	.uleb128	23
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
	.uleb128	17
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	24
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
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
	.uleb128	26
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_ReleaseSpinlock.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11366:
	.4byte		.L11367-.L11365
.L11365:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11371-.L11366
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_ReleaseSpinlock.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11368
	.4byte		.L11369
	.4byte		.L11372
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11381:
	.sleb128	2
	.4byte		.L11374-.L11366
	.byte		"ReleaseSpinlock"
	.byte		0
	.4byte		.L11377
	.uleb128	53
	.uleb128	26
	.4byte		.L11378
	.byte		0x1
	.byte		0x1
	.4byte		.L11375
	.4byte		.L11376
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11377
	.uleb128	53
	.uleb128	26
	.byte		"spinlockId"
	.byte		0
	.4byte		.L11382
	.4byte		.L11385
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11386:
	.sleb128	4
	.4byte		.L11377
	.uleb128	55
	.uleb128	36
	.byte		"Os_RelaseSpinlockAPI_Call"
	.byte		0
	.4byte		.L11387
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11374:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11390:
	.4byte		.L11391-.L11389
.L11389:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11395-.L11390
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_ReleaseSpinlock.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11392
	.4byte		.L11393
	.4byte		.L11396
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11402:
	.sleb128	5
	.4byte		.L11398-.L11390
	.byte		"Os_ReleaseSpinlock"
	.byte		0
	.4byte		.L11401
	.uleb128	124
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11399
	.4byte		.L11400
	.sleb128	3
	.4byte		.L11401
	.uleb128	124
	.uleb128	22
	.byte		"callerProc"
	.byte		0
	.4byte		.L11403
	.4byte		.L11408
	.sleb128	3
	.4byte		.L11401
	.uleb128	124
	.uleb128	22
	.byte		"spinlockId"
	.byte		0
	.4byte		.L11382
	.4byte		.L11409
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11413
	.4byte		.L11410
	.4byte		.L11411
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11414:
	.sleb128	7
	.4byte		.L11401
	.uleb128	136
	.uleb128	58
	.byte		"nextSpinlock"
	.byte		0
	.4byte		.L11415
	.4byte		.L11419
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11413:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11398:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11424:
	.sleb128	5
	.4byte		.L11421-.L11390
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11401
	.uleb128	75
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11422
	.4byte		.L11423
	.sleb128	3
	.4byte		.L11401
	.uleb128	75
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11425
	.4byte		.L11426
	.sleb128	3
	.4byte		.L11401
	.uleb128	75
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11427
	.4byte		.L11430
.L11431:
	.sleb128	7
	.4byte		.L11401
	.uleb128	77
	.uleb128	32
	.byte		"retVal"
	.byte		0
	.4byte		.L11378
	.4byte		.L11432
.L11433:
	.sleb128	7
	.4byte		.L11401
	.uleb128	78
	.uleb128	38
	.byte		"spinlockId"
	.byte		0
	.4byte		.L11434
	.4byte		.L11435
.L11436:
	.sleb128	7
	.4byte		.L11401
	.uleb128	80
	.uleb128	34
	.byte		"coreId"
	.byte		0
	.4byte		.L11437
	.4byte		.L11439
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11421:
	.section	.debug_info,,n
.L11440:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11441
	.uleb128	73
	.uleb128	45
	.byte		"Os_SpinlockStat"
	.byte		0
	.4byte		.L11442
	.section	.debug_info,,n
.L11444:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11445
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11446
	.section	.debug_info,,n
.L11451:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11445
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11452
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11450:
	.sleb128	9
	.4byte		.L11456
	.uleb128	69
	.uleb128	1
	.4byte		.L11457-.L2
	.uleb128	20
	.section	.debug_info,,n
.L783:
	.sleb128	10
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	10
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L785:
	.sleb128	10
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L786:
	.sleb128	10
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11470
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L787:
	.sleb128	10
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11457:
.L11461:
	.sleb128	9
	.4byte		.L11456
	.uleb128	69
	.uleb128	1
	.4byte		.L11484-.L2
	.uleb128	36
.L780:
	.sleb128	10
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11485
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L781:
	.sleb128	10
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11487
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L782:
	.sleb128	10
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11484:
.L11455:
	.sleb128	9
	.4byte		.L11456
	.uleb128	69
	.uleb128	1
	.4byte		.L11493-.L2
	.uleb128	152
.L773:
	.sleb128	10
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11494
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	10
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11493:
.L11465:
	.sleb128	9
	.4byte		.L11456
	.uleb128	69
	.uleb128	1
	.4byte		.L11498-.L2
	.uleb128	104
.L770:
	.sleb128	10
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11499
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L771:
	.sleb128	10
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11501
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L772:
	.sleb128	10
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11503
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11498:
.L11488:
	.sleb128	9
	.4byte		.L11456
	.uleb128	69
	.uleb128	1
	.4byte		.L11505-.L2
	.uleb128	4
.L769:
	.sleb128	10
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11428
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11505:
.L11500:
	.sleb128	9
	.4byte		.L11456
	.uleb128	69
	.uleb128	1
	.4byte		.L11506-.L2
	.uleb128	48
.L761:
	.sleb128	10
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L762:
	.sleb128	10
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L763:
	.sleb128	10
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L764:
	.sleb128	10
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11509
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L765:
	.sleb128	10
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11428
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L766:
	.sleb128	10
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11428
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L767:
	.sleb128	10
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11510
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L768:
	.sleb128	10
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11510
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11506:
	.section	.debug_info,,n
.L11511:
	.sleb128	11
	.4byte		.L11512
	.uleb128	612
	.uleb128	1
	.4byte		.L11513-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L747:
	.sleb128	10
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11428
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L748:
	.sleb128	10
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L749:
	.sleb128	10
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11513:
.L11486:
	.sleb128	9
	.4byte		.L11512
	.uleb128	612
	.uleb128	1
	.4byte		.L11515-.L2
	.uleb128	28
.L740:
	.sleb128	10
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L741:
	.sleb128	10
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L742:
	.sleb128	10
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L743:
	.sleb128	10
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L744:
	.sleb128	10
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L745:
	.sleb128	10
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L746:
	.sleb128	10
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11515:
.L11502:
	.sleb128	9
	.4byte		.L11512
	.uleb128	612
	.uleb128	1
	.4byte		.L11518-.L2
	.uleb128	52
.L734:
	.sleb128	10
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11428
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L735:
	.sleb128	10
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L736:
	.sleb128	10
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L737:
	.sleb128	10
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L738:
	.sleb128	10
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L739:
	.sleb128	10
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11518:
.L11495:
	.sleb128	9
	.4byte		.L11512
	.uleb128	612
	.uleb128	1
	.4byte		.L11529-.L2
	.uleb128	8
.L732:
	.sleb128	10
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	10
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11529:
.L11469:
	.sleb128	11
	.4byte		.L11512
	.uleb128	612
	.uleb128	1
	.4byte		.L11530-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L727:
	.sleb128	10
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11531
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	10
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	10
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11533
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	10
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	10
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11387
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11530:
.L11388:
	.sleb128	11
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11537-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L722:
	.sleb128	10
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	10
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L724:
	.sleb128	10
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L725:
	.sleb128	10
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L726:
	.sleb128	10
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11544
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11537:
	.section	.debug_info,,n
.L11544:
	.sleb128	12
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11545-.L2
	.uleb128	24
.L674:
	.sleb128	10
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L675:
	.sleb128	10
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	10
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L677:
	.sleb128	10
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	10
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11554
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	10
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	10
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	10
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11560
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	10
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	10
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	10
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11566
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	10
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	10
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11570
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	10
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	10
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11574
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	10
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	10
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11578
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	10
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	10
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	10
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11584
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	10
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	10
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11588
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	10
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11590
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	10
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	10
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11594
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	10
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	10
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	10
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	10
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	10
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	10
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	10
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	10
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11610
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	10
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	10
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	10
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	10
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	10
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11620
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	10
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11622
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	10
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	10
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	10
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	10
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	10
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	10
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	10
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	10
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	10
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11545:
.L11641:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11642-.L2
	.uleb128	8
.L672:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L673:
	.sleb128	10
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11642:
.L11639:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11645-.L2
	.uleb128	8
.L670:
	.sleb128	10
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L671:
	.sleb128	10
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11650
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11645:
.L11637:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11656-.L2
	.uleb128	8
.L668:
	.sleb128	10
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11382
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L669:
	.sleb128	10
	.byte		"Success"
	.byte		0
	.4byte		.L11657
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11656:
.L11635:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11660-.L2
	.uleb128	2
.L667:
	.sleb128	10
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11382
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11660:
.L11633:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11661-.L2
	.uleb128	2
.L666:
	.sleb128	10
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11382
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11661:
.L11631:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11662-.L2
	.uleb128	20
.L661:
	.sleb128	10
	.byte		"ProcId"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	10
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	10
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L664:
	.sleb128	10
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L665:
	.sleb128	10
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11662:
.L11629:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11665-.L2
	.uleb128	12
.L658:
	.sleb128	10
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	10
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	10
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11665:
.L11627:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11670-.L2
	.uleb128	12
.L655:
	.sleb128	10
	.byte		"AppID"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	10
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	10
	.byte		"Object"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11670:
.L11625:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11674-.L2
	.uleb128	12
.L652:
	.sleb128	10
	.byte		"AppID"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L653:
	.sleb128	10
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L654:
	.sleb128	10
	.byte		"Object"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11674:
.L11591:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11675-.L2
	.uleb128	4
.L651:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11675:
.L11589:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11677-.L2
	.uleb128	12
.L648:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	10
	.byte		"Start"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	10
	.byte		"Cycle"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11677:
.L11587:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11679-.L2
	.uleb128	12
.L645:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L646:
	.sleb128	10
	.byte		"Increment"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L647:
	.sleb128	10
	.byte		"Cycle"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11679:
.L11585:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11680-.L2
	.uleb128	8
.L643:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	10
	.byte		"TickRef"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11680:
.L11583:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11683-.L2
	.uleb128	8
.L641:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	10
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11683:
.L11623:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11688-.L2
	.uleb128	4
.L640:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11688:
.L11621:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11690-.L2
	.uleb128	8
.L638:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	10
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11690:
.L11619:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11691-.L2
	.uleb128	4
.L637:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11691:
.L11617:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11692-.L2
	.uleb128	8
.L635:
	.sleb128	10
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	10
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11692:
.L11615:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11693-.L2
	.uleb128	8
.L633:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	10
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11693:
.L11613:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11698-.L2
	.uleb128	4
.L632:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11698:
.L11611:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11699-.L2
	.uleb128	8
.L630:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	10
	.byte		"Offset"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11699:
.L11609:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11700-.L2
	.uleb128	8
.L628:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	10
	.byte		"Start"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11700:
.L11607:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11701-.L2
	.uleb128	12
.L625:
	.sleb128	10
	.byte		"CounterId"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	10
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	10
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11701:
.L11605:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11703-.L2
	.uleb128	12
.L622:
	.sleb128	10
	.byte		"CounterId"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L623:
	.sleb128	10
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L624:
	.sleb128	10
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11703:
.L11603:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11708-.L2
	.uleb128	4
.L621:
	.sleb128	10
	.byte		"CounterId"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11708:
.L11599:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11709-.L2
	.uleb128	4
.L620:
	.sleb128	10
	.byte		"ISRId"
	.byte		0
	.4byte		.L11533
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11709:
.L11595:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11710-.L2
	.uleb128	2
.L618:
	.sleb128	10
	.byte		"Application"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	10
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11710:
.L11597:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11712-.L2
	.uleb128	1
.L617:
	.sleb128	10
	.byte		"Application"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11712:
.L11593:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11713-.L2
	.uleb128	8
.L615:
	.sleb128	10
	.byte		"Application"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L616:
	.sleb128	10
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11713:
.L11577:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11717-.L2
	.uleb128	8
.L614:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11717:
.L11575:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11721-.L2
	.uleb128	24
.L611:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L613:
	.sleb128	10
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11722
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11721:
.L11573:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11724-.L2
	.uleb128	8
.L610:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11724:
.L11571:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11725-.L2
	.uleb128	16
.L608:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L609:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11725:
.L11569:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11726-.L2
	.uleb128	8
.L606:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L607:
	.sleb128	10
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11726:
.L11567:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11731-.L2
	.uleb128	4
.L605:
	.sleb128	10
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11732
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11731:
.L11565:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11734-.L2
	.uleb128	4
.L604:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11734:
.L11563:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11735-.L2
	.uleb128	4
.L603:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11735:
.L11581:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11736-.L2
	.uleb128	4
.L602:
	.sleb128	10
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11736:
.L11579:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11738-.L2
	.uleb128	4
.L601:
	.sleb128	10
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11738:
.L11601:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11739-.L2
	.uleb128	4
.L600:
	.sleb128	10
	.byte		"AppMode"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11739:
.L11561:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11741-.L2
	.uleb128	2
.L599:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11741:
.L11555:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11742-.L2
	.uleb128	2
.L598:
	.sleb128	10
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11742:
.L11553:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11743-.L2
	.uleb128	1
.L597:
	.sleb128	10
	.byte		"Error"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11743:
.L11551:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11744-.L2
	.uleb128	8
.L595:
	.sleb128	10
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	10
	.byte		"Error"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11744:
.L11549:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11747-.L2
	.uleb128	1
.L594:
	.sleb128	10
	.byte		"Error"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11747:
.L11559:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11748-.L2
	.uleb128	8
.L592:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L593:
	.sleb128	10
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11748:
.L11557:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11750-.L2
	.uleb128	8
.L590:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L591:
	.sleb128	10
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11750:
.L11547:
	.sleb128	9
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11751-.L2
	.uleb128	4
.L589:
	.sleb128	10
	.byte		"AppMode"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11751:
.L11649:
	.sleb128	9
	.4byte		.L11752
	.uleb128	33
	.uleb128	14
	.4byte		.L11753-.L2
	.uleb128	24
.L582:
	.sleb128	10
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L583:
	.sleb128	10
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L584:
	.sleb128	10
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L585:
	.sleb128	10
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L586:
	.sleb128	10
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L587:
	.sleb128	10
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L588:
	.sleb128	10
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11753:
.L11767:
	.sleb128	9
	.4byte		.L11752
	.uleb128	33
	.uleb128	14
	.4byte		.L11771-.L2
	.uleb128	4
.L578:
	.sleb128	10
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	10
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11771:
.L11757:
	.sleb128	9
	.4byte		.L11752
	.uleb128	33
	.uleb128	14
	.4byte		.L11776-.L2
	.uleb128	6
.L575:
	.sleb128	10
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L576:
	.sleb128	10
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L577:
	.sleb128	10
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11776:
.L11504:
	.sleb128	9
	.4byte		.L11777
	.uleb128	34
	.uleb128	14
	.4byte		.L11778-.L2
	.uleb128	2
.L526:
	.sleb128	10
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11778:
.L11407:
	.sleb128	11
	.4byte		.L11780
	.uleb128	80
	.uleb128	13
	.4byte		.L11781-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L508:
	.sleb128	10
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L509:
	.sleb128	10
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L510:
	.sleb128	10
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11783
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L511:
	.sleb128	10
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11787
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L512:
	.sleb128	10
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L513:
	.sleb128	10
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L514:
	.sleb128	10
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L515:
	.sleb128	10
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L516:
	.sleb128	10
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L517:
	.sleb128	10
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L518:
	.sleb128	10
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L519:
	.sleb128	10
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L520:
	.sleb128	10
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11805
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L521:
	.sleb128	10
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L522:
	.sleb128	10
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L523:
	.sleb128	10
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L524:
	.sleb128	10
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L525:
	.sleb128	10
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11781:
.L11791:
	.sleb128	11
	.4byte		.L11780
	.uleb128	80
	.uleb128	13
	.4byte		.L11819-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L506:
	.sleb128	10
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L507:
	.sleb128	10
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11819:
.L11786:
	.sleb128	9
	.4byte		.L11780
	.uleb128	80
	.uleb128	13
	.4byte		.L11822-.L2
	.uleb128	56
.L493:
	.sleb128	10
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L494:
	.sleb128	10
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L495:
	.sleb128	10
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L496:
	.sleb128	10
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L497:
	.sleb128	10
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L498:
	.sleb128	10
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L499:
	.sleb128	10
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L500:
	.sleb128	10
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L501:
	.sleb128	10
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L502:
	.sleb128	10
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L503:
	.sleb128	10
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11509
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L504:
	.sleb128	10
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L505:
	.sleb128	10
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11822:
.L11418:
	.sleb128	11
	.4byte		.L11827
	.uleb128	52
	.uleb128	1
	.4byte		.L11828-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L445:
	.sleb128	10
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	10
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L447:
	.sleb128	10
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L448:
	.sleb128	10
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L449:
	.sleb128	10
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11828:
.L11832:
	.sleb128	9
	.4byte		.L11827
	.uleb128	52
	.uleb128	1
	.4byte		.L11833-.L2
	.uleb128	12
.L442:
	.sleb128	10
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11428
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L443:
	.sleb128	10
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L444:
	.sleb128	10
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11833:
.L11492:
	.sleb128	11
	.4byte		.L11827
	.uleb128	52
	.uleb128	1
	.4byte		.L11834-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L430:
	.sleb128	10
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	10
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11839
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L432:
	.sleb128	10
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L433:
	.sleb128	10
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L434:
	.sleb128	10
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11843
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L435:
	.sleb128	10
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L436:
	.sleb128	10
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11853
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L437:
	.sleb128	10
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L438:
	.sleb128	10
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L439:
	.sleb128	10
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L440:
	.sleb128	10
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L441:
	.sleb128	10
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11834:
.L11838:
	.sleb128	9
	.4byte		.L11827
	.uleb128	52
	.uleb128	1
	.4byte		.L11870-.L2
	.uleb128	1
.L429:
	.sleb128	10
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11870:
.L11816:
	.sleb128	9
	.4byte		.L11871
	.uleb128	32
	.uleb128	1
	.4byte		.L11872-.L2
	.uleb128	12
.L426:
	.sleb128	10
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L427:
	.sleb128	10
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L428:
	.sleb128	10
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11872:
.L11875:
	.sleb128	9
	.4byte		.L11871
	.uleb128	32
	.uleb128	1
	.4byte		.L11876-.L2
	.uleb128	4
.L425:
	.sleb128	10
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11428
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11876:
.L11497:
	.sleb128	9
	.4byte		.L11871
	.uleb128	32
	.uleb128	1
	.4byte		.L11877-.L2
	.uleb128	144
.L420:
	.sleb128	10
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L421:
	.sleb128	10
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11877:
.L11526:
	.sleb128	9
	.4byte		.L11871
	.uleb128	32
	.uleb128	1
	.4byte		.L11882-.L2
	.uleb128	24
.L414:
	.sleb128	10
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	10
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	10
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L417:
	.sleb128	10
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L418:
	.sleb128	10
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L419:
	.sleb128	10
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11882:
.L11881:
	.sleb128	9
	.4byte		.L11871
	.uleb128	32
	.uleb128	1
	.4byte		.L11888-.L2
	.uleb128	20
.L409:
	.sleb128	10
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	10
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L411:
	.sleb128	10
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L412:
	.sleb128	10
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11481
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L413:
	.sleb128	10
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11481
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11888:
.L11879:
	.sleb128	9
	.4byte		.L11891
	.uleb128	174
	.uleb128	1
	.4byte		.L11892-.L2
	.uleb128	120
.L406:
	.sleb128	10
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	10
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11895
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L408:
	.sleb128	10
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11892:
.L11898:
	.sleb128	9
	.4byte		.L11891
	.uleb128	174
	.uleb128	1
	.4byte		.L11899-.L2
	.uleb128	8
.L403:
	.sleb128	10
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11900
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L404:
	.sleb128	10
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L405:
	.sleb128	10
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11899:
.L11896:
	.sleb128	9
	.4byte		.L11891
	.uleb128	174
	.uleb128	1
	.4byte		.L11903-.L2
	.uleb128	104
.L378:
	.sleb128	10
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	10
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	10
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L381:
	.sleb128	10
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L382:
	.sleb128	10
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L383:
	.sleb128	10
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L384:
	.sleb128	10
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L385:
	.sleb128	10
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L386:
	.sleb128	10
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L387:
	.sleb128	10
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L388:
	.sleb128	10
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L389:
	.sleb128	10
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L390:
	.sleb128	10
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L391:
	.sleb128	10
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L392:
	.sleb128	10
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L393:
	.sleb128	10
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11722
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L394:
	.sleb128	10
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L395:
	.sleb128	10
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L396:
	.sleb128	10
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L397:
	.sleb128	10
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11732
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L398:
	.sleb128	10
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L399:
	.sleb128	10
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L400:
	.sleb128	10
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L401:
	.sleb128	10
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11382
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L402:
	.sleb128	10
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11903:
.L11894:
	.sleb128	9
	.4byte		.L11891
	.uleb128	174
	.uleb128	1
	.4byte		.L11905-.L2
	.uleb128	8
.L376:
	.sleb128	10
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	10
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11905:
.L11687:
	.sleb128	9
	.4byte		.L11908
	.uleb128	50
	.uleb128	1
	.4byte		.L11909-.L2
	.uleb128	12
.L373:
	.sleb128	10
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L374:
	.sleb128	10
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L375:
	.sleb128	10
	.byte		"mincycle"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11909:
.L11522:
	.sleb128	9
	.4byte		.L11910
	.uleb128	87
	.uleb128	7
	.4byte		.L11911-.L2
	.uleb128	8
.L361:
	.sleb128	10
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11912
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L362:
	.sleb128	10
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11913
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11911:
	.section	.debug_info,,n
.L11508:
	.sleb128	13
	.4byte		.L11456
	.uleb128	69
	.uleb128	1
	.4byte		.L11915-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11915:
.L11532:
	.sleb128	13
	.4byte		.L11512
	.uleb128	612
	.uleb128	1
	.4byte		.L11916-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L11916:
.L11539:
	.sleb128	13
	.4byte		.L11512
	.uleb128	60
	.uleb128	1
	.4byte		.L11917-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11917:
	.section	.debug_info,,n
.L11669:
	.sleb128	15
	.4byte		.L11752
	.uleb128	33
	.uleb128	14
	.4byte		.L11918-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11918:
.L11824:
	.sleb128	13
	.4byte		.L11780
	.uleb128	80
	.uleb128	13
	.4byte		.L11919-.L2
	.uleb128	4
	.sleb128	14
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11919:
.L11794:
	.sleb128	13
	.4byte		.L11780
	.uleb128	61
	.uleb128	1
	.4byte		.L11920-.L2
	.uleb128	4
	.sleb128	14
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11920:
.L11842:
	.sleb128	13
	.4byte		.L11827
	.uleb128	52
	.uleb128	1
	.4byte		.L11921-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11921:
.L11890:
	.sleb128	13
	.4byte		.L11871
	.uleb128	32
	.uleb128	1
	.4byte		.L11922-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L11922:
.L11907:
	.sleb128	13
	.4byte		.L11891
	.uleb128	174
	.uleb128	1
	.4byte		.L11923-.L2
	.uleb128	4
	.sleb128	14
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	14
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	14
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	14
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	14
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	14
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	14
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	14
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	14
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	14
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	14
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	14
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	14
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	14
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	14
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	14
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	14
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	14
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	14
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	14
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	14
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	14
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	14
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L11923:
.L11902:
	.sleb128	13
	.4byte		.L11891
	.uleb128	86
	.uleb128	1
	.4byte		.L11924-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	14
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	14
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	14
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	14
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	14
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	14
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	14
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	14
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	14
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	14
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	14
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	14
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	14
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	14
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	14
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	14
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	14
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	14
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	14
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	14
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	14
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	14
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	14
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	14
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	14
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	14
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	14
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	14
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	14
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	14
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	14
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	14
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	14
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	14
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	14
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	14
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	14
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	14
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	14
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	14
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	14
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	14
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	14
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	14
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	14
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	14
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L11924:
.L11659:
	.sleb128	13
	.4byte		.L11925
	.uleb128	43
	.uleb128	1
	.4byte		.L11926-.L2
	.uleb128	4
	.sleb128	14
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11926:
.L11730:
	.sleb128	13
	.4byte		.L11927
	.uleb128	37
	.uleb128	1
	.4byte		.L11928-.L2
	.uleb128	4
	.sleb128	14
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11928:
.L11697:
	.sleb128	13
	.4byte		.L11929
	.uleb128	40
	.uleb128	1
	.4byte		.L11930-.L2
	.uleb128	4
	.sleb128	14
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11930:
.L11673:
	.sleb128	13
	.4byte		.L11931
	.uleb128	47
	.uleb128	1
	.4byte		.L11932-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11932:
.L11746:
	.sleb128	13
	.4byte		.L11908
	.uleb128	42
	.uleb128	13
	.4byte		.L11933-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11933:
.L11644:
	.sleb128	13
	.4byte		.L11934
	.uleb128	83
	.uleb128	14
	.4byte		.L11935-.L2
	.uleb128	4
	.sleb128	14
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11935:
	.section	.debug_info,,n
.L11380:
	.sleb128	16
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L11379:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11380
.L11378:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11379
.L11384:
	.sleb128	16
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11383:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11384
.L11382:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11383
.L11387:
	.sleb128	17
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11388
.L11406:
	.sleb128	17
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11407
	.section	.debug_info,,n
.L11405:
	.sleb128	18
	.4byte		.L11406
	.section	.debug_info,,n
.L11404:
	.sleb128	19
	.4byte		.L11405
.L11403:
	.sleb128	18
	.4byte		.L11404
.L11417:
	.sleb128	17
	.byte		"Os_SpinlockStatType"
	.byte		0
	.4byte		.L11418
.L11416:
	.sleb128	18
	.4byte		.L11417
.L11415:
	.sleb128	19
	.4byte		.L11416
.L11425:
	.sleb128	19
	.4byte		.L11388
.L11429:
	.sleb128	18
	.4byte		.L11407
.L11428:
	.sleb128	19
	.4byte		.L11429
.L11427:
	.sleb128	18
	.4byte		.L11428
.L11434:
	.sleb128	18
	.4byte		.L11382
.L11438:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11383
.L11437:
	.sleb128	18
	.4byte		.L11438
	.section	.debug_info,,n
.L11442:
	.sleb128	20
	.4byte		.L11443-.L2
	.4byte		.L11416
	.section	.debug_info,,n
	.sleb128	21
	.sleb128	0
.L11443:
.L11449:
	.sleb128	17
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11450
.L11448:
	.sleb128	18
	.4byte		.L11449
.L11446:
	.sleb128	20
	.4byte		.L11447-.L2
	.4byte		.L11448
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11447:
.L11454:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11455
.L11452:
	.sleb128	20
	.4byte		.L11453-.L2
	.4byte		.L11454
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11453:
.L11460:
	.sleb128	17
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11461
.L11459:
	.sleb128	19
	.4byte		.L11460
.L11458:
	.sleb128	18
	.4byte		.L11459
.L11464:
	.sleb128	17
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11465
.L11463:
	.sleb128	19
	.4byte		.L11464
.L11462:
	.sleb128	18
	.4byte		.L11463
.L11468:
	.sleb128	17
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11469
.L11467:
	.sleb128	19
	.4byte		.L11468
.L11466:
	.sleb128	18
	.4byte		.L11467
	.section	.debug_info,,n
.L11473:
	.sleb128	23
	.4byte		.L11474-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	24
	.4byte		.L11403
	.sleb128	0
.L11474:
.L11472:
	.sleb128	19
	.4byte		.L11473
.L11471:
	.sleb128	17
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11472
.L11470:
	.sleb128	18
	.4byte		.L11471
.L11483:
	.sleb128	16
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11482:
	.sleb128	17
	.byte		"uint32"
	.byte		0
	.4byte		.L11483
.L11481:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11482
.L11480:
	.sleb128	19
	.4byte		.L11481
	.section	.debug_info,,n
.L11478:
	.sleb128	25
	.4byte		.L11479-.L2
	.4byte		.L11480
	.byte		0x1
	.sleb128	24
	.4byte		.L11404
	.sleb128	0
.L11479:
.L11477:
	.sleb128	19
	.4byte		.L11478
.L11476:
	.sleb128	17
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11477
.L11475:
	.sleb128	18
	.4byte		.L11476
.L11485:
	.sleb128	17
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11486
.L11487:
	.sleb128	17
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11488
.L11491:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11492
.L11490:
	.sleb128	18
	.4byte		.L11491
.L11489:
	.sleb128	19
	.4byte		.L11490
.L11494:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11495
.L11496:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11497
.L11499:
	.sleb128	17
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11500
.L11501:
	.sleb128	17
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11502
.L11503:
	.sleb128	17
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11504
.L11507:
	.sleb128	17
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11508
.L11509:
	.sleb128	17
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11482
.L11510:
	.sleb128	17
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11511
.L11514:
	.sleb128	19
	.4byte		.L11511
.L11516:
	.sleb128	17
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11482
.L11517:
	.sleb128	17
	.byte		"boolean"
	.byte		0
	.4byte		.L11380
.L11521:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11522
.L11520:
	.sleb128	18
	.4byte		.L11521
.L11519:
	.sleb128	19
	.4byte		.L11520
.L11525:
	.sleb128	17
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11526
.L11524:
	.sleb128	18
	.4byte		.L11525
.L11523:
	.sleb128	19
	.4byte		.L11524
.L11527:
	.sleb128	20
	.4byte		.L11528-.L2
	.4byte		.L11482
	.sleb128	22
	.uleb128	7
	.sleb128	0
.L11528:
.L11531:
	.sleb128	17
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11532
.L11535:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11482
.L11534:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11535
.L11533:
	.sleb128	17
	.byte		"ISRType"
	.byte		0
	.4byte		.L11534
.L11536:
	.sleb128	19
	.4byte		.L11387
.L11538:
	.sleb128	17
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11539
.L11542:
	.sleb128	23
	.4byte		.L11543-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11425
	.sleb128	24
	.4byte		.L11427
	.sleb128	0
.L11543:
.L11541:
	.sleb128	19
	.4byte		.L11542
.L11540:
	.sleb128	17
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11541
.L11546:
	.sleb128	17
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11547
.L11548:
	.sleb128	17
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11549
.L11550:
	.sleb128	17
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11551
.L11552:
	.sleb128	17
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11553
.L11554:
	.sleb128	17
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11555
.L11556:
	.sleb128	17
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11557
.L11558:
	.sleb128	17
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11559
.L11560:
	.sleb128	17
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11561
.L11562:
	.sleb128	17
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11563
.L11564:
	.sleb128	17
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11565
.L11566:
	.sleb128	17
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11567
.L11568:
	.sleb128	17
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11569
.L11570:
	.sleb128	17
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11571
.L11572:
	.sleb128	17
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11573
.L11574:
	.sleb128	17
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11575
.L11576:
	.sleb128	17
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11577
.L11578:
	.sleb128	17
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11579
.L11580:
	.sleb128	17
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11581
.L11582:
	.sleb128	17
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11583
.L11584:
	.sleb128	17
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11585
.L11586:
	.sleb128	17
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11587
.L11588:
	.sleb128	17
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11589
.L11590:
	.sleb128	17
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11591
.L11592:
	.sleb128	17
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11593
.L11594:
	.sleb128	17
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11595
.L11596:
	.sleb128	17
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11597
.L11598:
	.sleb128	17
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11599
.L11600:
	.sleb128	17
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11601
.L11602:
	.sleb128	17
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11603
.L11604:
	.sleb128	17
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11605
.L11606:
	.sleb128	17
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11607
.L11608:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11609
.L11610:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11611
.L11612:
	.sleb128	17
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11613
.L11614:
	.sleb128	17
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11615
.L11616:
	.sleb128	17
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11617
.L11618:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11619
.L11620:
	.sleb128	17
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11621
.L11622:
	.sleb128	17
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11623
.L11624:
	.sleb128	17
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11625
.L11626:
	.sleb128	17
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11627
.L11628:
	.sleb128	17
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11629
.L11630:
	.sleb128	17
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11631
.L11632:
	.sleb128	17
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11633
.L11634:
	.sleb128	17
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11635
.L11636:
	.sleb128	17
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11637
.L11638:
	.sleb128	17
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11639
.L11640:
	.sleb128	17
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11641
.L11643:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11644
.L11648:
	.sleb128	17
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11649
.L11647:
	.sleb128	18
	.4byte		.L11648
.L11646:
	.sleb128	19
	.4byte		.L11647
	.section	.debug_info,,n
.L11655:
	.sleb128	26
	.byte		"void"
	.byte		0
	.byte		0x0
.L11654:
	.sleb128	19
	.4byte		.L11655
.L11652:
	.sleb128	20
	.4byte		.L11653-.L2
	.4byte		.L11654
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11653:
.L11651:
	.sleb128	17
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11652
.L11650:
	.sleb128	19
	.4byte		.L11651
.L11658:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11659
.L11657:
	.sleb128	19
	.4byte		.L11658
.L11663:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11534
.L11664:
	.sleb128	19
	.4byte		.L11379
.L11666:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11482
.L11667:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11654
.L11668:
	.sleb128	17
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11669
.L11671:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11379
.L11672:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11673
.L11676:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11535
.L11678:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11482
.L11682:
	.sleb128	19
	.4byte		.L11678
.L11681:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11682
.L11686:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11687
.L11685:
	.sleb128	19
	.4byte		.L11686
.L11684:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11685
.L11689:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11482
.L11696:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11697
.L11695:
	.sleb128	19
	.4byte		.L11696
.L11694:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11695
.L11702:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11482
.L11706:
	.sleb128	23
	.4byte		.L11707-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11425
	.sleb128	0
.L11707:
.L11705:
	.sleb128	19
	.4byte		.L11706
.L11704:
	.sleb128	17
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11705
.L11711:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11379
.L11716:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11379
.L11715:
	.sleb128	19
	.4byte		.L11716
.L11714:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11715
.L11720:
	.sleb128	16
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11719:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L11720
.L11718:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11719
.L11723:
	.sleb128	19
	.4byte		.L11718
.L11722:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11723
.L11729:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11730
.L11728:
	.sleb128	19
	.4byte		.L11729
.L11727:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11728
.L11733:
	.sleb128	19
	.4byte		.L11663
.L11732:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11733
.L11737:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11482
.L11740:
	.sleb128	17
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11482
.L11745:
	.sleb128	17
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11746
.L11749:
	.sleb128	19
	.4byte		.L11378
.L11756:
	.sleb128	17
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11757
.L11755:
	.sleb128	19
	.4byte		.L11756
.L11754:
	.sleb128	18
	.4byte		.L11755
.L11758:
	.sleb128	17
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11383
.L11759:
	.sleb128	18
	.4byte		.L11654
.L11760:
	.sleb128	18
	.4byte		.L11383
.L11762:
	.sleb128	17
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11379
.L11761:
	.sleb128	18
	.4byte		.L11762
.L11766:
	.sleb128	17
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11767
.L11765:
	.sleb128	18
	.4byte		.L11766
.L11764:
	.sleb128	19
	.4byte		.L11765
.L11763:
	.sleb128	18
	.4byte		.L11764
.L11770:
	.sleb128	17
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11379
.L11769:
	.sleb128	19
	.4byte		.L11770
.L11768:
	.sleb128	18
	.4byte		.L11769
.L11773:
	.sleb128	17
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11383
.L11772:
	.sleb128	18
	.4byte		.L11773
.L11775:
	.sleb128	17
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11383
.L11774:
	.sleb128	18
	.4byte		.L11775
.L11779:
	.sleb128	17
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11383
.L11782:
	.sleb128	18
	.4byte		.L11663
.L11785:
	.sleb128	17
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11786
.L11784:
	.sleb128	19
	.4byte		.L11785
.L11783:
	.sleb128	18
	.4byte		.L11784
.L11790:
	.sleb128	17
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11791
.L11789:
	.sleb128	18
	.4byte		.L11790
.L11788:
	.sleb128	19
	.4byte		.L11789
.L11787:
	.sleb128	18
	.4byte		.L11788
.L11793:
	.sleb128	17
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11794
.L11792:
	.sleb128	18
	.4byte		.L11793
.L11795:
	.sleb128	18
	.4byte		.L11718
.L11796:
	.sleb128	18
	.4byte		.L11509
.L11798:
	.sleb128	17
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11482
.L11797:
	.sleb128	18
	.4byte		.L11798
.L11799:
	.sleb128	18
	.4byte		.L11480
.L11800:
	.sleb128	18
	.4byte		.L11489
.L11804:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11482
.L11803:
	.sleb128	18
	.4byte		.L11804
.L11802:
	.sleb128	19
	.4byte		.L11803
.L11801:
	.sleb128	18
	.4byte		.L11802
.L11808:
	.sleb128	23
	.4byte		.L11809-.L2
	.byte		0x1
	.sleb128	0
.L11809:
.L11807:
	.sleb128	19
	.4byte		.L11808
.L11806:
	.sleb128	17
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11807
.L11805:
	.sleb128	18
	.4byte		.L11806
.L11810:
	.sleb128	18
	.4byte		.L11737
.L11815:
	.sleb128	17
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11816
.L11814:
	.sleb128	18
	.4byte		.L11815
.L11813:
	.sleb128	19
	.4byte		.L11814
.L11812:
	.sleb128	17
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11813
.L11811:
	.sleb128	19
	.4byte		.L11812
.L11817:
	.sleb128	18
	.4byte		.L11514
.L11818:
	.sleb128	18
	.4byte		.L11519
.L11821:
	.sleb128	17
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11482
.L11820:
	.sleb128	18
	.4byte		.L11821
.L11823:
	.sleb128	17
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11824
.L11826:
	.sleb128	18
	.4byte		.L11418
.L11825:
	.sleb128	19
	.4byte		.L11826
.L11831:
	.sleb128	17
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11832
.L11830:
	.sleb128	19
	.4byte		.L11831
.L11829:
	.sleb128	18
	.4byte		.L11830
.L11837:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11838
.L11836:
	.sleb128	19
	.4byte		.L11837
.L11835:
	.sleb128	18
	.4byte		.L11836
.L11839:
	.sleb128	18
	.4byte		.L11671
.L11841:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11842
.L11840:
	.sleb128	18
	.4byte		.L11841
.L11846:
	.sleb128	23
	.4byte		.L11847-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11378
	.sleb128	0
.L11847:
.L11845:
	.sleb128	19
	.4byte		.L11846
.L11844:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11845
.L11843:
	.sleb128	18
	.4byte		.L11844
.L11851:
	.sleb128	23
	.4byte		.L11852-.L2
	.byte		0x1
	.sleb128	0
.L11852:
.L11850:
	.sleb128	19
	.4byte		.L11851
.L11849:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11850
.L11848:
	.sleb128	18
	.4byte		.L11849
.L11856:
	.sleb128	23
	.4byte		.L11857-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11378
	.sleb128	0
.L11857:
.L11855:
	.sleb128	19
	.4byte		.L11856
.L11854:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11855
.L11853:
	.sleb128	18
	.4byte		.L11854
.L11860:
	.sleb128	18
	.4byte		.L11534
.L11859:
	.sleb128	19
	.4byte		.L11860
.L11858:
	.sleb128	18
	.4byte		.L11859
.L11863:
	.sleb128	18
	.4byte		.L11702
.L11862:
	.sleb128	19
	.4byte		.L11863
.L11861:
	.sleb128	18
	.4byte		.L11862
.L11866:
	.sleb128	18
	.4byte		.L11676
.L11865:
	.sleb128	19
	.4byte		.L11866
.L11864:
	.sleb128	18
	.4byte		.L11865
.L11869:
	.sleb128	18
	.4byte		.L11689
.L11868:
	.sleb128	19
	.4byte		.L11869
.L11867:
	.sleb128	18
	.4byte		.L11868
.L11874:
	.sleb128	17
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11875
.L11873:
	.sleb128	19
	.4byte		.L11874
.L11878:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11879
.L11880:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11881
.L11886:
	.sleb128	23
	.4byte		.L11887-.L2
	.byte		0x1
	.sleb128	0
.L11887:
.L11885:
	.sleb128	19
	.4byte		.L11886
.L11884:
	.sleb128	17
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11885
.L11883:
	.sleb128	18
	.4byte		.L11884
.L11889:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11890
.L11893:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11894
.L11895:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11896
.L11897:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11898
.L11900:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11379
.L11901:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11902
.L11904:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11657
.L11906:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11907
.L11912:
	.sleb128	18
	.4byte		.L11482
.L11914:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11383
.L11913:
	.sleb128	18
	.4byte		.L11914
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11371:
	.sleb128	0
.L11367:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11395:
	.sleb128	0
.L11391:

	.section	.debug_loc,,n
	.align	0
.L11385:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11408:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L11409:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locend
.L11419:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo4),5
	.d2locend
.L11426:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),31
	.d2locend
.L11430:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo16),4
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo17),30
	.d2locend
.L11432:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo15),29
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locend
.L11435:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo17),28
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo29),4
	.d2locend
.L11439:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo17),27
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),27
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_ReleaseSpinlock"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_ReleaseSpinlock","Os_ShutdownAllCores","Os_Spinlock_Err_DynUnLock","Os_Spinlock_Err_Stat"
	.wrcm.end
	.wrcm.nelem "Os_ReleaseSpinlock"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_Platform_UnlockResource_Byte"
	.wrcm.end
	.wrcm.nelem "ReleaseSpinlock"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "OS_SYS_CALL"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ReleaseSpinlock.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ReleaseSpinlock.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ReleaseSpinlock.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ReleaseSpinlock.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ReleaseSpinlock.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ReleaseSpinlock.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\spinlock\Os_ReleaseSpinlock.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
