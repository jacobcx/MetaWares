#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_GetStackUsage.c"
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
# FUNC (StatusType, OS_CODE) GetStackUsage(CONST(ProcType, AUTOMATIC)           procId,
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11396:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11392:
	.0byte		.L11390
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_GetStackUsage.c"
        .d2line         59,28
#$$ld
.L11399:

#$$bf	GetStackUsage,interprocedural,rasave,nostackparams
	.globl		GetStackUsage
	.d2_cfa_start __cie
GetStackUsage:
.Llo1:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r30,56(r1)		# offset r1+56  0x38
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,68(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# procId=r3 procId=r3
	mr		r31,r4		# maxUsageRef=r31 maxUsageRef=r4
	mr		r30,r5		# currentUsageRef=r30 currentUsageRef=r5
	.d2prologue_end
#                                          P2VAR(uint8,    AUTOMATIC,AUTOMATIC) maxUsageRef,
#                                          P2VAR(uint8,    AUTOMATIC,AUTOMATIC) currentUsageRef)
# {
#     VAR (Os_APICallType,AUTOMATIC) Os_GetStackUsageCall;
# 
#     Os_GetStackUsageCall.Os_API_Data.Os_ApiStackUsage.ProcId          = procId;
	.d2line		65
	stw		r3,24(r1)		# procId=r3
#     Os_GetStackUsageCall.Os_API_Data.Os_ApiStackUsage.MaxUsageRef     = maxUsageRef;
	.d2line		66
	stw		r31,32(r1)		# maxUsageRef=r31
#     Os_GetStackUsageCall.Os_API_Data.Os_ApiStackUsage.CurrentUsageRef = currentUsageRef;
	.d2line		67
	stw		r30,40(r1)		# currentUsageRef=r30
# 
#     /* Taking address of function on purpose */
#     OS_LIGHT_SYSCALL ( Os_GetStackUsageCall, GetStackUsage );
	.d2line		70
	diab.addi		r3,r1,8		# procId=r3
.Llo2:
	lis		r4,Os_API_GetStackUsage@ha
.Llo3:
	e_add16i		r4,r4,Os_API_GetStackUsage@l
	bl		OS_SYS_CALL
# 
#     if(E_OK == Os_GetStackUsageCall.Os_API_ReturnValue)
	.d2line		72
.Llo6:
	lbz		r0,12(r1)
	se_cmpi		r0,0
	bc		0,2,.L11357	# ne
#     {
#         *maxUsageRef     = Os_GetStackUsageCall.Os_API_Data.Os_ApiStackUsage.MaxUsage;
	.d2line		74
.Llo4:
	lbz		r0,28(r1)
	stb		r0,0(r31)		# maxUsageRef=r31
#         *currentUsageRef = Os_GetStackUsageCall.Os_API_Data.Os_ApiStackUsage.CurrentUsage;
	.d2line		75
	lbz		r0,36(r1)
	stb		r0,0(r30)		# currentUsageRef=r30
.L11357:
#     }
# 
#     return  Os_GetStackUsageCall.Os_API_ReturnValue;
	.d2line		78
.Llo5:
	lbz		r3,12(r1)		# procId=r3
# }
	.d2line		79
	.d2epilogue_begin
	lmw		r30,56(r1)		# offset r1+56  0x38
	.d2_cfa_restore_list	3,10
	lwz		r0,68(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11400:
	.type		GetStackUsage,@function
	.size		GetStackUsage,.-GetStackUsage
# Number of nodes = 59

# Allocations for GetStackUsage
#	?a4		procId
#	?a5		maxUsageRef
#	?a6		currentUsageRef
#	SP,8		Os_GetStackUsageCall
# LOCAL_INLINE FUNC(StatusType, OS_CODE) Os_GetStackUsageErr(
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11425:
	.section	.Os_TEXT,,c
#$$ld
.L11421:
	.0byte		.L11419
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_GetStackUsage.c"
        .d2line         198,40
#$$ld
.L11428:

#$$bf	Os_GetStackUsageErr,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_GetStackUsageErr:
.Llo7:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo18:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# coreHookDyn=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# stackUsage=r31 stackUsage=r3
	.d2prologue_end
#                                            CONSTP2CONST(Os_API_StackUsageType, AUTOMATIC, AUTOMATIC) stackUsage
#                                        )
# {
#   #ifdef OS_MODULE_MEMORYPROTECTION
#     CONSTP2CONST(Os_ProcStatType, AUTOMATIC, OS_CONST) callerProc = OS_SCHEDULER_GET_CURRENT_PROC(OS_GETCOREID());
#   #endif /* OS_MODULE_MEMORYPROTECTION */
#     VAR (StatusType, AUTOMATIC) retVal;
# 
#   #ifdef OS_CONFIG_HOOK
#     CONSTP2VAR  (Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = OS_GET_CORE_HOOK_DYN(OS_GETCOREID());
	.d2line		208
	lis		r3,(Os_Core_Stat+4)@ha		# coreHookDyn=r3
.Llo8:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# coreHookDyn=r3 coreHookDyn=r3
	mfspr		r0,286		# coreHookDyn=r0
	rlwinm		r0,r0,0,16,31		# coreHookDyn=r0 coreHookDyn=r0
	e_mulli		r0,r0,20		# coreHookDyn=r0 coreHookDyn=r0
.Llo19:
	lwzx		r3,r3,r0		# coreHookDyn=r3 coreHookDyn=r3
.Llo20:
	diab.addi		r0,r3,100		# coreHookDyn=r0 coreHookDyn=r3
# 
#     if ( OS_HOOKID_NONE != coreHookDyn->Os_HookID )
	.d2line		210
	lhz		r0,100(r3)		# coreHookDyn=r0 coreHookDyn=r3
	se_cmpi		r0,1		# coreHookDyn=r0
	bc		1,2,.L11377	# eq
#     {
#         /* [OS088-03-478] [OS088-03-479] [OS088-03-480] [OS088-03-481] [OS088-03-482]
#          * [OS088-03-483] [OS088-03-484] [OS088-03-485] [OS088-03-486] [OS088-03-487]
#          * [OS088-04-MGC-083] [OS088-04-MGC-084] [OS088-04-MGC-085] [OS088-04-MGC-086] [OS088-04-MGC-087]
#          * [OS088-04-MGC-088] [OS088-04-MGC-089] [OS088-04-MGC-090] [OS088-04-MGC-091] [OS088-04-MGC-092]
#          * [OS-MGC-0056-43] [OS-MGC-0056-86]
#          */
#         retVal = E_OS_CALLEVEL;
	.d2line		218
.Llo9:
	diab.li		r3,2		# retVal=r3
.Llo11:
	b		.L11378
.L11377:
#     }
#     else
# 
#   #endif /* OS_CONFIG_HOOK */
# 
#     if(Os_false == Os_Proc_CheckId(stackUsage->ProcId))
	.d2line		224
.Llo12:
	lwz		r3,0(r31)		# coreHookDyn=r3 stackUsage=r31
	bl		Os_Proc_CheckId
.Llo21:
	se_cmpi		r3,0		# coreHookDyn=r3
	bc		0,2,.L11379	# ne
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ID); /* [OS-MGC-0076.v1] */
	.d2line		226
.Llo22:
	diab.li		r3,3		# retVal=r3
.Llo13:
	b		.L11378
.L11379:
#     }
#     else if((NULL_PTR == stackUsage->MaxUsageRef) ||
	.d2line		228
.Llo14:
	lwz		r0,8(r31)		# coreHookDyn=r0 stackUsage=r31
.Llo23:
	se_cmpi		r0,0		# coreHookDyn=r0
	bc		1,2,.L11383	# eq
.Llo24:
	lwz		r0,16(r31)		# coreHookDyn=r0 stackUsage=r31
.Llo25:
	se_cmpi		r0,0		# coreHookDyn=r0
	bc		0,2,.L11381	# ne
.L11383:
#             (NULL_PTR == stackUsage->CurrentUsageRef) )
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_PARAM_POINTER); /* [OS566-13] [OS566-14] */
	.d2line		231
.Llo26:
	diab.li		r3,14		# retVal=r3
.Llo15:
	b		.L11378
.L11381:
#     }
#   #ifdef OS_MODULE_MEMORYPROTECTION
#     else if (!OSMEMORY_IS_RETURNABLE(Os_CheckMemoryAccess(callerProc,
#                                                           OS_CASTTOADDRESS(stackUsage->MaxUsageRef),
#                                                           OS_SIZEOF(uint8),
#                                                           TRUE)))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ILLEGAL_ADDRESS); /* [OS051-01-MGC-12] */
#     }
#     else if (!OSMEMORY_IS_RETURNABLE(Os_CheckMemoryAccess(callerProc,
#                                                           OS_CASTTOADDRESS(stackUsage->CurrentUsageRef),
#                                                           OS_SIZEOF(uint8),
#                                                           TRUE)))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ILLEGAL_ADDRESS); /* [OS051-01-MGC-13] */
#     }
#   #endif /* OS_MODULE_MEMORYPROTECTION */
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-250] [OS088-01-251]
#          */
#         retVal = E_OK; /* [OS-MGC-0075] */
	.d2line		254
.Llo10:
	diab.li		r3,0		# retVal=r3
.L11378:
#     }
#     return retVal;
	.d2line		256
.Llo16:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		257
	.d2epilogue_begin
.Llo17:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# coreHookDyn=r0
	mtspr		lr,r0		# coreHookDyn=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11429:
	.type		Os_GetStackUsageErr,@function
	.size		Os_GetStackUsageErr,.-Os_GetStackUsageErr
# Number of nodes = 59

# Allocations for Os_GetStackUsageErr
#	?a4		stackUsage
#	?a5		retVal
#	?a6		coreHookDyn
# OS_APILIGHT(GetStackUsage)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         91,1
#$$ld
.L11448:

#$$bf	Os_API_GetStackUsage,interprocedural,rasave,nostackparams
	.globl		Os_API_GetStackUsage
	.d2_cfa_start __cie
Os_API_GetStackUsage:
.Llo27:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     VAR(StatusType, AUTOMATIC) retVal = Os_GetStackUsageErr(&Os_APICall->Os_API_Data.Os_ApiStackUsage);
	.d2line		93
	se_addi		r3,16		# Os_APICall=r3 Os_APICall=r3
.Llo28:
	bl		Os_GetStackUsageErr
.Llo31:
	mr		r30,r3		# retVal=r30 retVal=r3
#     if(retVal == E_OK) /* [OS-MGC-0075] */
	.d2line		94
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11370	# ne
	.section	.Os_TEXT,,c
.L11455:
#     {
#         CONSTP2CONST( Os_ProcStatType, AUTOMATIC, OS_CONST ) proc =
	.d2line		96
.Llo29:
	lis		r28,Os_Proc_Stat@ha
.Llo32:
	e_add16i		r28,r28,Os_Proc_Stat@l
	lwz		r0,16(r31)		# Os_APICall=r31
	e_mulli		r0,r0,80
	se_add		r0,r28
.Llo33:
	mr		r28,r0		# proc=r28 proc=r0
	.section	.Os_TEXT,,c
.L11466:
#                 &Os_Proc_Stat[Os_APICall->Os_API_Data.Os_ApiStackUsage.ProcId];
# 
#         /* Calculate maximum stack usage. */
#         /* [OS-MGC-0097]: guaranteed by design. */
#         {
#           #ifndef OS_MODULE_STACKSHARING
#             CONST       (Os_StackSizeType, AUTOMATIC)       procStackSize = proc->Os_ProcStack->Os_ProcStackSize;
	.d2line		103
.Llo34:
	lwz		r3,12(r28)		# retVal=r3 proc=r28
.Llo35:
	lwz		r0,0(r3)		# retVal=r3
.Llo41:
	mr		r0,r0		# procStackSize=r0 procStackSize=r0
#             CONSTP2CONST(Os_StackType, AUTOMATIC, OS_CONST) procStackPtrMax = proc->Os_ProcStack->Os_ProcStackBase;
	.d2line		104
	lwz		r6,4(r3)		# retVal=r3
.Llo50:
	mr		r6,r6		# procStackPtrMax=r6 procStackPtrMax=r6
#             P2CONST     (Os_StackType, AUTOMATIC, OS_VAR)   procStackPtr = (Os_StackType*)
	.d2line		105
	mr		r4,r6		# procStackPtrMax=r4 procStackPtrMax=r6
	mr		r3,r0		# procStackSize=r3 procStackSize=r0
	se_slwi		r3,2		# retVal=r3 retVal=r3
	subf		r3,r3,r4		# retVal=r3 retVal=r3
.Llo51:
	mr		r3,r3		# procStackPtr=r3 procStackPtr=r3
.L11361:
#                         (proc->Os_ProcStack->Os_ProcStackBase - proc->Os_ProcStack->Os_ProcStackSize);
#           #else /* OS_MODULE_STACKSHARING */
#             P2CONST(Os_StackType,     AUTOMATIC, OS_VAR) procStackPtrMax;
#             P2CONST(Os_StackType,     AUTOMATIC, OS_VAR) procStackPtr;
#             VAR    (Os_StackSizeType, AUTOMATIC)         procStackSize;
# 
#             if(NULL_PTR == proc->Os_ProcStackSharing)
#             {
#                 procStackPtrMax = proc->Os_ProcStack->Os_ProcStackBase;
#                 procStackPtr = (Os_StackType*)
#                         (proc->Os_ProcStack->Os_ProcStackBase - proc->Os_ProcStack->Os_ProcStackSize);
#                 procStackSize = proc->Os_ProcStack->Os_ProcStackSize;
#             }
#             else
#             {
#                 /* [OS-MGC-0094] */
#                 procStackPtrMax = proc->Os_ProcStackSharing->Os_StackSharingStackBase;
#                 procStackPtr    = proc->Os_ProcStackSharing->Os_StackSharingStackBase
#                                   - proc->Os_ProcStackSharing->Os_StackSharingStackSize;
#                 procStackSize   = proc->Os_ProcStackSharing->Os_StackSharingStackSize;
#             }
# 
#           #endif /* OS_MODULE_STACKSHARING */
# 
#             /* [OS-MGC-0095] [OS-MGC-0096] */
#             while(procStackPtr < procStackPtrMax)
	.d2line		131
	se_cmpl		r3,r6		# procStackPtr=r3 procStackPtrMax=r6
	bc		0,0,.L11364	# ge
#             {
#                 procStackPtr++;
#                 if(OS_STACKPATTERN != *procStackPtr)
	.d2line		134
	lwzu		r4,4(r3)		# procStackPtr=r3
	e_lis		r5,57005
	e_or2i		r5,48879
	se_cmpl		r4,r5
	bc		1,2,.L11361	# eq
.L11364:
#                 {
#                     break;
#                 }
#                 else
#                 {
#                     /* Continue */
#                 }
#             }
# 
#             /* [OS-MGC-0092] */
#             Os_APICall->Os_API_Data.Os_ApiStackUsage.MaxUsage =
	.d2line		145
.Llo42:
	subf		r3,r3,r6		# procStackPtr=r3 procStackPtr=r3 procStackPtrMax=r6
	srawi		r3,r3,2		# procStackPtr=r3 procStackPtr=r3
	e_mulli		r3,r3,100		# procStackPtr=r3 procStackPtr=r3
	diab.addi		r3,r3,100		# procStackPtr=r3 procStackPtr=r3
.Llo43:
	divwu		r0,r3,r0		# procStackSize=r0 procStackPtr=r3 procStackSize=r0
	stb		r0,20(r31)		# Os_APICall=r31 procStackSize=r0
	.section	.Os_TEXT,,c
.L11467:
#                     (uint8) (   (   ( (Os_StackSizeType) ( procStackPtrMax - procStackPtr ) + 1U )
#                                   * (Os_StackSizeType) OS_STACKUSAGE_MAX_PERCENT )
#                               / procStackSize );
#         }
# 
#         /* Calculate current stack usage. */
#         if(Os_ProcContextInvalid != proc->Os_ProcDyn->Os_ProcContextState)
	.d2line		152
.Llo44:
	lwz		r3,8(r28)		# procStackPtr=r3 proc=r28
.Llo52:
	lwz		r0,4(r3)		# procStackSize=r0 procStackPtr=r3
.Llo45:
	se_cmpi		r0,0		# procStackSize=r0
	bc		1,2,.L11366	# eq
	.section	.Os_TEXT,,c
.L11482:
#         {
#             CONSTP2CONST (Os_StackType, AUTOMATIC, OS_CONST)  procStackEnd = (Os_StackType*)
	.d2line		154
.Llo46:
	lwz		r3,12(r28)		# procStackPtr=r3 proc=r28
.Llo53:
	lwz		r0,4(r3)		# procStackSize=r0 procStackPtr=r3
.Llo47:
	lwz		r3,0(r3)		# procStackPtr=r3 procStackPtr=r3
	se_slwi		r3,2		# procStackPtr=r3 procStackPtr=r3
	subf		r3,r3,r0		# procStackPtr=r3 procStackPtr=r3 procStackSize=r0
	se_addi		r3,4		# procStackPtr=r3 procStackPtr=r3
.Llo54:
	mr		r29,r3		# procStackEnd=r29 procStackEnd=r3
#                     ( proc->Os_ProcStack->Os_ProcStackBase - proc->Os_ProcStack->Os_ProcStackSize + 1U );
#             CONST(CoreIdType,AUTOMATIC) coreId =
	.d2line		156
	lhz		r0,4(r28)		# procStackSize=r0 proc=r28
.Llo48:
	mr		r0,r0		# coreId=r0 coreId=r0
#                 #ifdef OS_MODULE_MULTICORE
#                     proc->Os_ProcCoreID;
#                 #else
#                     OS_GETCOREID();
#                 #endif
# 
#             CONSTP2CONST (Os_StackType, AUTOMATIC, OS_CONST)  stackPointer =
	.d2line		163
	lis		r3,(Os_Core_Stat+16)@ha		# procStackPtr=r3
.Llo55:
	e_add16i		r3,r3,(Os_Core_Stat+16)@l		# procStackPtr=r3 procStackPtr=r3
	rlwinm		r0,r0,0,16,31		# coreId=r0 coreId=r0
	e_mulli		r0,r0,20		# coreId=r0 coreId=r0
	lwzx		r0,r3,r0		# coreId=r0 procStackPtr=r3
.Llo59:
	mtspr		ctr,r0		# coreId=ctr
	mr		r3,r28		# proc=r3 proc=r28
.Llo56:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo57:
	mr		r0,r3		# stackPointer=r0 stackPointer=r3
#                     OS_GET_CORE_STAT ( coreId )->Os_GetStackPointerFunction ( proc );
# 
#             if(    (stackPointer < (proc->Os_ProcStack->Os_ProcStackBase + 1U))
	.d2line		166
	lwz		r3,12(r28)		# proc=r3 proc=r28
.Llo60:
	lwz		r3,4(r3)		# proc=r3 proc=r3
.Llo61:
	se_addi		r3,4		# proc=r3 proc=r3
	se_cmpl		r3,r0		# proc=r3 stackPointer=r0
	bc		0,1,.L11367	# le
	se_cmpl		r0,r29		# stackPointer=r0 procStackEnd=r29
	bc		1,0,.L11367	# lt
	.section	.Os_TEXT,,c
.L11496:
#                 && (stackPointer >= procStackEnd))
#             {
#                 VAR(Os_StackSizeType, AUTOMATIC) usedBytes =
	.d2line		169
.Llo58:
	lwz		r3,12(r28)		# proc=r3 proc=r28
	lwz		r4,4(r3)		# proc=r3
.Llo62:
	subf		r0,r0,r4		# stackPointer=r0 stackPointer=r0
	srawi		r0,r0,2		# stackPointer=r0 stackPointer=r0
.Llo63:
	mr		r0,r0		# usedBytes=r0 usedBytes=r0
#                         (Os_StackSizeType)(proc->Os_ProcStack->Os_ProcStackBase - stackPointer);
# 
#                 /* [OS-MGC-0091] */
#                 Os_APICall->Os_API_Data.Os_ApiStackUsage.CurrentUsage = (uint8)(
	.d2line		173
	e_mulli		r0,r0,100		# usedBytes=r0 usedBytes=r0
	lwz		r3,0(r3)		# proc=r3 proc=r3
	divwu		r0,r0,r3		# usedBytes=r0 usedBytes=r0 proc=r3
	stb		r0,28(r31)		# Os_APICall=r31 usedBytes=r0
	.section	.Os_TEXT,,c
.L11497:
.Llo36:
	b		.L11370
.L11367:
#                         (Os_StackSizeType)(usedBytes * OS_STACKUSAGE_MAX_PERCENT) /
#                         proc->Os_ProcStack->Os_ProcStackSize);
#             }
#             else
#             {
#                 /* [OS-MGC-0098] [OS-MGC-0099] */
#                 Os_APICall->Os_API_Data.Os_ApiStackUsage.CurrentUsage = OS_INVALID_STACKUSAGE;
	.d2line		180
.Llo37:
	diab.li		r0,255		# stackPointer=r0
.Llo64:
	stb		r0,28(r31)		# Os_APICall=r31 stackPointer=r0
	.section	.Os_TEXT,,c
.L11483:
.Llo38:
	b		.L11370
.L11366:
#             }
#         }
#         else
#         {
#             Os_APICall->Os_API_Data.Os_ApiStackUsage.CurrentUsage = (uint8)0U; /* [OS-MGC-0093] */
	.d2line		185
.Llo39:
	diab.li		r0,0		# procStackSize=r0
.Llo49:
	stb		r0,28(r31)		# Os_APICall=r31 procStackSize=r0
	.section	.Os_TEXT,,c
.L11456:
.L11370:
#         }
#     }
#     else
#     {
#         /* Do nothing on purpose. */
#     }
# 
#     Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		193
.Llo40:
	stb		r30,4(r31)		# Os_APICall=r31 retVal=r30
# }
	.d2line		194
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo30:
	lwz		r0,36(r1)		# usedBytes=r0
	mtspr		lr,r0		# usedBytes=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11449:
	.type		Os_API_GetStackUsage,@function
	.size		Os_API_GetStackUsage,.-Os_API_GetStackUsage
# Number of nodes = 194

# Allocations for Os_API_GetStackUsage
#	?a4		Os_APICall
#	?a5		retVal
#	?a6		proc
#	?a7		procStackSize
#	?a8		procStackPtrMax
#	?a9		procStackPtr
#	?a10		procStackEnd
#	?a11		coreId
#	?a12		stackPointer
#	?a13		usedBytes

# Allocations for module
	.section	.text_vle
	.0byte		.L11502
	.section	.text_vle
	.0byte		.L11506
	.section	.text_vle
#$$ld
.L5:
.L11949:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L11946:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11944:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11942:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11940:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11928:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11926:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11914:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11870:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11822:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11797:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11561:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11513:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11507:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11503:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11393:
.L11401:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_GetStackUsage.c"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11422:
.L11430:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_GetStackUsage.c"
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
	.uleb128	6
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
	.uleb128	14
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
	.uleb128	15
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	26
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
	.uleb128	27
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_GetStackUsage.c"
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
.L11390:
	.4byte		.L11391-.L11389
.L11389:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11395-.L11390
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_GetStackUsage.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11392
	.4byte		.L11393
	.4byte		.L11396
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11405:
	.sleb128	2
	.4byte		.L11398-.L11390
	.byte		"GetStackUsage"
	.byte		0
	.4byte		.L11401
	.uleb128	59
	.uleb128	28
	.4byte		.L11402
	.byte		0x1
	.byte		0x1
	.4byte		.L11399
	.4byte		.L11400
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11401
	.uleb128	59
	.uleb128	28
	.byte		"procId"
	.byte		0
	.4byte		.L11406
	.4byte		.L11411
	.sleb128	3
	.4byte		.L11401
	.uleb128	59
	.uleb128	28
	.byte		"maxUsageRef"
	.byte		0
	.4byte		.L11412
	.4byte		.L11413
	.sleb128	3
	.4byte		.L11401
	.uleb128	59
	.uleb128	28
	.byte		"currentUsageRef"
	.byte		0
	.4byte		.L11412
	.4byte		.L11414
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11415:
	.sleb128	4
	.4byte		.L11401
	.uleb128	63
	.uleb128	36
	.byte		"Os_GetStackUsageCall"
	.byte		0
	.4byte		.L11416
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11398:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11419:
	.4byte		.L11420-.L11418
.L11418:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11424-.L11419
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_GetStackUsage.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11421
	.4byte		.L11422
	.4byte		.L11425
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11431:
	.sleb128	5
	.4byte		.L11427-.L11419
	.byte		"Os_GetStackUsageErr"
	.byte		0
	.4byte		.L11430
	.uleb128	198
	.uleb128	40
	.4byte		.L11402
	.byte		0x1
	.4byte		.L11428
	.4byte		.L11429
	.sleb128	3
	.4byte		.L11430
	.uleb128	198
	.uleb128	40
	.byte		"stackUsage"
	.byte		0
	.4byte		.L11432
	.4byte		.L11437
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11438:
	.sleb128	6
	.4byte		.L11430
	.uleb128	205
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11402
	.4byte		.L11439
.L11440:
	.sleb128	6
	.4byte		.L11430
	.uleb128	208
	.uleb128	55
	.byte		"coreHookDyn"
	.byte		0
	.4byte		.L11441
	.4byte		.L11445
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11427:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11450:
	.sleb128	7
	.4byte		.L11447-.L11419
	.byte		"Os_API_GetStackUsage"
	.byte		0
	.4byte		.L11430
	.uleb128	91
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11448
	.4byte		.L11449
	.sleb128	3
	.4byte		.L11430
	.uleb128	91
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11451
	.4byte		.L11452
.L11453:
	.sleb128	6
	.4byte		.L11430
	.uleb128	93
	.uleb128	32
	.byte		"retVal"
	.byte		0
	.4byte		.L11402
	.4byte		.L11454
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11458
	.4byte		.L11455
	.4byte		.L11456
.L11459:
	.sleb128	6
	.4byte		.L11430
	.uleb128	96
	.uleb128	62
	.byte		"proc"
	.byte		0
	.4byte		.L11460
	.4byte		.L11465
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11469
	.4byte		.L11466
	.4byte		.L11467
.L11470:
	.sleb128	6
	.4byte		.L11430
	.uleb128	103
	.uleb128	61
	.byte		"procStackSize"
	.byte		0
	.4byte		.L11471
	.4byte		.L11473
.L11474:
	.sleb128	6
	.4byte		.L11430
	.uleb128	104
	.uleb128	61
	.byte		"procStackPtrMax"
	.byte		0
	.4byte		.L11475
	.4byte		.L11479
.L11480:
	.sleb128	6
	.4byte		.L11430
	.uleb128	105
	.uleb128	61
	.byte		"procStackPtr"
	.byte		0
	.4byte		.L11476
	.4byte		.L11481
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11469:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11485
	.4byte		.L11482
	.4byte		.L11483
.L11486:
	.sleb128	6
	.4byte		.L11430
	.uleb128	154
	.uleb128	63
	.byte		"procStackEnd"
	.byte		0
	.4byte		.L11475
	.4byte		.L11487
.L11488:
	.sleb128	6
	.4byte		.L11430
	.uleb128	156
	.uleb128	41
	.byte		"coreId"
	.byte		0
	.4byte		.L11489
	.4byte		.L11493
.L11494:
	.sleb128	6
	.4byte		.L11430
	.uleb128	163
	.uleb128	63
	.byte		"stackPointer"
	.byte		0
	.4byte		.L11475
	.4byte		.L11495
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11499
	.4byte		.L11496
	.4byte		.L11497
.L11500:
	.sleb128	6
	.4byte		.L11430
	.uleb128	169
	.uleb128	50
	.byte		"usedBytes"
	.byte		0
	.4byte		.L11472
	.4byte		.L11501
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11499:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11485:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11458:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11447:
	.section	.debug_info,,n
.L11502:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11503
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11504
	.section	.debug_info,,n
.L11506:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11507
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11508
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11512:
	.sleb128	10
	.4byte		.L11513
	.uleb128	69
	.uleb128	1
	.4byte		.L11514-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11532
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11514:
.L11518:
	.sleb128	10
	.4byte		.L11513
	.uleb128	69
	.uleb128	1
	.4byte		.L11538-.L2
	.uleb128	36
.L783:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11538:
.L11522:
	.sleb128	10
	.4byte		.L11513
	.uleb128	69
	.uleb128	1
	.4byte		.L11547-.L2
	.uleb128	104
.L773:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11547:
.L11542:
	.sleb128	10
	.4byte		.L11513
	.uleb128	69
	.uleb128	1
	.4byte		.L11552-.L2
	.uleb128	4
.L772:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11552:
.L11549:
	.sleb128	10
	.4byte		.L11513
	.uleb128	69
	.uleb128	1
	.4byte		.L11555-.L2
	.uleb128	48
.L764:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11555:
	.section	.debug_info,,n
.L11560:
	.sleb128	12
	.4byte		.L11561
	.uleb128	612
	.uleb128	1
	.4byte		.L11562-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11562:
.L11540:
	.sleb128	10
	.4byte		.L11561
	.uleb128	612
	.uleb128	1
	.4byte		.L11564-.L2
	.uleb128	28
.L743:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11566
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11409
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11409
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11409
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11564:
.L11551:
	.sleb128	10
	.4byte		.L11561
	.uleb128	612
	.uleb128	1
	.4byte		.L11567-.L2
	.uleb128	52
.L737:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11409
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11567:
.L11526:
	.sleb128	12
	.4byte		.L11561
	.uleb128	612
	.uleb128	1
	.4byte		.L11578-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11579
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11581
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11416
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11578:
.L11417:
	.sleb128	12
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11583-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11409
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11584
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11583:
	.section	.debug_info,,n
.L11591:
	.sleb128	13
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11592-.L2
	.uleb128	24
.L677:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11601
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11603
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11609
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11615
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11617
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11621
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11623
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11627
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11629
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11631
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11641
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11645
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11647
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11649
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11655
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11657
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11665
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11679
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11592:
.L11686:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11687-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11687:
.L11684:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11690-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11690:
.L11682:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11701-.L2
	.uleb128	8
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11701:
.L11680:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11706-.L2
	.uleb128	2
.L670:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11706:
.L11678:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11707-.L2
	.uleb128	2
.L669:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11707:
.L11436:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11708-.L2
	.uleb128	20
.L664:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11708:
.L11676:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11710-.L2
	.uleb128	12
.L661:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11710:
.L11674:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11715-.L2
	.uleb128	12
.L658:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11715:
.L11672:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11719-.L2
	.uleb128	12
.L655:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11719:
.L11638:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11720-.L2
	.uleb128	4
.L654:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11720:
.L11636:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11722-.L2
	.uleb128	12
.L651:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11722:
.L11634:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11724-.L2
	.uleb128	12
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11724:
.L11632:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11725-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11725:
.L11630:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11728-.L2
	.uleb128	8
.L644:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11728:
.L11670:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11733-.L2
	.uleb128	4
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11733:
.L11668:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11735-.L2
	.uleb128	8
.L641:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11735:
.L11666:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11736-.L2
	.uleb128	4
.L640:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11736:
.L11664:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11737-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11737:
.L11662:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11738-.L2
	.uleb128	8
.L636:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11738:
.L11660:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11743-.L2
	.uleb128	4
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11743:
.L11658:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11744-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11744:
.L11656:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11745-.L2
	.uleb128	8
.L631:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11745:
.L11654:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11746-.L2
	.uleb128	12
.L628:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11726
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11746:
.L11652:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11748-.L2
	.uleb128	12
.L625:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11748:
.L11650:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11753-.L2
	.uleb128	4
.L624:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11753:
.L11646:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11754-.L2
	.uleb128	4
.L623:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11581
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11754:
.L11642:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11755-.L2
	.uleb128	2
.L621:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11755:
.L11644:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11757-.L2
	.uleb128	1
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11757:
.L11640:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11758-.L2
	.uleb128	8
.L618:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11758:
.L11624:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11762-.L2
	.uleb128	8
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11762:
.L11622:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11766-.L2
	.uleb128	24
.L614:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11766:
.L11620:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11769-.L2
	.uleb128	8
.L613:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11769:
.L11618:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11770-.L2
	.uleb128	16
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11770:
.L11616:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11771-.L2
	.uleb128	8
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11771:
.L11614:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11776-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11777
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11776:
.L11612:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11779-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11779:
.L11610:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11780-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11780:
.L11628:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11781-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11781:
.L11626:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11783-.L2
	.uleb128	4
.L604:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11783:
.L11648:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11784-.L2
	.uleb128	4
.L603:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11785
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11784:
.L11608:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11786-.L2
	.uleb128	2
.L602:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11786:
.L11602:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11787-.L2
	.uleb128	2
.L601:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11787:
.L11600:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11788-.L2
	.uleb128	1
.L600:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11788:
.L11598:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11789-.L2
	.uleb128	8
.L598:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11789:
.L11596:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11792-.L2
	.uleb128	1
.L597:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11792:
.L11606:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11793-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11793:
.L11604:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11795-.L2
	.uleb128	8
.L593:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11795:
.L11594:
	.sleb128	10
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11796-.L2
	.uleb128	4
.L592:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11785
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11796:
.L11694:
	.sleb128	10
	.4byte		.L11797
	.uleb128	33
	.uleb128	14
	.4byte		.L11798-.L2
	.uleb128	24
.L585:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11805
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11798:
.L11812:
	.sleb128	10
	.4byte		.L11797
	.uleb128	33
	.uleb128	14
	.4byte		.L11816-.L2
	.uleb128	4
.L581:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11816:
.L11802:
	.sleb128	10
	.4byte		.L11797
	.uleb128	33
	.uleb128	14
	.4byte		.L11821-.L2
	.uleb128	6
.L578:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11821:
.L11444:
	.sleb128	10
	.4byte		.L11822
	.uleb128	34
	.uleb128	14
	.4byte		.L11823-.L2
	.uleb128	2
.L529:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11823:
.L11464:
	.sleb128	12
	.4byte		.L11503
	.uleb128	80
	.uleb128	13
	.4byte		.L11825-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11839
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11843
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11825:
.L11835:
	.sleb128	12
	.4byte		.L11503
	.uleb128	80
	.uleb128	13
	.4byte		.L11863-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11843
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11863:
.L11830:
	.sleb128	10
	.4byte		.L11503
	.uleb128	80
	.uleb128	13
	.4byte		.L11864-.L2
	.uleb128	56
.L496:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11864:
.L11869:
	.sleb128	12
	.4byte		.L11870
	.uleb128	52
	.uleb128	1
	.4byte		.L11871-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11871:
.L11876:
	.sleb128	10
	.4byte		.L11870
	.uleb128	52
	.uleb128	1
	.4byte		.L11877-.L2
	.uleb128	12
.L445:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11857
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11877:
.L11546:
	.sleb128	12
	.4byte		.L11870
	.uleb128	52
	.uleb128	1
	.4byte		.L11878-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11884
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11878:
.L11882:
	.sleb128	10
	.4byte		.L11870
	.uleb128	52
	.uleb128	1
	.4byte		.L11913-.L2
	.uleb128	1
.L432:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11913:
.L11860:
	.sleb128	10
	.4byte		.L11914
	.uleb128	32
	.uleb128	1
	.4byte		.L11915-.L2
	.uleb128	12
.L429:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11915:
.L11918:
	.sleb128	10
	.4byte		.L11914
	.uleb128	32
	.uleb128	1
	.4byte		.L11919-.L2
	.uleb128	4
.L428:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11919:
.L11575:
	.sleb128	10
	.4byte		.L11914
	.uleb128	32
	.uleb128	1
	.4byte		.L11920-.L2
	.uleb128	24
.L417:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11920:
.L11732:
	.sleb128	10
	.4byte		.L11926
	.uleb128	50
	.uleb128	1
	.4byte		.L11927-.L2
	.uleb128	12
.L376:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11927:
.L11571:
	.sleb128	10
	.4byte		.L11928
	.uleb128	87
	.uleb128	7
	.4byte		.L11929-.L2
	.uleb128	8
.L364:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11929:
	.section	.debug_info,,n
.L11557:
	.sleb128	14
	.4byte		.L11513
	.uleb128	69
	.uleb128	1
	.4byte		.L11933-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	15
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11933:
.L11580:
	.sleb128	14
	.4byte		.L11561
	.uleb128	612
	.uleb128	1
	.4byte		.L11934-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	15
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L11934:
.L11585:
	.sleb128	14
	.4byte		.L11561
	.uleb128	60
	.uleb128	1
	.4byte		.L11935-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11935:
	.section	.debug_info,,n
.L11714:
	.sleb128	16
	.4byte		.L11797
	.uleb128	33
	.uleb128	14
	.4byte		.L11936-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	15
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11936:
.L11866:
	.sleb128	14
	.4byte		.L11503
	.uleb128	80
	.uleb128	13
	.4byte		.L11937-.L2
	.uleb128	4
	.sleb128	15
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11937:
.L11838:
	.sleb128	14
	.4byte		.L11503
	.uleb128	61
	.uleb128	1
	.4byte		.L11938-.L2
	.uleb128	4
	.sleb128	15
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11938:
.L11886:
	.sleb128	14
	.4byte		.L11870
	.uleb128	52
	.uleb128	1
	.4byte		.L11939-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11939:
.L11705:
	.sleb128	14
	.4byte		.L11940
	.uleb128	43
	.uleb128	1
	.4byte		.L11941-.L2
	.uleb128	4
	.sleb128	15
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11941:
.L11775:
	.sleb128	14
	.4byte		.L11942
	.uleb128	37
	.uleb128	1
	.4byte		.L11943-.L2
	.uleb128	4
	.sleb128	15
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11943:
.L11742:
	.sleb128	14
	.4byte		.L11944
	.uleb128	40
	.uleb128	1
	.4byte		.L11945-.L2
	.uleb128	4
	.sleb128	15
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11945:
.L11718:
	.sleb128	14
	.4byte		.L11946
	.uleb128	47
	.uleb128	1
	.4byte		.L11947-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11947:
.L11791:
	.sleb128	14
	.4byte		.L11926
	.uleb128	42
	.uleb128	13
	.4byte		.L11948-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11948:
.L11689:
	.sleb128	14
	.4byte		.L11949
	.uleb128	83
	.uleb128	14
	.4byte		.L11950-.L2
	.uleb128	4
	.sleb128	15
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11950:
	.section	.debug_info,,n
.L11404:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L11403:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L11404
.L11402:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11403
.L11410:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11409:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L11410
.L11408:
	.sleb128	18
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11409
.L11407:
	.sleb128	18
	.byte		"ProcType"
	.byte		0
	.4byte		.L11408
	.section	.debug_info,,n
.L11406:
	.sleb128	19
	.4byte		.L11407
	.section	.debug_info,,n
.L11412:
	.sleb128	20
	.4byte		.L11403
.L11416:
	.sleb128	18
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11417
.L11435:
	.sleb128	18
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11436
.L11434:
	.sleb128	19
	.4byte		.L11435
.L11433:
	.sleb128	20
	.4byte		.L11434
.L11432:
	.sleb128	19
	.4byte		.L11433
.L11443:
	.sleb128	18
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11444
.L11442:
	.sleb128	20
	.4byte		.L11443
.L11441:
	.sleb128	19
	.4byte		.L11442
.L11451:
	.sleb128	20
	.4byte		.L11417
.L11463:
	.sleb128	18
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11464
.L11462:
	.sleb128	19
	.4byte		.L11463
.L11461:
	.sleb128	20
	.4byte		.L11462
.L11460:
	.sleb128	19
	.4byte		.L11461
.L11472:
	.sleb128	18
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11409
.L11471:
	.sleb128	19
	.4byte		.L11472
.L11478:
	.sleb128	18
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11409
.L11477:
	.sleb128	19
	.4byte		.L11478
.L11476:
	.sleb128	20
	.4byte		.L11477
.L11475:
	.sleb128	19
	.4byte		.L11476
.L11492:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11491:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L11492
.L11490:
	.sleb128	18
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11491
.L11489:
	.sleb128	19
	.4byte		.L11490
	.section	.debug_info,,n
.L11504:
	.sleb128	21
	.4byte		.L11505-.L2
	.4byte		.L11462
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L11505:
.L11511:
	.sleb128	18
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11512
.L11510:
	.sleb128	19
	.4byte		.L11511
.L11508:
	.sleb128	21
	.4byte		.L11509-.L2
	.4byte		.L11510
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11509:
.L11517:
	.sleb128	18
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11518
.L11516:
	.sleb128	20
	.4byte		.L11517
.L11515:
	.sleb128	19
	.4byte		.L11516
.L11521:
	.sleb128	18
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11522
.L11520:
	.sleb128	20
	.4byte		.L11521
.L11519:
	.sleb128	19
	.4byte		.L11520
.L11525:
	.sleb128	18
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11526
.L11524:
	.sleb128	20
	.4byte		.L11525
.L11523:
	.sleb128	19
	.4byte		.L11524
	.section	.debug_info,,n
.L11530:
	.sleb128	24
	.4byte		.L11531-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	25
	.4byte		.L11460
	.sleb128	0
.L11531:
.L11529:
	.sleb128	20
	.4byte		.L11530
.L11528:
	.sleb128	18
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11529
.L11527:
	.sleb128	19
	.4byte		.L11528
.L11537:
	.sleb128	20
	.4byte		.L11478
	.section	.debug_info,,n
.L11535:
	.sleb128	26
	.4byte		.L11536-.L2
	.4byte		.L11537
	.byte		0x1
	.sleb128	25
	.4byte		.L11461
	.sleb128	0
.L11536:
.L11534:
	.sleb128	20
	.4byte		.L11535
.L11533:
	.sleb128	18
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11534
.L11532:
	.sleb128	19
	.4byte		.L11533
.L11539:
	.sleb128	18
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11540
.L11541:
	.sleb128	18
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11542
.L11545:
	.sleb128	18
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11546
.L11544:
	.sleb128	19
	.4byte		.L11545
.L11543:
	.sleb128	20
	.4byte		.L11544
.L11548:
	.sleb128	18
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11549
.L11550:
	.sleb128	18
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11551
.L11554:
	.sleb128	19
	.4byte		.L11464
.L11553:
	.sleb128	20
	.4byte		.L11554
.L11556:
	.sleb128	18
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11557
.L11558:
	.sleb128	18
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11409
.L11559:
	.sleb128	18
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11560
.L11563:
	.sleb128	20
	.4byte		.L11560
.L11565:
	.sleb128	18
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11409
.L11566:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L11404
.L11570:
	.sleb128	18
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11571
.L11569:
	.sleb128	19
	.4byte		.L11570
.L11568:
	.sleb128	20
	.4byte		.L11569
.L11574:
	.sleb128	18
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11575
.L11573:
	.sleb128	19
	.4byte		.L11574
.L11572:
	.sleb128	20
	.4byte		.L11573
.L11576:
	.sleb128	21
	.4byte		.L11577-.L2
	.4byte		.L11409
	.sleb128	23
	.uleb128	7
	.sleb128	0
.L11577:
.L11579:
	.sleb128	18
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11580
.L11581:
	.sleb128	18
	.byte		"ISRType"
	.byte		0
	.4byte		.L11407
.L11582:
	.sleb128	20
	.4byte		.L11416
.L11584:
	.sleb128	18
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11585
.L11588:
	.sleb128	24
	.4byte		.L11589-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11451
.L11590:
	.sleb128	19
	.4byte		.L11553
	.sleb128	25
	.4byte		.L11590
	.sleb128	0
.L11589:
.L11587:
	.sleb128	20
	.4byte		.L11588
.L11586:
	.sleb128	18
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11587
.L11593:
	.sleb128	18
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11594
.L11595:
	.sleb128	18
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11596
.L11597:
	.sleb128	18
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11598
.L11599:
	.sleb128	18
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11600
.L11601:
	.sleb128	18
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11602
.L11603:
	.sleb128	18
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11604
.L11605:
	.sleb128	18
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11606
.L11607:
	.sleb128	18
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11608
.L11609:
	.sleb128	18
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11610
.L11611:
	.sleb128	18
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11612
.L11613:
	.sleb128	18
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11614
.L11615:
	.sleb128	18
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11616
.L11617:
	.sleb128	18
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11618
.L11619:
	.sleb128	18
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11620
.L11621:
	.sleb128	18
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11622
.L11623:
	.sleb128	18
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11624
.L11625:
	.sleb128	18
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11626
.L11627:
	.sleb128	18
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11628
.L11629:
	.sleb128	18
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11630
.L11631:
	.sleb128	18
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11632
.L11633:
	.sleb128	18
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11634
.L11635:
	.sleb128	18
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11636
.L11637:
	.sleb128	18
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11638
.L11639:
	.sleb128	18
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11640
.L11641:
	.sleb128	18
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11642
.L11643:
	.sleb128	18
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11644
.L11645:
	.sleb128	18
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11646
.L11647:
	.sleb128	18
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11648
.L11649:
	.sleb128	18
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11650
.L11651:
	.sleb128	18
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11652
.L11653:
	.sleb128	18
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11654
.L11655:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11656
.L11657:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11658
.L11659:
	.sleb128	18
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11660
.L11661:
	.sleb128	18
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11662
.L11663:
	.sleb128	18
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11664
.L11665:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11666
.L11667:
	.sleb128	18
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11668
.L11669:
	.sleb128	18
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11670
.L11671:
	.sleb128	18
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11672
.L11673:
	.sleb128	18
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11674
.L11675:
	.sleb128	18
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11676
.L11677:
	.sleb128	18
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11678
.L11679:
	.sleb128	18
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11680
.L11681:
	.sleb128	18
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11682
.L11683:
	.sleb128	18
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11684
.L11685:
	.sleb128	18
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11686
.L11688:
	.sleb128	18
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11689
.L11693:
	.sleb128	18
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11694
.L11692:
	.sleb128	19
	.4byte		.L11693
.L11691:
	.sleb128	20
	.4byte		.L11692
	.section	.debug_info,,n
.L11700:
	.sleb128	27
	.byte		"void"
	.byte		0
	.byte		0x0
.L11699:
	.sleb128	20
	.4byte		.L11700
.L11697:
	.sleb128	21
	.4byte		.L11698-.L2
	.4byte		.L11699
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11698:
.L11696:
	.sleb128	18
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11697
.L11695:
	.sleb128	20
	.4byte		.L11696
.L11702:
	.sleb128	18
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11491
.L11704:
	.sleb128	18
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11705
.L11703:
	.sleb128	20
	.4byte		.L11704
.L11709:
	.sleb128	18
	.byte		"TaskType"
	.byte		0
	.4byte		.L11407
.L11711:
	.sleb128	18
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11409
.L11712:
	.sleb128	18
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11699
.L11713:
	.sleb128	18
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11714
.L11716:
	.sleb128	18
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11403
.L11717:
	.sleb128	18
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11718
.L11721:
	.sleb128	18
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11408
.L11723:
	.sleb128	18
	.byte		"TickType"
	.byte		0
	.4byte		.L11409
.L11727:
	.sleb128	20
	.4byte		.L11723
.L11726:
	.sleb128	18
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11727
.L11731:
	.sleb128	18
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11732
.L11730:
	.sleb128	20
	.4byte		.L11731
.L11729:
	.sleb128	18
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11730
.L11734:
	.sleb128	18
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11409
.L11741:
	.sleb128	18
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11742
.L11740:
	.sleb128	20
	.4byte		.L11741
.L11739:
	.sleb128	18
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11740
.L11747:
	.sleb128	18
	.byte		"CounterType"
	.byte		0
	.4byte		.L11409
.L11751:
	.sleb128	24
	.4byte		.L11752-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11451
	.sleb128	0
.L11752:
.L11750:
	.sleb128	20
	.4byte		.L11751
.L11749:
	.sleb128	18
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11750
.L11756:
	.sleb128	18
	.byte		"RestartType"
	.byte		0
	.4byte		.L11403
.L11761:
	.sleb128	18
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11403
.L11760:
	.sleb128	20
	.4byte		.L11761
.L11759:
	.sleb128	18
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11760
.L11765:
	.sleb128	17
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11764:
	.sleb128	18
	.byte		"uint64"
	.byte		0
	.4byte		.L11765
.L11763:
	.sleb128	18
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11764
.L11768:
	.sleb128	20
	.4byte		.L11763
.L11767:
	.sleb128	18
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11768
.L11774:
	.sleb128	18
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11775
.L11773:
	.sleb128	20
	.4byte		.L11774
.L11772:
	.sleb128	18
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11773
.L11778:
	.sleb128	20
	.4byte		.L11709
.L11777:
	.sleb128	18
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11778
.L11782:
	.sleb128	18
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11409
.L11785:
	.sleb128	18
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11409
.L11790:
	.sleb128	18
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11791
.L11794:
	.sleb128	20
	.4byte		.L11402
.L11801:
	.sleb128	18
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11802
.L11800:
	.sleb128	20
	.4byte		.L11801
.L11799:
	.sleb128	19
	.4byte		.L11800
.L11803:
	.sleb128	18
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11491
.L11804:
	.sleb128	19
	.4byte		.L11699
.L11805:
	.sleb128	19
	.4byte		.L11491
.L11807:
	.sleb128	18
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11403
.L11806:
	.sleb128	19
	.4byte		.L11807
.L11811:
	.sleb128	18
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11812
.L11810:
	.sleb128	19
	.4byte		.L11811
.L11809:
	.sleb128	20
	.4byte		.L11810
.L11808:
	.sleb128	19
	.4byte		.L11809
.L11815:
	.sleb128	18
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11403
.L11814:
	.sleb128	20
	.4byte		.L11815
.L11813:
	.sleb128	19
	.4byte		.L11814
.L11818:
	.sleb128	18
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11491
.L11817:
	.sleb128	19
	.4byte		.L11818
.L11820:
	.sleb128	18
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11491
.L11819:
	.sleb128	19
	.4byte		.L11820
.L11824:
	.sleb128	18
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11491
.L11826:
	.sleb128	19
	.4byte		.L11709
.L11829:
	.sleb128	18
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11830
.L11828:
	.sleb128	20
	.4byte		.L11829
.L11827:
	.sleb128	19
	.4byte		.L11828
.L11834:
	.sleb128	18
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11835
.L11833:
	.sleb128	19
	.4byte		.L11834
.L11832:
	.sleb128	20
	.4byte		.L11833
.L11831:
	.sleb128	19
	.4byte		.L11832
.L11837:
	.sleb128	18
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11838
.L11836:
	.sleb128	19
	.4byte		.L11837
.L11839:
	.sleb128	19
	.4byte		.L11763
.L11840:
	.sleb128	19
	.4byte		.L11558
.L11842:
	.sleb128	18
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11409
.L11841:
	.sleb128	19
	.4byte		.L11842
.L11843:
	.sleb128	19
	.4byte		.L11537
.L11844:
	.sleb128	19
	.4byte		.L11543
.L11848:
	.sleb128	18
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11409
.L11847:
	.sleb128	19
	.4byte		.L11848
.L11846:
	.sleb128	20
	.4byte		.L11847
.L11845:
	.sleb128	19
	.4byte		.L11846
.L11852:
	.sleb128	24
	.4byte		.L11853-.L2
	.byte		0x1
	.sleb128	0
.L11853:
.L11851:
	.sleb128	20
	.4byte		.L11852
.L11850:
	.sleb128	18
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11851
.L11849:
	.sleb128	19
	.4byte		.L11850
.L11854:
	.sleb128	19
	.4byte		.L11782
.L11859:
	.sleb128	18
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11860
.L11858:
	.sleb128	19
	.4byte		.L11859
.L11857:
	.sleb128	20
	.4byte		.L11858
.L11856:
	.sleb128	18
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11857
.L11855:
	.sleb128	20
	.4byte		.L11856
.L11861:
	.sleb128	19
	.4byte		.L11563
.L11862:
	.sleb128	19
	.4byte		.L11568
.L11865:
	.sleb128	18
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11866
.L11868:
	.sleb128	19
	.4byte		.L11869
.L11867:
	.sleb128	20
	.4byte		.L11868
.L11872:
	.sleb128	19
	.4byte		.L11702
.L11875:
	.sleb128	18
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11876
.L11874:
	.sleb128	20
	.4byte		.L11875
.L11873:
	.sleb128	19
	.4byte		.L11874
.L11881:
	.sleb128	18
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11882
.L11880:
	.sleb128	20
	.4byte		.L11881
.L11879:
	.sleb128	19
	.4byte		.L11880
.L11883:
	.sleb128	19
	.4byte		.L11716
.L11885:
	.sleb128	18
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11886
.L11884:
	.sleb128	19
	.4byte		.L11885
.L11890:
	.sleb128	24
	.4byte		.L11891-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11402
	.sleb128	0
.L11891:
.L11889:
	.sleb128	20
	.4byte		.L11890
.L11888:
	.sleb128	18
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11889
.L11887:
	.sleb128	19
	.4byte		.L11888
.L11895:
	.sleb128	24
	.4byte		.L11896-.L2
	.byte		0x1
	.sleb128	0
.L11896:
.L11894:
	.sleb128	20
	.4byte		.L11895
.L11893:
	.sleb128	18
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11894
.L11892:
	.sleb128	19
	.4byte		.L11893
.L11900:
	.sleb128	24
	.4byte		.L11901-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11402
	.sleb128	0
.L11901:
.L11899:
	.sleb128	20
	.4byte		.L11900
.L11898:
	.sleb128	18
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11899
.L11897:
	.sleb128	19
	.4byte		.L11898
.L11903:
	.sleb128	20
	.4byte		.L11406
.L11902:
	.sleb128	19
	.4byte		.L11903
.L11906:
	.sleb128	19
	.4byte		.L11747
.L11905:
	.sleb128	20
	.4byte		.L11906
.L11904:
	.sleb128	19
	.4byte		.L11905
.L11909:
	.sleb128	19
	.4byte		.L11721
.L11908:
	.sleb128	20
	.4byte		.L11909
.L11907:
	.sleb128	19
	.4byte		.L11908
.L11912:
	.sleb128	19
	.4byte		.L11734
.L11911:
	.sleb128	20
	.4byte		.L11912
.L11910:
	.sleb128	19
	.4byte		.L11911
.L11917:
	.sleb128	18
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11918
.L11916:
	.sleb128	20
	.4byte		.L11917
.L11924:
	.sleb128	24
	.4byte		.L11925-.L2
	.byte		0x1
	.sleb128	0
.L11925:
.L11923:
	.sleb128	20
	.4byte		.L11924
.L11922:
	.sleb128	18
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11923
.L11921:
	.sleb128	19
	.4byte		.L11922
.L11930:
	.sleb128	19
	.4byte		.L11409
.L11932:
	.sleb128	18
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11491
.L11931:
	.sleb128	19
	.4byte		.L11932
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11395:
	.sleb128	0
.L11391:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11424:
	.sleb128	0
.L11420:

	.section	.debug_loc,,n
	.align	0
.L11411:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11413:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),31
	.d2locend
.L11414:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),5
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),30
	.d2locend
.L11437:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locend
.L11439:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L11445:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),0
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locend
.L11452:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),31
	.d2locend
.L11454:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo30),30
	.d2locend
.L11465:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),28
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),28
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),28
	.d2locend
.L11473:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),0
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo40),0
	.d2locend
.L11479:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo44),6
	.d2locend
.L11481:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo46),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),29
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),29
	.d2locend
.L11493:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo59),0
	.d2locend
.L11495:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo58),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo38),0
	.d2locend
.L11501:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo36),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_GetStackUsage"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_GetStackUsageErr"
	.wrcm.end
	.wrcm.nelem "Os_GetStackUsageErr"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_Proc_CheckId"
	.wrcm.end
	.wrcm.nelem "GetStackUsage"
	.wrcm.nint32 "frameSize", 64
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_GetStackUsage.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_GetStackUsage.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_GetStackUsage.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_GetStackUsage.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_GetStackUsage.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_GetStackUsage.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\protection\MemoryProtection\Os_GetStackUsage.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
