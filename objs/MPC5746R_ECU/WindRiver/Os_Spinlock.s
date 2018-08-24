#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Spinlock.c"
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
# FUNC(void,OS_CODE) Os_SpinlockInit(void)
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11407:
	.section	.Os_TEXT,,c
#$$ld
.L11403:
	.0byte		.L11401
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_Spinlock.c"
        .d2line         45,20
#$$ld
.L11410:

#$$bf	Os_SpinlockInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		Os_SpinlockInit
	.d2_cfa_start __cie
Os_SpinlockInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(SpinlockIdType, AUTOMATIC) spinlockIdx;
# 
#     /* For some reason, Os_SpinlockStat[0] is always there and it is full of nulls. */
#     for(spinlockIdx = (Os_SpinlockNumber - (SpinlockIdType)1U); spinlockIdx > (SpinlockIdType)0U; spinlockIdx--)
	.d2line		50
	lis		r3,Os_SpinlockNumber@ha
	lhz		r0,Os_SpinlockNumber@l(r3)
	diab.li		r3,65535
	se_add		r0,r3
.Llo1:
	mr		r0,r0		# spinlockIdx=r0 spinlockIdx=r0
.L11345:
	rlwinm		r5,r0,0,16,31		# spinlockIdx=r0
	se_cmpi		r5,0
	bc		0,1,.L11344	# le
#     {
#         Os_SpinlockStat[spinlockIdx].Os_SpinlockDyn->Os_SpinlockLockerProc = NULL_PTR;
	.d2line		52
	diab.li		r6,0
	lis		r3,(Os_SpinlockStat+4)@ha		# spinlockIdx=r3
	e_add16i		r3,r3,(Os_SpinlockStat+4)@l		# spinlockIdx=r3 spinlockIdx=r3
	rlwinm		r5,r0,4,12,27		# spinlockIdx=r0
	lwzux		r4,r3,r5		# spinlockIdx=r3
	stw		r6,0(r4)
#         Os_SpinlockStat[spinlockIdx].Os_SpinlockDyn->Os_SpinlockSuperseded = NULL_PTR;
	.d2line		53
	lis		r3,(Os_SpinlockStat+4)@ha		# spinlockIdx=r3
	e_add16i		r3,r3,(Os_SpinlockStat+4)@l		# spinlockIdx=r3 spinlockIdx=r3
	lwzux		r4,r3,r5		# spinlockIdx=r3
	stw		r6,4(r4)
#       #ifdef OS_MODULE_RESOURCE
#         Os_SpinlockStat[spinlockIdx].Os_SpinlockDyn->Os_ResourceDependency = NULL_PTR;
	.d2line		55
	lis		r3,(Os_SpinlockStat+4)@ha		# spinlockIdx=r3
	e_add16i		r3,r3,(Os_SpinlockStat+4)@l		# spinlockIdx=r3 spinlockIdx=r3
	lwzux		r4,r3,r5		# spinlockIdx=r3
	stw		r6,8(r4)
#       #endif /* OS_MODULE_RESOURCE */
#         OS_PLATFORM_INITIALIZE_SPINLOCK_RESOURCE(OS_CORE_ID_MASTER,
	.d2line		57
	lis		r3,(Os_SpinlockStat+12)@ha		# spinlockIdx=r3
	e_add16i		r3,r3,(Os_SpinlockStat+12)@l		# spinlockIdx=r3 spinlockIdx=r3
	lwzx		r3,r3,r5		# spinlockIdx=r3 spinlockIdx=r3
	stb		r6,0(r3)		# spinlockIdx=r3
#                                                  Os_SpinlockStat[spinlockIdx].Os_SpinlockLockResourceAddress);
#     }
	.d2line		59
	diab.li		r3,65535		# spinlockIdx=r3
	se_add		r0,r3		# spinlockIdx=r0 spinlockIdx=r0 spinlockIdx=r3
	mr		r0,r0		# spinlockIdx=r0 spinlockIdx=r0
	b		.L11345
.L11344:
# }
	.d2line		60
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)		# spinlockIdx=r0
	mtspr		lr,r0		# spinlockIdx=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11411:
	.type		Os_SpinlockInit,@function
	.size		Os_SpinlockInit,.-Os_SpinlockInit
# Number of nodes = 68

# Allocations for Os_SpinlockInit
#	?a4		spinlockIdx
# FUNC(void,OS_CODE) Os_SpinlockFreeOnCore(CONST(CoreIdType,AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         62,20
#$$ld
.L11421:

#$$bf	Os_SpinlockFreeOnCore,interprocedural,rasave,nostackparams
	.globl		Os_SpinlockFreeOnCore
	.d2_cfa_start __cie
Os_SpinlockFreeOnCore:
.Llo3:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# coreId=r31 coreId=r3
	.d2prologue_end
# {
#     VAR(SpinlockIdType, AUTOMATIC) spinlockIdx;
# 
#     /* For some reason, Os_SpinlockStat[0] is always there and it is full of nulls. */
#     for(spinlockIdx = Os_SpinlockNumber - (SpinlockIdType)1U ; spinlockIdx > (SpinlockIdType)0U; spinlockIdx--)
	.d2line		67
	lis		r3,Os_SpinlockNumber@ha
.Llo4:
	lhz		r30,Os_SpinlockNumber@l(r3)
	diab.li		r0,65535
	se_add		r0,r30
.Llo7:
	mr		r30,r0		# spinlockIdx=r30 spinlockIdx=r0
.L11351:
.Llo5:
	rlwinm		r0,r30,0,16,31		# spinlockIdx=r30
.Llo8:
	se_cmpi		r0,0
	bc		0,1,.L11350	# le
#     {
#         if( (Os_SpinlockStat[spinlockIdx].Os_SpinlockDyn->Os_SpinlockLockerProc != NULL_PTR) &&
	.d2line		69
	lis		r3,(Os_SpinlockStat+4)@ha
	e_add16i		r3,r3,(Os_SpinlockStat+4)@l
	rlwinm		r0,r30,4,12,27		# spinlockIdx=r30
	lwzx		r3,r3,r0
	lwz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11355	# eq
	lis		r3,(Os_SpinlockStat+4)@ha
	e_add16i		r3,r3,(Os_SpinlockStat+4)@l
	rlwinm		r0,r30,4,12,27		# spinlockIdx=r30
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lhz		r0,4(r3)
	rlwinm		r3,r31,0,16,31		# coreId=r31
	se_cmp		r0,r3
	bc		0,2,.L11355	# ne
#             (Os_SpinlockStat[spinlockIdx].Os_SpinlockDyn->Os_SpinlockLockerProc->Os_ProcCoreID == coreId))
#         {
#             Os_SpinlockStat[spinlockIdx].Os_SpinlockDyn->Os_SpinlockLockerProc = NULL_PTR;
	.d2line		72
	diab.li		r5,0
	lis		r3,(Os_SpinlockStat+4)@ha
	e_add16i		r3,r3,(Os_SpinlockStat+4)@l
	rlwinm		r0,r30,4,12,27		# spinlockIdx=r30
	lwzux		r4,r3,r0
	stw		r5,0(r4)
#             Os_SpinlockStat[spinlockIdx].Os_SpinlockDyn->Os_SpinlockSuperseded = NULL_PTR;
	.d2line		73
	lis		r3,(Os_SpinlockStat+4)@ha
	e_add16i		r3,r3,(Os_SpinlockStat+4)@l
	lwzux		r4,r3,r0
	stw		r5,4(r4)
#             /* Release spinlock now. */
#             OS_PLATFORM_UNLOCK_SPINLOCK_RESOURCE(coreId, Os_SpinlockStat[spinlockIdx].Os_SpinlockLockResourceAddress);
	.d2line		75
	lis		r3,(Os_SpinlockStat+12)@ha
	e_add16i		r3,r3,(Os_SpinlockStat+12)@l
	lwzx		r3,r3,r0
	bl		Os_Platform_UnlockResource_Byte
.L11355:
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
#     }
	.d2line		81
	diab.li		r0,65535
	se_add		r0,r30		# spinlockIdx=r30
	mr		r30,r0		# spinlockIdx=r30 spinlockIdx=r0
	b		.L11351
.L11350:
# }
	.d2line		82
	.d2epilogue_begin
.Llo6:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11422:
	.type		Os_SpinlockFreeOnCore,@function
	.size		Os_SpinlockFreeOnCore,.-Os_SpinlockFreeOnCore
# Number of nodes = 84

# Allocations for Os_SpinlockFreeOnCore
#	?a4		coreId
#	?a5		spinlockIdx
# FUNC(void,OS_CODE) Os_Spinlock_ReleaseProcSpinlocks(P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) callerProc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         84,20
#$$ld
.L11431:

#$$bf	Os_Spinlock_ReleaseProcSpinlocks,interprocedural,rasave,nostackparams
	.globl		Os_Spinlock_ReleaseProcSpinlocks
	.d2_cfa_start __cie
Os_Spinlock_ReleaseProcSpinlocks:
.Llo9:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# callerProc=r31 callerProc=r3
	.d2prologue_end
# {
#     CONST (CoreIdType, AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		86
	mfspr		r0,286
.Llo13:
	mr		r0,r0		# coreId=r0 coreId=r0
.L11360:
#     while(callerProc->Os_ProcDyn->Os_ProcSpinlock != NULL_PTR)
	.d2line		87
.Llo10:
	lwz		r3,8(r31)		# callerProc=r31
.Llo11:
	lwz		r0,40(r3)
	se_cmpi		r0,0
	bc		1,2,.L11359	# eq
	.section	.Os_TEXT,,c
.L11441:
#     {
#         CONSTP2CONST(struct Os_SpinlockStatType_s, AUTOMATIC, OS_CONST) nextSpinlock =
	.d2line		89
	lwz		r3,8(r31)		# callerProc=r31
	lwz		r4,40(r3)
	lwz		r4,4(r4)
	lwz		r30,4(r4)
.Llo14:
	mr		r30,r30		# nextSpinlock=r30 nextSpinlock=r30
#                 callerProc->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockDyn->Os_SpinlockSuperseded;
#         callerProc->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockDyn->Os_SpinlockLockerProc = NULL_PTR;
	.d2line		91
	diab.li		r0,0
	lwz		r3,40(r3)
	lwz		r3,4(r3)
	stw		r0,0(r3)
#         callerProc->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockDyn->Os_SpinlockSuperseded = NULL_PTR;
	.d2line		92
	lwz		r3,8(r31)		# callerProc=r31
	lwz		r3,40(r3)
	lwz		r3,4(r3)
	stw		r0,4(r3)
#         /* Release spinlock now. */
#         OS_PLATFORM_UNLOCK_SPINLOCK_RESOURCE(coreId, callerProc->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockLockResourceAddress);
	.d2line		94
	lwz		r3,8(r31)		# callerProc=r31
	lwz		r3,40(r3)
	lwz		r3,12(r3)
	bl		Os_Platform_UnlockResource_Byte
#         callerProc->Os_ProcDyn->Os_ProcSpinlock = nextSpinlock;
	.d2line		95
	lwz		r3,8(r31)		# callerProc=r31
	stw		r30,40(r3)		# nextSpinlock=r30
	.section	.Os_TEXT,,c
.L11442:
.Llo15:
	b		.L11360
.L11359:
#     }
# }
	.d2line		97
	.d2epilogue_begin
.Llo12:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11432:
	.type		Os_Spinlock_ReleaseProcSpinlocks,@function
	.size		Os_Spinlock_ReleaseProcSpinlocks,.-Os_Spinlock_ReleaseProcSpinlocks
# Number of nodes = 82

# Allocations for Os_Spinlock_ReleaseProcSpinlocks
#	?a4		callerProc
#	?a5		coreId
#	?a6		nextSpinlock
# FUNC(StatusType,OS_CODE) Os_Spinlock_Err_Stat(CONST(SpinlockIdType,AUTOMATIC) spinlockId,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         99,26
#$$ld
.L11453:

#$$bf	Os_Spinlock_Err_Stat,interprocedural,rasave,nostackparams
	.globl		Os_Spinlock_Err_Stat
	.d2_cfa_start __cie
Os_Spinlock_Err_Stat:
.Llo16:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# spinlockId=r3 spinlockId=r3
	mr		r4,r4		# callerTask=r4 callerTask=r4
	.d2prologue_end
#                                               P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST)  callerTask)
# {
#     VAR(StatusType, AUTOMATIC) retVal;
#     if((spinlockId >= Os_SpinlockNumber) || (spinlockId == INVALID_SPINLOCK))
	.d2line		103
	rlwinm		r0,r3,0,16,31		# spinlockId=r3
	lis		r5,Os_SpinlockNumber@ha
	lhz		r5,Os_SpinlockNumber@l(r5)
	se_cmp		r0,r5
	bc		0,0,.L11369	# ge
	rlwinm		r0,r3,0,16,31		# spinlockId=r3
	se_cmpi		r0,0
	bc		0,2,.L11365	# ne
.L11369:
#     {
#         /* [OS689-01] [OS698-01] [OS707-01] */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ID);
	.d2line		106
.Llo17:
	diab.li		r3,3		# retVal=r3
.Llo24:
	b		.L11366
.L11365:
#     }
#     else if( Os_Access_Denied ==
	.d2line		108
.Llo22:
	lis		r5,(Os_SpinlockStat+8)@ha
	e_add16i		r5,r5,(Os_SpinlockStat+8)@l
.Llo18:
	rlwinm		r3,r3,4,12,27		# spinlockId=r3 spinlockId=r3
	lwzx		r3,r5,r3		# spinlockId=r3
.Llo19:
	lwz		r4,48(r4)		# callerTask=r4 callerTask=r4
	lbz		r4,4(r4)		# callerTask=r4 callerTask=r4
.Llo23:
	bl		Os_Access_Check
.Llo20:
	se_cmpi		r3,1		# spinlockId=r3
#              Os_Access_Check(Os_SpinlockStat[spinlockId].Os_SpinlockAccess,callerTask->Os_ProcOwnerApp->Os_AppId) )
#     {
#         /* [OS448-01-32] [OS448-01-33] [OS448-01-34] [OS692-01] [OS700-01]
#          * [OS710-01]
#          */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);
	.d2line		114
	diab.li		r3,1		# spinlockId=r3
.Llo25:
	isel		r3,r3,r31,2		# retVal=r3 spinlockId=r3 retVal=r31
.L11367:
#     }
#     else
#     {
#         retVal = E_OK;
	.d2line		118
.Llo21:
	diab.li		r0,0
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3
.L11366:
#     }
# 
#     return retVal;
	.d2line		121
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		122
	.d2epilogue_begin
.Llo26:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11454:
	.type		Os_Spinlock_Err_Stat,@function
	.size		Os_Spinlock_Err_Stat,.-Os_Spinlock_Err_Stat
# Number of nodes = 46

# Allocations for Os_Spinlock_Err_Stat
#	?a4		spinlockId
#	?a5		callerTask
#	?a6		retVal
# FUNC(StatusType,OS_CODE) Os_Spinlock_Err_DynUnLock(CONST(SpinlockIdType,AUTOMATIC) spinlockId,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         124,26
#$$ld
.L11466:

#$$bf	Os_Spinlock_Err_DynUnLock,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Os_Spinlock_Err_DynUnLock
	.d2_cfa_start __cie
Os_Spinlock_Err_DynUnLock:
.Llo27:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# spinlockId=r3 spinlockId=r3
	mr		r4,r4		# callerTask=r4 callerTask=r4
	.d2prologue_end
#                                                           P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) callerTask)
# {
#     VAR(StatusType, AUTOMATIC) retVal;
# 
#     if ( callerTask->Os_ProcDyn->Os_ProcSpinlock != NULL_PTR )
	.d2line		129
	lwz		r5,8(r4)		# callerTask=r4
	lwz		r0,40(r5)
	se_cmpi		r0,0
	bc		1,2,.L11375	# eq
#     {
#         if ( callerTask != Os_SpinlockStat[spinlockId].Os_SpinlockDyn->Os_SpinlockLockerProc )
	.d2line		131
	lis		r5,(Os_SpinlockStat+4)@ha
	e_add16i		r5,r5,(Os_SpinlockStat+4)@l
	rlwinm		r0,r3,4,12,27		# spinlockId=r3
	lwzx		r5,r5,r0
	lwz		r0,0(r5)
	se_cmpl		r0,r4		# callerTask=r4
	bc		1,2,.L11376	# eq
#         {
#             retVal = OS_GET_ERRORCODE ( E_OS_SYS_ERROR, E_OS_STATE ); /* [OS699-01] */
	.d2line		133
.Llo28:
	diab.li		r3,7		# retVal=r3
.Llo36:
	b		.L11382
.L11376:
#         }
#         else if ( callerTask->Os_ProcDyn->Os_ProcSpinlock != &Os_SpinlockStat[spinlockId] )
	.d2line		135
.Llo29:
	lwz		r4,8(r4)		# callerTask=r4 callerTask=r4
	lwz		r5,40(r4)		# callerTask=r4
	lis		r4,Os_SpinlockStat@ha		# callerTask=r4
	e_add16i		r4,r4,Os_SpinlockStat@l		# callerTask=r4 callerTask=r4
	rlwinm		r0,r3,4,12,27		# spinlockId=r3
	se_add		r4,r0		# callerTask=r4 callerTask=r4
	se_cmpl		r5,r4		# callerTask=r4
	bc		1,2,.L11378	# eq
#         {
#             retVal = OS_GET_ERRORCODE ( E_OS_SYS_ERROR, E_OS_NOFUNC ); /* [OS701-01] */
	.d2line		137
.Llo30:
	diab.li		r3,5		# retVal=r3
.Llo37:
	b		.L11382
.L11378:
#         }
# 
#         #ifdef OS_MODULE_RESOURCE
#         /* A resource is still occupied within this spinlock. */
#         else if ( Os_SpinlockStat[spinlockId].Os_SpinlockDyn->Os_ResourceDependency != NULL_PTR )
	.d2line		142
.Llo38:
	lis		r4,(Os_SpinlockStat+4)@ha		# callerTask=r4
.Llo33:
	e_add16i		r4,r4,(Os_SpinlockStat+4)@l		# callerTask=r4 callerTask=r4
.Llo31:
	rlwinm		r3,r3,4,12,27		# spinlockId=r3 spinlockId=r3
	lwzx		r3,r4,r3		# spinlockId=r3 callerTask=r4
	lwz		r0,8(r3)		# retVal=r0 spinlockId=r3
.Llo39:
	se_cmpi		r0,0		# retVal=r0
#         {
#             retVal = OS_GET_ERRORCODE ( E_OS_SYS_ERROR, E_OS_RESOURCE ); /* [OS702] */
	.d2line		144
	diab.li		r0,6		# retVal=r0
	isel		r0,r6,r0,2		# retVal=r0 retVal=r6 retVal=r0
.L11380:
#         }
#         #endif
# 
#         else
#         {
#             retVal = E_OK;
	.d2line		150
.Llo32:
	isel		r3,0,r0,2		# retVal=r3 retVal=r0
	b		.L11382
.L11375:
#         }
#     }
#     else
#     {
#         retVal = OS_GET_ERRORCODE ( E_OS_SYS_ERROR, E_OS_STATE ); /* [OS699-01] */
	.d2line		155
.Llo34:
	diab.li		r3,7		# retVal=r3
.L11382:
#     }
# 
#     return retVal;
	.d2line		158
.Llo35:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		159
	.d2epilogue_begin
.Llo40:
	lwz		r0,20(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11467:
	.type		Os_Spinlock_Err_DynUnLock,@function
	.size		Os_Spinlock_Err_DynUnLock,.-Os_Spinlock_Err_DynUnLock
# Number of nodes = 73

# Allocations for Os_Spinlock_Err_DynUnLock
#	?a4		spinlockId
#	?a5		callerTask
#	?a6		retVal
# FUNC(StatusType,OS_CODE) Os_Spinlock_Err_DynLock(CONST(SpinlockIdType,AUTOMATIC) spinlockId,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         162,26
#$$ld
.L11475:

#$$bf	Os_Spinlock_Err_DynLock,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Os_Spinlock_Err_DynLock
	.d2_cfa_start __cie
Os_Spinlock_Err_DynLock:
.Llo41:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# spinlockId=r3 spinlockId=r3
	mr		r4,r4		# callerTask=r4 callerTask=r4
	.d2prologue_end
#                                                         P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) callerTask)
# {
#     VAR(StatusType, AUTOMATIC) retVal = E_OK;
	.d2line		165
	diab.li		r5,0		# retVal=r5
# 
#     /* Check the case when  the resource is already occupied on the same core */
#     CONSTP2CONST (Os_ProcStatType, AUTOMATIC, OS_CONST) spinlockLockerProc =
	.d2line		168
.Llo45:
	lis		r6,(Os_SpinlockStat+4)@ha		# spinlockLockerProc=r6
.Llo47:
	e_add16i		r6,r6,(Os_SpinlockStat+4)@l		# spinlockLockerProc=r6 spinlockLockerProc=r6
	rlwinm		r0,r3,4,12,27		# spinlockId=r3
	lwzx		r6,r6,r0		# spinlockLockerProc=r6 spinlockLockerProc=r6
	lwz		r0,0(r6)		# spinlockLockerProc=r6
	.d2line		170
	mr.		r6,r0		# spinlockLockerProc=?a7 spinlockLockerProc=?a11
#                                                     Os_SpinlockStat[spinlockId].Os_SpinlockDyn->Os_SpinlockLockerProc;
#     if(    (spinlockLockerProc != NULL_PTR)
	bc		1,2,.L11389	# eq
	lhz		r0,4(r6)		# spinlockLockerProc=r6
	lhz		r6,4(r4)		# spinlockLockerProc=r6 callerTask=r4
	se_cmp		r0,r6		# spinlockLockerProc=r6
	bc		0,2,.L11389	# ne
#         && (spinlockLockerProc->Os_ProcCoreID == callerTask->Os_ProcCoreID))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_INTERFERENCE_DEADLOCK);/* [OS690-01] [OS708-01] */
	.d2line		173
.Llo48:
	diab.li		r5,27		# retVal=r5
	b		.L11390
.L11389:
#     }
#     /* Handling cases when the process already occupies a resource*/
#     else if(callerTask->Os_ProcDyn->Os_ProcSpinlock != NULL_PTR)
	.d2line		176
	lwz		r6,8(r4)		# spinlockLockerProc=r6 callerTask=r4
.Llo49:
	lwz		r0,40(r6)		# spinlockLockerProc=r6
	se_cmpi		r0,0
	bc		1,2,.L11390	# eq
#     {
#         if( callerTask->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockChainId !=
	.d2line		178
.Llo50:
	lwz		r6,8(r4)		# spinlockLockerProc=r6 callerTask=r4
.Llo51:
	lwz		r6,40(r6)		# spinlockLockerProc=r6 spinlockLockerProc=r6
	lhz		r7,2(r6)		# spinlockLockerProc=r6
	lis		r6,(Os_SpinlockStat+2)@ha		# spinlockLockerProc=r6
	e_add16i		r6,r6,(Os_SpinlockStat+2)@l		# spinlockLockerProc=r6 spinlockLockerProc=r6
	rlwinm		r0,r3,4,12,27		# spinlockId=r3
	lhzx		r0,r6,r0		# spinlockLockerProc=r6
	se_cmp		r7,r0
	bc		1,2,.L11392	# eq
#             Os_SpinlockStat[spinlockId].Os_SpinlockChainId )
#         {
#             retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_NESTING_DEADLOCK);/* [OS691-01][OS709-01] */
	.d2line		181
.Llo52:
	diab.li		r5,28		# retVal=r5
	b		.L11390
.L11392:
#         }
#         else if(callerTask->Os_ProcDyn->Os_ProcSpinlock->Os_SpinlockId > spinlockId) /* [MCOS1022-Conf-MGC-04] */
	.d2line		183
.Llo42:
	lwz		r4,8(r4)		# callerTask=r4 callerTask=r4
	lwz		r4,40(r4)		# callerTask=r4 callerTask=r4
	lhz		r0,0(r4)		# callerTask=r4
.Llo43:
	rlwinm		r3,r3,0,16,31		# spinlockId=r3 spinlockId=r3
	se_cmp		r0,r3		# spinlockId=r3
#         {
#             /* Chaining issue */
#             retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_NESTING_DEADLOCK);/* [OS691-01][OS709-01] */
	.d2line		186
	diab.li		r3,28		# spinlockId=r3
	isel		r5,r3,r5,1		# retVal=r5 spinlockId=r3 retVal=r5
.L11390:
#         }
#         else
#         {
#             /* Do nothing */
#         }
#     }
#     else
#     {
#         /* Do nothing */
#     }
# 
#     return retVal;
	.d2line		198
.Llo44:
	rlwinm		r3,r5,0,24,31		# spinlockId=r3 retVal=r5
# }
	.d2line		199
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo46:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11476:
	.type		Os_Spinlock_Err_DynLock,@function
	.size		Os_Spinlock_Err_DynLock,.-Os_Spinlock_Err_DynLock
# Number of nodes = 88

# Allocations for Os_Spinlock_Err_DynLock
#	?a4		spinlockId
#	?a5		callerTask
#	?a6		retVal
#	?a7		spinlockLockerProc

# Allocations for module
	.section	.text_vle
	.0byte		.L11485
	.section	.text_vle
#$$ld
.L5:
.L11631:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11623:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11617:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11565:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11553:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11492:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11486:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SpinlockCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11404:
.L11412:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_Spinlock.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_Spinlock.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11401:
	.4byte		.L11402-.L11400
.L11400:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11406-.L11401
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\spinlock\\Os_Spinlock.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11403
	.4byte		.L11404
	.4byte		.L11407
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11413:
	.sleb128	2
	.4byte		.L11409-.L11401
	.byte		"Os_SpinlockInit"
	.byte		0
	.4byte		.L11412
	.uleb128	45
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11410
	.4byte		.L11411
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11414:
	.sleb128	3
	.4byte		.L11412
	.uleb128	47
	.uleb128	36
	.byte		"spinlockIdx"
	.byte		0
	.4byte		.L11415
	.4byte		.L11418
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11409:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11423:
	.sleb128	2
	.4byte		.L11420-.L11401
	.byte		"Os_SpinlockFreeOnCore"
	.byte		0
	.4byte		.L11412
	.uleb128	62
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11421
	.4byte		.L11422
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L11412
	.uleb128	62
	.uleb128	20
	.byte		"coreId"
	.byte		0
	.4byte		.L11424
	.4byte		.L11426
.L11427:
	.sleb128	3
	.4byte		.L11412
	.uleb128	64
	.uleb128	36
	.byte		"spinlockIdx"
	.byte		0
	.4byte		.L11415
	.4byte		.L11428
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11420:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11433:
	.sleb128	2
	.4byte		.L11430-.L11401
	.byte		"Os_Spinlock_ReleaseProcSpinlocks"
	.byte		0
	.4byte		.L11412
	.uleb128	84
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11431
	.4byte		.L11432
	.sleb128	4
	.4byte		.L11412
	.uleb128	84
	.uleb128	20
	.byte		"callerProc"
	.byte		0
	.4byte		.L11434
	.4byte		.L11438
.L11439:
	.sleb128	3
	.4byte		.L11412
	.uleb128	86
	.uleb128	35
	.byte		"coreId"
	.byte		0
	.4byte		.L11424
	.4byte		.L11440
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	5
	.4byte		.L11444
	.4byte		.L11441
	.4byte		.L11442
.L11445:
	.sleb128	3
	.4byte		.L11412
	.uleb128	89
	.uleb128	73
	.byte		"nextSpinlock"
	.byte		0
	.4byte		.L11446
	.4byte		.L11450
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11444:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11430:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11458:
	.sleb128	6
	.4byte		.L11452-.L11401
	.byte		"Os_Spinlock_Err_Stat"
	.byte		0
	.4byte		.L11412
	.uleb128	99
	.uleb128	26
	.4byte		.L11455
	.byte		0x1
	.byte		0x1
	.4byte		.L11453
	.4byte		.L11454
	.sleb128	4
	.4byte		.L11412
	.uleb128	99
	.uleb128	26
	.byte		"spinlockId"
	.byte		0
	.4byte		.L11459
	.4byte		.L11460
	.sleb128	4
	.4byte		.L11412
	.uleb128	99
	.uleb128	26
	.byte		"callerTask"
	.byte		0
	.4byte		.L11434
	.4byte		.L11461
.L11462:
	.sleb128	3
	.4byte		.L11412
	.uleb128	102
	.uleb128	32
	.byte		"retVal"
	.byte		0
	.4byte		.L11455
	.4byte		.L11463
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11452:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11468:
	.sleb128	6
	.4byte		.L11465-.L11401
	.byte		"Os_Spinlock_Err_DynUnLock"
	.byte		0
	.4byte		.L11412
	.uleb128	124
	.uleb128	26
	.4byte		.L11455
	.byte		0x1
	.byte		0x1
	.4byte		.L11466
	.4byte		.L11467
	.sleb128	4
	.4byte		.L11412
	.uleb128	124
	.uleb128	26
	.byte		"spinlockId"
	.byte		0
	.4byte		.L11459
	.4byte		.L11469
	.sleb128	4
	.4byte		.L11412
	.uleb128	124
	.uleb128	26
	.byte		"callerTask"
	.byte		0
	.4byte		.L11434
	.4byte		.L11470
.L11471:
	.sleb128	3
	.4byte		.L11412
	.uleb128	127
	.uleb128	32
	.byte		"retVal"
	.byte		0
	.4byte		.L11455
	.4byte		.L11472
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11465:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11477:
	.sleb128	6
	.4byte		.L11474-.L11401
	.byte		"Os_Spinlock_Err_DynLock"
	.byte		0
	.4byte		.L11412
	.uleb128	162
	.uleb128	26
	.4byte		.L11455
	.byte		0x1
	.byte		0x1
	.4byte		.L11475
	.4byte		.L11476
	.sleb128	4
	.4byte		.L11412
	.uleb128	162
	.uleb128	26
	.byte		"spinlockId"
	.byte		0
	.4byte		.L11459
	.4byte		.L11478
	.sleb128	4
	.4byte		.L11412
	.uleb128	162
	.uleb128	26
	.byte		"callerTask"
	.byte		0
	.4byte		.L11434
	.4byte		.L11479
.L11480:
	.sleb128	3
	.4byte		.L11412
	.uleb128	165
	.uleb128	32
	.byte		"retVal"
	.byte		0
	.4byte		.L11455
	.4byte		.L11481
.L11482:
	.sleb128	3
	.4byte		.L11412
	.uleb128	168
	.uleb128	57
	.byte		"spinlockLockerProc"
	.byte		0
	.4byte		.L11483
	.4byte		.L11484
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11474:
	.section	.debug_info,,n
.L11485:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11486
	.uleb128	73
	.uleb128	45
	.byte		"Os_SpinlockStat"
	.byte		0
	.4byte		.L11487
	.section	.debug_info,,n
.L11491:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11486
	.uleb128	75
	.uleb128	40
	.byte		"Os_SpinlockNumber"
	.byte		0
	.4byte		.L11459
	.section	.debug_info,,n
.L11437:
	.sleb128	8
	.4byte		.L11492
	.uleb128	80
	.uleb128	13
	.4byte		.L11493-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
	.section	.debug_info,,n
.L508:
	.sleb128	9
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11494
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L509:
	.sleb128	9
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11424
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L510:
	.sleb128	9
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11500
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L511:
	.sleb128	9
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11504
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L512:
	.sleb128	9
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11509
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L513:
	.sleb128	9
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L514:
	.sleb128	9
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L515:
	.sleb128	9
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L516:
	.sleb128	9
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L517:
	.sleb128	9
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11520
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L518:
	.sleb128	9
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L519:
	.sleb128	9
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L520:
	.sleb128	9
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11532
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L521:
	.sleb128	9
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L522:
	.sleb128	9
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L523:
	.sleb128	9
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L524:
	.sleb128	9
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L525:
	.sleb128	9
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11493:
.L11547:
	.sleb128	8
	.4byte		.L11553
	.uleb128	612
	.uleb128	1
	.4byte		.L11554-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L747:
	.sleb128	9
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L748:
	.sleb128	9
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L749:
	.sleb128	9
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11554:
.L11508:
	.sleb128	8
	.4byte		.L11492
	.uleb128	80
	.uleb128	13
	.4byte		.L11557-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L506:
	.sleb128	9
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L507:
	.sleb128	9
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11520
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11557:
	.section	.debug_info,,n
.L11503:
	.sleb128	10
	.4byte		.L11492
	.uleb128	80
	.uleb128	13
	.4byte		.L11560-.L2
	.uleb128	56
.L493:
	.sleb128	9
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11561
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L494:
	.sleb128	9
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L495:
	.sleb128	9
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L496:
	.sleb128	9
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L497:
	.sleb128	9
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L498:
	.sleb128	9
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L499:
	.sleb128	9
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L500:
	.sleb128	9
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L501:
	.sleb128	9
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L502:
	.sleb128	9
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L503:
	.sleb128	9
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L504:
	.sleb128	9
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L505:
	.sleb128	9
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11560:
.L11449:
	.sleb128	8
	.4byte		.L11565
	.uleb128	52
	.uleb128	1
	.4byte		.L11566-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L445:
	.sleb128	9
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	9
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L447:
	.sleb128	9
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11567
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L448:
	.sleb128	9
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L449:
	.sleb128	9
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11571
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11566:
.L11570:
	.sleb128	10
	.4byte		.L11565
	.uleb128	52
	.uleb128	1
	.4byte		.L11574-.L2
	.uleb128	12
.L442:
	.sleb128	9
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L443:
	.sleb128	9
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L444:
	.sleb128	9
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11574:
.L11527:
	.sleb128	8
	.4byte		.L11565
	.uleb128	52
	.uleb128	1
	.4byte		.L11575-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L430:
	.sleb128	9
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	9
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L432:
	.sleb128	9
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11494
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L433:
	.sleb128	9
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L434:
	.sleb128	9
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11585
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L435:
	.sleb128	9
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11590
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L436:
	.sleb128	9
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L437:
	.sleb128	9
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L438:
	.sleb128	9
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11603
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L439:
	.sleb128	9
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L440:
	.sleb128	9
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L441:
	.sleb128	9
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11424
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11575:
.L11579:
	.sleb128	10
	.4byte		.L11565
	.uleb128	52
	.uleb128	1
	.4byte		.L11615-.L2
	.uleb128	1
.L429:
	.sleb128	9
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11615:
.L11544:
	.sleb128	10
	.4byte		.L11617
	.uleb128	32
	.uleb128	1
	.4byte		.L11618-.L2
	.uleb128	12
.L426:
	.sleb128	9
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L427:
	.sleb128	9
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11529
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L428:
	.sleb128	9
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11618:
.L11621:
	.sleb128	10
	.4byte		.L11617
	.uleb128	32
	.uleb128	1
	.4byte		.L11622-.L2
	.uleb128	4
.L425:
	.sleb128	9
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11622:
.L11552:
	.sleb128	10
	.4byte		.L11623
	.uleb128	87
	.uleb128	7
	.4byte		.L11624-.L2
	.uleb128	8
.L361:
	.sleb128	9
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L362:
	.sleb128	9
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11624:
	.section	.debug_info,,n
.L11564:
	.sleb128	11
	.4byte		.L11492
	.uleb128	80
	.uleb128	13
	.4byte		.L11628-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11628:
.L11511:
	.sleb128	11
	.4byte		.L11492
	.uleb128	61
	.uleb128	1
	.4byte		.L11629-.L2
	.uleb128	4
	.sleb128	12
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11629:
.L11584:
	.sleb128	11
	.4byte		.L11565
	.uleb128	52
	.uleb128	1
	.4byte		.L11630-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11630:
.L11562:
	.sleb128	11
	.4byte		.L11631
	.uleb128	37
	.uleb128	1
	.4byte		.L11632-.L2
	.uleb128	4
	.sleb128	12
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11632:
	.section	.debug_info,,n
.L11417:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L11416:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L11417
.L11415:
	.sleb128	14
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11416
.L11425:
	.sleb128	14
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11416
	.section	.debug_info,,n
.L11424:
	.sleb128	15
	.4byte		.L11425
.L11436:
	.sleb128	14
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11437
.L11435:
	.sleb128	15
	.4byte		.L11436
	.section	.debug_info,,n
.L11434:
	.sleb128	16
	.4byte		.L11435
.L11448:
	.sleb128	15
	.4byte		.L11449
.L11447:
	.sleb128	16
	.4byte		.L11448
.L11446:
	.sleb128	15
	.4byte		.L11447
.L11457:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11456:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L11457
.L11455:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11456
.L11459:
	.sleb128	15
	.4byte		.L11415
.L11483:
	.sleb128	15
	.4byte		.L11434
.L11490:
	.sleb128	14
	.byte		"Os_SpinlockStatType"
	.byte		0
	.4byte		.L11449
.L11489:
	.sleb128	15
	.4byte		.L11490
	.section	.debug_info,,n
.L11487:
	.sleb128	17
	.4byte		.L11488-.L2
	.4byte		.L11489
	.section	.debug_info,,n
	.sleb128	18
	.sleb128	0
.L11488:
.L11499:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11498:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L11499
.L11497:
	.sleb128	14
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11498
.L11496:
	.sleb128	14
	.byte		"ProcType"
	.byte		0
	.4byte		.L11497
.L11495:
	.sleb128	14
	.byte		"TaskType"
	.byte		0
	.4byte		.L11496
.L11494:
	.sleb128	15
	.4byte		.L11495
.L11502:
	.sleb128	14
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11503
.L11501:
	.sleb128	16
	.4byte		.L11502
.L11500:
	.sleb128	15
	.4byte		.L11501
.L11507:
	.sleb128	14
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11508
.L11506:
	.sleb128	15
	.4byte		.L11507
.L11505:
	.sleb128	16
	.4byte		.L11506
.L11504:
	.sleb128	15
	.4byte		.L11505
.L11510:
	.sleb128	14
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11511
.L11509:
	.sleb128	15
	.4byte		.L11510
.L11515:
	.sleb128	13
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11514:
	.sleb128	14
	.byte		"uint64"
	.byte		0
	.4byte		.L11515
.L11513:
	.sleb128	14
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11514
.L11512:
	.sleb128	15
	.4byte		.L11513
.L11517:
	.sleb128	14
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11498
.L11516:
	.sleb128	15
	.4byte		.L11517
.L11519:
	.sleb128	14
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11498
.L11518:
	.sleb128	15
	.4byte		.L11519
.L11522:
	.sleb128	14
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11498
.L11521:
	.sleb128	16
	.4byte		.L11522
.L11520:
	.sleb128	15
	.4byte		.L11521
.L11526:
	.sleb128	14
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11527
.L11525:
	.sleb128	15
	.4byte		.L11526
.L11524:
	.sleb128	16
	.4byte		.L11525
.L11523:
	.sleb128	15
	.4byte		.L11524
.L11531:
	.sleb128	14
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11498
.L11530:
	.sleb128	15
	.4byte		.L11531
.L11529:
	.sleb128	16
	.4byte		.L11530
.L11528:
	.sleb128	15
	.4byte		.L11529
	.section	.debug_info,,n
.L11535:
	.sleb128	19
	.4byte		.L11536-.L2
	.byte		0x1
	.sleb128	0
.L11536:
.L11534:
	.sleb128	16
	.4byte		.L11535
.L11533:
	.sleb128	14
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11534
.L11532:
	.sleb128	15
	.4byte		.L11533
.L11538:
	.sleb128	14
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11498
.L11537:
	.sleb128	15
	.4byte		.L11538
.L11543:
	.sleb128	14
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11544
.L11542:
	.sleb128	15
	.4byte		.L11543
.L11541:
	.sleb128	16
	.4byte		.L11542
.L11540:
	.sleb128	14
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11541
.L11539:
	.sleb128	16
	.4byte		.L11540
.L11546:
	.sleb128	16
	.4byte		.L11547
.L11545:
	.sleb128	15
	.4byte		.L11546
.L11551:
	.sleb128	14
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11552
.L11550:
	.sleb128	15
	.4byte		.L11551
.L11549:
	.sleb128	16
	.4byte		.L11550
.L11548:
	.sleb128	15
	.4byte		.L11549
.L11556:
	.sleb128	15
	.4byte		.L11437
.L11555:
	.sleb128	16
	.4byte		.L11556
.L11559:
	.sleb128	14
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11498
.L11558:
	.sleb128	15
	.4byte		.L11559
.L11561:
	.sleb128	14
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11562
.L11563:
	.sleb128	14
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11564
.L11569:
	.sleb128	14
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11570
.L11568:
	.sleb128	16
	.4byte		.L11569
.L11567:
	.sleb128	15
	.4byte		.L11568
.L11573:
	.sleb128	14
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11456
.L11572:
	.sleb128	16
	.4byte		.L11573
.L11571:
	.sleb128	15
	.4byte		.L11572
.L11578:
	.sleb128	14
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11579
.L11577:
	.sleb128	16
	.4byte		.L11578
.L11576:
	.sleb128	15
	.4byte		.L11577
.L11581:
	.sleb128	14
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11456
.L11580:
	.sleb128	15
	.4byte		.L11581
.L11583:
	.sleb128	14
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11584
.L11582:
	.sleb128	15
	.4byte		.L11583
.L11588:
	.sleb128	19
	.4byte		.L11589-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L11455
	.sleb128	0
.L11589:
.L11587:
	.sleb128	16
	.4byte		.L11588
.L11586:
	.sleb128	14
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11587
.L11585:
	.sleb128	15
	.4byte		.L11586
.L11593:
	.sleb128	19
	.4byte		.L11594-.L2
	.byte		0x1
	.sleb128	0
.L11594:
.L11592:
	.sleb128	16
	.4byte		.L11593
.L11591:
	.sleb128	14
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11592
.L11590:
	.sleb128	15
	.4byte		.L11591
.L11598:
	.sleb128	19
	.4byte		.L11599-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L11455
	.sleb128	0
.L11599:
.L11597:
	.sleb128	16
	.4byte		.L11598
.L11596:
	.sleb128	14
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11597
.L11595:
	.sleb128	15
	.4byte		.L11596
.L11602:
	.sleb128	15
	.4byte		.L11496
.L11601:
	.sleb128	16
	.4byte		.L11602
.L11600:
	.sleb128	15
	.4byte		.L11601
.L11606:
	.sleb128	14
	.byte		"CounterType"
	.byte		0
	.4byte		.L11498
.L11605:
	.sleb128	15
	.4byte		.L11606
.L11604:
	.sleb128	16
	.4byte		.L11605
.L11603:
	.sleb128	15
	.4byte		.L11604
.L11610:
	.sleb128	14
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11497
.L11609:
	.sleb128	15
	.4byte		.L11610
.L11608:
	.sleb128	16
	.4byte		.L11609
.L11607:
	.sleb128	15
	.4byte		.L11608
.L11614:
	.sleb128	14
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11498
.L11613:
	.sleb128	15
	.4byte		.L11614
.L11612:
	.sleb128	16
	.4byte		.L11613
.L11611:
	.sleb128	15
	.4byte		.L11612
.L11616:
	.sleb128	14
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11456
.L11620:
	.sleb128	14
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11621
.L11619:
	.sleb128	16
	.4byte		.L11620
.L11625:
	.sleb128	15
	.4byte		.L11498
.L11627:
	.sleb128	14
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11416
.L11626:
	.sleb128	15
	.4byte		.L11627
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11406:
	.sleb128	0
.L11402:

	.section	.debug_loc,,n
	.align	0
.L11418:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),0
	.d2locend
.L11426:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L11428:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo6),30
	.d2locend
.L11438:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locend
.L11440:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo10),0
	.d2locend
.L11450:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),30
	.d2locend
.L11460:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L11461:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo23),4
	.d2locend
.L11463:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L11469:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locend
.L11470:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo30),4
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo32),4
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),4
	.d2locend
.L11472:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo40),3
	.d2locend
.L11478:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locend
.L11479:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo44),4
	.d2locend
.L11481:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),5
	.d2locend
.L11484:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),6
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),6
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),6
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Spinlock_Err_DynLock"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Spinlock_Err_DynUnLock"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Spinlock_Err_Stat"
	.wrcm.nstrlist "calls", "Os_Access_Check"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Spinlock_ReleaseProcSpinlocks"
	.wrcm.nstrlist "calls", "Os_Platform_UnlockResource_Byte"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SpinlockFreeOnCore"
	.wrcm.nstrlist "calls", "Os_Platform_UnlockResource_Byte"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SpinlockInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Spinlock.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Spinlock.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Spinlock.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Spinlock.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Spinlock.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Spinlock.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\spinlock\Os_Spinlock.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
