#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Isr.c"
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
# LOCAL_INLINE FUNC(Os_IsrStateType, OS_CODE) Os_Isr_GetState(CONST(CoreIdType, AUTOMATIC) coreId)
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11439:
	.section	.Os_TEXT,,c
#$$ld
.L11435:
	.0byte		.L11433
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11442:

#$$bf	Os_Isr_GetState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6
	.d2_cfa_start __cie
Os_Isr_GetState:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#     return (Os_IsrStateType)(OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_DisableAllCount +
	.d2line		229
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	rlwinm		r3,r3,0,16,31		# coreId=r3 coreId=r3
	e_mulli		r4,r3,20		# coreId=r3
	lwzux		r3,r5,r4		# coreId=r3
	lwz		r6,8(r3)		# coreId=r3
	lis		r3,Os_Core_Stat@ha		# coreId=r3
	e_add16i		r3,r3,Os_Core_Stat@l		# coreId=r3 coreId=r3
	lwzux		r5,r3,r4		# coreId=r3
	lwz		r3,12(r5)		# coreId=r3
	se_add		r6,r3		# coreId=r3
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	lwzx		r4,r5,r4
	lwz		r4,16(r4)
	add		r3,r6,r4		# coreId=r3
#                              OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_SuspendAllCount +
#                              OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_SuspendOSCount);
# }
	.d2line		232
	.d2epilogue_begin
.Llo2:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11443:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC(void,OS_CODE) Os_Isr_PreInit(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\isr\\Os_Isr.c"
        .d2line         101,20
#$$ld
.L11455:

#$$bf	Os_Isr_PreInit,interprocedural,rasave,nostackparams
	.globl		Os_Isr_PreInit
	.d2_cfa_start __cie
Os_Isr_PreInit:
.Llo3:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# coreID=r30 coreID=r3
	.d2prologue_end
# {
#     VAR(Os_ObjectType, AUTOMATIC) objId;
# 
#     OS_GET_CORE_ISR_DYN(coreID)->Os_Isr_NestLevel = (uint32)0U;
	.d2line		105
.Llo4:
	diab.li		r4,0
.Llo5:
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r30,0,16,31		# coreID=r30
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	stw		r4,56(r3)
# 
#     for(objId = 0U; objId < Os_IsrCurrentDeepness[coreID]; objId++)
.L11358:
	.d2line		107
	lis		r3,Os_IsrCurrentDeepness@ha
	e_add16i		r3,r3,Os_IsrCurrentDeepness@l
	rlwinm		r0,r30,2,14,29		# coreID=r30
	lwzx		r0,r3,r0
	se_cmpl		r0,r4		# objId=r4
	bc		0,1,.L11360	# le
#     {
#         Os_IsrCurrentIsr[coreID][objId] = NULL_PTR;
	.d2line		109
	diab.li		r5,0
	lis		r3,Os_IsrCurrentIsr@ha
	e_add16i		r3,r3,Os_IsrCurrentIsr@l
	rlwinm		r0,r30,2,14,29		# coreID=r30
	lwzx		r3,r3,r0
	rlwinm		r0,r4,2,0,29		# objId=r4
	stwx		r5,r3,r0
#     }
	.d2line		110
	diab.addi		r0,r4,1		# objId=r4
	se_addi		r4,1		# objId=r4 objId=r4
	b		.L11358
.L11360:
# 
#     Os_Isr_Platform_Init(coreID);
	.d2line		112
.Llo7:
	rlwinm		r3,r30,0,16,31		# coreID=r30
	bl		Os_Isr_Platform_Init
# 
#     for(objId = Os_ProcRange[coreID].Os_ObjStartId; objId <= Os_ProcRange[coreID].Os_ObjEndId; objId++)
	.d2line		114
	lis		r3,Os_ProcRange@ha
	e_add16i		r3,r3,Os_ProcRange@l
	rlwinm		r0,r30,3,13,28		# coreID=r30
	lwzx		r31,r3,r0
.Llo8:
	mr		r31,r31		# objId=r31 objId=r31
.L11361:
	lis		r3,(Os_ProcRange+4)@ha
	e_add16i		r3,r3,(Os_ProcRange+4)@l
	rlwinm		r0,r30,3,13,28		# coreID=r30
	lwzx		r0,r3,r0
	se_cmpl		r0,r31		# objId=r31
	bc		1,0,.L11363	# lt
#     {
#         /* [OS572-01] */
#         if(Os_Proc_Stat[objId].Os_ProcIsrPlatformConfig != NULL_PTR)
	.d2line		117
	lis		r3,(Os_Proc_Stat+76)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+76)@l
	e_mulli		r0,r31,80		# objId=r31
	lwzx		r0,r3,r0
	se_cmpi		r0,0
	bc		1,2,.L11364	# eq
#         {
#             Os_Isr_Platform_InitChannel(Os_Proc_Stat[objId].Os_ProcIsrPlatformConfig);
	.d2line		119
	lis		r3,(Os_Proc_Stat+76)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+76)@l
	e_mulli		r0,r31,80		# objId=r31
	lwzx		r3,r3,r0
	bl		Os_Isr_Platform_InitChannel
.L11364:
#         }
#     }
	.d2line		121
	diab.addi		r0,r31,1		# objId=r31
	se_addi		r31,1		# objId=r31 objId=r31
	b		.L11361
.L11363:
# 
#     for ( objId  = Os_IsrCAT1PlatformConfigRange[coreID].Os_ObjStartId;
	.d2line		123
.Llo9:
	lis		r3,Os_IsrCAT1PlatformConfigRange@ha
	e_add16i		r3,r3,Os_IsrCAT1PlatformConfigRange@l
	rlwinm		r0,r30,3,13,28		# coreID=r30
	lwzx		r31,r3,r0		# objId=r31
.Llo10:
	mr		r31,r31		# objId=r31 objId=r31
.L11365:
	lis		r3,(Os_IsrCAT1PlatformConfigRange+4)@ha
	e_add16i		r3,r3,(Os_IsrCAT1PlatformConfigRange+4)@l
	rlwinm		r0,r30,3,13,28		# coreID=r30
	lwzx		r0,r3,r0
	se_cmpl		r0,r31		# objId=r31
	bc		1,0,.L11357	# lt
#           objId <= Os_IsrCAT1PlatformConfigRange[coreID].Os_ObjEndId;
#           objId++ )
#     {
#         Os_Isr_Platform_InitChannel(Os_IsrCAT1PlatformConfig[objId]);
	.d2line		127
	lis		r3,Os_IsrCAT1PlatformConfig@ha
	e_add16i		r3,r3,Os_IsrCAT1PlatformConfig@l
	rlwinm		r0,r31,2,0,29		# objId=r31
	lwzx		r3,r3,r0
	bl		Os_Isr_Platform_InitChannel
#     }
	.d2line		128
	diab.addi		r0,r31,1		# objId=r31
	se_addi		r31,1		# objId=r31 objId=r31
	b		.L11365
.L11357:
# }
	.d2line		129
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
.L11456:
	.type		Os_Isr_PreInit,@function
	.size		Os_Isr_PreInit,.-Os_Isr_PreInit
# Number of nodes = 134

# Allocations for Os_Isr_PreInit
#	?a4		coreID
#	?a5		objId
# FUNC(void,OS_CODE) Os_Isr_PostInit(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         133,20
#$$ld
.L11467:

#$$bf	Os_Isr_PostInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Isr_PostInit
	.d2_cfa_start __cie
Os_Isr_PostInit:
.Llo11:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#   #if    ! defined ( OS_CONFIG_UNIFIED_SUSPEND_ALL_INTERRUPTS ) \
#       && ! defined ( OS_CONFIG_SECURE_PRIVATE_DATA )
# 
#     Os_PublicData[coreId].Os_PublicDataVarInitRef->Os_ISRServices = &Os_ISRServicesAPITrusted;
	.d2line		138
	lis		r4,Os_ISRServicesAPITrusted@ha
	e_add16i		r4,r4,Os_ISRServicesAPITrusted@l
	lis		r5,(Os_PublicData+4)@ha
	e_add16i		r5,r5,(Os_PublicData+4)@l
	rlwinm		r3,r3,3,13,28		# coreId=r3 coreId=r3
	lwzx		r3,r5,r3		# coreId=r3
	stw		r4,0(r3)		# coreId=r3
# 
#   #endif
# }
	.d2line		141
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo12:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11468:
	.type		Os_Isr_PostInit,@function
	.size		Os_Isr_PostInit,.-Os_Isr_PostInit
# Number of nodes = 14

# Allocations for Os_Isr_PostInit
#	?a4		coreId
# FUNC(Os_IsrRegister_t,OS_CODE) Os_Isr_GetAndSetUserModeLevel(VAR(Os_IsrRegister_t,AUTOMATIC) isrlevel, CONST(CoreIdType,AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         143,32
#$$ld
.L11473:

#$$bf	Os_Isr_GetAndSetUserModeLevel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,lr
	.globl		Os_Isr_GetAndSetUserModeLevel
	.d2_cfa_start __cie
Os_Isr_GetAndSetUserModeLevel:
.Llo13:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# isrlevel=r3 isrlevel=r3
	mr		r4,r4		# coreId=r4 coreId=r4
	.d2prologue_end
# {
#     VAR(Os_IsrRegister_t,AUTOMATIC) oldLevel = OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_CurrentUserModePriority;
	.d2line		145
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	rlwinm		r4,r4,0,16,31		# coreId=r4 coreId=r4
	e_mulli		r7,r4,20		# coreId=r4
	lwzux		r4,r5,r7		# coreId=r4
	lwz		r4,0(r4)		# coreId=r4 coreId=r4
.Llo15:
	mr		r4,r4		# oldLevel=r4 oldLevel=r4
# 
#     OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_CurrentUserModePriority = isrlevel;
	.d2line		147
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	lwzx		r6,r5,r7
	stw		r3,0(r6)		# isrlevel=r3
#     OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_UserModePriorityChanged = TRUE;
	.d2line		148
	diab.li		r3,1		# isrlevel=r3
	lwzx		r5,r5,r7
	stb		r3,4(r5)		# isrlevel=r3
# 
#     return oldLevel;
	.d2line		150
	mr		r3,r4		# oldLevel=r3 oldLevel=r4
# }
	.d2line		151
	.d2epilogue_begin
.Llo14:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo16:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11474:
	.type		Os_Isr_GetAndSetUserModeLevel,@function
	.size		Os_Isr_GetAndSetUserModeLevel,.-Os_Isr_GetAndSetUserModeLevel
# Number of nodes = 37

# Allocations for Os_Isr_GetAndSetUserModeLevel
#	?a4		isrlevel
#	?a5		coreId
#	?a6		oldLevel
# FUNC(void,OS_CODE) Os_Isr_ServicesSwitchToTrusted(void)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         155,20
#$$ld
.L11483:

#$$bf	Os_Isr_ServicesSwitchToTrusted,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Isr_ServicesSwitchToTrusted
	.d2_cfa_start __cie
Os_Isr_ServicesSwitchToTrusted:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#   #if    ! defined ( OS_CONFIG_UNIFIED_SUSPEND_ALL_INTERRUPTS ) \
#       && ! defined ( OS_CONFIG_SECURE_PRIVATE_DATA )
# 
#     CONST (CoreIdType, AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		160
	mfspr		r3,286		# coreId=r3
.Llo17:
	mr		r3,r3		# coreId=r3 coreId=r3
# 
#     Os_PublicData[coreId].Os_PublicDataVarInitRef->Os_ISRServices = &Os_ISRServicesAPITrusted;
	.d2line		162
	lis		r4,Os_ISRServicesAPITrusted@ha
	e_add16i		r4,r4,Os_ISRServicesAPITrusted@l
	lis		r5,(Os_PublicData+4)@ha
	e_add16i		r5,r5,(Os_PublicData+4)@l
	rlwinm		r3,r3,3,13,28		# coreId=r3 coreId=r3
	lwzx		r3,r5,r3		# coreId=r3
	stw		r4,0(r3)		# coreId=r3
# 
#   #endif
# }
	.d2line		165
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo18:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11484:
	.type		Os_Isr_ServicesSwitchToTrusted,@function
	.size		Os_Isr_ServicesSwitchToTrusted,.-Os_Isr_ServicesSwitchToTrusted
# Number of nodes = 21

# Allocations for Os_Isr_ServicesSwitchToTrusted
#	?a4		coreId
# FUNC(void,OS_CODE) Os_Isr_ServicesSwitchToNonTrusted(void)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         168,20
#$$ld
.L11490:

#$$bf	Os_Isr_ServicesSwitchToNonTrusted,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Isr_ServicesSwitchToNonTrusted
	.d2_cfa_start __cie
Os_Isr_ServicesSwitchToNonTrusted:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#   #if    ! defined ( OS_CONFIG_UNIFIED_SUSPEND_ALL_INTERRUPTS ) \
#       && ! defined ( OS_CONFIG_SECURE_PRIVATE_DATA )
# 
#     CONST (CoreIdType, AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		173
	mfspr		r3,286		# coreId=r3
.Llo19:
	mr		r3,r3		# coreId=r3 coreId=r3
# 
#     Os_PublicData[coreId].Os_PublicDataVarInitRef->Os_ISRServices = &Os_ISRServicesAPINonTrusted;
	.d2line		175
	lis		r4,Os_ISRServicesAPINonTrusted@ha
	e_add16i		r4,r4,Os_ISRServicesAPINonTrusted@l
	lis		r5,(Os_PublicData+4)@ha
	e_add16i		r5,r5,(Os_PublicData+4)@l
	rlwinm		r3,r3,3,13,28		# coreId=r3 coreId=r3
	lwzx		r3,r5,r3		# coreId=r3
	stw		r4,0(r3)		# coreId=r3
# 
#   #endif
# }
	.d2line		178
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo20:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11491:
	.type		Os_Isr_ServicesSwitchToNonTrusted,@function
	.size		Os_Isr_ServicesSwitchToNonTrusted,.-Os_Isr_ServicesSwitchToNonTrusted
# Number of nodes = 21

# Allocations for Os_Isr_ServicesSwitchToNonTrusted
#	?a4		coreId
# FUNC (void, OS_CODE) Os_Isr_ServicesSwitchToHook ( void )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         182,22
#$$ld
.L11497:

#$$bf	Os_Isr_ServicesSwitchToHook,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,lr
	.globl		Os_Isr_ServicesSwitchToHook
	.d2_cfa_start __cie
Os_Isr_ServicesSwitchToHook:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#   #if    ! defined ( OS_CONFIG_UNIFIED_SUSPEND_ALL_INTERRUPTS ) \
#       && ! defined ( OS_CONFIG_SECURE_PRIVATE_DATA )
# 
#     CONST (CoreIdType, AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		187
	mfspr		r5,286		# coreId=r5
.Llo21:
	mr		r5,r5		# coreId=r5 coreId=r5
# 
#     OS_GET_CORE_ISR_DYN(coreId)->Os_Isr_ServicesBackup = Os_PublicData[coreId].Os_PublicDataVarInitRef->Os_ISRServices;
	.d2line		189
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	rlwinm		r6,r5,3,13,28		# coreId=r5
	lwzx		r4,r3,r6
	lwz		r7,0(r4)
	lis		r4,(Os_Core_Stat+4)@ha
	e_add16i		r4,r4,(Os_Core_Stat+4)@l
	rlwinm		r5,r5,0,16,31		# coreId=r5 coreId=r5
	e_mulli		r5,r5,20		# coreId=r5 coreId=r5
.Llo22:
	lwzx		r4,r4,r5
	stw		r7,60(r4)
#     Os_PublicData[coreId].Os_PublicDataVarInitRef->Os_ISRServices = &Os_ISRServicesHook;
	.d2line		190
	lis		r4,Os_ISRServicesHook@ha
	e_add16i		r4,r4,Os_ISRServicesHook@l
	lwzx		r3,r3,r6
	stw		r4,0(r3)
# 
#   #endif
# }
	.d2line		193
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11498:
	.type		Os_Isr_ServicesSwitchToHook,@function
	.size		Os_Isr_ServicesSwitchToHook,.-Os_Isr_ServicesSwitchToHook
# Number of nodes = 46

# Allocations for Os_Isr_ServicesSwitchToHook
#	?a4		coreId
# FUNC (void, OS_CODE) Os_Isr_ServicesSwitchBackFromHook ( void )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         196,22
#$$ld
.L11504:

#$$bf	Os_Isr_ServicesSwitchBackFromHook,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Isr_ServicesSwitchBackFromHook
	.d2_cfa_start __cie
Os_Isr_ServicesSwitchBackFromHook:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#   #if    ! defined ( OS_CONFIG_UNIFIED_SUSPEND_ALL_INTERRUPTS ) \
#       && ! defined ( OS_CONFIG_SECURE_PRIVATE_DATA )
# 
#     CONST (CoreIdType, AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		201
	mfspr		r3,286		# coreId=r3
.Llo23:
	mr		r3,r3		# coreId=r3 coreId=r3
# 
#     Os_PublicData[coreId].Os_PublicDataVarInitRef->Os_ISRServices = OS_GET_CORE_ISR_DYN(coreId)->Os_Isr_ServicesBackup;
	.d2line		203
	lis		r5,(Os_Core_Stat+4)@ha
	e_add16i		r5,r5,(Os_Core_Stat+4)@l
	rlwinm		r4,r3,0,16,31		# coreId=r3
	e_mulli		r4,r4,20
	lwzx		r4,r5,r4
	lwz		r4,60(r4)
	lis		r5,(Os_PublicData+4)@ha
	e_add16i		r5,r5,(Os_PublicData+4)@l
	rlwinm		r3,r3,3,13,28		# coreId=r3 coreId=r3
	lwzx		r3,r5,r3		# coreId=r3
	stw		r4,0(r3)		# coreId=r3
# 
#   #endif
# }
	.d2line		206
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11505:
	.type		Os_Isr_ServicesSwitchBackFromHook,@function
	.size		Os_Isr_ServicesSwitchBackFromHook,.-Os_Isr_ServicesSwitchBackFromHook
# Number of nodes = 32

# Allocations for Os_Isr_ServicesSwitchBackFromHook
#	?a4		coreId
# FUNC(void,OS_CODE) Os_DispatchISR(VAR(uint32,AUTOMATIC) ISRDispatchParam)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         209,20
#$$ld
.L11511:

#$$bf	Os_DispatchISR,interprocedural,rasave,nostackparams
	.globl		Os_DispatchISR
	.d2_cfa_start __cie
Os_DispatchISR:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo25:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# isrValidate=r0
	.d2_cfa_offset    108,-1
	stw		r3,8(r1)
	.d2prologue_end
# {
#     CONST(Os_IsrValidateType,AUTOMATIC) isrValidate = Os_IsrValidate(&ISRDispatchParam);
	.d2line		211
	diab.addi		r3,r1,8
	bl		Os_IsrValidate
	.d2line		213
.Llo26:
	mr.		r0,r3		# isrValidate=?a5 isrValidate=r3
# 
#     if (isrValidate == OS_ISR_VALID)
.Llo27:
	bc		0,2,.L11382	# ne
#     {
#         /* [OS001-262.v1] [OS001-263.v1] */
#         if (OS_ISR_TIMER_CHECK(ISRDispatchParam)) /*OsTimerInterrupt*/
	.d2line		216
.Llo28:
	lwz		r0,8(r1)		# isrValidate=r0
.Llo29:
	se_btsti		r0,19		# isrValidate=r0
	bc		1,2,.L11383	# eq
	.section	.Os_TEXT,,c
.L11519:
#         {
#             CONST(Os_TimerType,AUTOMATIC) timerId = OS_ISR_TIMER_GET(ISRDispatchParam);
	.d2line		218
.Llo30:
	lwz		r3,8(r1)
.Llo53:
	.diab.bclri		r3,19
	mr		r3,r3		# timerId=r3 timerId=r3
#             Os_Timer_Tick(timerId);
	.d2line		219
	mr		r3,r3		# timerId=r3 timerId=r3
.Llo54:
	bl		Os_Timer_Tick
	.section	.Os_TEXT,,c
.L11520:
	b		.L11381
.L11383:
#         }
# #ifdef OS_MODULE_MEMORYPROTECTION
#         else if (OS_ISR_MEMORYP_CHECK(ISRDispatchParam)) /* Memory protection isr */
#         {
#             Os_MemoryProtectionViolation(OS_ISR_MEMORYP_GET(ISRDispatchParam)); /* [OS044] */
#         }
# #endif  /* OS_MODULE_MEMORYPROTECTION */
#         else if (OS_ISR_EXCEPTION_CHECK(ISRDispatchParam))
	.d2line		227
	lwz		r0,8(r1)		# isrValidate=r0
.Llo31:
	se_btsti		r0,17		# isrValidate=r0
	bc		1,2,.L11385	# eq
#         {
#           #if defined ( OS_PLATFORM_EXCEPTION_TYPES )     &&      \
#                       ( ( OS_SHUTDOWNHOOK == STD_ON )     ||      \
#                         ( OS_APP_SHUTDOWNHOOK == STD_ON ) ||      \
#                         ( OS_PROTECTIONHOOK == STD_ON ) )
# 
#             Os_Platfrom_ReadExceptionStatus ( (Os_ExceptionTypeType) OS_ISR_EXCEPTION_GET ( ISRDispatchParam ) );
	.d2line		234
.Llo32:
	lwz		r3,8(r1)
	.diab.bclri		r3,17
	bl		Os_Platfrom_ReadExceptionStatus
#           #endif
# 
#             Os_Call_ProtectionHook(E_OS_PROTECTION_EXCEPTION,OS_SCHEDULER_GET_CURRENT_PROC(OS_GETCOREID())); /* [OS245] */
	.d2line		237
	lis		r3,Os_Core_Stat@ha
	e_add16i		r3,r3,Os_Core_Stat@l
	mfspr		r0,286		# isrValidate=r0
.Llo33:
	rlwinm		r0,r0,0,16,31		# isrValidate=r0 isrValidate=r0
	e_mulli		r0,r0,20		# isrValidate=r0 isrValidate=r0
.Llo34:
	lwzx		r3,r3,r0
	lwz		r4,28(r3)
	diab.li		r3,21
	bl		Os_Call_ProtectionHook
	b		.L11381
.L11385:
	.section	.Os_TEXT,,c
.L11527:
#         }
#         else
#         {
#             CONST(ISRType, AUTOMATIC) isrProcId = OS_ISR_GETID(ISRDispatchParam);
	.d2line		241
	lwz		r31,8(r1)		# isrProcId=r31
.Llo55:
	rlwinm		r31,r31,0,20,31		# isrProcId=r31 isrProcId=r31
	mr		r31,r31		# isrProcId=r31 isrProcId=r31
#             CONST(CoreIdType, AUTOMATIC) coreID = OS_GETCOREID();
	.d2line		242
	mfspr		r30,286		# coreID=r30
.Llo59:
	mr		r30,r30		# coreID=r30 coreID=r30
# 
# #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#             if(((Os_ObjectType)isrProcId < Os_ProcRange[coreID].Os_ObjStartId) ||
	.d2line		245
	lis		r3,Os_ProcRange@ha
	e_add16i		r3,r3,Os_ProcRange@l
	rlwinm		r0,r30,3,13,28		# isrValidate=r0 coreID=r30
.Llo35:
	lwzx		r0,r3,r0		# isrValidate=r0
	se_cmpl		r0,r31		# isrValidate=r0 isrProcId=r31
	bc		1,1,.L11395	# gt
.Llo36:
	lis		r3,(Os_ProcRange+4)@ha
	e_add16i		r3,r3,(Os_ProcRange+4)@l
	rlwinm		r0,r30,3,13,28		# isrValidate=r0 coreID=r30
.Llo37:
	lwzx		r0,r3,r0		# isrValidate=r0
	se_cmpl		r0,r31		# isrValidate=r0 isrProcId=r31
	bc		0,0,.L11387	# ge
.L11395:
#                ((Os_ObjectType)isrProcId > Os_ProcRange[coreID].Os_ObjEndId))
#             {
#                 OS_FATAL_ERROR(E_OS_SYS_INVALID_ISRPROCKIND);
	.d2line		248
.Llo38:
	diab.li		r4,17
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# isrValidate=r0
.Llo39:
	rlwinm		r0,r0,0,16,31		# isrValidate=r0 isrValidate=r0
	e_mulli		r0,r0,152		# isrValidate=r0 isrValidate=r0
.Llo40:
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11387:
	.section	.Os_TEXT,,c
.L11538:
#             }
# #endif
#             {
#                 CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) isrProc = &Os_Proc_Stat[isrProcId];
	.d2line		252
.Llo56:
	lis		r3,Os_Proc_Stat@ha
	e_add16i		r3,r3,Os_Proc_Stat@l
.Llo57:
	e_mulli		r31,r31,80		# isrProcId=r31 isrProcId=r31
	se_add		r3,r31		# isrProcId=r31
.Llo61:
	mr		r31,r3		# isrProc=r31 isrProc=r3
# #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#                 if (isrProc->Os_ProcKind != Os_Proc_ISR_CAT2)
	.d2line		254
.Llo58:
	lwz		r0,16(r31)		# isrValidate=r0 isrProc=r31
.Llo41:
	se_cmpi		r0,1		# isrValidate=r0
	bc		1,2,.L11389	# eq
#                 {
#                     OS_FATAL_ERROR(E_OS_SYS_INVALID_ISRPROCKIND);
	.d2line		256
.Llo42:
	diab.li		r4,17
.Llo62:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# isrValidate=r0
.Llo43:
	rlwinm		r0,r0,0,16,31		# isrValidate=r0 isrValidate=r0
	e_mulli		r0,r0,152		# isrValidate=r0 isrValidate=r0
.Llo44:
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11389:
#                 }
# #endif
#                 {
#                     Os_Isr_SetCurrent ( coreID, isrProc );
	.d2line		260
	lis		r3,Os_IsrCurrentIsr@ha		# isrProc=r3
	e_add16i		r3,r3,Os_IsrCurrentIsr@l		# isrProc=r3 isrProc=r3
	rlwinm		r0,r30,2,14,29		# isrValidate=r0 coreID=r30
	lwzx		r3,r3,r0		# isrProc=r3 isrProc=r3
	lis		r4,(Os_Core_Stat+4)@ha
	e_add16i		r4,r4,(Os_Core_Stat+4)@l
	rlwinm		r30,r30,0,16,31		# coreID=r30 coreID=r30
	e_mulli		r30,r30,20		# coreID=r30 coreID=r30
.Llo60:
	lwzux		r5,r4,r30
	lwz		r0,56(r5)		# isrValidate=r0
.Llo45:
	se_slwi		r0,2		# isrValidate=r0 isrValidate=r0
.Llo46:
	stwx		r31,r3,r0		# isrProc=r3 isrProc=r31
	lis		r3,(Os_Core_Stat+4)@ha		# isrProc=r3
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# isrProc=r3 isrProc=r3
	lwzux		r4,r3,r30		# isrProc=r3
	lwz		r3,56(r4)		# isrProc=r3
	se_addi		r3,1		# isrProc=r3 isrProc=r3
	stw		r3,56(r4)		# isrProc=r3
	lis		r3,(Os_Core_Stat+4)@ha		# isrProc=r3
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# isrProc=r3 isrProc=r3
	lwzx		r3,r3,r30		# isrProc=r3 isrProc=r3
	stw		r31,48(r3)		# isrProc=r3 isrProc=r31
# 
#                   #ifdef OS_MODULE_CALLTRUSTEDFUNCTION
# 
#                     isrProc->Os_ProcDyn->Os_ProcTFCallCount   = (uint8) 0U;
	.d2line		264
	diab.li		r0,0		# isrValidate=r0
.Llo47:
	lwz		r3,8(r31)		# isrProc=r3 isrProc=r31
	stb		r0,52(r3)		# isrProc=r3 isrValidate=r0
#                     isrProc->Os_ProcDyn->Os_FatalErrorOccured = E_OK;
	.d2line		265
	lwz		r3,8(r31)		# isrProc=r3 isrProc=r31
	stb		r0,53(r3)		# isrProc=r3 isrValidate=r0
# 
#                   #endif
# 
#                     isrProc->Os_ProcDyn->Os_ProcContextState = Os_ProcContextInvalid;
	.d2line		269
	lwz		r3,8(r31)		# isrProc=r3 isrProc=r31
	stw		r0,4(r3)		# isrProc=r3 isrValidate=r0
#                     isrProc->Os_ProcDyn->Os_ProcActivations  = (Os_ActivationCountType) 1U;
	.d2line		270
	diab.li		r0,1		# isrValidate=r0
	lwz		r3,8(r31)		# isrProc=r3 isrProc=r31
	stw		r0,24(r3)		# isrProc=r3 isrValidate=r0
#                     Os_SchedulerStartProc ( isrProc );
	.d2line		271
	mr		r3,r31		# isrProc=r3 isrProc=r31
	bl		Os_SchedulerStartProc
	.section	.Os_TEXT,,c
.L11539:
	.section	.Os_TEXT,,c
.L11528:
.Llo48:
	b		.L11381
.L11382:
#                 }
#             }
#         }
#     }
#     else if (isrValidate == OS_ISR_INVALID)
	.d2line		276
.Llo49:
	se_cmpi		r0,1		# isrValidate=r0
	bc		0,2,.L11381	# ne
#     {
#         Os_Call_ProtectionHook(E_OS_UNHANDLED_INT,OS_SCHEDULER_GET_CURRENT_PROC(OS_GETCOREID()));
	.d2line		278
.Llo50:
	lis		r3,Os_Core_Stat@ha
	e_add16i		r3,r3,Os_Core_Stat@l
	mfspr		r0,286		# isrValidate=r0
.Llo51:
	rlwinm		r0,r0,0,16,31		# isrValidate=r0 isrValidate=r0
	e_mulli		r0,r0,20		# isrValidate=r0 isrValidate=r0
.Llo52:
	lwzx		r3,r3,r0
	lwz		r4,28(r3)
	diab.li		r3,22
	bl		Os_Call_ProtectionHook
.L11381:
#     }
#     else
#     {
#         /* Skipped */
#     }
# }
	.d2line		284
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# isrValidate=r0
	mtspr		lr,r0		# isrValidate=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11512:
	.type		Os_DispatchISR,@function
	.size		Os_DispatchISR,.-Os_DispatchISR
# Number of nodes = 266

# Allocations for Os_DispatchISR
#	SP,8		ISRDispatchParam
#	?a4		$$2352
#	?a5		isrValidate
#	?a6		timerId
#	?a7		isrProcId
#	?a8		coreID
#	?a9		isrProc
# FUNC(void,OS_CODE)  Os_Isr_ResetState(void)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         287,21
#$$ld
.L11551:

#$$bf	Os_Isr_ResetState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.globl		Os_Isr_ResetState
	.d2_cfa_start __cie
Os_Isr_ResetState:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_GETCOREID();
	.d2line		289
	mfspr		r6,286		# coreID=r6
.Llo63:
	mr		r6,r6		# coreID=r6 coreID=r6
#     OS_GET_CORE_ISR_DYN_INIT(coreID)->Os_DisableAllCount =  (uint32)0U;
	.d2line		290
	diab.li		r3,0
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	rlwinm		r6,r6,0,16,31		# coreID=r6 coreID=r6
	e_mulli		r6,r6,20		# coreID=r6 coreID=r6
.Llo64:
	lwzux		r4,r5,r6
	stw		r3,8(r4)
#     OS_GET_CORE_ISR_DYN_INIT(coreID)->Os_SuspendAllCount =  (uint32)0U;
	.d2line		291
	lis		r4,Os_Core_Stat@ha
	e_add16i		r4,r4,Os_Core_Stat@l
	lwzux		r5,r4,r6
	stw		r3,12(r5)
#     OS_GET_CORE_ISR_DYN_INIT(coreID)->Os_SuspendOSCount  =  (uint32)0U;
	.d2line		292
	lis		r4,Os_Core_Stat@ha
	e_add16i		r4,r4,Os_Core_Stat@l
	lwzx		r4,r4,r6
	stw		r3,16(r4)
# }
	.d2line		293
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11552:
	.type		Os_Isr_ResetState,@function
	.size		Os_Isr_ResetState,.-Os_Isr_ResetState
# Number of nodes = 46

# Allocations for Os_Isr_ResetState
#	?a4		coreID
# FUNC (void, OS_CODE) Os_Isr_SwitchIn ( P2CONST (Os_ProcStatType, AUTOMATIC, OS_CONST) isrProc )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         296,22
#$$ld
.L11558:

#$$bf	Os_Isr_SwitchIn,interprocedural,rasave,nostackparams
	.globl		Os_Isr_SwitchIn
	.d2_cfa_start __cie
Os_Isr_SwitchIn:
.Llo65:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# isrProc=r31 isrProc=r3
	.d2prologue_end
# {
#   #ifdef OS_MODULE_MULTICORE
#     CONST (CoreIdType, AUTOMATIC)  procCoreId = isrProc->Os_ProcCoreID;
	.d2line		299
	lhz		r30,4(r31)		# isrProc=r31
.Llo69:
	mr		r30,r30		# procCoreId=r30 procCoreId=r30
#   #else
#     CONST (CoreIdType, AUTOMATIC)  procCoreId = OS_GETCOREID();
#   #endif
# 
#     /* Os_ProcState can only be SUSPENDED or RUNNING(if previously interrupted) at this time */
#     if ( isrProc->Os_ProcDyn->Os_ProcState == SUSPENDED )
	.d2line		305
	lwz		r3,8(r31)		# isrProc=r31
.Llo66:
	lwz		r0,0(r3)
	se_cmpi		r0,3
	bc		0,2,.L11405	# ne
#     {
#         isrProc->Os_ProcDyn->Os_ProcState = RUNNING;
	.d2line		307
.Llo67:
	diab.li		r0,0
	lwz		r3,8(r31)		# isrProc=r31
	stw		r0,0(r3)
	b		.L11406
.L11405:
# 
#         OS_CALL_RTM_PROCESS_STATE_CHANGE ( SuspendedToRunning, isrProc->Os_ProcId, procCoreId );
#     }
#     else
#     {
#         OS_ASSERT(isrProc->Os_ProcDyn->Os_ProcState == RUNNING, E_OS_SYS_WRONG_TASKSTATETRANZITION2);
	.d2line		313
	lwz		r3,8(r31)		# isrProc=r31
	lwz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11406	# eq
	diab.li		r4,25
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11406:
#     }
# 
#     if ( isrProc->Os_ProcDyn->Os_ProcContextState == Os_ProcContextInvalid )
	.d2line		316
	lwz		r3,8(r31)		# isrProc=r31
	lwz		r0,4(r3)
	se_cmpi		r0,0
	bc		0,2,.L11404	# ne
#     {
#         isrProc->Os_ProcDyn->Os_ProcContextState = Os_ProcContextActive;
	.d2line		318
.Llo70:
	diab.li		r0,1
	lwz		r3,8(r31)		# isrProc=r3 isrProc=r31
	stw		r0,4(r3)		# isrProc=r3
# 
#         OS_GET_CORE_STAT ( procCoreId )->Os_PrepareContextFunction ( isrProc );
	.d2line		320
	lis		r3,(Os_Core_Stat+12)@ha		# isrProc=r3
	e_add16i		r3,r3,(Os_Core_Stat+12)@l		# isrProc=r3 isrProc=r3
.Llo71:
	rlwinm		r30,r30,0,16,31		# procCoreId=r30 procCoreId=r30
	e_mulli		r30,r30,20		# procCoreId=r30 procCoreId=r30
.Llo72:
	lwzx		r0,r3,r30		# isrProc=r3
	mtspr		ctr,r0
	mr		r3,r31		# isrProc=r3 isrProc=r31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L11404:
# 
#       #ifdef OS_MODULE_TIMINGPROTECTION
# 
#         Os_TPTimer_Start ( isrProc->Os_ProcBudgetTimerConf, Os_TPT_BudgetStart ); /* [OS471-01-MGC] */
#         Os_TPTimer_Start ( isrProc->Os_ProcIntervalTimerConf, Os_TPT_InterArrivalStart );
# 
#       #endif
# 
#     }
# 
# }
	.d2line		331
	.d2epilogue_begin
.Llo68:
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
.L11559:
	.type		Os_Isr_SwitchIn,@function
	.size		Os_Isr_SwitchIn,.-Os_Isr_SwitchIn
# Number of nodes = 80

# Allocations for Os_Isr_SwitchIn
#	?a4		isrProc
#	?a5		procCoreId
# OS_API(TerminateIsr)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         393,1
#$$ld
.L11566:

#$$bf	Os_API_TerminateIsr,interprocedural,rasave,nostackparams
	.globl		Os_API_TerminateIsr
	.d2_cfa_start __cie
Os_API_TerminateIsr:
.Llo73:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r4		# callerProc=r31 callerProc=r4
	.d2prologue_end
# {
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_GETCOREID();
	.d2line		395
	mfspr		r30,286		# coreID=r30
	mr		r30,r30		# coreID=r30 coreID=r30
# 
#     callerProc->Os_ProcDyn->Os_ProcContextState = Os_ProcContextInvalid;
	.d2line		397
	diab.li		r0,0
	lwz		r3,8(r31)		# callerProc=r31
	stw		r0,4(r3)
# 
#     Os_Isr_RemoveCurrent(coreID);
	.d2line		399
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r7,r30,0,16,31		# coreID=r30
	e_mulli		r7,r7,20
	lwzx		r5,r3,r7
	lwz		r4,56(r5)
.Llo74:
	diab.addi		r4,r4,-1
	stw		r4,56(r5)
	lis		r4,Os_IsrCurrentIsr@ha
	e_add16i		r4,r4,Os_IsrCurrentIsr@l
	rlwinm		r5,r30,2,14,29		# coreID=r30
	lwzx		r4,r4,r5
	mr		r5,r3
	lwzux		r6,r5,r7
	lwz		r5,56(r6)
	se_slwi		r5,2
	stwx		r0,r4,r5
	lwzx		r3,r3,r7
	lwz		r0,56(r3)
	se_cmpi		r0,0
	bc		0,2,.L11422	# ne
.Llo75:
	diab.li		r0,0
	b		.L11423
.L11422:
	lis		r3,Os_IsrCurrentIsr@ha
	e_add16i		r3,r3,Os_IsrCurrentIsr@l
	rlwinm		r0,r30,2,14,29		# coreID=r30
	lwzx		r4,r3,r0
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r30,0,16,31		# coreID=r30
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	lwz		r0,56(r3)
	se_slwi		r0,2
	se_add		r4,r0
	lwz		r0,-4(r4)
.L11423:
	lis		r3,(Os_Core_Stat+4)@ha		# coreID=r3
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# coreID=r3 coreID=r3
	rlwinm		r5,r30,0,16,31		# coreID=r30
	e_mulli		r5,r5,20
	lwzx		r3,r3,r5		# coreID=r3 coreID=r3
	stw		r0,48(r3)		# coreID=r3
# 
#     Os_SchedulerTerminateProc(callerProc);
	.d2line		401
	mr		r3,r31		# callerProc=r3 callerProc=r31
	bl		Os_SchedulerTerminateProc
# 
#     callerProc->Os_ProcDyn->Os_ProcActivations--;
	.d2line		403
	lwz		r4,8(r31)		# callerProc=r31
	lwz		r3,24(r4)		# callerProc=r3
	diab.addi		r3,r3,-1		# callerProc=r3 callerProc=r3
	stw		r3,24(r4)		# callerProc=r3
# 
#     callerProc->Os_ProcDyn->Os_ProcState = SUSPENDED;
	.d2line		405
	diab.li		r0,3
	lwz		r3,8(r31)		# callerProc=r3 callerProc=r31
	stw		r0,0(r3)		# callerProc=r3
#     /* BZ21261 */
#     OS_CALL_RTM_PROCESS_STATE_CHANGE(RunningToSuspended, callerProc->Os_ProcId, coreID);
# 
#    if( Os_Isr_Enabled != Os_Isr_GetState(coreID))
	.d2line		409
	mr		r3,r30		# coreID=r3 coreID=r30
	bl		Os_Isr_GetState
	se_cmpi		r3,0		# coreID=r3
	bc		1,2,.L11419	# eq
#     {
#         /* [OS368-01] */
#         Os_Isr_ResetState();
	.d2line		412
	bl		Os_Isr_ResetState
# 
#         OS_CALL_ERRORHOOK(E_OS_DISABLEDINT, OSServiceId_INVALIDSERVICE, callerProc); /* [OS368-02] */
	.d2line		414
	diab.li		r3,10		# coreID=r3
	mr		r5,r31		# callerProc=r5 callerProc=r31
	diab.li		r4,255
	bl		Os_Call_ErrorHook
.L11419:
#     }
#     else
#     {
#         /* Return to ISCAT2 level these should be restored 0,
#          * returning to task level it will be set by ISR acknowledgment
#          */
#     }
# 
#     /* [OS369-01-MGC],[OS369-02] */
#     if(callerProc->Os_ProcDyn->Os_ProcResourcesAllocated > 0)
	.d2line		424
	lwz		r3,8(r31)		# coreID=r3 callerProc=r31
	lwz		r0,28(r3)		# coreID=r3
	se_cmpi		r0,0
	bc		1,2,.L11420	# eq
#     {
#         Os_Resource_FreeTaskResources(callerProc);
	.d2line		426
	mr		r3,r31		# callerProc=r3 callerProc=r31
	bl		Os_Resource_FreeTaskResources
#         callerProc->Os_ProcDyn->Os_ProcResourcesAllocated = 0;
	.d2line		427
	diab.li		r0,0
	lwz		r3,8(r31)		# callerProc=r3 callerProc=r31
	stw		r0,28(r3)		# callerProc=r3
# 
#         OS_CALL_ERRORHOOK(E_OS_RESOURCE, OSServiceId_INVALIDSERVICE, callerProc);
	.d2line		429
	diab.li		r3,6		# callerProc=r3
	mr		r5,r31		# callerProc=r5 callerProc=r31
	diab.li		r4,255
	bl		Os_Call_ErrorHook
.L11420:
#     }
#   #ifdef OS_MODULE_TIMINGPROTECTION
#     if(callerProc->Os_ProcKind == Os_Proc_ISR_CAT2)
#     {
#         Os_TPTimer_Stop(callerProc->Os_ProcBudgetTimerConf); /* [OS474-01-MGC] */
#     }
#   #endif
# 
#   #ifdef OS_MODULE_SPINLOCK
#     if(callerProc->Os_ProcDyn->Os_ProcSpinlock != NULL_PTR)
	.d2line		439
	lwz		r3,8(r31)		# coreID=r3 callerProc=r31
	lwz		r0,40(r3)		# coreID=r3
	se_cmpi		r0,0
	bc		1,2,.L11421	# eq
#     {
#         /* [OS-MGC-0107] */
#         Os_Spinlock_ReleaseProcSpinlocks(callerProc);
	.d2line		442
	mr		r3,r31		# callerProc=r3 callerProc=r31
	bl		Os_Spinlock_ReleaseProcSpinlocks
#         OS_CALL_ERRORHOOK(E_OS_SPINLOCK, OSServiceId_INVALIDSERVICE, callerProc);
	.d2line		443
	diab.li		r3,29		# callerProc=r3
	mr		r5,r31		# callerProc=r5 callerProc=r31
	diab.li		r4,255
	bl		Os_Call_ErrorHook
.L11421:
#     }
#   #endif /* OS_MODULE_SPINLOCK */
# 
#     OS_GET_CORE_ISR_DYN(coreID)->Os_IsrNeedToClear = callerProc->Os_ProcIsrPlatformConfig;
	.d2line		447
.Llo77:
	lwz		r3,76(r31)		# coreID=r3 callerProc=r31
.Llo78:
	lis		r4,(Os_Core_Stat+4)@ha
	e_add16i		r4,r4,(Os_Core_Stat+4)@l
	rlwinm		r30,r30,0,16,31		# coreID=r30 coreID=r30
	e_mulli		r30,r30,20		# coreID=r30 coreID=r30
	lwzx		r4,r4,r30
	stw		r3,52(r4)		# coreID=r3
# }
	.d2line		448
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo76:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo79:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11567:
	.type		Os_API_TerminateIsr,@function
	.size		Os_API_TerminateIsr,.-Os_API_TerminateIsr
# Number of nodes = 225

# Allocations for Os_API_TerminateIsr
#	not allocated	Os_APICall
#	?a4		callerProc
#	?a5		$$2355
#	?a6		$$2354
#	?a7		$$2353
#	?a8		coreID
# FUNC (void, OS_CODE) Os_WrapperIsr(CONST(Os_ProcEntryPointType, AUTOMATIC) isrEntryPoint)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11584:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11580:
	.0byte		.L11578
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\isr\\Os_Isr.c"
        .d2line         456,22
#$$ld
.L11587:

#$$bf	Os_WrapperIsr,interprocedural,rasave,nostackparams
	.globl		Os_WrapperIsr
	.d2_cfa_start __cie
Os_WrapperIsr:
.Llo80:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# isrEntryPoint=r3 isrEntryPoint=r3
	.d2prologue_end
# {
#     isrEntryPoint();
	.d2line		458
	mtspr		ctr,r3		# isrEntryPoint=ctr isrEntryPoint=r3
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	.section	.Os_PUBLIC_TEXT,,c
.L11597:
#     {
#         /* ask the os to terminate this interrupt */
#         VAR(Os_APICallType,AUTOMATIC) Os_TerminateIsrCall;
#         OS_API_ALLOC(Os_TerminateIsrCall,TerminateIsr);
	.d2line		462
.Llo81:
	e_lis		r0,4660
	e_or2i		r0,22136
	stw		r0,8(r1)
	lis		r3,Os_API_TerminateIsr@ha
	e_add16i		r3,r3,Os_API_TerminateIsr@l
	stw		r3,20(r1)
	diab.li		r4,0
	stw		r4,16(r1)
#         OS_SYSCALL(Os_TerminateIsrCall);
	.d2line		463
	diab.addi		r3,r1,8
	bl		OS_SYS_CALL
	.section	.Os_PUBLIC_TEXT,,c
.L11598:
#     }
# }
	.d2line		465
	.d2epilogue_begin
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11588:
	.type		Os_WrapperIsr,@function
	.size		Os_WrapperIsr,.-Os_WrapperIsr
# Number of nodes = 30

# Allocations for Os_WrapperIsr
#	?a4		isrEntryPoint
#	SP,8		Os_TerminateIsrCall
# static FUNC (void, OS_CODE) Os_IsrService_EmptyFunction ( void )
	.align		1
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         470,29
#$$ld
.L11605:

#$$bf	Os_IsrService_EmptyFunction,interprocedural,nostackparams

# Regs written: r0,r1
	.d2_cfa_start __cie
Os_IsrService_EmptyFunction:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /*Do nothing in hooks due to the interrupts are already disabled,
#      * enable is permitted due to the kernel operation is in progress */
# }
	.d2line		474
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11606:
	.type		Os_IsrService_EmptyFunction,@function
	.size		Os_IsrService_EmptyFunction,.-Os_IsrService_EmptyFunction
# Number of nodes = 0

# Allocations for Os_IsrService_EmptyFunction

# Allocations for module
	.section	.text_vle
	.0byte		.L11608
	.section	.text_vle
	.0byte		.L11615
	.section	.text_vle
	.0byte		.L11625
	.section	.text_vle
	.0byte		.L11637
	.section	.Os_BSS,,b
	.0byte		.L11644
	.section	.text_vle
	.0byte		.L11649
	.section	.Os_PUBLIC_CONST,,r
	.0byte		.L11659
	.section	.Os_PUBLIC_CONST,,r
	.type		Os_ISRServicesDefault,@object
	.size		Os_ISRServicesDefault,24
	.align		2
	.globl		Os_ISRServicesDefault
Os_ISRServicesDefault:
	.long		Os_DisableAllInterruptsDefault
	.long		Os_EnableAllInterruptsDefault
	.long		Os_SuspendAllInterruptsDefault
	.long		Os_ResumeAllInterruptsDefault
	.long		Os_SuspendOSInterruptsDefault
	.long		Os_ResumeOSInterruptsDefault
	.section	.Os_PUBLIC_CONST,,r
	.0byte		.L11664
	.section	.Os_PUBLIC_CONST,,r
	.type		Os_ISRServicesAPITrusted,@object
	.size		Os_ISRServicesAPITrusted,24
	.align		2
Os_ISRServicesAPITrusted:
	.long		Os_DisableAllInterruptsAPITrusted
	.long		Os_EnableAllInterruptsAPITrusted
	.long		Os_SuspendAllInterruptsAPITrusted
	.long		Os_ResumeAllInterruptsAPITrusted
	.long		Os_SuspendOSInterruptsAPITrusted
	.long		Os_ResumeOSInterruptsAPITrusted
	.section	.Os_PUBLIC_CONST,,r
	.type		Os_ISRServicesAPINonTrusted,@object
	.size		Os_ISRServicesAPINonTrusted,24
	.align		2
Os_ISRServicesAPINonTrusted:
	.long		Os_DisableAllInterruptsAPINonTrusted
	.long		Os_EnableAllInterruptsAPINonTrusted
	.long		Os_SuspendAllInterruptsAPINonTrusted
	.long		Os_ResumeAllInterruptsAPINonTrusted
	.long		Os_SuspendOSInterruptsAPINonTrusted
	.long		Os_ResumeOSInterruptsAPINonTrusted
	.section	.Os_PUBLIC_CONST,,r
	.type		Os_ISRServicesHook,@object
	.size		Os_ISRServicesHook,24
	.align		2
Os_ISRServicesHook:
	.long		Os_IsrService_EmptyFunction
	.long		Os_IsrService_EmptyFunction
	.long		Os_IsrService_EmptyFunction
	.long		Os_IsrService_EmptyFunction
	.long		Os_IsrService_EmptyFunction
	.long		Os_IsrService_EmptyFunction
	.section	.text_vle
#$$ld
.L5:
.L12143:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12140:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12138:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12136:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12134:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12122:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\inc\\Os_Arch_Intr.h"
.L12116:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12113:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12096:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12067:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L12023:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11979:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11954:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11721:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11667:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11660:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\isr\\Os_Isr.c"
.L11650:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L11638:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11626:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_IsrCfgTypes.h"
.L11616:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11609:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_PublicDataTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11436:
.L11457:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\isr\\Os_Isr.c"
.L11444:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11581:
.L11589:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\isr\\Os_Isr.c"
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
	.uleb128	16
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
	.uleb128	17
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
	.uleb128	18
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
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
	.uleb128	20
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
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
	.uleb128	22
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	26
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	27
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	28
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	29
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	30
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
	.uleb128	31
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\isr\\Os_Isr.c"
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
.L11433:
	.4byte		.L11434-.L11432
.L11432:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11438-.L11433
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\isr\\Os_Isr.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11435
	.4byte		.L11436
	.4byte		.L11439
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11447:
	.sleb128	2
	.4byte		.L11441-.L11433
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11444
	.uleb128	227
	.uleb128	45
	.4byte		.L11445
	.byte		0x1
	.4byte		.L11442
	.4byte		.L11443
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11444
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11452
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11441:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11458:
	.sleb128	4
	.4byte		.L11454-.L11433
	.byte		"Os_Isr_PreInit"
	.byte		0
	.4byte		.L11457
	.uleb128	101
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11455
	.4byte		.L11456
	.sleb128	3
	.4byte		.L11457
	.uleb128	101
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11459
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11460:
	.sleb128	5
	.4byte		.L11457
	.uleb128	103
	.uleb128	35
	.byte		"objId"
	.byte		0
	.4byte		.L11461
	.4byte		.L11464
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11454:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11469:
	.sleb128	4
	.4byte		.L11466-.L11433
	.byte		"Os_Isr_PostInit"
	.byte		0
	.4byte		.L11457
	.uleb128	133
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11467
	.4byte		.L11468
	.sleb128	3
	.4byte		.L11457
	.uleb128	133
	.uleb128	20
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11470
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11466:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11476:
	.sleb128	6
	.4byte		.L11472-.L11433
	.byte		"Os_Isr_GetAndSetUserModeLevel"
	.byte		0
	.4byte		.L11457
	.uleb128	143
	.uleb128	32
	.4byte		.L11475
	.byte		0x1
	.byte		0x1
	.4byte		.L11473
	.4byte		.L11474
	.sleb128	3
	.4byte		.L11457
	.uleb128	143
	.uleb128	32
	.byte		"isrlevel"
	.byte		0
	.4byte		.L11475
	.4byte		.L11477
	.sleb128	3
	.4byte		.L11457
	.uleb128	143
	.uleb128	32
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11478
.L11479:
	.sleb128	5
	.4byte		.L11457
	.uleb128	145
	.uleb128	37
	.byte		"oldLevel"
	.byte		0
	.4byte		.L11475
	.4byte		.L11480
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11472:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11485:
	.sleb128	4
	.4byte		.L11482-.L11433
	.byte		"Os_Isr_ServicesSwitchToTrusted"
	.byte		0
	.4byte		.L11457
	.uleb128	155
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11483
	.4byte		.L11484
.L11486:
	.sleb128	5
	.4byte		.L11457
	.uleb128	160
	.uleb128	35
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11487
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11482:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11492:
	.sleb128	4
	.4byte		.L11489-.L11433
	.byte		"Os_Isr_ServicesSwitchToNonTrusted"
	.byte		0
	.4byte		.L11457
	.uleb128	168
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11490
	.4byte		.L11491
.L11493:
	.sleb128	5
	.4byte		.L11457
	.uleb128	173
	.uleb128	35
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11494
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11489:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11499:
	.sleb128	4
	.4byte		.L11496-.L11433
	.byte		"Os_Isr_ServicesSwitchToHook"
	.byte		0
	.4byte		.L11457
	.uleb128	182
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11497
	.4byte		.L11498
.L11500:
	.sleb128	5
	.4byte		.L11457
	.uleb128	187
	.uleb128	35
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11501
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11496:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11506:
	.sleb128	4
	.4byte		.L11503-.L11433
	.byte		"Os_Isr_ServicesSwitchBackFromHook"
	.byte		0
	.4byte		.L11457
	.uleb128	196
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11504
	.4byte		.L11505
.L11507:
	.sleb128	5
	.4byte		.L11457
	.uleb128	201
	.uleb128	35
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11508
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11503:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11513:
	.sleb128	4
	.4byte		.L11510-.L11433
	.byte		"Os_DispatchISR"
	.byte		0
	.4byte		.L11457
	.uleb128	209
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11511
	.4byte		.L11512
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11457
	.uleb128	209
	.uleb128	20
	.byte		"ISRDispatchParam"
	.byte		0
	.4byte		.L11462
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L11514:
	.sleb128	5
	.4byte		.L11457
	.uleb128	211
	.uleb128	41
	.byte		"isrValidate"
	.byte		0
	.4byte		.L11515
	.4byte		.L11518
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11522
	.4byte		.L11519
	.4byte		.L11520
.L11523:
	.sleb128	5
	.4byte		.L11457
	.uleb128	218
	.uleb128	43
	.byte		"timerId"
	.byte		0
	.4byte		.L11524
	.4byte		.L11526
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11522:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11530
	.4byte		.L11527
	.4byte		.L11528
.L11531:
	.sleb128	5
	.4byte		.L11457
	.uleb128	241
	.uleb128	39
	.byte		"isrProcId"
	.byte		0
	.4byte		.L11532
	.4byte		.L11535
.L11536:
	.sleb128	5
	.4byte		.L11457
	.uleb128	242
	.uleb128	42
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11537
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11541
	.4byte		.L11538
	.4byte		.L11539
.L11542:
	.sleb128	5
	.4byte		.L11457
	.uleb128	252
	.uleb128	66
	.byte		"isrProc"
	.byte		0
	.4byte		.L11543
	.4byte		.L11548
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11541:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11530:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11510:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11553:
	.sleb128	4
	.4byte		.L11550-.L11433
	.byte		"Os_Isr_ResetState"
	.byte		0
	.4byte		.L11457
	.uleb128	287
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11551
	.4byte		.L11552
.L11554:
	.sleb128	5
	.4byte		.L11457
	.uleb128	289
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11555
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11550:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11560:
	.sleb128	4
	.4byte		.L11557-.L11433
	.byte		"Os_Isr_SwitchIn"
	.byte		0
	.4byte		.L11457
	.uleb128	296
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11558
	.4byte		.L11559
	.sleb128	3
	.4byte		.L11457
	.uleb128	296
	.uleb128	22
	.byte		"isrProc"
	.byte		0
	.4byte		.L11544
	.4byte		.L11561
.L11562:
	.sleb128	5
	.4byte		.L11457
	.uleb128	299
	.uleb128	36
	.byte		"procCoreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11563
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11557:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11568:
	.sleb128	4
	.4byte		.L11565-.L11433
	.byte		"Os_API_TerminateIsr"
	.byte		0
	.4byte		.L11457
	.uleb128	393
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11566
	.4byte		.L11567
	.sleb128	7
	.4byte		.L11457
	.uleb128	393
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L11457
	.uleb128	393
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11571
	.4byte		.L11574
.L11575:
	.sleb128	5
	.4byte		.L11457
	.uleb128	395
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11576
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11565:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11578:
	.4byte		.L11579-.L11577
.L11577:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11583-.L11578
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\isr\\Os_Isr.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11580
	.4byte		.L11581
	.4byte		.L11584
.L11590:
	.sleb128	4
	.4byte		.L11586-.L11578
	.byte		"Os_WrapperIsr"
	.byte		0
	.4byte		.L11589
	.uleb128	456
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11587
	.4byte		.L11588
	.sleb128	3
	.4byte		.L11589
	.uleb128	456
	.uleb128	22
	.byte		"isrEntryPoint"
	.byte		0
	.4byte		.L11591
	.4byte		.L11596
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11600
	.4byte		.L11597
	.4byte		.L11598
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11601:
	.sleb128	9
	.4byte		.L11589
	.uleb128	461
	.uleb128	39
	.byte		"Os_TerminateIsrCall"
	.byte		0
	.4byte		.L11602
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11600:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11586:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11607:
	.sleb128	10
	.4byte		.L11604-.L11578
	.byte		"Os_IsrService_EmptyFunction"
	.byte		0
	.4byte		.L11589
	.uleb128	470
	.uleb128	29
	.byte		0x1
	.4byte		.L11605
	.4byte		.L11606
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11604:
	.section	.debug_info,,n
.L11608:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11609
	.uleb128	120
	.uleb128	45
	.byte		"Os_PublicData"
	.byte		0
	.4byte		.L11610
	.section	.debug_info,,n
.L11615:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11616
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11617
	.section	.debug_info,,n
.L11619:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11616
	.uleb128	213
	.uleb128	45
	.byte		"Os_ProcRange"
	.byte		0
	.4byte		.L11620
.L11625:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11626
	.uleb128	92
	.uleb128	67
	.byte		"Os_IsrCAT1PlatformConfig"
	.byte		0
	.4byte		.L11627
	.section	.debug_info,,n
.L11634:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11626
	.uleb128	94
	.uleb128	44
	.byte		"Os_IsrCAT1PlatformConfigRange"
	.byte		0
	.4byte		.L11635
.L11637:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11638
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11639
	.section	.debug_info,,n
.L11644:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11638
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11645
	.section	.debug_info,,n
.L11649:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11650
	.uleb128	165
	.uleb128	34
	.byte		"Os_IsrCurrentDeepness"
	.byte		0
	.4byte		.L11651
	.section	.debug_info,,n
.L11654:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11650
	.uleb128	167
	.uleb128	79
	.byte		"Os_IsrCurrentIsr"
	.byte		0
	.4byte		.L11655
	.section	.debug_info,,n
.L11659:
	.sleb128	12
	.byte		0x1
	.4byte		.L11660
	.uleb128	49
	.uleb128	32
	.byte		"Os_ISRServicesDefault"
	.byte		0
	.4byte		.L11661
	.sleb128	5
	.byte		0x3
	.4byte		Os_ISRServicesDefault
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11664:
	.sleb128	9
	.4byte		.L11660
	.uleb128	59
	.uleb128	39
	.byte		"Os_ISRServicesAPITrusted"
	.byte		0
	.4byte		.L11661
	.sleb128	5
	.byte		0x3
	.4byte		Os_ISRServicesAPITrusted
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11665:
	.sleb128	9
	.4byte		.L11660
	.uleb128	72
	.uleb128	39
	.byte		"Os_ISRServicesAPINonTrusted"
	.byte		0
	.4byte		.L11661
	.sleb128	5
	.byte		0x3
	.4byte		Os_ISRServicesAPINonTrusted
	.section	.debug_info,,n
.L11666:
	.sleb128	9
	.4byte		.L11660
	.uleb128	84
	.uleb128	39
	.byte		"Os_ISRServicesHook"
	.byte		0
	.4byte		.L11661
	.sleb128	5
	.byte		0x3
	.4byte		Os_ISRServicesHook
	.section	.debug_info,,n
.L11643:
	.sleb128	13
	.4byte		.L11667
	.uleb128	69
	.uleb128	1
	.4byte		.L11668-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	14
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	14
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	14
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	14
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	14
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11668:
.L11672:
	.sleb128	13
	.4byte		.L11667
	.uleb128	69
	.uleb128	1
	.4byte		.L11693-.L2
	.uleb128	36
.L783:
	.sleb128	14
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	14
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	14
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11698
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11693:
.L11648:
	.sleb128	13
	.4byte		.L11667
	.uleb128	69
	.uleb128	1
	.4byte		.L11702-.L2
	.uleb128	152
.L776:
	.sleb128	14
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	14
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11702:
.L11676:
	.sleb128	13
	.4byte		.L11667
	.uleb128	69
	.uleb128	1
	.4byte		.L11707-.L2
	.uleb128	104
.L773:
	.sleb128	14
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11708
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	14
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11710
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	14
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11707:
.L11697:
	.sleb128	13
	.4byte		.L11667
	.uleb128	69
	.uleb128	1
	.4byte		.L11714-.L2
	.uleb128	4
.L772:
	.sleb128	14
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11714:
.L11709:
	.sleb128	13
	.4byte		.L11667
	.uleb128	69
	.uleb128	1
	.4byte		.L11715-.L2
	.uleb128	48
.L764:
	.sleb128	14
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	14
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	14
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	14
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	14
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	14
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	14
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	14
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11715:
	.section	.debug_info,,n
.L11720:
	.sleb128	15
	.4byte		.L11721
	.uleb128	612
	.uleb128	1
	.4byte		.L11722-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	14
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	14
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	14
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11722:
.L11695:
	.sleb128	13
	.4byte		.L11721
	.uleb128	612
	.uleb128	1
	.4byte		.L11724-.L2
	.uleb128	28
.L743:
	.sleb128	14
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	14
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11725
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	14
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	14
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	14
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	14
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	14
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11724:
.L11711:
	.sleb128	13
	.4byte		.L11721
	.uleb128	612
	.uleb128	1
	.4byte		.L11727-.L2
	.uleb128	52
.L737:
	.sleb128	14
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	14
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	14
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	14
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11728
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	14
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	14
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11727:
.L11704:
	.sleb128	13
	.4byte		.L11721
	.uleb128	612
	.uleb128	1
	.4byte		.L11731-.L2
	.uleb128	8
.L735:
	.sleb128	14
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	14
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11731:
.L11680:
	.sleb128	15
	.4byte		.L11721
	.uleb128	612
	.uleb128	1
	.4byte		.L11732-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	14
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	14
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11449
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	14
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11533
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	14
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11735
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	14
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11732:
.L11570:
	.sleb128	15
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11736-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	14
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	14
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	14
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	14
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	14
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11736:
	.section	.debug_info,,n
.L11745:
	.sleb128	16
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11746-.L2
	.uleb128	24
.L677:
	.sleb128	14
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	14
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	14
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11751
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	14
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	14
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	14
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	14
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	14
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	14
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	14
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	14
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	14
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	14
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	14
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	14
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	14
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11777
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	14
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	14
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	14
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11783
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	14
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11785
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	14
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11787
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	14
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	14
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	14
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11793
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	14
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	14
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	14
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	14
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	14
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	14
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11805
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	14
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	14
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11809
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	14
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	14
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	14
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11815
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	14
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	14
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	14
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	14
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	14
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	14
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	14
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	14
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	14
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	14
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	14
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	14
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11839
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	14
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11746:
.L11842:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11843-.L2
	.uleb128	8
.L675:
	.sleb128	14
	.byte		"CoreID"
	.byte		0
	.4byte		.L11449
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	14
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11843:
.L11840:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11846-.L2
	.uleb128	8
.L673:
	.sleb128	14
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	14
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11846:
.L11838:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11857-.L2
	.uleb128	8
.L671:
	.sleb128	14
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	14
	.byte		"Success"
	.byte		0
	.4byte		.L11859
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11857:
.L11836:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11862-.L2
	.uleb128	2
.L670:
	.sleb128	14
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11862:
.L11834:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11863-.L2
	.uleb128	2
.L669:
	.sleb128	14
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11863:
.L11832:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11864-.L2
	.uleb128	20
.L664:
	.sleb128	14
	.byte		"ProcId"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	14
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	14
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	14
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	14
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11864:
.L11830:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11867-.L2
	.uleb128	12
.L661:
	.sleb128	14
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11868
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	14
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	14
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11870
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11867:
.L11828:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11872-.L2
	.uleb128	12
.L658:
	.sleb128	14
	.byte		"AppID"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	14
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	14
	.byte		"Object"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11872:
.L11826:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11876-.L2
	.uleb128	12
.L655:
	.sleb128	14
	.byte		"AppID"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	14
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	14
	.byte		"Object"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11876:
.L11792:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11877-.L2
	.uleb128	4
.L654:
	.sleb128	14
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11877:
.L11790:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11879-.L2
	.uleb128	12
.L651:
	.sleb128	14
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	14
	.byte		"Start"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	14
	.byte		"Cycle"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11879:
.L11788:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11881-.L2
	.uleb128	12
.L648:
	.sleb128	14
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	14
	.byte		"Increment"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	14
	.byte		"Cycle"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11881:
.L11786:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11882-.L2
	.uleb128	8
.L646:
	.sleb128	14
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	14
	.byte		"TickRef"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11882:
.L11784:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11885-.L2
	.uleb128	8
.L644:
	.sleb128	14
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	14
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11886
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11885:
.L11824:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11890-.L2
	.uleb128	4
.L643:
	.sleb128	14
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11890:
.L11822:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11892-.L2
	.uleb128	8
.L641:
	.sleb128	14
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	14
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11892:
.L11820:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11893-.L2
	.uleb128	4
.L640:
	.sleb128	14
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11893:
.L11818:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11894-.L2
	.uleb128	8
.L638:
	.sleb128	14
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	14
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11894:
.L11816:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11895-.L2
	.uleb128	8
.L636:
	.sleb128	14
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	14
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11895:
.L11814:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11900-.L2
	.uleb128	4
.L635:
	.sleb128	14
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11900:
.L11812:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11901-.L2
	.uleb128	8
.L633:
	.sleb128	14
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	14
	.byte		"Offset"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11901:
.L11810:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11902-.L2
	.uleb128	8
.L631:
	.sleb128	14
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	14
	.byte		"Start"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11902:
.L11808:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11903-.L2
	.uleb128	12
.L628:
	.sleb128	14
	.byte		"CounterId"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	14
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	14
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11903:
.L11806:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11905-.L2
	.uleb128	12
.L625:
	.sleb128	14
	.byte		"CounterId"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	14
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	14
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11905:
.L11804:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11910-.L2
	.uleb128	4
.L624:
	.sleb128	14
	.byte		"CounterId"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11910:
.L11800:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11911-.L2
	.uleb128	4
.L623:
	.sleb128	14
	.byte		"ISRId"
	.byte		0
	.4byte		.L11533
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11911:
.L11796:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11912-.L2
	.uleb128	2
.L621:
	.sleb128	14
	.byte		"Application"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	14
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11913
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11912:
.L11798:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11914-.L2
	.uleb128	1
.L620:
	.sleb128	14
	.byte		"Application"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11914:
.L11794:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11915-.L2
	.uleb128	8
.L618:
	.sleb128	14
	.byte		"Application"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	14
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11915:
.L11778:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11919-.L2
	.uleb128	8
.L617:
	.sleb128	14
	.byte		"EventMask"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11919:
.L11776:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11923-.L2
	.uleb128	24
.L614:
	.sleb128	14
	.byte		"TaskId"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	14
	.byte		"EventMask"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	14
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11923:
.L11774:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11926-.L2
	.uleb128	8
.L613:
	.sleb128	14
	.byte		"EventMask"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11926:
.L11772:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11927-.L2
	.uleb128	16
.L611:
	.sleb128	14
	.byte		"TaskId"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	14
	.byte		"EventMask"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11927:
.L11770:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11928-.L2
	.uleb128	8
.L609:
	.sleb128	14
	.byte		"TaskId"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	14
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11929
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11928:
.L11768:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11933-.L2
	.uleb128	4
.L608:
	.sleb128	14
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11934
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11933:
.L11766:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11936-.L2
	.uleb128	4
.L607:
	.sleb128	14
	.byte		"TaskId"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11936:
.L11764:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11937-.L2
	.uleb128	4
.L606:
	.sleb128	14
	.byte		"TaskId"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11937:
.L11782:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11938-.L2
	.uleb128	4
.L605:
	.sleb128	14
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11938:
.L11780:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11940-.L2
	.uleb128	4
.L604:
	.sleb128	14
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11940:
.L11802:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11941-.L2
	.uleb128	4
.L603:
	.sleb128	14
	.byte		"AppMode"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11941:
.L11762:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11943-.L2
	.uleb128	2
.L602:
	.sleb128	14
	.byte		"CoreID"
	.byte		0
	.4byte		.L11449
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11943:
.L11756:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11944-.L2
	.uleb128	2
.L601:
	.sleb128	14
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11449
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11944:
.L11754:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11945-.L2
	.uleb128	1
.L600:
	.sleb128	14
	.byte		"Error"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11945:
.L11752:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11946-.L2
	.uleb128	8
.L598:
	.sleb128	14
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	14
	.byte		"Error"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11946:
.L11750:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11949-.L2
	.uleb128	1
.L597:
	.sleb128	14
	.byte		"Error"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11949:
.L11760:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11950-.L2
	.uleb128	8
.L595:
	.sleb128	14
	.byte		"CoreID"
	.byte		0
	.4byte		.L11449
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	14
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11950:
.L11758:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11952-.L2
	.uleb128	8
.L593:
	.sleb128	14
	.byte		"CoreID"
	.byte		0
	.4byte		.L11449
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	14
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11952:
.L11748:
	.sleb128	13
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L11953-.L2
	.uleb128	4
.L592:
	.sleb128	14
	.byte		"AppMode"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11953:
.L11850:
	.sleb128	13
	.4byte		.L11954
	.uleb128	33
	.uleb128	14
	.4byte		.L11955-.L2
	.uleb128	24
.L585:
	.sleb128	14
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11956
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	14
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	14
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	14
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	14
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11963
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	14
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11965
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	14
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11955:
.L11969:
	.sleb128	13
	.4byte		.L11954
	.uleb128	33
	.uleb128	14
	.4byte		.L11973-.L2
	.uleb128	4
.L581:
	.sleb128	14
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11974
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	14
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11976
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11973:
.L11959:
	.sleb128	13
	.4byte		.L11954
	.uleb128	33
	.uleb128	14
	.4byte		.L11978-.L2
	.uleb128	6
.L578:
	.sleb128	14
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	14
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	14
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11978:
.L11713:
	.sleb128	13
	.4byte		.L11979
	.uleb128	34
	.uleb128	14
	.4byte		.L11980-.L2
	.uleb128	2
.L529:
	.sleb128	14
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11980:
.L11547:
	.sleb128	15
	.4byte		.L11616
	.uleb128	80
	.uleb128	13
	.4byte		.L11982-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	14
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	14
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	14
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	14
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	14
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11993
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	14
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	14
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	14
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	14
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11998
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	14
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	14
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	14
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L12002
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	14
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	14
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L12002
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	14
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	14
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	14
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	14
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11629
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11982:
.L11992:
	.sleb128	15
	.4byte		.L11616
	.uleb128	80
	.uleb128	13
	.4byte		.L12014-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	14
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12015
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	14
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12014:
.L11987:
	.sleb128	13
	.4byte		.L11616
	.uleb128	80
	.uleb128	13
	.4byte		.L12017-.L2
	.uleb128	56
.L496:
	.sleb128	14
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	14
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12018
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	14
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	14
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	14
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	14
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	14
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	14
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11698
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	14
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	14
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	14
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	14
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	14
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12017:
.L12022:
	.sleb128	15
	.4byte		.L12023
	.uleb128	52
	.uleb128	1
	.4byte		.L12024-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	14
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12025
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	14
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12025
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	14
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	14
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L12002
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	14
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12024:
.L12029:
	.sleb128	13
	.4byte		.L12023
	.uleb128	52
	.uleb128	1
	.4byte		.L12030-.L2
	.uleb128	12
.L445:
	.sleb128	14
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	14
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	14
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12009
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12030:
.L11701:
	.sleb128	15
	.4byte		.L12023
	.uleb128	52
	.uleb128	1
	.4byte		.L12031-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	14
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	14
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	14
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	14
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	14
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12040
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	14
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	14
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	14
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	14
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12057
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	14
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12060
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	14
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12063
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	14
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12031:
.L12035:
	.sleb128	13
	.4byte		.L12023
	.uleb128	52
	.uleb128	1
	.4byte		.L12066-.L2
	.uleb128	1
.L432:
	.sleb128	14
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12066:
.L12012:
	.sleb128	13
	.4byte		.L12067
	.uleb128	32
	.uleb128	1
	.4byte		.L12068-.L2
	.uleb128	12
.L429:
	.sleb128	14
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	14
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	14
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12069
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12068:
.L12071:
	.sleb128	13
	.4byte		.L12067
	.uleb128	32
	.uleb128	1
	.4byte		.L12072-.L2
	.uleb128	4
.L428:
	.sleb128	14
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12072:
.L11614:
	.sleb128	13
	.4byte		.L12067
	.uleb128	32
	.uleb128	1
	.4byte		.L12073-.L2
	.uleb128	8
.L426:
	.sleb128	14
	.byte		"Os_PublicDataNoInitRef"
	.byte		0
	.4byte		.L12074
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L427:
	.sleb128	14
	.byte		"Os_PublicDataVarInitRef"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12073:
.L12080:
	.sleb128	13
	.4byte		.L12067
	.uleb128	32
	.uleb128	1
	.4byte		.L12081-.L2
	.uleb128	4
.L425:
	.sleb128	14
	.byte		"Os_ISRServices"
	.byte		0
	.4byte		.L11728
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12081:
.L11706:
	.sleb128	13
	.4byte		.L12067
	.uleb128	32
	.uleb128	1
	.4byte		.L12082-.L2
	.uleb128	144
.L423:
	.sleb128	14
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12083
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	14
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12085
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12082:
.L11663:
	.sleb128	13
	.4byte		.L12067
	.uleb128	32
	.uleb128	1
	.4byte		.L12087-.L2
	.uleb128	24
.L417:
	.sleb128	14
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12088
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	14
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12088
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	14
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12088
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	14
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12088
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	14
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12088
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	14
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12088
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12087:
.L12086:
	.sleb128	13
	.4byte		.L12067
	.uleb128	32
	.uleb128	1
	.4byte		.L12093-.L2
	.uleb128	20
.L412:
	.sleb128	14
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12094
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	14
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	14
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	14
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	14
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12093:
.L12084:
	.sleb128	13
	.4byte		.L12096
	.uleb128	174
	.uleb128	1
	.4byte		.L12097-.L2
	.uleb128	120
.L409:
	.sleb128	14
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12098
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	14
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12100
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	14
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12102
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12097:
.L12103:
	.sleb128	13
	.4byte		.L12096
	.uleb128	174
	.uleb128	1
	.4byte		.L12104-.L2
	.uleb128	8
.L406:
	.sleb128	14
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12105
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	14
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	14
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12106
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12104:
.L12101:
	.sleb128	13
	.4byte		.L12096
	.uleb128	174
	.uleb128	1
	.4byte		.L12108-.L2
	.uleb128	104
.L381:
	.sleb128	14
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	14
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	14
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	14
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	14
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	14
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	14
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11868
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	14
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	14
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	14
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	14
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	14
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	14
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	14
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	14
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11913
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	14
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	14
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11929
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	14
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	14
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11886
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	14
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11934
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	14
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	14
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	14
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	14
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	14
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12109
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12108:
.L12099:
	.sleb128	13
	.4byte		.L12096
	.uleb128	174
	.uleb128	1
	.4byte		.L12110-.L2
	.uleb128	8
.L379:
	.sleb128	14
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	14
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12111
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12110:
.L11889:
	.sleb128	13
	.4byte		.L12113
	.uleb128	50
	.uleb128	1
	.4byte		.L12114-.L2
	.uleb128	12
.L376:
	.sleb128	14
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	14
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	14
	.byte		"mincycle"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12114:
.L11624:
	.sleb128	13
	.4byte		.L12113
	.uleb128	50
	.uleb128	1
	.4byte		.L12115-.L2
	.uleb128	8
.L374:
	.sleb128	14
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L375:
	.sleb128	14
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12115:
.L11633:
	.sleb128	13
	.4byte		.L12116
	.uleb128	111
	.uleb128	7
	.4byte		.L12117-.L2
	.uleb128	8
.L364:
	.sleb128	14
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12118
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	14
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12119
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12117:
	.section	.debug_info,,n
.L11446:
	.sleb128	17
	.4byte		.L11650
	.uleb128	155
	.uleb128	1
	.4byte		.L12121-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	18
	.byte		"Os_Isr_Enabled"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"Os_Isr_Disabled"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12121:
.L11517:
	.sleb128	17
	.4byte		.L12122
	.uleb128	28
	.uleb128	14
	.4byte		.L12123-.L2
	.uleb128	4
	.sleb128	18
	.byte		"OS_ISR_VALID"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"OS_ISR_INVALID"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"OS_ISR_SKIPP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12123:
.L11717:
	.sleb128	17
	.4byte		.L11667
	.uleb128	69
	.uleb128	1
	.4byte		.L12124-.L2
	.uleb128	4
	.sleb128	18
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12124:
.L11734:
	.sleb128	17
	.4byte		.L11721
	.uleb128	612
	.uleb128	1
	.4byte		.L12125-.L2
	.uleb128	4
	.sleb128	18
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	18
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L12125:
.L11740:
	.sleb128	17
	.4byte		.L11721
	.uleb128	60
	.uleb128	1
	.4byte		.L12126-.L2
	.uleb128	4
	.sleb128	18
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12126:
	.section	.debug_info,,n
.L11871:
	.sleb128	19
	.4byte		.L11954
	.uleb128	33
	.uleb128	14
	.4byte		.L12127-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12127:
.L12019:
	.sleb128	17
	.4byte		.L11616
	.uleb128	80
	.uleb128	13
	.4byte		.L12128-.L2
	.uleb128	4
	.sleb128	18
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12128:
.L11995:
	.sleb128	17
	.4byte		.L11616
	.uleb128	61
	.uleb128	1
	.4byte		.L12129-.L2
	.uleb128	4
	.sleb128	18
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12129:
.L12039:
	.sleb128	17
	.4byte		.L12023
	.uleb128	52
	.uleb128	1
	.4byte		.L12130-.L2
	.uleb128	4
	.sleb128	18
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12130:
.L12095:
	.sleb128	17
	.4byte		.L12067
	.uleb128	32
	.uleb128	1
	.4byte		.L12131-.L2
	.uleb128	4
	.sleb128	18
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	18
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	18
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	18
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	18
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	18
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	18
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	18
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	18
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	18
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	18
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	18
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	18
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	18
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	18
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L12131:
.L12112:
	.sleb128	17
	.4byte		.L12096
	.uleb128	174
	.uleb128	1
	.4byte		.L12132-.L2
	.uleb128	4
	.sleb128	18
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	18
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	18
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	18
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	18
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	18
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	18
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	18
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	18
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	18
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	18
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	18
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	18
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	18
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	18
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	18
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	18
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	18
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	18
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	18
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	18
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	18
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	18
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	18
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	18
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	18
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	18
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	18
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	18
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	18
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	18
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L12132:
.L12107:
	.sleb128	17
	.4byte		.L12096
	.uleb128	86
	.uleb128	1
	.4byte		.L12133-.L2
	.uleb128	4
	.sleb128	18
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	18
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	18
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	18
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	18
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	18
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	18
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	18
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	18
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	18
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	18
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	18
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	18
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	18
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	18
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	18
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	18
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	18
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	18
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	18
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	18
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	18
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	18
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	18
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	18
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	18
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	18
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	18
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	18
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	18
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	18
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	18
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	18
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	18
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	18
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	18
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	18
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	18
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	18
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	18
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	18
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	18
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	18
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	18
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	18
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	18
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	18
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	18
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	18
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	18
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	18
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	18
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	18
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	18
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	18
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	18
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	18
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	18
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	18
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	18
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	18
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	18
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L12133:
.L11861:
	.sleb128	17
	.4byte		.L12134
	.uleb128	43
	.uleb128	1
	.4byte		.L12135-.L2
	.uleb128	4
	.sleb128	18
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12135:
.L11932:
	.sleb128	17
	.4byte		.L12136
	.uleb128	37
	.uleb128	1
	.4byte		.L12137-.L2
	.uleb128	4
	.sleb128	18
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L12137:
.L11899:
	.sleb128	17
	.4byte		.L12138
	.uleb128	40
	.uleb128	1
	.4byte		.L12139-.L2
	.uleb128	4
	.sleb128	18
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12139:
.L11875:
	.sleb128	17
	.4byte		.L12140
	.uleb128	47
	.uleb128	1
	.4byte		.L12141-.L2
	.uleb128	4
	.sleb128	18
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L12141:
.L11948:
	.sleb128	17
	.4byte		.L12113
	.uleb128	42
	.uleb128	13
	.4byte		.L12142-.L2
	.uleb128	4
	.sleb128	18
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12142:
.L11845:
	.sleb128	17
	.4byte		.L12143
	.uleb128	83
	.uleb128	14
	.4byte		.L12144-.L2
	.uleb128	4
	.sleb128	18
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12144:
	.section	.debug_info,,n
.L11445:
	.sleb128	20
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11446
	.section	.debug_info,,n
.L11451:
	.sleb128	21
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11450:
	.sleb128	20
	.byte		"uint16"
	.byte		0
	.4byte		.L11451
.L11449:
	.sleb128	20
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11450
	.section	.debug_info,,n
.L11448:
	.sleb128	22
	.4byte		.L11449
.L11463:
	.sleb128	21
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11462:
	.sleb128	20
	.byte		"uint32"
	.byte		0
	.4byte		.L11463
.L11461:
	.sleb128	20
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11462
.L11475:
	.sleb128	20
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11462
.L11516:
	.sleb128	20
	.byte		"Os_IsrValidateType"
	.byte		0
	.4byte		.L11517
.L11515:
	.sleb128	22
	.4byte		.L11516
.L11525:
	.sleb128	20
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11462
.L11524:
	.sleb128	22
	.4byte		.L11525
.L11534:
	.sleb128	20
	.byte		"ProcType"
	.byte		0
	.4byte		.L11461
.L11533:
	.sleb128	20
	.byte		"ISRType"
	.byte		0
	.4byte		.L11534
.L11532:
	.sleb128	22
	.4byte		.L11533
.L11546:
	.sleb128	20
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11547
.L11545:
	.sleb128	22
	.4byte		.L11546
	.section	.debug_info,,n
.L11544:
	.sleb128	23
	.4byte		.L11545
.L11543:
	.sleb128	22
	.4byte		.L11544
.L11569:
	.sleb128	23
	.4byte		.L11570
.L11573:
	.sleb128	22
	.4byte		.L11547
.L11572:
	.sleb128	23
	.4byte		.L11573
.L11571:
	.sleb128	22
	.4byte		.L11572
	.section	.debug_info,,n
.L11594:
	.sleb128	24
	.4byte		.L11595
	.byte		0x1
	.sleb128	0
.L11595:
.L11593:
	.sleb128	23
	.4byte		.L11594
.L11592:
	.sleb128	20
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11593
.L11591:
	.sleb128	22
	.4byte		.L11592
.L11602:
	.sleb128	20
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11570
.L11613:
	.sleb128	20
	.byte		"Os_PublicDataType"
	.byte		0
	.4byte		.L11614
.L11612:
	.sleb128	22
	.4byte		.L11613
	.section	.debug_info,,n
.L11610:
	.sleb128	25
	.4byte		.L11611-.L2
	.4byte		.L11612
	.section	.debug_info,,n
	.sleb128	26
	.uleb128	1
	.sleb128	0
.L11611:
.L11617:
	.sleb128	25
	.4byte		.L11618-.L2
	.4byte		.L11545
	.section	.debug_info,,n
	.sleb128	27
	.sleb128	0
.L11618:
.L11623:
	.sleb128	20
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11624
.L11622:
	.sleb128	22
	.4byte		.L11623
.L11620:
	.sleb128	25
	.4byte		.L11621-.L2
	.4byte		.L11622
	.sleb128	26
	.uleb128	1
	.sleb128	0
.L11621:
.L11632:
	.sleb128	20
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11633
.L11631:
	.sleb128	22
	.4byte		.L11632
.L11630:
	.sleb128	23
	.4byte		.L11631
.L11629:
	.sleb128	22
	.4byte		.L11630
.L11627:
	.sleb128	25
	.4byte		.L11628-.L2
	.4byte		.L11629
	.sleb128	27
	.sleb128	0
.L11628:
.L11635:
	.sleb128	25
	.4byte		.L11636-.L2
	.4byte		.L11622
	.sleb128	27
	.sleb128	0
.L11636:
.L11642:
	.sleb128	20
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11643
.L11641:
	.sleb128	22
	.4byte		.L11642
.L11639:
	.sleb128	25
	.4byte		.L11640-.L2
	.4byte		.L11641
	.sleb128	26
	.uleb128	1
	.sleb128	0
.L11640:
.L11647:
	.sleb128	20
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11648
.L11645:
	.sleb128	25
	.4byte		.L11646-.L2
	.4byte		.L11647
	.sleb128	26
	.uleb128	1
	.sleb128	0
.L11646:
.L11653:
	.sleb128	22
	.4byte		.L11534
.L11651:
	.sleb128	25
	.4byte		.L11652-.L2
	.4byte		.L11653
	.sleb128	26
	.uleb128	1
	.sleb128	0
.L11652:
.L11658:
	.sleb128	23
	.4byte		.L11544
.L11657:
	.sleb128	22
	.4byte		.L11658
.L11655:
	.sleb128	25
	.4byte		.L11656-.L2
	.4byte		.L11657
	.sleb128	26
	.uleb128	1
	.sleb128	0
.L11656:
.L11662:
	.sleb128	20
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11663
.L11661:
	.sleb128	22
	.4byte		.L11662
.L11671:
	.sleb128	20
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11672
.L11670:
	.sleb128	23
	.4byte		.L11671
.L11669:
	.sleb128	22
	.4byte		.L11670
.L11675:
	.sleb128	20
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11676
.L11674:
	.sleb128	23
	.4byte		.L11675
.L11673:
	.sleb128	22
	.4byte		.L11674
.L11679:
	.sleb128	20
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11680
.L11678:
	.sleb128	23
	.4byte		.L11679
.L11677:
	.sleb128	22
	.4byte		.L11678
	.section	.debug_info,,n
.L11684:
	.sleb128	28
	.4byte		.L11685-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	29
	.4byte		.L11543
	.sleb128	0
.L11685:
.L11683:
	.sleb128	23
	.4byte		.L11684
.L11682:
	.sleb128	20
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11683
.L11681:
	.sleb128	22
	.4byte		.L11682
.L11692:
	.sleb128	20
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11462
.L11691:
	.sleb128	23
	.4byte		.L11692
	.section	.debug_info,,n
.L11689:
	.sleb128	30
	.4byte		.L11690-.L2
	.4byte		.L11691
	.byte		0x1
	.sleb128	29
	.4byte		.L11544
	.sleb128	0
.L11690:
.L11688:
	.sleb128	23
	.4byte		.L11689
.L11687:
	.sleb128	20
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11688
.L11686:
	.sleb128	22
	.4byte		.L11687
.L11694:
	.sleb128	20
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11695
.L11696:
	.sleb128	20
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11697
.L11700:
	.sleb128	20
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11701
.L11699:
	.sleb128	22
	.4byte		.L11700
.L11698:
	.sleb128	23
	.4byte		.L11699
.L11703:
	.sleb128	20
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11704
.L11705:
	.sleb128	20
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11706
.L11708:
	.sleb128	20
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11709
.L11710:
	.sleb128	20
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11711
.L11712:
	.sleb128	20
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11713
.L11716:
	.sleb128	20
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11717
.L11718:
	.sleb128	20
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11462
.L11719:
	.sleb128	20
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11720
.L11723:
	.sleb128	23
	.4byte		.L11720
.L11726:
	.sleb128	21
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11725:
	.sleb128	20
	.byte		"boolean"
	.byte		0
	.4byte		.L11726
.L11728:
	.sleb128	23
	.4byte		.L11661
.L11729:
	.sleb128	25
	.4byte		.L11730-.L2
	.4byte		.L11462
	.sleb128	26
	.uleb128	7
	.sleb128	0
.L11730:
.L11733:
	.sleb128	20
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11734
.L11735:
	.sleb128	23
	.4byte		.L11602
.L11738:
	.sleb128	20
	.byte		"uint8"
	.byte		0
	.4byte		.L11726
.L11737:
	.sleb128	20
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11738
.L11739:
	.sleb128	20
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11740
.L11743:
	.sleb128	28
	.4byte		.L11744-.L2
	.byte		0x1
	.sleb128	29
	.4byte		.L11569
	.sleb128	29
	.4byte		.L11571
	.sleb128	0
.L11744:
.L11742:
	.sleb128	23
	.4byte		.L11743
.L11741:
	.sleb128	20
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11742
.L11747:
	.sleb128	20
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11748
.L11749:
	.sleb128	20
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11750
.L11751:
	.sleb128	20
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11752
.L11753:
	.sleb128	20
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11754
.L11755:
	.sleb128	20
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11756
.L11757:
	.sleb128	20
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11758
.L11759:
	.sleb128	20
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11760
.L11761:
	.sleb128	20
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11762
.L11763:
	.sleb128	20
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11764
.L11765:
	.sleb128	20
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11766
.L11767:
	.sleb128	20
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11768
.L11769:
	.sleb128	20
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11770
.L11771:
	.sleb128	20
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11772
.L11773:
	.sleb128	20
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11774
.L11775:
	.sleb128	20
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11776
.L11777:
	.sleb128	20
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11778
.L11779:
	.sleb128	20
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11780
.L11781:
	.sleb128	20
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11782
.L11783:
	.sleb128	20
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11784
.L11785:
	.sleb128	20
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11786
.L11787:
	.sleb128	20
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11788
.L11789:
	.sleb128	20
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11790
.L11791:
	.sleb128	20
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11792
.L11793:
	.sleb128	20
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11794
.L11795:
	.sleb128	20
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11796
.L11797:
	.sleb128	20
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11798
.L11799:
	.sleb128	20
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11800
.L11801:
	.sleb128	20
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11802
.L11803:
	.sleb128	20
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11804
.L11805:
	.sleb128	20
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11806
.L11807:
	.sleb128	20
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11808
.L11809:
	.sleb128	20
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11810
.L11811:
	.sleb128	20
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11812
.L11813:
	.sleb128	20
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11814
.L11815:
	.sleb128	20
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11816
.L11817:
	.sleb128	20
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11818
.L11819:
	.sleb128	20
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11820
.L11821:
	.sleb128	20
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11822
.L11823:
	.sleb128	20
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11824
.L11825:
	.sleb128	20
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11826
.L11827:
	.sleb128	20
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11828
.L11829:
	.sleb128	20
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11830
.L11831:
	.sleb128	20
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11832
.L11833:
	.sleb128	20
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11834
.L11835:
	.sleb128	20
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11836
.L11837:
	.sleb128	20
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11838
.L11839:
	.sleb128	20
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11840
.L11841:
	.sleb128	20
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11842
.L11844:
	.sleb128	20
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11845
.L11849:
	.sleb128	20
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11850
.L11848:
	.sleb128	22
	.4byte		.L11849
.L11847:
	.sleb128	23
	.4byte		.L11848
	.section	.debug_info,,n
.L11856:
	.sleb128	31
	.byte		"void"
	.byte		0
	.byte		0x0
.L11855:
	.sleb128	23
	.4byte		.L11856
.L11853:
	.sleb128	25
	.4byte		.L11854-.L2
	.4byte		.L11855
	.sleb128	26
	.uleb128	1
	.sleb128	0
.L11854:
.L11852:
	.sleb128	20
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11853
.L11851:
	.sleb128	23
	.4byte		.L11852
.L11858:
	.sleb128	20
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11450
.L11860:
	.sleb128	20
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11861
.L11859:
	.sleb128	23
	.4byte		.L11860
.L11865:
	.sleb128	20
	.byte		"TaskType"
	.byte		0
	.4byte		.L11534
.L11866:
	.sleb128	23
	.4byte		.L11738
.L11868:
	.sleb128	20
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11462
.L11869:
	.sleb128	20
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11855
.L11870:
	.sleb128	20
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11871
.L11873:
	.sleb128	20
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11738
.L11874:
	.sleb128	20
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11875
.L11878:
	.sleb128	20
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11461
.L11880:
	.sleb128	20
	.byte		"TickType"
	.byte		0
	.4byte		.L11462
.L11884:
	.sleb128	23
	.4byte		.L11880
.L11883:
	.sleb128	20
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11884
.L11888:
	.sleb128	20
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11889
.L11887:
	.sleb128	23
	.4byte		.L11888
.L11886:
	.sleb128	20
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11887
.L11891:
	.sleb128	20
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11462
.L11898:
	.sleb128	20
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11899
.L11897:
	.sleb128	23
	.4byte		.L11898
.L11896:
	.sleb128	20
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11897
.L11904:
	.sleb128	20
	.byte		"CounterType"
	.byte		0
	.4byte		.L11462
.L11908:
	.sleb128	28
	.4byte		.L11909-.L2
	.byte		0x1
	.sleb128	29
	.4byte		.L11569
	.sleb128	0
.L11909:
.L11907:
	.sleb128	23
	.4byte		.L11908
.L11906:
	.sleb128	20
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11907
.L11913:
	.sleb128	20
	.byte		"RestartType"
	.byte		0
	.4byte		.L11738
.L11918:
	.sleb128	20
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11738
.L11917:
	.sleb128	23
	.4byte		.L11918
.L11916:
	.sleb128	20
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11917
.L11922:
	.sleb128	21
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11921:
	.sleb128	20
	.byte		"uint64"
	.byte		0
	.4byte		.L11922
.L11920:
	.sleb128	20
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11921
.L11925:
	.sleb128	23
	.4byte		.L11920
.L11924:
	.sleb128	20
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11925
.L11931:
	.sleb128	20
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11932
.L11930:
	.sleb128	23
	.4byte		.L11931
.L11929:
	.sleb128	20
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11930
.L11935:
	.sleb128	23
	.4byte		.L11865
.L11934:
	.sleb128	20
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11935
.L11939:
	.sleb128	20
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11462
.L11942:
	.sleb128	20
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11462
.L11947:
	.sleb128	20
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11948
.L11951:
	.sleb128	23
	.4byte		.L11737
.L11958:
	.sleb128	20
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11959
.L11957:
	.sleb128	23
	.4byte		.L11958
.L11956:
	.sleb128	22
	.4byte		.L11957
.L11960:
	.sleb128	20
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11450
.L11961:
	.sleb128	22
	.4byte		.L11855
.L11962:
	.sleb128	22
	.4byte		.L11450
.L11964:
	.sleb128	20
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11738
.L11963:
	.sleb128	22
	.4byte		.L11964
.L11968:
	.sleb128	20
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11969
.L11967:
	.sleb128	22
	.4byte		.L11968
.L11966:
	.sleb128	23
	.4byte		.L11967
.L11965:
	.sleb128	22
	.4byte		.L11966
.L11972:
	.sleb128	20
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11738
.L11971:
	.sleb128	23
	.4byte		.L11972
.L11970:
	.sleb128	22
	.4byte		.L11971
.L11975:
	.sleb128	20
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11450
.L11974:
	.sleb128	22
	.4byte		.L11975
.L11977:
	.sleb128	20
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11450
.L11976:
	.sleb128	22
	.4byte		.L11977
.L11981:
	.sleb128	20
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11450
.L11983:
	.sleb128	22
	.4byte		.L11865
.L11986:
	.sleb128	20
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11987
.L11985:
	.sleb128	23
	.4byte		.L11986
.L11984:
	.sleb128	22
	.4byte		.L11985
.L11991:
	.sleb128	20
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11992
.L11990:
	.sleb128	22
	.4byte		.L11991
.L11989:
	.sleb128	23
	.4byte		.L11990
.L11988:
	.sleb128	22
	.4byte		.L11989
.L11994:
	.sleb128	20
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11995
.L11993:
	.sleb128	22
	.4byte		.L11994
.L11996:
	.sleb128	22
	.4byte		.L11920
.L11997:
	.sleb128	22
	.4byte		.L11718
.L11999:
	.sleb128	20
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11462
.L11998:
	.sleb128	22
	.4byte		.L11999
.L12000:
	.sleb128	22
	.4byte		.L11691
.L12001:
	.sleb128	22
	.4byte		.L11698
.L12005:
	.sleb128	20
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11462
.L12004:
	.sleb128	22
	.4byte		.L12005
.L12003:
	.sleb128	23
	.4byte		.L12004
.L12002:
	.sleb128	22
	.4byte		.L12003
.L12006:
	.sleb128	22
	.4byte		.L11939
.L12011:
	.sleb128	20
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L12012
.L12010:
	.sleb128	22
	.4byte		.L12011
.L12009:
	.sleb128	23
	.4byte		.L12010
.L12008:
	.sleb128	20
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12009
.L12007:
	.sleb128	23
	.4byte		.L12008
.L12013:
	.sleb128	22
	.4byte		.L11723
.L12016:
	.sleb128	20
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11462
.L12015:
	.sleb128	22
	.4byte		.L12016
.L12018:
	.sleb128	20
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12019
.L12021:
	.sleb128	22
	.4byte		.L12022
.L12020:
	.sleb128	23
	.4byte		.L12021
.L12025:
	.sleb128	22
	.4byte		.L11858
.L12028:
	.sleb128	20
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12029
.L12027:
	.sleb128	23
	.4byte		.L12028
.L12026:
	.sleb128	22
	.4byte		.L12027
.L12034:
	.sleb128	20
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12035
.L12033:
	.sleb128	23
	.4byte		.L12034
.L12032:
	.sleb128	22
	.4byte		.L12033
.L12036:
	.sleb128	22
	.4byte		.L11873
.L12038:
	.sleb128	20
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12039
.L12037:
	.sleb128	22
	.4byte		.L12038
.L12043:
	.sleb128	28
	.4byte		.L12044-.L2
	.byte		0x1
	.sleb128	29
	.4byte		.L11737
	.sleb128	0
.L12044:
.L12042:
	.sleb128	23
	.4byte		.L12043
.L12041:
	.sleb128	20
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12042
.L12040:
	.sleb128	22
	.4byte		.L12041
.L12048:
	.sleb128	28
	.4byte		.L12049-.L2
	.byte		0x1
	.sleb128	0
.L12049:
.L12047:
	.sleb128	23
	.4byte		.L12048
.L12046:
	.sleb128	20
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12047
.L12045:
	.sleb128	22
	.4byte		.L12046
.L12053:
	.sleb128	28
	.4byte		.L12054-.L2
	.byte		0x1
	.sleb128	29
	.4byte		.L11737
	.sleb128	0
.L12054:
.L12052:
	.sleb128	23
	.4byte		.L12053
.L12051:
	.sleb128	20
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12052
.L12050:
	.sleb128	22
	.4byte		.L12051
.L12056:
	.sleb128	23
	.4byte		.L11653
.L12055:
	.sleb128	22
	.4byte		.L12056
.L12059:
	.sleb128	22
	.4byte		.L11904
.L12058:
	.sleb128	23
	.4byte		.L12059
.L12057:
	.sleb128	22
	.4byte		.L12058
.L12062:
	.sleb128	22
	.4byte		.L11878
.L12061:
	.sleb128	23
	.4byte		.L12062
.L12060:
	.sleb128	22
	.4byte		.L12061
.L12065:
	.sleb128	22
	.4byte		.L11891
.L12064:
	.sleb128	23
	.4byte		.L12065
.L12063:
	.sleb128	22
	.4byte		.L12064
.L12070:
	.sleb128	20
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12071
.L12069:
	.sleb128	23
	.4byte		.L12070
.L12076:
	.sleb128	22
	.4byte		.L11705
.L12075:
	.sleb128	23
	.4byte		.L12076
.L12074:
	.sleb128	22
	.4byte		.L12075
.L12079:
	.sleb128	20
	.byte		"Os_PublicData_VarInitType"
	.byte		0
	.4byte		.L12080
.L12078:
	.sleb128	23
	.4byte		.L12079
.L12077:
	.sleb128	22
	.4byte		.L12078
.L12083:
	.sleb128	20
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12084
.L12085:
	.sleb128	20
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12086
.L12091:
	.sleb128	28
	.4byte		.L12092-.L2
	.byte		0x1
	.sleb128	0
.L12092:
.L12090:
	.sleb128	23
	.4byte		.L12091
.L12089:
	.sleb128	20
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12090
.L12088:
	.sleb128	22
	.4byte		.L12089
.L12094:
	.sleb128	20
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12095
.L12098:
	.sleb128	20
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12099
.L12100:
	.sleb128	20
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12101
.L12102:
	.sleb128	20
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12103
.L12105:
	.sleb128	20
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11738
.L12106:
	.sleb128	20
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12107
.L12109:
	.sleb128	20
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11859
.L12111:
	.sleb128	20
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12112
.L12118:
	.sleb128	22
	.4byte		.L11462
.L12120:
	.sleb128	20
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11450
.L12119:
	.sleb128	22
	.4byte		.L12120
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11438:
	.sleb128	0
.L11434:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11583:
	.sleb128	0
.L11579:

	.section	.debug_loc,,n
	.align	0
.L11452:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11459:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),30
	.d2locend
.L11464:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),31
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo6),31
	.d2locend
.L11470:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L11477:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L11478:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo15),4
	.d2locend
.L11480:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),4
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locend
.L11494:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locend
.L11501:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),5
	.d2locend
.L11508:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L11518:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),0
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),0
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),0
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locend
.L11526:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locend
.L11535:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),31
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),31
	.d2locend
.L11537:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),30
	.d2locend
.L11548:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo48),31
	.d2locend
.L11555:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),6
	.d2locend
.L11561:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),31
	.d2locend
.L11563:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),30
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),30
	.d2locend
.L11574:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),4
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),31
	.d2locend
.L11576:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo77),30
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locend
.L11596:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_IsrService_EmptyFunction"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_WrapperIsr"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_SYS_CALL"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_API_TerminateIsr"
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_Isr_GetState","Os_Isr_ResetState","Os_Resource_FreeTaskResources","Os_SchedulerTerminateProc","Os_Spinlock_ReleaseProcSpinlocks"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Isr_SwitchIn"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Isr_ResetState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_DispatchISR"
	.wrcm.nstrlist "calls", "Os_Call_ProtectionHook","Os_IsrValidate","Os_Platfrom_ReadExceptionStatus","Os_SchedulerStartProc","Os_ShutdownAllCores","Os_Timer_Tick"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Isr_ServicesSwitchBackFromHook"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_ServicesSwitchToHook"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_ServicesSwitchToNonTrusted"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_ServicesSwitchToTrusted"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_GetAndSetUserModeLevel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_PostInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_PreInit"
	.wrcm.nstrlist "calls", "Os_Isr_Platform_Init","Os_Isr_Platform_InitChannel"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Isr_GetState"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Isr.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Isr.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Isr.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Isr.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Isr.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Isr.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\isr\Os_Isr.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
