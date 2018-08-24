#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_CoreLock.c"
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
# FUNC (void, OS_CODE) Os_Core_Lock_PreInit(CONST(CoreIdType, AUTOMATIC) thisCoreId)
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11449:
	.section	.Os_TEXT,,c
#$$ld
.L11445:
	.0byte		.L11443
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_CoreLock.c"
        .d2line         59,22
#$$ld
.L11452:

#$$bf	Os_Core_Lock_PreInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Os_Core_Lock_PreInit
	.d2_cfa_start __cie
Os_Core_Lock_PreInit:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# thisCoreId=r0
	stw		r0,20(r1)		# thisCoreId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# thisCoreId=r0 thisCoreId=r3
	.d2prologue_end
# {
#     OS_PLATFORM_INITIALIZE_CORE_LOCK(thisCoreId, thisCoreId, Os_CoreLockAddresses[thisCoreId]);
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     Os_CoreLockStatus[thisCoreId] = OS_CORE_LOCK_STATUS_UNLOCKED;
	.d2line		63
	diab.li		r4,0
	lis		r3,Os_CoreLockStatus@ha
.Llo2:
	e_add16i		r3,r3,Os_CoreLockStatus@l
.Llo3:
	rlwinm		r0,r0,2,14,29		# thisCoreId=r0 thisCoreId=r0
.Llo4:
	stwx		r4,r3,r0
	sync
#$$ep
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#     OS_PLATFORM_MEMORY_SYNC();
# }
	.d2line		66
	.d2epilogue_begin
	lwz		r0,20(r1)		# thisCoreId=r0
	mtspr		lr,r0		# thisCoreId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11453:
	.type		Os_Core_Lock_PreInit,@function
	.size		Os_Core_Lock_PreInit,.-Os_Core_Lock_PreInit
# Number of nodes = 11

# Allocations for Os_Core_Lock_PreInit
#	?a4		thisCoreId
# FUNC (void, OS_CODE) Os_Core_LockCore(CONST(CoreIdType, AUTOMATIC) thisCoreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         73,22
#$$ld
.L11463:

#$$bf	Os_Core_LockCore,interprocedural,rasave,nostackparams
	.globl		Os_Core_LockCore
	.d2_cfa_start __cie
Os_Core_LockCore:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# thisCoreId=r31 thisCoreId=r3
	.d2prologue_end
# {
#     CONST(Os_MemoryAddressType, AUTOMATIC) thisCoreLockAddress = Os_CoreLockAddresses[thisCoreId];
	.d2line		75
.Llo6:
	lis		r3,Os_CoreLockAddresses@ha
.Llo7:
	e_add16i		r3,r3,Os_CoreLockAddresses@l
	rlwinm		r4,r31,2,14,29		# thisCoreId=r31
	lwzx		r3,r3,r4
.Llo11:
	mr		r3,r3		# thisCoreLockAddress=r3 thisCoreLockAddress=r3
.L11344:
# 
#     OS_PLATFORM_LOCK_CORE(thisCoreId, thisCoreId, thisCoreLockAddress);
	.d2line		77
	mr		r4,r31		# thisCoreId=r4 thisCoreId=r31
	diab.addi		r0,r4,1		# thisCoreId=r0 thisCoreId=r4
	stb		r0,0(r3)		# thisCoreLockAddress=r3 thisCoreId=r0
	mr		r4,r4		# thisCoreId=r4 thisCoreId=r4
	rlwinm		r0,r0,0,24,31		# thisCoreId=r0 thisCoreId=r0
	lbz		r4,0(r3)		# thisCoreId=r4 thisCoreLockAddress=r3
	se_cmp		r0,r4		# thisCoreId=r0 thisCoreId=r4
	bc		0,2,.L11344	# ne
# 
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     OS_ASSERT(OS_CORE_LOCK_STATUS_UNLOCKED == Os_CoreLockStatus[thisCoreId], E_OS_SYS_CORELOCK_LOCKED);
	.d2line		80
.Llo12:
	lis		r3,Os_CoreLockStatus@ha		# thisCoreId=r3
	diab.addi		r3,r3,Os_CoreLockStatus@l		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r4,r31,2,14,29		# thisCoreId=r4 thisCoreId=r31
	se_add		r3,r4		# thisCoreId=r3 thisCoreId=r3 thisCoreId=r4
	lwzx		r0,r0,r3		# thisCoreId=r0 thisCoreId=r0
	se_cmpi		r0,0		# thisCoreId=r0
	bc		1,2,.L11347	# eq
	diab.li		r4,59		# thisCoreId=r4
	lis		r3,(Os_Core_DynShared+12)@ha		# thisCoreId=r3
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# thisCoreId=r3 thisCoreId=r3
	mfspr		r0,286		# thisCoreId=r0
	rlwinm		r0,r0,0,16,31		# thisCoreId=r0 thisCoreId=r0
	e_mulli		r0,r0,152		# thisCoreId=r0 thisCoreId=r0
	stwx		r4,r3,r0		# thisCoreId=r3 thisCoreId=r4
	diab.li		r3,30		# thisCoreId=r3
	bl		Os_ShutdownAllCores
.L11347:
#     Os_CoreLockStatus[thisCoreId] = OS_CORE_LOCK_STATUS_LOCKED;
	.d2line		81
.Llo8:
	diab.li		r0,1		# thisCoreId=r0
.Llo9:
	lis		r3,Os_CoreLockStatus@ha		# thisCoreId=r3
	e_add16i		r3,r3,Os_CoreLockStatus@l		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r31,r31,2,14,29		# thisCoreId=r31 thisCoreId=r31
	stwx		r0,r3,r31		# thisCoreId=r3 thisCoreId=r0
	sync
#$$ep
#     OS_PLATFORM_MEMORY_SYNC();
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
# }
	.d2line		84
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# thisCoreId=r0
.Llo10:
	mtspr		lr,r0		# thisCoreId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11464:
	.type		Os_Core_LockCore,@function
	.size		Os_Core_LockCore,.-Os_Core_LockCore
# Number of nodes = 67

# Allocations for Os_Core_LockCore
#	?a4		thisCoreId
#	?a5		thisCoreLockAddress
# FUNC (void, OS_CODE) Os_Core_UnlockCore(CONST(CoreIdType, AUTOMATIC) thisCoreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         91,22
#$$ld
.L11476:

#$$bf	Os_Core_UnlockCore,interprocedural,rasave,nostackparams
	.globl		Os_Core_UnlockCore
	.d2_cfa_start __cie
Os_Core_UnlockCore:
.Llo13:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# thisCoreId=r31 thisCoreId=r3
	.d2prologue_end
# {
#     CONST(Os_MemoryAddressType, AUTOMATIC) thisCoreLockAddress = Os_CoreLockAddresses[thisCoreId];
	.d2line		93
.Llo14:
	lis		r3,Os_CoreLockAddresses@ha
.Llo15:
	e_add16i		r3,r3,Os_CoreLockAddresses@l
	rlwinm		r0,r31,2,14,29		# thisCoreId=r31
	lwzux		r30,r3,r0
.Llo19:
	mr		r30,r30		# thisCoreLockAddress=r30 thisCoreLockAddress=r30
# 
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     OS_ASSERT(OS_CORE_LOCK_STATUS_LOCKED == Os_CoreLockStatus[thisCoreId], E_OS_SYS_CORELOCK_UNLOCKED);
	.d2line		96
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
	se_add		r0,r3
	lwzx		r0,r0,r0
	se_cmpi		r0,1
	bc		1,2,.L11355	# eq
	diab.li		r4,60
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11355:
#     Os_CoreLockStatus[thisCoreId] = OS_CORE_LOCK_STATUS_UNLOCKED;
	.d2line		97
.Llo16:
	diab.li		r0,0
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
.Llo17:
	rlwinm		r31,r31,2,14,29		# thisCoreId=r31 thisCoreId=r31
.Llo18:
	stwx		r0,r3,r31
	sync
#$$ep
#     OS_PLATFORM_MEMORY_SYNC();
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
# 
#     OS_PLATFORM_UNLOCK_CORE(thisCoreId, thisCoreId, thisCoreLockAddress);
	.d2line		101
	diab.li		r3,0
	stb		r3,0(r30)		# thisCoreLockAddress=r30
# }
	.d2line		102
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo20:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11477:
	.type		Os_Core_UnlockCore,@function
	.size		Os_Core_UnlockCore,.-Os_Core_UnlockCore
# Number of nodes = 55

# Allocations for Os_Core_UnlockCore
#	?a4		thisCoreId
#	?a5		thisCoreLockAddress
# FUNC (Os_CoreLockStatusType, OS_CODE) Os_Core_UnlockCoreConditionally(CONST(CoreIdType, AUTOMATIC) thisCoreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         109,39
#$$ld
.L11484:

#$$bf	Os_Core_UnlockCoreConditionally,interprocedural,rasave,nostackparams
	.globl		Os_Core_UnlockCoreConditionally
	.d2_cfa_start __cie
Os_Core_UnlockCoreConditionally:
.Llo21:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# thisCoreId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# thisCoreId=r0 thisCoreId=r3
	.d2prologue_end
# {
#     CONST(Os_MemoryAddressType, AUTOMATIC) thisCoreLockAddress = Os_CoreLockAddresses[thisCoreId];
	.d2line		111
.Llo22:
	lis		r3,Os_CoreLockAddresses@ha		# thisCoreId=r3
.Llo23:
	e_add16i		r3,r3,Os_CoreLockAddresses@l		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r4,r0,2,14,29		# thisCoreId=r4 thisCoreId=r0
	lwzx		r3,r3,r4		# thisCoreId=r3 thisCoreId=r3
.Llo27:
	mr		r3,r3		# thisCoreLockAddress=r3 thisCoreLockAddress=r3
#     VAR(Os_CoreLockStatusType,  AUTOMATIC) coreLockStatus;
# 
#     if(OS_PLATFORM_IS_CORE_LOCKED_BY(thisCoreId, thisCoreId, thisCoreLockAddress))
	.d2line		114
	lbz		r4,0(r3)		# thisCoreId=r4 thisCoreLockAddress=r3
	mr		r3,r0		# thisCoreId=r3 thisCoreId=r0
.Llo28:
	se_addi		r3,1		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r3,r3,0,24,31		# thisCoreId=r3 thisCoreId=r3
	se_cmp		r4,r3		# thisCoreId=r4 thisCoreId=r3
	bc		0,2,.L11360	# ne
#     {
#         Os_Core_UnlockCore(thisCoreId);
	.d2line		116
	mr		r3,r0		# thisCoreId=r3 thisCoreId=r0
	bl		Os_Core_UnlockCore
#         coreLockStatus = OS_CORE_LOCK_STATUS_LOCKED;
	.d2line		117
.Llo24:
	diab.li		r3,1		# coreLockStatus=r3
.Llo29:
	b		.L11361
.L11360:
#     }
#     else
#     {
#         /* The core was not locked by 'thisCoreId' so it is not unlocked at all. */
#         coreLockStatus = OS_CORE_LOCK_STATUS_UNLOCKED;
	.d2line		122
.Llo25:
	diab.li		r3,0		# coreLockStatus=r3
.L11361:
#     }
# 
#     return coreLockStatus;
	.d2line		125
.Llo26:
	mr		r3,r3		# coreLockStatus=r3 coreLockStatus=r3
# }
	.d2line		126
	.d2epilogue_begin
.Llo30:
	lwz		r0,20(r1)		# thisCoreId=r0
	mtspr		lr,r0		# thisCoreId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11485:
	.type		Os_Core_UnlockCoreConditionally,@function
	.size		Os_Core_UnlockCoreConditionally,.-Os_Core_UnlockCoreConditionally
# Number of nodes = 33

# Allocations for Os_Core_UnlockCoreConditionally
#	?a4		thisCoreId
#	?a5		thisCoreLockAddress
#	?a6		coreLockStatus
# FUNC (void, OS_CODE) Os_Core_LockOtherCore(CONST(CoreIdType, AUTOMATIC) thisCoreId, CONST(CoreIdType, AUTOMATIC) otherCoreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         133,22
#$$ld
.L11496:

#$$bf	Os_Core_LockOtherCore,interprocedural,rasave,nostackparams
	.globl		Os_Core_LockOtherCore
	.d2_cfa_start __cie
Os_Core_LockOtherCore:
.Llo31:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# thisCoreId=r31 thisCoreId=r3
.Llo32:
	mr		r30,r4		# otherCoreId=r30 otherCoreId=r4
	.d2prologue_end
# {
#     CONST(Os_MemoryAddressType, AUTOMATIC) otherCoreLockAddress = Os_CoreLockAddresses[otherCoreId];
	.d2line		135
.Llo33:
	lis		r3,Os_CoreLockAddresses@ha
	e_add16i		r3,r3,Os_CoreLockAddresses@l
	rlwinm		r4,r4,2,14,29		# otherCoreId=r4 otherCoreId=r4
.Llo47:
	lwzx		r29,r3,r4
.Llo53:
	mr		r29,r29		# otherCoreLockAddress=r29 otherCoreLockAddress=r29
# 
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     OS_ASSERT(OS_CORE_LOCK_STATUS_LOCKED == Os_CoreLockStatus[thisCoreId], E_OS_SYS_CORELOCK_UNLOCKED);
	.d2line		138
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
	rlwinm		r5,r31,2,14,29		# thisCoreId=r31
	se_add		r3,r5
	lwzx		r0,r0,r3
	se_cmpi		r0,1
	bc		1,2,.L11367	# eq
.Llo48:
	diab.li		r4,60		# otherCoreId=r4
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# otherCoreId=r4
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11367:
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
# 
#     if(thisCoreId < otherCoreId)
	.d2line		141
	rlwinm		r3,r31,0,16,31		# thisCoreId=r31
	rlwinm		r4,r30,0,16,31		# otherCoreId=r4 otherCoreId=r30
	se_cmp		r3,r4		# otherCoreId=r4
	bc		0,0,.L11370	# ge
.L11371:
#     {
#         OS_PLATFORM_LOCK_CORE(thisCoreId, otherCoreId, otherCoreLockAddress);
	.d2line		143
	mr		r3,r31		# thisCoreId=r3 thisCoreId=r31
	diab.addi		r0,r3,1		# thisCoreId=r0 thisCoreId=r3
	stb		r0,0(r29)		# otherCoreLockAddress=r29 thisCoreId=r0
	mr		r3,r3		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r0,r0,0,24,31		# thisCoreId=r0 thisCoreId=r0
	lbz		r3,0(r29)		# thisCoreId=r3 otherCoreLockAddress=r29
	se_cmp		r0,r3		# thisCoreId=r0 thisCoreId=r3
	bc		0,2,.L11371	# ne
# 
#       #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#         OS_ASSERT(OS_CORE_LOCK_STATUS_UNLOCKED == Os_CoreLockStatus[otherCoreId], E_OS_SYS_CORELOCK_LOCKED);
	.d2line		146
	lis		r3,Os_CoreLockStatus@ha		# thisCoreId=r3
	diab.addi		r3,r3,Os_CoreLockStatus@l		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r4,r30,2,14,29		# otherCoreId=r4 otherCoreId=r30
	se_add		r3,r4		# thisCoreId=r3 thisCoreId=r3 otherCoreId=r4
	lwzx		r0,r0,r3		# thisCoreId=r0 thisCoreId=r0
	se_cmpi		r0,0		# thisCoreId=r0
	bc		1,2,.L11374	# eq
.Llo34:
	diab.li		r4,59		# thisCoreId=r4
.Llo35:
	lis		r3,(Os_Core_DynShared+12)@ha		# thisCoreId=r3
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# thisCoreId=r3 thisCoreId=r3
	mfspr		r0,286		# thisCoreId=r0
	rlwinm		r0,r0,0,16,31		# thisCoreId=r0 thisCoreId=r0
	e_mulli		r0,r0,152		# thisCoreId=r0 thisCoreId=r0
	stwx		r4,r3,r0		# thisCoreId=r3 thisCoreId=r4
	diab.li		r3,30		# thisCoreId=r3
	bl		Os_ShutdownAllCores
.L11374:
#         Os_CoreLockStatus[otherCoreId] = OS_CORE_LOCK_STATUS_LOCKED;
	.d2line		147
.Llo36:
	diab.li		r0,1		# thisCoreId=r0
.Llo37:
	lis		r3,Os_CoreLockStatus@ha		# thisCoreId=r3
	e_add16i		r3,r3,Os_CoreLockStatus@l		# thisCoreId=r3 thisCoreId=r3
.Llo49:
	rlwinm		r30,r30,2,14,29		# otherCoreId=r30 otherCoreId=r30
.Llo50:
	stwx		r0,r3,r30		# thisCoreId=r3 thisCoreId=r0
	sync
#$$ep
	b		.L11364
.L11370:
	.section	.Os_TEXT,,c
.L11503:
#         OS_PLATFORM_MEMORY_SYNC();
#       #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#     }
#     else
#     {
#         CONST(Os_MemoryAddressType, AUTOMATIC) thisCoreLockAddress = Os_CoreLockAddresses[thisCoreId];
	.d2line		153
.Llo38:
	lis		r3,Os_CoreLockAddresses@ha		# thisCoreLockAddress=r3
.Llo39:
	e_add16i		r3,r3,Os_CoreLockAddresses@l		# thisCoreLockAddress=r3 thisCoreLockAddress=r3
	rlwinm		r5,r31,2,14,29		# thisCoreId=r31
	lwzx		r3,r3,r5		# thisCoreLockAddress=r3 thisCoreLockAddress=r3
	mr		r3,r3		# thisCoreLockAddress=r3 thisCoreLockAddress=r3
# 
#       #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#         Os_CoreLockStatus[thisCoreId] = OS_CORE_LOCK_STATUS_UNLOCKED;
	.d2line		156
	diab.li		r0,0
	lis		r4,Os_CoreLockStatus@ha		# otherCoreId=r4
	e_add16i		r4,r4,Os_CoreLockStatus@l		# otherCoreId=r4 otherCoreId=r4
	stwx		r0,r4,r5		# otherCoreId=r4
	sync
#$$ep
#         OS_PLATFORM_MEMORY_SYNC();
#       #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
# 
#         /* Have to unlock self core. */
#         OS_PLATFORM_UNLOCK_CORE(thisCoreId, thisCoreId, thisCoreLockAddress);
	.d2line		161
	diab.li		r0,0
	stb		r0,0(r3)		# thisCoreLockAddress=r3
.L11378:
# 
#         /* Now lock both of the cores in the right order. */
#         OS_PLATFORM_LOCK_CORE(thisCoreId, otherCoreId, otherCoreLockAddress);
	.d2line		164
	mr		r5,r31		# thisCoreId=r5 thisCoreId=r31
	diab.addi		r0,r5,1		# thisCoreId=r0 thisCoreId=r5
	stb		r0,0(r29)		# otherCoreLockAddress=r29 thisCoreId=r0
	mr		r5,r5		# thisCoreId=r5 thisCoreId=r5
	rlwinm		r0,r0,0,24,31		# thisCoreId=r0 thisCoreId=r0
	lbz		r4,0(r29)		# otherCoreId=r4 otherCoreLockAddress=r29
	se_cmp		r0,r4		# thisCoreId=r0 otherCoreId=r4
	bc		0,2,.L11378	# ne
.L11379:
#         OS_PLATFORM_LOCK_CORE(thisCoreId, thisCoreId, thisCoreLockAddress);
	.d2line		165
	mr		r5,r31		# thisCoreId=r5 thisCoreId=r31
	diab.addi		r0,r5,1		# thisCoreId=r0 thisCoreId=r5
	stb		r0,0(r3)		# thisCoreLockAddress=r3 thisCoreId=r0
	mr		r5,r5		# thisCoreId=r5 thisCoreId=r5
	rlwinm		r0,r0,0,24,31		# thisCoreId=r0 thisCoreId=r0
	lbz		r4,0(r3)		# otherCoreId=r4 thisCoreLockAddress=r3
	se_cmp		r0,r4		# thisCoreId=r0 otherCoreId=r4
	bc		0,2,.L11379	# ne
# 
#       #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#         OS_ASSERT(OS_CORE_LOCK_STATUS_UNLOCKED == Os_CoreLockStatus[thisCoreId], E_OS_SYS_CORELOCK_LOCKED);
	.d2line		168
.Llo54:
	lis		r3,Os_CoreLockStatus@ha		# thisCoreId=r3
	diab.addi		r3,r3,Os_CoreLockStatus@l		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r5,r31,2,14,29		# thisCoreId=r5 thisCoreId=r31
	se_add		r3,r5		# thisCoreId=r3 thisCoreId=r3 thisCoreId=r5
	lwzx		r0,r0,r3		# thisCoreId=r0 thisCoreId=r0
	se_cmpi		r0,0		# thisCoreId=r0
	bc		1,2,.L11382	# eq
	diab.li		r4,59		# thisCoreId=r4
	lis		r3,(Os_Core_DynShared+12)@ha		# thisCoreId=r3
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# thisCoreId=r3 thisCoreId=r3
	mfspr		r0,286		# thisCoreId=r0
	rlwinm		r0,r0,0,16,31		# thisCoreId=r0 thisCoreId=r0
	e_mulli		r0,r0,152		# thisCoreId=r0 thisCoreId=r0
	stwx		r4,r3,r0		# thisCoreId=r3 thisCoreId=r4
	diab.li		r3,30		# thisCoreId=r3
	bl		Os_ShutdownAllCores
.L11382:
#         Os_CoreLockStatus[thisCoreId] = OS_CORE_LOCK_STATUS_LOCKED;
	.d2line		169
.Llo40:
	diab.li		r0,1		# thisCoreId=r0
.Llo41:
	lis		r3,Os_CoreLockStatus@ha		# thisCoreId=r3
	e_add16i		r3,r3,Os_CoreLockStatus@l		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r31,r31,2,14,29		# thisCoreId=r31 thisCoreId=r31
	stwx		r0,r3,r31		# thisCoreId=r3 thisCoreId=r0
# 
#         OS_ASSERT(OS_CORE_LOCK_STATUS_UNLOCKED == Os_CoreLockStatus[otherCoreId], E_OS_SYS_CORELOCK_LOCKED);
	.d2line		171
	lis		r3,Os_CoreLockStatus@ha		# thisCoreId=r3
	diab.addi		r3,r3,Os_CoreLockStatus@l		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r4,r30,2,14,29		# otherCoreId=r4 otherCoreId=r30
	se_add		r3,r4		# thisCoreId=r3 thisCoreId=r3 otherCoreId=r4
	lwzx		r0,r0,r3		# thisCoreId=r0 thisCoreId=r0
	se_cmpi		r0,0		# thisCoreId=r0
	bc		1,2,.L11387	# eq
.Llo42:
	diab.li		r4,59		# thisCoreId=r4
.Llo43:
	lis		r3,(Os_Core_DynShared+12)@ha		# thisCoreId=r3
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# thisCoreId=r3 thisCoreId=r3
	mfspr		r0,286		# thisCoreId=r0
	rlwinm		r0,r0,0,16,31		# thisCoreId=r0 thisCoreId=r0
	e_mulli		r0,r0,152		# thisCoreId=r0 thisCoreId=r0
	stwx		r4,r3,r0		# thisCoreId=r3 thisCoreId=r4
	diab.li		r3,30		# thisCoreId=r3
	bl		Os_ShutdownAllCores
.L11387:
#         Os_CoreLockStatus[otherCoreId] = OS_CORE_LOCK_STATUS_LOCKED;
	.d2line		172
.Llo44:
	diab.li		r0,1		# thisCoreId=r0
.Llo45:
	lis		r3,Os_CoreLockStatus@ha		# thisCoreId=r3
	e_add16i		r3,r3,Os_CoreLockStatus@l		# thisCoreId=r3 thisCoreId=r3
.Llo51:
	rlwinm		r30,r30,2,14,29		# otherCoreId=r30 otherCoreId=r30
.Llo52:
	stwx		r0,r3,r30		# thisCoreId=r3 thisCoreId=r0
	sync
#$$ep
	.section	.Os_TEXT,,c
.L11504:
.L11364:
# 
#         OS_PLATFORM_MEMORY_SYNC();
#       #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#     }
# }
	.d2line		177
	.d2epilogue_begin
.Llo46:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# thisCoreId=r0
	mtspr		lr,r0		# thisCoreId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11497:
	.type		Os_Core_LockOtherCore,@function
	.size		Os_Core_LockOtherCore,.-Os_Core_LockOtherCore
# Number of nodes = 241

# Allocations for Os_Core_LockOtherCore
#	?a4		thisCoreId
#	?a5		otherCoreId
#	?a6		otherCoreLockAddress
#	?a7		thisCoreLockAddress
# FUNC (void, OS_CODE) Os_Core_UnlockOtherCore(CONST(CoreIdType, AUTOMATIC) thisCoreId, CONST(CoreIdType, AUTOMATIC) otherCoreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         184,22
#$$ld
.L11511:

#$$bf	Os_Core_UnlockOtherCore,interprocedural,rasave,nostackparams
	.globl		Os_Core_UnlockOtherCore
	.d2_cfa_start __cie
Os_Core_UnlockOtherCore:
.Llo55:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r4		# otherCoreId=r31 otherCoreId=r4
	.d2prologue_end
# {
#     CONST(Os_MemoryAddressType, AUTOMATIC) otherCoreLockAddress = Os_CoreLockAddresses[otherCoreId];
	.d2line		186
	lis		r3,Os_CoreLockAddresses@ha
	e_add16i		r3,r3,Os_CoreLockAddresses@l
	rlwinm		r4,r4,2,14,29		# otherCoreId=r4 otherCoreId=r4
	lwzux		r30,r3,r4
.Llo61:
	mr		r30,r30		# otherCoreLockAddress=r30 otherCoreLockAddress=r30
# 
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     OS_ASSERT(OS_CORE_LOCK_STATUS_LOCKED == Os_CoreLockStatus[otherCoreId], E_OS_SYS_CORELOCK_UNLOCKED);
	.d2line		189
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
	se_add		r3,r4		# otherCoreId=r4
	lwzx		r0,r0,r3
	se_cmpi		r0,1
	bc		1,2,.L11402	# eq
.Llo56:
	diab.li		r4,60		# otherCoreId=r4
.Llo57:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# otherCoreId=r4
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11402:
#     Os_CoreLockStatus[otherCoreId] = OS_CORE_LOCK_STATUS_UNLOCKED;
	.d2line		190
.Llo58:
	diab.li		r0,0
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
.Llo59:
	rlwinm		r31,r31,2,14,29		# otherCoreId=r31 otherCoreId=r31
.Llo60:
	stwx		r0,r3,r31
	sync
#$$ep
#     OS_PLATFORM_MEMORY_SYNC();
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
# 
#     OS_PLATFORM_UNLOCK_CORE(thisCoreId, otherCoreId, otherCoreLockAddress);
	.d2line		194
	diab.li		r3,0
	stb		r3,0(r30)		# otherCoreLockAddress=r30
# }
	.d2line		195
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo62:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11512:
	.type		Os_Core_UnlockOtherCore,@function
	.size		Os_Core_UnlockOtherCore,.-Os_Core_UnlockOtherCore
# Number of nodes = 55

# Allocations for Os_Core_UnlockOtherCore
#	not allocated	thisCoreId
#	?a4		otherCoreId
#	?a5		otherCoreLockAddress
# FUNC (void, OS_CODE) Os_Core_UnlockCores(CONST(CoreIdType, AUTOMATIC) thisCoreId, CONST(CoreIdType, AUTOMATIC) otherCoreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         202,22
#$$ld
.L11519:

#$$bf	Os_Core_UnlockCores,interprocedural,rasave,nostackparams
	.globl		Os_Core_UnlockCores
	.d2_cfa_start __cie
Os_Core_UnlockCores:
.Llo63:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# thisCoreId=r31 thisCoreId=r3
.Llo64:
	mr		r30,r4		# otherCoreId=r30 otherCoreId=r4
	.d2prologue_end
# {
#     CONST(Os_MemoryAddressType, AUTOMATIC) thisCoreLockAddress = Os_CoreLockAddresses[thisCoreId];
	.d2line		204
.Llo65:
	lis		r3,Os_CoreLockAddresses@ha
	e_add16i		r3,r3,Os_CoreLockAddresses@l
	rlwinm		r0,r31,2,14,29		# thisCoreId=r31
	lwzx		r29,r3,r0
.Llo74:
	mr		r29,r29		# thisCoreLockAddress=r29 thisCoreLockAddress=r29
#     CONST(Os_MemoryAddressType, AUTOMATIC) otherCoreLockAddress = Os_CoreLockAddresses[otherCoreId];
	.d2line		205
	rlwinm		r4,r4,2,14,29		# otherCoreId=r4 otherCoreId=r4
.Llo69:
	lwzx		r28,r3,r4
.Llo76:
	mr		r28,r28		# otherCoreLockAddress=r28 otherCoreLockAddress=r28
# 
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     OS_ASSERT(OS_CORE_LOCK_STATUS_LOCKED == Os_CoreLockStatus[thisCoreId], E_OS_SYS_CORELOCK_UNLOCKED);
	.d2line		208
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
	se_add		r0,r3
	lwzx		r0,r0,r0
	se_cmpi		r0,1
	bc		1,2,.L11409	# eq
.Llo70:
	diab.li		r4,60		# otherCoreId=r4
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# otherCoreId=r4
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11409:
#     Os_CoreLockStatus[thisCoreId] = OS_CORE_LOCK_STATUS_UNLOCKED;
	.d2line		209
.Llo66:
	diab.li		r0,0
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
.Llo67:
	rlwinm		r31,r31,2,14,29		# thisCoreId=r31 thisCoreId=r31
.Llo68:
	stwx		r0,r3,r31
# 
#     OS_ASSERT(OS_CORE_LOCK_STATUS_LOCKED == Os_CoreLockStatus[otherCoreId], E_OS_SYS_CORELOCK_UNLOCKED);
	.d2line		211
	rlwinm		r4,r30,2,14,29		# otherCoreId=r4 otherCoreId=r30
	se_add		r3,r4		# otherCoreId=r4
	lwzx		r0,r0,r3
	se_cmpi		r0,1
	bc		1,2,.L11414	# eq
	diab.li		r4,60		# otherCoreId=r4
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# otherCoreId=r4
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11414:
#     Os_CoreLockStatus[otherCoreId] = OS_CORE_LOCK_STATUS_UNLOCKED;
	.d2line		212
.Llo71:
	diab.li		r0,0
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
.Llo72:
	rlwinm		r30,r30,2,14,29		# otherCoreId=r30 otherCoreId=r30
.Llo73:
	stwx		r0,r3,r30
	sync
#$$ep
# 
#     OS_PLATFORM_MEMORY_SYNC();
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
# 
#     OS_PLATFORM_UNLOCK_CORE(thisCoreId, thisCoreId, thisCoreLockAddress);
	.d2line		217
	diab.li		r3,0
	stb		r3,0(r29)		# thisCoreLockAddress=r29
#     OS_PLATFORM_UNLOCK_CORE(thisCoreId, otherCoreId, otherCoreLockAddress);
	.d2line		218
	stb		r3,0(r28)		# otherCoreLockAddress=r28
# }
	.d2line		219
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo75:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11520:
	.type		Os_Core_UnlockCores,@function
	.size		Os_Core_UnlockCores,.-Os_Core_UnlockCores
# Number of nodes = 109

# Allocations for Os_Core_UnlockCores
#	?a4		thisCoreId
#	?a5		otherCoreId
#	?a6		thisCoreLockAddress
#	?a7		otherCoreLockAddress
# FUNC (void, OS_CODE) Os_Core_LockAllCores(CONST(CoreIdType, AUTOMATIC) thisCoreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         226,22
#$$ld
.L11530:

#$$bf	Os_Core_LockAllCores,interprocedural,rasave,nostackparams
	.globl		Os_Core_LockAllCores
	.d2_cfa_start __cie
Os_Core_LockAllCores:
.Llo77:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# thisCoreId=r31 thisCoreId=r3
	.d2prologue_end
# {
#     VAR(Os_ObjectType, AUTOMATIC) coreIndex;
# 
#     /* Compiler is likely to optimize this with loop unrolling. */
#     for ( coreIndex = (Os_ObjectType) 0U; coreIndex < Os_CoreLockAddressesCount; coreIndex++ )
	.d2line		231
	diab.li		r30,0		# coreIndex=r30
.L11420:
.Llo78:
	lis		r3,Os_CoreLockAddressesCount@ha
.Llo79:
	lwz		r0,Os_CoreLockAddressesCount@l(r3)
	se_cmpl		r0,r30		# coreIndex=r30
	bc		0,1,.L11419	# le
.L11423:
#     {
#       #if OS_CORE_NO_DEF != OS_AUTOSAR_CORE_NO_DEF
# 
#         if ( NULL_PTR != (void *) Os_CoreLockAddresses[coreIndex] )
# 
#       #endif
# 
#         {
#             OS_PLATFORM_LOCK_CORE ( thisCoreId, coreIndex, Os_CoreLockAddresses[coreIndex] );
	.d2line		240
	mr		r3,r31		# thisCoreId=r3 thisCoreId=r31
	diab.addi		r0,r3,1
	lis		r4,Os_CoreLockAddresses@ha
	e_add16i		r4,r4,Os_CoreLockAddresses@l
	rlwinm		r6,r30,2,0,29		# coreIndex=r30
	lwzux		r5,r4,r6
	stb		r0,0(r5)
	mr		r3,r3		# thisCoreId=r3 thisCoreId=r3
	rlwinm		r0,r0,0,24,31
	lis		r3,Os_CoreLockAddresses@ha
	e_add16i		r3,r3,Os_CoreLockAddresses@l
	lwzx		r3,r3,r6
	lbz		r3,0(r3)
	se_cmp		r0,r3
	bc		0,2,.L11423	# ne
# 
#           #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
# 
#             OS_ASSERT ( OS_CORE_LOCK_STATUS_UNLOCKED == Os_CoreLockStatus[coreIndex], E_OS_SYS_CORELOCK_LOCKED );
	.d2line		244
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
	rlwinm		r6,r30,2,0,29		# coreIndex=r30
	se_add		r3,r6
	lwzx		r0,r0,r3
	se_cmpi		r0,0
	bc		1,2,.L11426	# eq
	diab.li		r4,59
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11426:
#             Os_CoreLockStatus[coreIndex] = OS_CORE_LOCK_STATUS_LOCKED;
	.d2line		245
	diab.li		r0,1
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
	rlwinm		r6,r30,2,0,29		# coreIndex=r30
	stwx		r0,r3,r6
	sync
#$$ep
#             OS_PLATFORM_MEMORY_SYNC();
# 
#           #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#         }
# 
#     }
	.d2line		251
	diab.addi		r6,r30,1		# coreIndex=r30
	se_addi		r30,1		# coreIndex=r30 coreIndex=r30
	b		.L11420
.L11419:
# }
	.d2line		252
	.d2epilogue_begin
.Llo80:
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
.L11531:
	.type		Os_Core_LockAllCores,@function
	.size		Os_Core_LockAllCores,.-Os_Core_LockAllCores
# Number of nodes = 76

# Allocations for Os_Core_LockAllCores
#	?a4		thisCoreId
#	?a5		coreIndex
# FUNC (void, OS_CODE) Os_Core_UnLockAllCores(CONST(CoreIdType, AUTOMATIC) thisCoreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         259,22
#$$ld
.L11539:

#$$bf	Os_Core_UnLockAllCores,interprocedural,rasave,nostackparams
	.globl		Os_Core_UnLockAllCores
	.d2_cfa_start __cie
Os_Core_UnLockAllCores:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Compiler is likely to optimize this with loop unrolling. */
#     VAR(Os_ObjectType, AUTOMATIC) coreIndex = Os_CoreLockAddressesCount;
	.d2line		262
	lis		r3,Os_CoreLockAddressesCount@ha
	lwz		r31,Os_CoreLockAddressesCount@l(r3)
.Llo81:
	mr		r31,r31		# coreIndex=r31 coreIndex=r31
.L11434:
# 
#     do
#     {
#         coreIndex--;
	.d2line		266
	diab.addi		r0,r31,-1		# coreIndex=r31
	diab.addi		r31,r31,-1		# coreIndex=r31 coreIndex=r31
# 
#       #if OS_CORE_NO_DEF != OS_AUTOSAR_CORE_NO_DEF
# 
#         if ( NULL_PTR != (void *) Os_CoreLockAddresses[coreIndex] )
# 
#       #endif
# 
#         {
#           #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
# 
#             OS_ASSERT ( OS_CORE_LOCK_STATUS_LOCKED == Os_CoreLockStatus[coreIndex], E_OS_SYS_CORELOCK_UNLOCKED );
	.d2line		277
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
	rlwinm		r0,r31,2,0,29		# coreIndex=r31
	se_add		r0,r3
	lwzx		r0,r0,r0
	se_cmpi		r0,1
	bc		1,2,.L11437	# eq
	diab.li		r4,60
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11437:
#             Os_CoreLockStatus[coreIndex] = OS_CORE_LOCK_STATUS_UNLOCKED;
	.d2line		278
	diab.li		r0,0
	lis		r3,Os_CoreLockStatus@ha
	e_add16i		r3,r3,Os_CoreLockStatus@l
	rlwinm		r4,r31,2,0,29		# coreIndex=r31
	stwx		r0,r3,r4
	sync
#$$ep
#             OS_PLATFORM_MEMORY_SYNC();
# 
#           #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
# 
#             OS_PLATFORM_UNLOCK_CORE ( thisCoreId, coreIndex, Os_CoreLockAddresses[coreIndex] );
	.d2line		283
	diab.li		r4,0
	lis		r3,Os_CoreLockAddresses@ha
	e_add16i		r3,r3,Os_CoreLockAddresses@l
	rlwinm		r0,r31,2,0,29		# coreIndex=r31
	lwzx		r3,r3,r0
	stb		r4,0(r3)
#         }
#     } while ( coreIndex != (Os_ObjectType) 0U );
	.d2line		285
	se_cmpi		r31,0		# coreIndex=r31
	bc		0,2,.L11434	# ne
# }
	.d2line		286
	.d2epilogue_begin
.Llo82:
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
.L11540:
	.type		Os_Core_UnLockAllCores,@function
	.size		Os_Core_UnLockAllCores,.-Os_Core_UnLockAllCores
# Number of nodes = 57

# Allocations for Os_Core_UnLockAllCores
#	not allocated	thisCoreId
#	?a4		coreIndex

# Allocations for module
	.section	.Os_BSS,,b
	.0byte		.L11544
	.section	.text_vle
	.0byte		.L11550
	.section	.Os_BSS,,b
	.0byte		.L11556
	.section	.Os_BSS,,b
	.type		Os_CoreLockStatus,@object
	.size		Os_CoreLockStatus,8
	.align		2
Os_CoreLockStatus:
	.space		8
	.section	.text_vle
#$$ld
.L5:
.L11654:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11652:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11650:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11648:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11642:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11579:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11569:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11567:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11561:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11557:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_CoreLock.c"
.L11551:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Core.h"
.L11545:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11446:
.L11454:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_CoreLock.c"
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
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_CoreLock.c"
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
.L11443:
	.4byte		.L11444-.L11442
.L11442:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11448-.L11443
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_CoreLock.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11445
	.4byte		.L11446
	.4byte		.L11449
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11455:
	.sleb128	2
	.4byte		.L11451-.L11443
	.byte		"Os_Core_Lock_PreInit"
	.byte		0
	.4byte		.L11454
	.uleb128	59
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11452
	.4byte		.L11453
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11454
	.uleb128	59
	.uleb128	22
	.byte		"thisCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11460
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11451:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11465:
	.sleb128	2
	.4byte		.L11462-.L11443
	.byte		"Os_Core_LockCore"
	.byte		0
	.4byte		.L11454
	.uleb128	73
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11463
	.4byte		.L11464
	.sleb128	3
	.4byte		.L11454
	.uleb128	73
	.uleb128	22
	.byte		"thisCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11466
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11467:
	.sleb128	4
	.4byte		.L11454
	.uleb128	75
	.uleb128	44
	.byte		"thisCoreLockAddress"
	.byte		0
	.4byte		.L11468
	.4byte		.L11473
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11462:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11478:
	.sleb128	2
	.4byte		.L11475-.L11443
	.byte		"Os_Core_UnlockCore"
	.byte		0
	.4byte		.L11454
	.uleb128	91
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11476
	.4byte		.L11477
	.sleb128	3
	.4byte		.L11454
	.uleb128	91
	.uleb128	22
	.byte		"thisCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11479
.L11480:
	.sleb128	4
	.4byte		.L11454
	.uleb128	93
	.uleb128	44
	.byte		"thisCoreLockAddress"
	.byte		0
	.4byte		.L11468
	.4byte		.L11481
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11475:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11488:
	.sleb128	5
	.4byte		.L11483-.L11443
	.byte		"Os_Core_UnlockCoreConditionally"
	.byte		0
	.4byte		.L11454
	.uleb128	109
	.uleb128	39
	.4byte		.L11486
	.byte		0x1
	.byte		0x1
	.4byte		.L11484
	.4byte		.L11485
	.sleb128	3
	.4byte		.L11454
	.uleb128	109
	.uleb128	39
	.byte		"thisCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11489
.L11490:
	.sleb128	4
	.4byte		.L11454
	.uleb128	111
	.uleb128	44
	.byte		"thisCoreLockAddress"
	.byte		0
	.4byte		.L11468
	.4byte		.L11491
.L11492:
	.sleb128	4
	.4byte		.L11454
	.uleb128	112
	.uleb128	44
	.byte		"coreLockStatus"
	.byte		0
	.4byte		.L11486
	.4byte		.L11493
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11483:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11498:
	.sleb128	2
	.4byte		.L11495-.L11443
	.byte		"Os_Core_LockOtherCore"
	.byte		0
	.4byte		.L11454
	.uleb128	133
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11496
	.4byte		.L11497
	.sleb128	3
	.4byte		.L11454
	.uleb128	133
	.uleb128	22
	.byte		"thisCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11499
	.sleb128	3
	.4byte		.L11454
	.uleb128	133
	.uleb128	22
	.byte		"otherCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11500
.L11501:
	.sleb128	4
	.4byte		.L11454
	.uleb128	135
	.uleb128	44
	.byte		"otherCoreLockAddress"
	.byte		0
	.4byte		.L11468
	.4byte		.L11502
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11506
	.4byte		.L11503
	.4byte		.L11504
.L11507:
	.sleb128	4
	.4byte		.L11454
	.uleb128	153
	.uleb128	48
	.byte		"thisCoreLockAddress"
	.byte		0
	.4byte		.L11468
	.4byte		.L11508
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11506:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11495:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11513:
	.sleb128	2
	.4byte		.L11510-.L11443
	.byte		"Os_Core_UnlockOtherCore"
	.byte		0
	.4byte		.L11454
	.uleb128	184
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11511
	.4byte		.L11512
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11454
	.uleb128	184
	.uleb128	22
	.byte		"thisCoreId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L11454
	.uleb128	184
	.uleb128	22
	.byte		"otherCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11514
.L11515:
	.sleb128	4
	.4byte		.L11454
	.uleb128	186
	.uleb128	44
	.byte		"otherCoreLockAddress"
	.byte		0
	.4byte		.L11468
	.4byte		.L11516
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11510:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11521:
	.sleb128	2
	.4byte		.L11518-.L11443
	.byte		"Os_Core_UnlockCores"
	.byte		0
	.4byte		.L11454
	.uleb128	202
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11519
	.4byte		.L11520
	.sleb128	3
	.4byte		.L11454
	.uleb128	202
	.uleb128	22
	.byte		"thisCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11522
	.sleb128	3
	.4byte		.L11454
	.uleb128	202
	.uleb128	22
	.byte		"otherCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11523
.L11524:
	.sleb128	4
	.4byte		.L11454
	.uleb128	204
	.uleb128	44
	.byte		"thisCoreLockAddress"
	.byte		0
	.4byte		.L11468
	.4byte		.L11525
.L11526:
	.sleb128	4
	.4byte		.L11454
	.uleb128	205
	.uleb128	44
	.byte		"otherCoreLockAddress"
	.byte		0
	.4byte		.L11468
	.4byte		.L11527
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11518:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11532:
	.sleb128	2
	.4byte		.L11529-.L11443
	.byte		"Os_Core_LockAllCores"
	.byte		0
	.4byte		.L11454
	.uleb128	226
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11530
	.4byte		.L11531
	.sleb128	3
	.4byte		.L11454
	.uleb128	226
	.uleb128	22
	.byte		"thisCoreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11533
.L11534:
	.sleb128	4
	.4byte		.L11454
	.uleb128	228
	.uleb128	35
	.byte		"coreIndex"
	.byte		0
	.4byte		.L11535
	.4byte		.L11536
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11529:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11541:
	.sleb128	2
	.4byte		.L11538-.L11443
	.byte		"Os_Core_UnLockAllCores"
	.byte		0
	.4byte		.L11454
	.uleb128	259
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11539
	.4byte		.L11540
	.sleb128	7
	.4byte		.L11454
	.uleb128	259
	.uleb128	22
	.byte		"thisCoreId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x90
	.uleb128	3
.L11542:
	.sleb128	4
	.4byte		.L11454
	.uleb128	262
	.uleb128	35
	.byte		"coreIndex"
	.byte		0
	.4byte		.L11535
	.4byte		.L11543
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11538:
	.section	.debug_info,,n
.L11544:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11545
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11546
	.section	.debug_info,,n
.L11550:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11551
	.uleb128	100
	.uleb128	48
	.byte		"Os_CoreLockAddresses"
	.byte		0
	.4byte		.L11552
	.section	.debug_info,,n
.L11554:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11551
	.uleb128	102
	.uleb128	41
	.byte		"Os_CoreLockAddressesCount"
	.byte		0
	.4byte		.L11555
	.section	.debug_info,,n
.L11556:
	.sleb128	9
	.4byte		.L11557
	.uleb128	39
	.uleb128	52
	.byte		"Os_CoreLockStatus"
	.byte		0
	.4byte		.L11558
	.sleb128	5
	.byte		0x3
	.4byte		Os_CoreLockStatus
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11549:
	.sleb128	10
	.4byte		.L11561
	.uleb128	69
	.uleb128	1
	.4byte		.L11562-.L2
	.uleb128	152
	.section	.debug_info,,n
.L771:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L772:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11562:
.L11564:
	.sleb128	10
	.4byte		.L11567
	.uleb128	612
	.uleb128	1
	.4byte		.L11568-.L2
	.uleb128	8
.L730:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11568:
.L11566:
	.sleb128	10
	.4byte		.L11569
	.uleb128	32
	.uleb128	1
	.4byte		.L11570-.L2
	.uleb128	144
.L418:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11571
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L419:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11573
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11570:
.L11574:
	.sleb128	10
	.4byte		.L11569
	.uleb128	32
	.uleb128	1
	.4byte		.L11575-.L2
	.uleb128	20
.L407:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L408:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L409:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11578
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L411:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11578
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11575:
.L11572:
	.sleb128	10
	.4byte		.L11579
	.uleb128	174
	.uleb128	1
	.4byte		.L11580-.L2
	.uleb128	120
.L404:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11581
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11583
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L406:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11585
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11580:
.L11586:
	.sleb128	10
	.4byte		.L11579
	.uleb128	174
	.uleb128	1
	.4byte		.L11587-.L2
	.uleb128	8
.L401:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11588
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11587:
.L11584:
	.sleb128	10
	.4byte		.L11579
	.uleb128	174
	.uleb128	1
	.4byte		.L11594-.L2
	.uleb128	104
.L376:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L379:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11601
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L381:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11603
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L383:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11615
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11622
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11622
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11594:
.L11582:
	.sleb128	10
	.4byte		.L11579
	.uleb128	174
	.uleb128	1
	.4byte		.L11639-.L2
	.uleb128	8
.L374:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L375:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11639:
.L11627:
	.sleb128	10
	.4byte		.L11642
	.uleb128	50
	.uleb128	1
	.4byte		.L11643-.L2
	.uleb128	12
.L371:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L372:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L373:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11643:
	.section	.debug_info,,n
.L11487:
	.sleb128	12
	.4byte		.L11551
	.uleb128	80
	.uleb128	1
	.4byte		.L11644-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"OS_CORE_LOCK_STATUS_UNLOCKED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_CORE_LOCK_STATUS_LOCKED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11644:
.L11577:
	.sleb128	12
	.4byte		.L11569
	.uleb128	32
	.uleb128	1
	.4byte		.L11645-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	13
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	13
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	13
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	13
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	13
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	13
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	13
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	13
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	13
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L11645:
.L11641:
	.sleb128	12
	.4byte		.L11579
	.uleb128	174
	.uleb128	1
	.4byte		.L11646-.L2
	.uleb128	4
	.sleb128	13
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	13
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	13
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	13
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	13
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	13
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	13
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	13
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	13
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	13
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	13
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	13
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	13
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	13
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	13
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	13
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	13
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	13
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	13
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	13
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	13
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	13
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	13
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	13
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	13
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	13
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	13
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	13
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L11646:
.L11593:
	.sleb128	12
	.4byte		.L11579
	.uleb128	86
	.uleb128	1
	.4byte		.L11647-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	13
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	13
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	13
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	13
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	13
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	13
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	13
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	13
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	13
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	13
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	13
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	13
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	13
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	13
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	13
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	13
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	13
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	13
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	13
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	13
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	13
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	13
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	13
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	13
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	13
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	13
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	13
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	13
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	13
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	13
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	13
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	13
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	13
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	13
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	13
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	13
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	13
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	13
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	13
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	13
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	13
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	13
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	13
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	13
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	13
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	13
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	13
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	13
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	13
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	13
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	13
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	13
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	13
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	13
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	13
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	13
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L11647:
.L11638:
	.sleb128	12
	.4byte		.L11648
	.uleb128	43
	.uleb128	1
	.4byte		.L11649-.L2
	.uleb128	4
	.sleb128	13
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11649:
.L11621:
	.sleb128	12
	.4byte		.L11650
	.uleb128	37
	.uleb128	1
	.4byte		.L11651-.L2
	.uleb128	4
	.sleb128	13
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11651:
.L11633:
	.sleb128	12
	.4byte		.L11652
	.uleb128	40
	.uleb128	1
	.4byte		.L11653-.L2
	.uleb128	4
	.sleb128	13
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11653:
.L11612:
	.sleb128	12
	.4byte		.L11654
	.uleb128	47
	.uleb128	1
	.4byte		.L11655-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11655:
	.section	.debug_info,,n
.L11459:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L11458:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L11459
.L11457:
	.sleb128	15
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11458
	.section	.debug_info,,n
.L11456:
	.sleb128	16
	.4byte		.L11457
.L11472:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11471:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L11472
.L11470:
	.sleb128	15
	.byte		"uintptr"
	.byte		0
	.4byte		.L11471
.L11469:
	.sleb128	15
	.byte		"Os_MemoryAddressType"
	.byte		0
	.4byte		.L11470
.L11468:
	.sleb128	16
	.4byte		.L11469
.L11486:
	.sleb128	15
	.byte		"Os_CoreLockStatusType"
	.byte		0
	.4byte		.L11487
.L11535:
	.sleb128	15
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11471
.L11548:
	.sleb128	15
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11549
	.section	.debug_info,,n
.L11546:
	.sleb128	17
	.4byte		.L11547-.L2
	.4byte		.L11548
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	1
	.sleb128	0
.L11547:
.L11552:
	.sleb128	17
	.4byte		.L11553-.L2
	.4byte		.L11468
	.sleb128	18
	.uleb128	1
	.sleb128	0
.L11553:
.L11555:
	.sleb128	16
	.4byte		.L11535
	.section	.debug_info,,n
.L11560:
	.sleb128	19
	.4byte		.L11486
.L11558:
	.sleb128	17
	.4byte		.L11559-.L2
	.4byte		.L11560
	.sleb128	18
	.uleb128	1
	.sleb128	0
.L11559:
.L11563:
	.sleb128	15
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11564
.L11565:
	.sleb128	15
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11566
.L11571:
	.sleb128	15
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11572
.L11573:
	.sleb128	15
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11574
.L11576:
	.sleb128	15
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11577
.L11578:
	.sleb128	15
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11471
.L11581:
	.sleb128	15
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11582
.L11583:
	.sleb128	15
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11584
.L11585:
	.sleb128	15
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11586
.L11590:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11589:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L11590
.L11588:
	.sleb128	15
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11589
.L11591:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11589
.L11592:
	.sleb128	15
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11593
.L11596:
	.sleb128	15
	.byte		"ProcType"
	.byte		0
	.4byte		.L11535
.L11595:
	.sleb128	15
	.byte		"TaskType"
	.byte		0
	.4byte		.L11596
.L11597:
	.sleb128	15
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11471
.L11600:
	.sleb128	14
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11599:
	.sleb128	15
	.byte		"uint64"
	.byte		0
	.4byte		.L11600
.L11598:
	.sleb128	15
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11599
.L11601:
	.sleb128	15
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11535
.L11602:
	.sleb128	15
	.byte		"TickType"
	.byte		0
	.4byte		.L11471
.L11603:
	.sleb128	15
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11471
	.section	.debug_info,,n
.L11606:
	.sleb128	20
	.byte		"void"
	.byte		0
	.byte		0x0
	.section	.debug_info,,n
.L11605:
	.sleb128	21
	.4byte		.L11606
.L11604:
	.sleb128	15
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11605
.L11607:
	.sleb128	15
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11589
.L11610:
	.sleb128	15
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11589
.L11609:
	.sleb128	21
	.4byte		.L11610
.L11608:
	.sleb128	15
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11609
.L11611:
	.sleb128	15
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11612
.L11613:
	.sleb128	15
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11471
.L11614:
	.sleb128	15
	.byte		"CounterType"
	.byte		0
	.4byte		.L11471
.L11615:
	.sleb128	15
	.byte		"RestartType"
	.byte		0
	.4byte		.L11589
.L11617:
	.sleb128	21
	.4byte		.L11598
.L11616:
	.sleb128	15
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11617
.L11620:
	.sleb128	15
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11621
.L11619:
	.sleb128	21
	.4byte		.L11620
.L11618:
	.sleb128	15
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11619
.L11623:
	.sleb128	21
	.4byte		.L11602
.L11622:
	.sleb128	15
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11623
.L11626:
	.sleb128	15
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11627
.L11625:
	.sleb128	21
	.4byte		.L11626
.L11624:
	.sleb128	15
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11625
.L11629:
	.sleb128	21
	.4byte		.L11595
.L11628:
	.sleb128	15
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11629
.L11632:
	.sleb128	15
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11633
.L11631:
	.sleb128	21
	.4byte		.L11632
.L11630:
	.sleb128	15
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11631
.L11634:
	.sleb128	15
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11458
.L11637:
	.sleb128	15
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11638
.L11636:
	.sleb128	21
	.4byte		.L11637
.L11635:
	.sleb128	15
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11636
.L11640:
	.sleb128	15
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11641
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11448:
	.sleb128	0
.L11444:

	.section	.debug_loc,,n
	.align	0
.L11460:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L11466:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locend
.L11473:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L11479:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),31
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),31
	.d2locend
.L11481:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),30
	.d2locend
.L11489:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),0
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locend
.L11491:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
.L11493:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo30),3
	.d2locend
.L11499:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),31
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),4
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),31
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locend
.L11500:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo47),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo36),30
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),30
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo44),30
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),30
	.d2locend
.L11502:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo34),29
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo54),29
	.d2locend
.L11508:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo54),3
	.d2locend
.L11514:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),4
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),31
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),31
	.d2locend
.L11516:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),30
	.d2locend
.L11522:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),31
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),31
	.d2locend
.L11523:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo69),4
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),30
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),30
	.d2locend
.L11525:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),29
	.d2locend
.L11527:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo75),28
	.d2locend
.L11533:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),3
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),31
	.d2locend
.L11536:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo80),30
	.d2locend
.L11543:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Core_UnLockAllCores"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Core_LockAllCores"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Core_UnlockCores"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Core_UnlockOtherCore"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Core_LockOtherCore"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Core_UnlockCoreConditionally"
	.wrcm.nstrlist "calls", "Os_Core_UnlockCore"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_UnlockCore"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Core_LockCore"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Core_Lock_PreInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_CoreLock.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_CoreLock.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_CoreLock.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_CoreLock.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_CoreLock.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_CoreLock.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\core\Os_CoreLock.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
