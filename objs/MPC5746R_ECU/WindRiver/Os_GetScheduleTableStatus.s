#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_GetScheduleTableStatus.c"
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
# FUNC (StatusType, OS_CODE) GetScheduleTableStatus(VAR (ScheduleTableType, AUTOMATIC)            schTblId,
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11386:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11382:
	.0byte		.L11380
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_GetScheduleTableStatus.c"
        .d2line         73,28
#$$ld
.L11389:

#$$bf	GetScheduleTableStatus,interprocedural,rasave,nostackparams
	.globl		GetScheduleTableStatus
	.d2_cfa_start __cie
GetScheduleTableStatus:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# schTblId=r3 schTblId=r3
	mr		r4,r4		# schTblStatus=r4 schTblStatus=r4
	.d2prologue_end
#                                                   VAR (ScheduleTableStatusRefType, AUTOMATIC)   schTblStatus)
# {
#     VAR (Os_APICallType, AUTOMATIC) Os_GetScheduleTableStatusAPI_Call;
# 
#     Os_GetScheduleTableStatusAPI_Call.Os_API_Data.Os_ApiGetScheduleTableStatus.SchTblId       =  schTblId;
	.d2line		78
	stw		r3,24(r1)		# schTblId=r3
#     Os_GetScheduleTableStatusAPI_Call.Os_API_Data.Os_ApiGetScheduleTableStatus.SchTblStatus   =  schTblStatus;
	.d2line		79
	stw		r4,28(r1)		# schTblStatus=r4
# 
#     /* Taking address of function on purpose */
#     OS_LIGHT_SYSCALL ( Os_GetScheduleTableStatusAPI_Call, GetScheduleTableStatus );
	.d2line		82
	diab.addi		r3,r1,8		# schTblId=r3
.Llo2:
	lis		r4,Os_API_GetScheduleTableStatus@ha		# schTblStatus=r4
	e_add16i		r4,r4,Os_API_GetScheduleTableStatus@l		# schTblStatus=r4 schTblStatus=r4
.Llo3:
	bl		OS_SYS_CALL
# 
#     return Os_GetScheduleTableStatusAPI_Call.Os_API_ReturnValue;
	.d2line		84
	lbz		r3,12(r1)		# schTblId=r3
# }
	.d2line		85
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
.L11390:
	.type		GetScheduleTableStatus,@function
	.size		GetScheduleTableStatus,.-GetScheduleTableStatus
# Number of nodes = 28

# Allocations for GetScheduleTableStatus
#	?a4		schTblId
#	?a5		schTblStatus
#	SP,8		Os_GetScheduleTableStatusAPI_Call
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_GetScheduleTableStatus(
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11415:
	.section	.Os_TEXT,,c
#$$ld
.L11411:
	.0byte		.L11409
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_GetScheduleTableStatus.c"
        .d2line         174,41
#$$ld
.L11418:

#$$bf	Os_GetScheduleTableStatus,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_GetScheduleTableStatus:
.Llo4:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo10:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	mr		r31,r4		# schTblId=r31 schTblId=r4
	mr		r30,r5		# schTblStatus=r30 schTblStatus=r5
	.d2prologue_end
#                                         CONSTP2CONST ( Os_ProcStatType,            AUTOMATIC, OS_CONST ) callerProc,
#                                         CONST        ( ScheduleTableType,          AUTOMATIC )           schTblId,
#                                         CONST        ( ScheduleTableStatusRefType, AUTOMATIC )           schTblStatus
#                                 )
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
#     retVal = Os_SchTbl_Err_Dyn(callerProc, schTblId);
	.d2line		182
	mr		r0,r3		# callerProc=r0 callerProc=r3
.Llo11:
	mr		r4,r31		# schTblId=r4 schTblId=r31
.Llo6:
	bl		Os_SchTbl_Err_Dyn
.Llo5:
	mr		r4,r3		# retVal=r4 retVal=r3
# 
#     if(E_OK == retVal)
	.d2line		184
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11371	# ne
#     {
#         *schTblStatus = Os_SchTblGetStatus(schTblId);
	.d2line		186
.Llo9:
	lis		r3,Os_SchTblStat@ha		# retVal=r3
.Llo12:
	lwz		r0,Os_SchTblStat@l(r3)		# retVal=r0 retVal=r3
.Llo7:
	e_mulli		r31,r31,40		# schTblId=r31 schTblId=r31
	se_add		r31,r0		# schTblId=r31 schTblId=r31 retVal=r0
	lwz		r3,24(r31)		# retVal=r3 schTblId=r31
	lwz		r0,0(r3)		# retVal=r0 retVal=r3
	stw		r0,0(r30)		# schTblStatus=r30 retVal=r0
.L11371:
#     }
# 
#     return retVal;
	.d2line		189
.Llo8:
	rlwinm		r3,r4,0,24,31		# retVal=r3 retVal=r4
# }
	.d2line		190
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo13:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11419:
	.type		Os_GetScheduleTableStatus,@function
	.size		Os_GetScheduleTableStatus,.-Os_GetScheduleTableStatus
# Number of nodes = 26

# Allocations for Os_GetScheduleTableStatus
#	?a4		callerProc
#	?a5		schTblId
#	?a6		schTblStatus
#	?a7		retVal
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_GetScheduleTableStatus_Err_Stat(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         198,41
#$$ld
.L11436:

#$$bf	Os_GetScheduleTableStatus_Err_Stat,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_GetScheduleTableStatus_Err_Stat:
.Llo14:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo18:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	mr		r31,r5		# schTblStatus=r31 schTblStatus=r5
	.d2prologue_end
#                                         P2CONST      ( Os_ProcStatType,         AUTOMATIC, OS_CONST )  callerProc,
#                                         CONST        ( ScheduleTableType,       AUTOMATIC )            schTblId,
#                                         CONSTP2CONST ( ScheduleTableStatusType, AUTOMATIC, AUTOMATIC ) schTblStatus
#                                 )
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
#     retVal = Os_SchTbl_Err_Stat(callerProc, schTblId);
	.d2line		206
	mr		r0,r3		# callerProc=r0 callerProc=r3
.Llo19:
	mr		r0,r4		# schTblId=r0 schTblId=r4
	bl		Os_SchTbl_Err_Stat
.Llo15:
	mr		r3,r3		# retVal=r3 retVal=r3
# 
#     if(retVal == E_OK)
	.d2line		208
	rlwinm		r0,r3,0,24,31		# retVal=r0 retVal=r3
	se_cmpi		r0,0		# retVal=r0
	bc		0,2,.L11374	# ne
#     {
#         if(schTblStatus == NULL_PTR)
	.d2line		210
.Llo16:
	se_cmpi		r31,0		# schTblStatus=r31
#         {
#             retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_PARAM_POINTER); /* [OS566-07] */
	.d2line		212
	diab.li		r4,14
.Llo20:
	isel		r3,r4,r3,2		# retVal=r3 retVal=r3
.L11375:
#         }
#         #ifdef OS_MODULE_MEMORYPROTECTION
#         else if( !OSMEMORY_IS_RETURNABLE(Os_CheckMemoryAccess(callerProc,
#                                                               OS_CASTTOADDRESS(schTblStatus),
#                                                               OS_SIZEOF(ScheduleTableStatusRefType),
#                                                               TRUE)))
#         {
#             retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_ILLEGAL_ADDRESS); /* [OS051-01-MGC-06] */
#         }
#         #endif
#         else
#         {
#             retVal = E_OK;
	.d2line		225
.Llo17:
	diab.li		r0,0		# retVal=r0
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L11374:
#         }
#     }
# 
#     return retVal;
	.d2line		229
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		230
	.d2epilogue_begin
.Llo21:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11437:
	.type		Os_GetScheduleTableStatus_Err_Stat,@function
	.size		Os_GetScheduleTableStatus_Err_Stat,.-Os_GetScheduleTableStatus_Err_Stat
# Number of nodes = 24

# Allocations for Os_GetScheduleTableStatus_Err_Stat
#	?a4		callerProc
#	?a5		schTblId
#	?a6		schTblStatus
#	?a7		retVal
# OS_APILIGHT(GetScheduleTableStatus)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         96,1
#$$ld
.L11449:

#$$bf	Os_API_GetScheduleTableStatus,interprocedural,rasave,nostackparams
	.globl		Os_API_GetScheduleTableStatus
	.d2_cfa_start __cie
Os_API_GetScheduleTableStatus:
.Llo22:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
#     CONST (ScheduleTableType,          AUTOMATIC)            schTblId     =
	.d2line		100
	lwz		r29,16(r31)		# Os_APICall=r31
.Llo39:
	mr		r29,r29		# schTblId=r29 schTblId=r29
#                                                     Os_APICall->Os_API_Data.Os_ApiGetScheduleTableStatus.SchTblId;
#     CONST (ScheduleTableStatusRefType, AUTOMATIC)            schTblStatus =
	.d2line		102
	lwz		r28,20(r31)		# Os_APICall=r31
.Llo42:
	mr		r28,r28		# schTblStatus=r28 schTblStatus=r28
#                                                     Os_APICall->Os_API_Data.Os_ApiGetScheduleTableStatus.SchTblStatus;
#     CONSTP2CONST (Os_ProcStatType,     AUTOMATIC ,OS_CONST)  callerProc   = OS_SCHEDULER_GET_CURRENT_PROC(OS_GETCOREID());
	.d2line		104
	lis		r3,Os_Core_Stat@ha
.Llo23:
	e_add16i		r3,r3,Os_Core_Stat@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	lwz		r27,28(r3)
.Llo43:
	mr		r27,r27		# callerProc=r27 callerProc=r27
# 
#   #if defined ( OS_CONFIG_HOOK ) || defined ( OS_MODULE_MULTICORE ) || \
#       defined(OS_MODULE_ORTISUPPORT) || (defined(OS_CONFIG_USEPARAMETERACCESS) && (OS_ERRORHOOK == STD_ON))
#     CONST (CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		108
	mfspr		r26,286		# coreId=r26
	mr		r26,r26		# coreId=r26 coreId=r26
#   #endif
# 
#     OS_TRACE(GetScheduleTableStatus_Entry , coreId);
	.d2line		111
	diab.li		r0,37
	lis		r3,(Os_Core_DynShared+120)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	rlwinm		r5,r26,0,16,31		# coreId=r26
	e_mulli		r4,r5,152
	stbx		r0,r3,r4
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     if ( OS_HOOKID_NONE != OS_GET_CORE_HOOK_DYN ( coreId )->Os_HookID )
	.d2line		115
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	e_mulli		r5,r5,20
	lwzx		r3,r3,r5
	lhz		r0,100(r3)
	se_cmpi		r0,1
	bc		1,2,.L11359	# eq
#     {
#         /* [OS088-03-234] [OS088-03-235] [OS088-03-236] [OS088-03-237] [OS088-03-238]
#          * [OS088-03-239] [OS088-03-240] [OS088-03-365] [OS088-03-408] [OS088-03-452]
#          * [OS088-04-MGC-034] [OS088-04-MGC-035] [OS088-04-MGC-036] [OS088-04-MGC-037]
#          * [OS088-04-MGC-038] [OS088-04-MGC-039] [OS088-04-MGC-040] [OS088-04-MGC-060]
#          * [OS088-04-MGC-070] [OS088-04-MGC-079] [OS-MGC-0056-28] [OS-MGC-0056-71]
#          */
#         retVal = E_OS_CALLEVEL;
	.d2line		123
.Llo24:
	diab.li		r30,2		# retVal=r30
.Llo26:
	b		.L11360
.L11359:
#     }
#     else
# 
#   #endif
# 
#     {
#         retVal = Os_GetScheduleTableStatus_Err_Stat(callerProc,schTblId,schTblStatus);
	.d2line		130
.Llo27:
	mr		r3,r27		# callerProc=r3 callerProc=r27
	mr		r4,r29		# schTblId=r4 schTblId=r29
	mr		r5,r28		# schTblStatus=r5 schTblStatus=r28
	bl		Os_GetScheduleTableStatus_Err_Stat
.Llo28:
	mr		r30,r3		# retVal=r30 retVal=r3
#         if( E_OK == retVal )
	.d2line		131
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11360	# ne
#         {
#           #ifdef OS_MODULE_MULTICORE
# 
#             /*[OS647-01-MGC]*/
#             if ( coreId != Os_SchTblStat[schTblId].Os_SchTblCounter->Os_CounterCoreId )
	.d2line		136
.Llo29:
	rlwinm		r0,r26,0,16,31		# coreId=r26
.Llo30:
	lis		r3,Os_SchTblStat@ha		# retVal=r3
	lwz		r3,Os_SchTblStat@l(r3)		# retVal=r3 retVal=r3
	e_mulli		r4,r29,40		# schTblId=r29
	lwzx		r3,r3,r4		# retVal=r3 retVal=r3
	lhz		r3,36(r3)		# retVal=r3 retVal=r3
	se_cmp		r0,r3		# retVal=r3
	bc		1,2,.L11362	# eq
#             {
#                 Os_Core_LockAllCores ( coreId );
	.d2line		138
.Llo31:
	rlwinm		r3,r26,0,16,31		# retVal=r3 coreId=r26
	bl		Os_Core_LockAllCores
#                 retVal = Os_GetScheduleTableStatus(callerProc,schTblId,schTblStatus);
	.d2line		139
	mr		r3,r27		# callerProc=r3 callerProc=r27
	mr		r4,r29		# schTblId=r4 schTblId=r29
	mr		r5,r28		# schTblStatus=r5 schTblStatus=r28
	bl		Os_GetScheduleTableStatus
.Llo32:
	mr		r30,r3		# retVal=r30 retVal=r3
#                 Os_Core_UnLockAllCores ( coreId );
	.d2line		140
	rlwinm		r3,r26,0,16,31		# retVal=r3 coreId=r26
.Llo33:
	bl		Os_Core_UnLockAllCores
	b		.L11360
.L11362:
#             }
#             else
# 
#           #endif
# 
#             {
#                 retVal = Os_GetScheduleTableStatus(callerProc,schTblId,schTblStatus);
	.d2line		147
	mr		r3,r27		# callerProc=r3 callerProc=r27
	mr		r4,r29		# schTblId=r4 schTblId=r29
	mr		r5,r28		# schTblStatus=r5 schTblStatus=r28
	bl		Os_GetScheduleTableStatus
.Llo34:
	mr		r30,r3		# retVal=r30 retVal=r3
.L11360:
#             }
#         }
#     }
# 
#   #if ( OS_ERRORHOOK == STD_ON )
# 
#     if ( E_OK != retVal )
	.d2line		154
.Llo35:
	rlwinm		r3,r30,0,24,31		# retVal=r3 retVal=r30
.Llo36:
	se_cmpi		r3,0		# retVal=r3
	bc		1,2,.L11364	# eq
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_SchedID          = schTblId;
	.d2line		158
	lis		r3,(Os_Core_DynShared+64)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+64)@l		# retVal=r3 retVal=r3
	rlwinm		r0,r26,0,16,31		# coreId=r26
	e_mulli		r0,r0,152
	stwux		r29,r3,r0		# retVal=r3 schTblId=r29
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TblStatusRefType = schTblStatus;
	.d2line		159
	lis		r3,(Os_Core_DynShared+100)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+100)@l		# retVal=r3 retVal=r3
	stwx		r28,r3,r0		# retVal=r3 schTblStatus=r28
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_GetScheduleTableStatus,callerProc); /* [OS001-302.v1-27] */
	.d2line		163
	rlwinm		r3,r30,0,24,31		# retVal=r3 retVal=r30
	diab.li		r4,14		# schTblId=r4
	mr		r5,r27		# callerProc=r5 callerProc=r27
	bl		Os_Call_ErrorHook
.L11364:
#     }
# 
#   #endif
# 
#     Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		168
.Llo40:
	stb		r30,4(r31)		# Os_APICall=r31 retVal=r30
#     OS_TRACE(GetScheduleTableStatus_Exit , coreId);
	.d2line		169
	diab.li		r3,36		# retVal=r3
	lis		r4,(Os_Core_DynShared+120)@ha		# schTblId=r4
.Llo41:
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l		# schTblId=r4 schTblId=r4
.Llo44:
	rlwinm		r26,r26,0,16,31		# coreId=r26 coreId=r26
	e_mulli		r26,r26,152		# coreId=r26 coreId=r26
.Llo45:
	stbx		r3,r4,r26		# schTblId=r4 retVal=r3
# }
	.d2line		170
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
.Llo25:
	lwz		r0,52(r1)
.Llo37:
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo38:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11450:
	.type		Os_API_GetScheduleTableStatus,@function
	.size		Os_API_GetScheduleTableStatus,.-Os_API_GetScheduleTableStatus
# Number of nodes = 181

# Allocations for Os_API_GetScheduleTableStatus
#	?a4		Os_APICall
#	?a5		retVal
#	?a6		schTblId
#	?a7		schTblStatus
#	?a8		callerProc
#	?a9		coreId

# Allocations for module
	.section	.text_vle
	.0byte		.L11468
	.section	.text_vle
	.0byte		.L11475
	.section	.Os_BSS,,b
	.0byte		.L11482
	.section	.text_vle
#$$ld
.L5:
.L12036:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12033:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12031:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12029:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12027:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12008:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12006:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11989:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11969:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11925:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11900:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L11859:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11856:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11780:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11543:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11487:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11476:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11469:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ScheduleTableCfgTypes.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11383:
.L11391:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_GetScheduleTableStatus.c"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11412:
.L11420:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_GetScheduleTableStatus.c"
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
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	5
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
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_GetScheduleTableStatus.c"
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
.L11380:
	.4byte		.L11381-.L11379
.L11379:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11385-.L11380
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_GetScheduleTableStatus.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11382
	.4byte		.L11383
	.4byte		.L11386
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11395:
	.sleb128	2
	.4byte		.L11388-.L11380
	.byte		"GetScheduleTableStatus"
	.byte		0
	.4byte		.L11391
	.uleb128	73
	.uleb128	28
	.4byte		.L11392
	.byte		0x1
	.byte		0x1
	.4byte		.L11389
	.4byte		.L11390
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11391
	.uleb128	73
	.uleb128	28
	.byte		"schTblId"
	.byte		0
	.4byte		.L11396
	.4byte		.L11399
	.sleb128	3
	.4byte		.L11391
	.uleb128	73
	.uleb128	28
	.byte		"schTblStatus"
	.byte		0
	.4byte		.L11400
	.4byte		.L11404
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11405:
	.sleb128	4
	.4byte		.L11391
	.uleb128	76
	.uleb128	37
	.byte		"Os_GetScheduleTableStatusAPI_Call"
	.byte		0
	.4byte		.L11406
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11388:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11409:
	.4byte		.L11410-.L11408
.L11408:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11414-.L11409
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_GetScheduleTableStatus.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11411
	.4byte		.L11412
	.4byte		.L11415
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11421:
	.sleb128	5
	.4byte		.L11417-.L11409
	.byte		"Os_GetScheduleTableStatus"
	.byte		0
	.4byte		.L11420
	.uleb128	174
	.uleb128	41
	.4byte		.L11392
	.byte		0x1
	.4byte		.L11418
	.4byte		.L11419
	.sleb128	3
	.4byte		.L11420
	.uleb128	174
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11422
	.4byte		.L11427
	.sleb128	3
	.4byte		.L11420
	.uleb128	174
	.uleb128	41
	.byte		"schTblId"
	.byte		0
	.4byte		.L11428
	.4byte		.L11429
	.sleb128	3
	.4byte		.L11420
	.uleb128	174
	.uleb128	41
	.byte		"schTblStatus"
	.byte		0
	.4byte		.L11430
	.4byte		.L11431
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11432:
	.sleb128	6
	.4byte		.L11420
	.uleb128	180
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11392
	.4byte		.L11433
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11417:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11438:
	.sleb128	5
	.4byte		.L11435-.L11409
	.byte		"Os_GetScheduleTableStatus_Err_Stat"
	.byte		0
	.4byte		.L11420
	.uleb128	198
	.uleb128	41
	.4byte		.L11392
	.byte		0x1
	.4byte		.L11436
	.4byte		.L11437
	.sleb128	3
	.4byte		.L11420
	.uleb128	198
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11423
	.4byte		.L11439
	.sleb128	3
	.4byte		.L11420
	.uleb128	198
	.uleb128	41
	.byte		"schTblId"
	.byte		0
	.4byte		.L11428
	.4byte		.L11440
	.sleb128	3
	.4byte		.L11420
	.uleb128	198
	.uleb128	41
	.byte		"schTblStatus"
	.byte		0
	.4byte		.L11441
	.4byte		.L11444
.L11445:
	.sleb128	6
	.4byte		.L11420
	.uleb128	204
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11392
	.4byte		.L11446
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11435:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11451:
	.sleb128	7
	.4byte		.L11448-.L11409
	.byte		"Os_API_GetScheduleTableStatus"
	.byte		0
	.4byte		.L11420
	.uleb128	96
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11449
	.4byte		.L11450
	.sleb128	3
	.4byte		.L11420
	.uleb128	96
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11452
	.4byte		.L11453
.L11454:
	.sleb128	6
	.4byte		.L11420
	.uleb128	98
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11392
	.4byte		.L11455
.L11456:
	.sleb128	6
	.4byte		.L11420
	.uleb128	100
	.uleb128	62
	.byte		"schTblId"
	.byte		0
	.4byte		.L11428
	.4byte		.L11457
.L11458:
	.sleb128	6
	.4byte		.L11420
	.uleb128	102
	.uleb128	62
	.byte		"schTblStatus"
	.byte		0
	.4byte		.L11430
	.4byte		.L11459
.L11460:
	.sleb128	6
	.4byte		.L11420
	.uleb128	104
	.uleb128	62
	.byte		"callerProc"
	.byte		0
	.4byte		.L11422
	.4byte		.L11461
.L11462:
	.sleb128	6
	.4byte		.L11420
	.uleb128	108
	.uleb128	36
	.byte		"coreId"
	.byte		0
	.4byte		.L11463
	.4byte		.L11467
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11448:
	.section	.debug_info,,n
.L11468:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11469
	.uleb128	144
	.uleb128	60
	.byte		"Os_SchTblStat"
	.byte		0
	.4byte		.L11470
	.section	.debug_info,,n
.L11475:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11476
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11477
	.section	.debug_info,,n
.L11482:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11476
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11483
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11481:
	.sleb128	9
	.4byte		.L11487
	.uleb128	69
	.uleb128	1
	.4byte		.L11488-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	10
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	10
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11493
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	10
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	10
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11501
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	10
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11506
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11488:
.L11492:
	.sleb128	9
	.4byte		.L11487
	.uleb128	69
	.uleb128	1
	.4byte		.L11513-.L2
	.uleb128	36
.L783:
	.sleb128	10
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	10
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	10
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11513:
.L11486:
	.sleb128	9
	.4byte		.L11487
	.uleb128	69
	.uleb128	1
	.4byte		.L11522-.L2
	.uleb128	152
.L776:
	.sleb128	10
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	10
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11522:
.L11496:
	.sleb128	9
	.4byte		.L11487
	.uleb128	69
	.uleb128	1
	.4byte		.L11527-.L2
	.uleb128	104
.L773:
	.sleb128	10
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	10
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	10
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11532
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11527:
.L11517:
	.sleb128	9
	.4byte		.L11487
	.uleb128	69
	.uleb128	1
	.4byte		.L11534-.L2
	.uleb128	4
.L772:
	.sleb128	10
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11534:
.L11529:
	.sleb128	9
	.4byte		.L11487
	.uleb128	69
	.uleb128	1
	.4byte		.L11537-.L2
	.uleb128	48
.L764:
	.sleb128	10
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	10
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	10
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	10
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	10
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	10
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	10
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	10
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11537:
	.section	.debug_info,,n
.L11542:
	.sleb128	11
	.4byte		.L11543
	.uleb128	612
	.uleb128	1
	.4byte		.L11544-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	10
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	10
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	10
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11544:
.L11515:
	.sleb128	9
	.4byte		.L11543
	.uleb128	612
	.uleb128	1
	.4byte		.L11546-.L2
	.uleb128	28
.L743:
	.sleb128	10
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	10
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	10
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	10
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	10
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	10
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	10
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11546:
.L11531:
	.sleb128	9
	.4byte		.L11543
	.uleb128	612
	.uleb128	1
	.4byte		.L11549-.L2
	.uleb128	52
.L737:
	.sleb128	10
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	10
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	10
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	10
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11554
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	10
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	10
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11549:
.L11524:
	.sleb128	9
	.4byte		.L11543
	.uleb128	612
	.uleb128	1
	.4byte		.L11560-.L2
	.uleb128	8
.L735:
	.sleb128	10
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	10
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11560:
.L11500:
	.sleb128	11
	.4byte		.L11543
	.uleb128	612
	.uleb128	1
	.4byte		.L11561-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	10
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	10
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	10
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	10
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11567
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	10
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11406
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11561:
.L11407:
	.sleb128	11
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11568-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	10
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	10
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11392
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	10
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	10
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11571
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	10
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11568:
	.section	.debug_info,,n
.L11576:
	.sleb128	12
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11577-.L2
	.uleb128	24
.L677:
	.sleb128	10
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11578
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	10
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	10
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	10
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11584
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	10
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	10
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11588
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	10
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11590
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	10
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	10
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11594
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	10
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	10
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	10
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	10
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	10
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	10
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	10
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	10
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11610
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	10
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	10
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	10
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	10
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	10
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11620
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	10
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11622
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	10
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	10
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	10
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	10
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	10
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	10
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	10
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	10
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	10
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	10
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	10
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	10
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	10
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	10
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11650
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	10
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11652
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	10
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11654
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	10
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	10
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11658
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	10
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11660
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	10
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11662
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	10
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	10
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	10
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	10
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	10
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11577:
.L11673:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11674-.L2
	.uleb128	8
.L675:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	10
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11674:
.L11671:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11677-.L2
	.uleb128	8
.L673:
	.sleb128	10
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	10
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11677:
.L11669:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11688-.L2
	.uleb128	8
.L671:
	.sleb128	10
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	10
	.byte		"Success"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11688:
.L11667:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11693-.L2
	.uleb128	2
.L670:
	.sleb128	10
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11693:
.L11665:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11694-.L2
	.uleb128	2
.L669:
	.sleb128	10
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11694:
.L11663:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11695-.L2
	.uleb128	20
.L664:
	.sleb128	10
	.byte		"ProcId"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	10
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11393
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	10
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	10
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11393
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	10
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11695:
.L11661:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11698-.L2
	.uleb128	12
.L661:
	.sleb128	10
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	10
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	10
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11698:
.L11659:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11703-.L2
	.uleb128	12
.L658:
	.sleb128	10
	.byte		"AppID"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	10
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	10
	.byte		"Object"
	.byte		0
	.4byte		.L11566
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11703:
.L11657:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11707-.L2
	.uleb128	12
.L655:
	.sleb128	10
	.byte		"AppID"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	10
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	10
	.byte		"Object"
	.byte		0
	.4byte		.L11566
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11707:
.L11623:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11708-.L2
	.uleb128	4
.L654:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11708:
.L11621:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11710-.L2
	.uleb128	12
.L651:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	10
	.byte		"Start"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	10
	.byte		"Cycle"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11710:
.L11619:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11712-.L2
	.uleb128	12
.L648:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	10
	.byte		"Increment"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	10
	.byte		"Cycle"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11712:
.L11617:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11713-.L2
	.uleb128	8
.L646:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	10
	.byte		"TickRef"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11713:
.L11615:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11716-.L2
	.uleb128	8
.L644:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	10
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11716:
.L11655:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11721-.L2
	.uleb128	4
.L643:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11721:
.L11653:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11722-.L2
	.uleb128	8
.L641:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	10
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11722:
.L11651:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11723-.L2
	.uleb128	4
.L640:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11723:
.L11649:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11724-.L2
	.uleb128	8
.L638:
	.sleb128	10
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	10
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11724:
.L11647:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11725-.L2
	.uleb128	8
.L636:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	10
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11725:
.L11645:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11726-.L2
	.uleb128	4
.L635:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11726:
.L11643:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11727-.L2
	.uleb128	8
.L633:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	10
	.byte		"Offset"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11727:
.L11641:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11728-.L2
	.uleb128	8
.L631:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	10
	.byte		"Start"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11728:
.L11639:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11729-.L2
	.uleb128	12
.L628:
	.sleb128	10
	.byte		"CounterId"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	10
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	10
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11729:
.L11637:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11731-.L2
	.uleb128	12
.L625:
	.sleb128	10
	.byte		"CounterId"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	10
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	10
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11732
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11731:
.L11635:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11736-.L2
	.uleb128	4
.L624:
	.sleb128	10
	.byte		"CounterId"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11736:
.L11631:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11737-.L2
	.uleb128	4
.L623:
	.sleb128	10
	.byte		"ISRId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11737:
.L11627:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11738-.L2
	.uleb128	2
.L621:
	.sleb128	10
	.byte		"Application"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	10
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11738:
.L11629:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11740-.L2
	.uleb128	1
.L620:
	.sleb128	10
	.byte		"Application"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11740:
.L11625:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11741-.L2
	.uleb128	8
.L618:
	.sleb128	10
	.byte		"Application"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	10
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11741:
.L11609:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11745-.L2
	.uleb128	8
.L617:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11745:
.L11607:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11749-.L2
	.uleb128	24
.L614:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	10
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11749:
.L11605:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11752-.L2
	.uleb128	8
.L613:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11752:
.L11603:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11753-.L2
	.uleb128	16
.L611:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11753:
.L11601:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11754-.L2
	.uleb128	8
.L609:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	10
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11754:
.L11599:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11759-.L2
	.uleb128	4
.L608:
	.sleb128	10
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11759:
.L11597:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11762-.L2
	.uleb128	4
.L607:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11762:
.L11595:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11763-.L2
	.uleb128	4
.L606:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11763:
.L11613:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11764-.L2
	.uleb128	4
.L605:
	.sleb128	10
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11764:
.L11611:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11766-.L2
	.uleb128	4
.L604:
	.sleb128	10
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11766:
.L11633:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11767-.L2
	.uleb128	4
.L603:
	.sleb128	10
	.byte		"AppMode"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11767:
.L11593:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11769-.L2
	.uleb128	2
.L602:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11769:
.L11587:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11770-.L2
	.uleb128	2
.L601:
	.sleb128	10
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11770:
.L11585:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11771-.L2
	.uleb128	1
.L600:
	.sleb128	10
	.byte		"Error"
	.byte		0
	.4byte		.L11392
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11771:
.L11583:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11772-.L2
	.uleb128	8
.L598:
	.sleb128	10
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	10
	.byte		"Error"
	.byte		0
	.4byte		.L11392
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11772:
.L11581:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11775-.L2
	.uleb128	1
.L597:
	.sleb128	10
	.byte		"Error"
	.byte		0
	.4byte		.L11392
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11775:
.L11591:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11776-.L2
	.uleb128	8
.L595:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	10
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11777
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11776:
.L11589:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11778-.L2
	.uleb128	8
.L593:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	10
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11777
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11778:
.L11579:
	.sleb128	9
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L11779-.L2
	.uleb128	4
.L592:
	.sleb128	10
	.byte		"AppMode"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11779:
.L11681:
	.sleb128	9
	.4byte		.L11780
	.uleb128	33
	.uleb128	14
	.4byte		.L11781-.L2
	.uleb128	24
.L585:
	.sleb128	10
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	10
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	10
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11787
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	10
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11788
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	10
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	10
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	10
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11781:
.L11795:
	.sleb128	9
	.4byte		.L11780
	.uleb128	33
	.uleb128	14
	.4byte		.L11799-.L2
	.uleb128	4
.L581:
	.sleb128	10
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	10
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11799:
.L11785:
	.sleb128	9
	.4byte		.L11780
	.uleb128	33
	.uleb128	14
	.4byte		.L11804-.L2
	.uleb128	6
.L578:
	.sleb128	10
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	10
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	10
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11392
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11804:
.L11474:
	.sleb128	11
	.4byte		.L11469
	.uleb128	62
	.uleb128	1
	.4byte		.L11805-.L2
	.byte		"Os_SchTblStatType_s"
	.byte		0
	.uleb128	40
.L544:
	.sleb128	10
	.byte		"Os_SchTblCounter"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L545:
	.sleb128	10
	.byte		"Os_SchTblSyncStrategy"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L546:
	.sleb128	10
	.byte		"Os_SchTblRepeating"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L547:
	.sleb128	10
	.byte		"Os_SchTblInitialEP"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L548:
	.sleb128	10
	.byte		"Os_SchTblFinalEP"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L549:
	.sleb128	10
	.byte		"Os_SchTblDuration"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L550:
	.sleb128	10
	.byte		"Os_SchTblRegistry"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L551:
	.sleb128	10
	.byte		"Os_SchTblAppAccess"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L552:
	.sleb128	10
	.byte		"Os_SchTblOwnerApp"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L553:
	.sleb128	10
	.byte		"Os_SchTblAutoStartStat"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11805:
.L11836:
	.sleb128	9
	.4byte		.L11469
	.uleb128	62
	.uleb128	1
	.4byte		.L11837-.L2
	.uleb128	12
.L541:
	.sleb128	10
	.byte		"Os_SchTblAutoStartValue"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L542:
	.sleb128	10
	.byte		"Os_SchTblAutoStartKind"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L543:
	.sleb128	10
	.byte		"Os_SchTblAppModeAutoStart"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11837:
.L11826:
	.sleb128	9
	.4byte		.L11469
	.uleb128	62
	.uleb128	1
	.4byte		.L11841-.L2
	.uleb128	16
.L537:
	.sleb128	10
	.byte		"Os_SchTblStatus"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L538:
	.sleb128	10
	.byte		"Os_SchTblNextEP"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L539:
	.sleb128	10
	.byte		"Os_SchTblNextSchTblId"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L540:
	.sleb128	10
	.byte		"Os_SchTblNextSchTblBack"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11841:
.L11821:
	.sleb128	9
	.4byte		.L11469
	.uleb128	62
	.uleb128	1
	.4byte		.L11844-.L2
	.uleb128	20
.L532:
	.sleb128	10
	.byte		"Os_SchTblEPDelay"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L533:
	.sleb128	10
	.byte		"Os_SchTblEPTaskActCount"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L534:
	.sleb128	10
	.byte		"Os_SchTblEPFirstTaskAct"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L535:
	.sleb128	10
	.byte		"Os_SchTblEPEventSetCount"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L536:
	.sleb128	10
	.byte		"Os_SchTblEPFirstEventSet"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11844:
.L11853:
	.sleb128	9
	.4byte		.L11469
	.uleb128	62
	.uleb128	1
	.4byte		.L11854-.L2
	.uleb128	16
.L530:
	.sleb128	10
	.byte		"Os_SchTblEventSetTaskId"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L531:
	.sleb128	10
	.byte		"Os_SchTblEventSetMask"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11854:
.L11533:
	.sleb128	9
	.4byte		.L11856
	.uleb128	34
	.uleb128	14
	.4byte		.L11857-.L2
	.uleb128	2
.L529:
	.sleb128	10
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11857:
.L11426:
	.sleb128	11
	.4byte		.L11859
	.uleb128	80
	.uleb128	13
	.4byte		.L11860-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	10
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	10
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	10
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	10
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	10
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11870
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	10
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	10
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	10
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	10
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	10
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	10
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	10
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	10
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	10
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	10
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	10
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	10
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	10
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11890
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11860:
.L11869:
	.sleb128	11
	.4byte		.L11859
	.uleb128	80
	.uleb128	13
	.4byte		.L11891-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	10
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	10
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11891:
.L11864:
	.sleb128	9
	.4byte		.L11859
	.uleb128	80
	.uleb128	13
	.4byte		.L11894-.L2
	.uleb128	56
.L496:
	.sleb128	10
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	10
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11895
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	10
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	10
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	10
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	10
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	10
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11393
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	10
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	10
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	10
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	10
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	10
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11393
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	10
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11392
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11894:
.L11810:
	.sleb128	11
	.4byte		.L11900
	.uleb128	44
	.uleb128	14
	.4byte		.L11901-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L484:
	.sleb128	10
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L485:
	.sleb128	10
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L486:
	.sleb128	10
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L487:
	.sleb128	10
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L488:
	.sleb128	10
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L489:
	.sleb128	10
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L490:
	.sleb128	10
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L491:
	.sleb128	10
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L492:
	.sleb128	10
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L493:
	.sleb128	10
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L494:
	.sleb128	10
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L495:
	.sleb128	10
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11901:
.L11909:
	.sleb128	11
	.4byte		.L11900
	.uleb128	44
	.uleb128	14
	.4byte		.L11920-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L480:
	.sleb128	10
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L481:
	.sleb128	10
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L482:
	.sleb128	10
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L483:
	.sleb128	10
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11920:
.L11913:
	.sleb128	11
	.4byte		.L11900
	.uleb128	44
	.uleb128	14
	.4byte		.L11921-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L476:
	.sleb128	10
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L477:
	.sleb128	10
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L478:
	.sleb128	10
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L479:
	.sleb128	10
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11921:
.L11917:
	.sleb128	11
	.4byte		.L11900
	.uleb128	44
	.uleb128	14
	.4byte		.L11922-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L473:
	.sleb128	10
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L474:
	.sleb128	10
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11566
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L475:
	.sleb128	10
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11922:
.L11899:
	.sleb128	11
	.4byte		.L11925
	.uleb128	52
	.uleb128	1
	.4byte		.L11926-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	10
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11927
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	10
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11927
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	10
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11928
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	10
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	10
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11926:
.L11931:
	.sleb128	9
	.4byte		.L11925
	.uleb128	52
	.uleb128	1
	.4byte		.L11932-.L2
	.uleb128	12
.L445:
	.sleb128	10
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	10
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	10
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11885
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11932:
.L11521:
	.sleb128	11
	.4byte		.L11925
	.uleb128	52
	.uleb128	1
	.4byte		.L11933-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	10
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11934
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	10
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	10
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	10
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	10
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	10
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	10
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	10
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	10
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	10
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11963
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	10
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	10
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11933:
.L11937:
	.sleb128	9
	.4byte		.L11925
	.uleb128	52
	.uleb128	1
	.4byte		.L11968-.L2
	.uleb128	1
.L432:
	.sleb128	10
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11968:
.L11888:
	.sleb128	9
	.4byte		.L11969
	.uleb128	32
	.uleb128	1
	.4byte		.L11970-.L2
	.uleb128	12
.L429:
	.sleb128	10
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	10
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	10
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11970:
.L11973:
	.sleb128	9
	.4byte		.L11969
	.uleb128	32
	.uleb128	1
	.4byte		.L11974-.L2
	.uleb128	4
.L428:
	.sleb128	10
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11974:
.L11526:
	.sleb128	9
	.4byte		.L11969
	.uleb128	32
	.uleb128	1
	.4byte		.L11975-.L2
	.uleb128	144
.L423:
	.sleb128	10
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11976
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	10
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11975:
.L11557:
	.sleb128	9
	.4byte		.L11969
	.uleb128	32
	.uleb128	1
	.4byte		.L11980-.L2
	.uleb128	24
.L417:
	.sleb128	10
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	10
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	10
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	10
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	10
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	10
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11980:
.L11979:
	.sleb128	9
	.4byte		.L11969
	.uleb128	32
	.uleb128	1
	.4byte		.L11986-.L2
	.uleb128	20
.L412:
	.sleb128	10
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	10
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	10
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	10
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	10
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11986:
.L11977:
	.sleb128	9
	.4byte		.L11989
	.uleb128	174
	.uleb128	1
	.4byte		.L11990-.L2
	.uleb128	120
.L409:
	.sleb128	10
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	10
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11993
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	10
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11995
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11990:
.L11996:
	.sleb128	9
	.4byte		.L11989
	.uleb128	174
	.uleb128	1
	.4byte		.L11997-.L2
	.uleb128	8
.L406:
	.sleb128	10
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11998
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	10
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11392
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	10
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11997:
.L11994:
	.sleb128	9
	.4byte		.L11989
	.uleb128	174
	.uleb128	1
	.4byte		.L12001-.L2
	.uleb128	104
.L381:
	.sleb128	10
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	10
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	10
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	10
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	10
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	10
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	10
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	10
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	10
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	10
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	10
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	10
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	10
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	10
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	10
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	10
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	10
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	10
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	10
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	10
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	10
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	10
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	10
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11566
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	10
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	10
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12002
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12001:
.L11992:
	.sleb128	9
	.4byte		.L11989
	.uleb128	174
	.uleb128	1
	.4byte		.L12003-.L2
	.uleb128	8
.L379:
	.sleb128	10
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11392
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	10
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12004
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12003:
.L11720:
	.sleb128	9
	.4byte		.L12006
	.uleb128	50
	.uleb128	1
	.4byte		.L12007-.L2
	.uleb128	12
.L376:
	.sleb128	10
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	10
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	10
	.byte		"mincycle"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12007:
.L11553:
	.sleb128	9
	.4byte		.L12008
	.uleb128	87
	.uleb128	7
	.4byte		.L12009-.L2
	.uleb128	8
.L364:
	.sleb128	10
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	10
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12010
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12009:
	.section	.debug_info,,n
.L11539:
	.sleb128	13
	.4byte		.L11487
	.uleb128	69
	.uleb128	1
	.4byte		.L12012-.L2
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
.L12012:
.L11563:
	.sleb128	13
	.4byte		.L11543
	.uleb128	612
	.uleb128	1
	.4byte		.L12013-.L2
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
.L12013:
.L11570:
	.sleb128	13
	.4byte		.L11543
	.uleb128	60
	.uleb128	1
	.4byte		.L12014-.L2
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
.L12014:
	.section	.debug_info,,n
.L11702:
	.sleb128	15
	.4byte		.L11780
	.uleb128	33
	.uleb128	14
	.4byte		.L12015-.L2
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
.L12015:
.L11840:
	.sleb128	13
	.4byte		.L11469
	.uleb128	62
	.uleb128	1
	.4byte		.L12016-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_ABSOLUTE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_RELATIVE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_SYNCHRON"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12016:
.L11816:
	.sleb128	13
	.4byte		.L11469
	.uleb128	54
	.uleb128	1
	.4byte		.L12017-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_SINGLESHOT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_REPEATING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12017:
.L11813:
	.sleb128	13
	.4byte		.L11469
	.uleb128	45
	.uleb128	1
	.4byte		.L12018-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_NONE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_IMPLICIT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_EXPLICIT"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12018:
.L11896:
	.sleb128	13
	.4byte		.L11859
	.uleb128	80
	.uleb128	13
	.4byte		.L12019-.L2
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
.L12019:
.L11872:
	.sleb128	13
	.4byte		.L11859
	.uleb128	61
	.uleb128	1
	.4byte		.L12020-.L2
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
.L12020:
.L11924:
	.sleb128	15
	.4byte		.L11900
	.uleb128	44
	.uleb128	14
	.4byte		.L12021-.L2
	.byte		"Os_CounterActionOwnerType_e"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"OS_COUNTERACTION_OWNER_INVALID"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_COUNTERACTION_ALARM"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_COUNTERACTION_SCHTBL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12021:
.L11904:
	.sleb128	15
	.4byte		.L11900
	.uleb128	36
	.uleb128	14
	.4byte		.L12022-.L2
	.byte		"Os_CounterKindType_e"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"OS_HARDWARE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_SOFTWARE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12022:
.L11941:
	.sleb128	13
	.4byte		.L11925
	.uleb128	52
	.uleb128	1
	.4byte		.L12023-.L2
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
.L12023:
.L11988:
	.sleb128	13
	.4byte		.L11969
	.uleb128	32
	.uleb128	1
	.4byte		.L12024-.L2
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
.L12024:
.L12005:
	.sleb128	13
	.4byte		.L11989
	.uleb128	174
	.uleb128	1
	.4byte		.L12025-.L2
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
.L12025:
.L12000:
	.sleb128	13
	.4byte		.L11989
	.uleb128	86
	.uleb128	1
	.4byte		.L12026-.L2
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
.L12026:
.L11692:
	.sleb128	13
	.4byte		.L12027
	.uleb128	43
	.uleb128	1
	.4byte		.L12028-.L2
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
.L12028:
.L11758:
	.sleb128	13
	.4byte		.L12029
	.uleb128	37
	.uleb128	1
	.4byte		.L12030-.L2
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
.L12030:
.L11403:
	.sleb128	13
	.4byte		.L12031
	.uleb128	40
	.uleb128	1
	.4byte		.L12032-.L2
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
.L12032:
.L11706:
	.sleb128	13
	.4byte		.L12033
	.uleb128	47
	.uleb128	1
	.4byte		.L12034-.L2
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
.L12034:
.L11774:
	.sleb128	13
	.4byte		.L12006
	.uleb128	42
	.uleb128	13
	.4byte		.L12035-.L2
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
.L12035:
.L11676:
	.sleb128	13
	.4byte		.L12036
	.uleb128	83
	.uleb128	14
	.4byte		.L12037-.L2
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
.L12037:
	.section	.debug_info,,n
.L11394:
	.sleb128	16
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L11393:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11394
.L11392:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11393
.L11398:
	.sleb128	16
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11397:
	.sleb128	17
	.byte		"uint32"
	.byte		0
	.4byte		.L11398
.L11396:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11397
.L11402:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11403
	.section	.debug_info,,n
.L11401:
	.sleb128	18
	.4byte		.L11402
.L11400:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11401
.L11406:
	.sleb128	17
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11407
.L11425:
	.sleb128	17
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11426
	.section	.debug_info,,n
.L11424:
	.sleb128	19
	.4byte		.L11425
.L11423:
	.sleb128	18
	.4byte		.L11424
.L11422:
	.sleb128	19
	.4byte		.L11423
.L11428:
	.sleb128	19
	.4byte		.L11396
.L11430:
	.sleb128	19
	.4byte		.L11400
.L11443:
	.sleb128	19
	.4byte		.L11402
.L11442:
	.sleb128	18
	.4byte		.L11443
.L11441:
	.sleb128	19
	.4byte		.L11442
.L11452:
	.sleb128	18
	.4byte		.L11407
.L11466:
	.sleb128	16
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11465:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11466
.L11464:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11465
.L11463:
	.sleb128	19
	.4byte		.L11464
.L11473:
	.sleb128	17
	.byte		"Os_SchTblStatType"
	.byte		0
	.4byte		.L11474
.L11472:
	.sleb128	19
	.4byte		.L11473
.L11471:
	.sleb128	18
	.4byte		.L11472
.L11470:
	.sleb128	19
	.4byte		.L11471
.L11480:
	.sleb128	17
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11481
.L11479:
	.sleb128	19
	.4byte		.L11480
	.section	.debug_info,,n
.L11477:
	.sleb128	20
	.4byte		.L11478-.L2
	.4byte		.L11479
	.section	.debug_info,,n
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11478:
.L11485:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11486
.L11483:
	.sleb128	20
	.4byte		.L11484-.L2
	.4byte		.L11485
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11484:
.L11491:
	.sleb128	17
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11492
.L11490:
	.sleb128	18
	.4byte		.L11491
.L11489:
	.sleb128	19
	.4byte		.L11490
.L11495:
	.sleb128	17
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11496
.L11494:
	.sleb128	18
	.4byte		.L11495
.L11493:
	.sleb128	19
	.4byte		.L11494
.L11499:
	.sleb128	17
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11500
.L11498:
	.sleb128	18
	.4byte		.L11499
.L11497:
	.sleb128	19
	.4byte		.L11498
	.section	.debug_info,,n
.L11504:
	.sleb128	22
	.4byte		.L11505-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	23
	.4byte		.L11422
	.sleb128	0
.L11505:
.L11503:
	.sleb128	18
	.4byte		.L11504
.L11502:
	.sleb128	17
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11503
.L11501:
	.sleb128	19
	.4byte		.L11502
.L11512:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11397
.L11511:
	.sleb128	18
	.4byte		.L11512
	.section	.debug_info,,n
.L11509:
	.sleb128	24
	.4byte		.L11510-.L2
	.4byte		.L11511
	.byte		0x1
	.sleb128	23
	.4byte		.L11423
	.sleb128	0
.L11510:
.L11508:
	.sleb128	18
	.4byte		.L11509
.L11507:
	.sleb128	17
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11508
.L11506:
	.sleb128	19
	.4byte		.L11507
.L11514:
	.sleb128	17
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11515
.L11516:
	.sleb128	17
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11517
.L11520:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11521
.L11519:
	.sleb128	19
	.4byte		.L11520
.L11518:
	.sleb128	18
	.4byte		.L11519
.L11523:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11524
.L11525:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11526
.L11528:
	.sleb128	17
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11529
.L11530:
	.sleb128	17
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11531
.L11532:
	.sleb128	17
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11533
.L11536:
	.sleb128	19
	.4byte		.L11426
.L11535:
	.sleb128	18
	.4byte		.L11536
.L11538:
	.sleb128	17
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11539
.L11540:
	.sleb128	17
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11397
.L11541:
	.sleb128	17
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11542
.L11545:
	.sleb128	18
	.4byte		.L11542
.L11547:
	.sleb128	17
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11397
.L11548:
	.sleb128	17
	.byte		"boolean"
	.byte		0
	.4byte		.L11394
.L11552:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11553
.L11551:
	.sleb128	19
	.4byte		.L11552
.L11550:
	.sleb128	18
	.4byte		.L11551
.L11556:
	.sleb128	17
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11557
.L11555:
	.sleb128	19
	.4byte		.L11556
.L11554:
	.sleb128	18
	.4byte		.L11555
.L11558:
	.sleb128	20
	.4byte		.L11559-.L2
	.4byte		.L11397
	.sleb128	21
	.uleb128	7
	.sleb128	0
.L11559:
.L11562:
	.sleb128	17
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11563
.L11566:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11397
.L11565:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11566
.L11564:
	.sleb128	17
	.byte		"ISRType"
	.byte		0
	.4byte		.L11565
.L11567:
	.sleb128	18
	.4byte		.L11406
.L11569:
	.sleb128	17
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11570
.L11573:
	.sleb128	22
	.4byte		.L11574-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11452
.L11575:
	.sleb128	19
	.4byte		.L11535
	.sleb128	23
	.4byte		.L11575
	.sleb128	0
.L11574:
.L11572:
	.sleb128	18
	.4byte		.L11573
.L11571:
	.sleb128	17
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11572
.L11578:
	.sleb128	17
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11579
.L11580:
	.sleb128	17
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11581
.L11582:
	.sleb128	17
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11583
.L11584:
	.sleb128	17
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11585
.L11586:
	.sleb128	17
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11587
.L11588:
	.sleb128	17
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11589
.L11590:
	.sleb128	17
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11591
.L11592:
	.sleb128	17
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11593
.L11594:
	.sleb128	17
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11595
.L11596:
	.sleb128	17
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11597
.L11598:
	.sleb128	17
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11599
.L11600:
	.sleb128	17
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11601
.L11602:
	.sleb128	17
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11603
.L11604:
	.sleb128	17
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11605
.L11606:
	.sleb128	17
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11607
.L11608:
	.sleb128	17
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11609
.L11610:
	.sleb128	17
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11611
.L11612:
	.sleb128	17
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11613
.L11614:
	.sleb128	17
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11615
.L11616:
	.sleb128	17
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11617
.L11618:
	.sleb128	17
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11619
.L11620:
	.sleb128	17
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11621
.L11622:
	.sleb128	17
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11623
.L11624:
	.sleb128	17
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11625
.L11626:
	.sleb128	17
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11627
.L11628:
	.sleb128	17
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11629
.L11630:
	.sleb128	17
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11631
.L11632:
	.sleb128	17
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11633
.L11634:
	.sleb128	17
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11635
.L11636:
	.sleb128	17
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11637
.L11638:
	.sleb128	17
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11639
.L11640:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11641
.L11642:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11643
.L11644:
	.sleb128	17
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11645
.L11646:
	.sleb128	17
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11647
.L11648:
	.sleb128	17
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11649
.L11650:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11651
.L11652:
	.sleb128	17
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11653
.L11654:
	.sleb128	17
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11655
.L11656:
	.sleb128	17
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11657
.L11658:
	.sleb128	17
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11659
.L11660:
	.sleb128	17
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11661
.L11662:
	.sleb128	17
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11663
.L11664:
	.sleb128	17
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11665
.L11666:
	.sleb128	17
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11667
.L11668:
	.sleb128	17
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11669
.L11670:
	.sleb128	17
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11671
.L11672:
	.sleb128	17
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11673
.L11675:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11676
.L11680:
	.sleb128	17
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11681
.L11679:
	.sleb128	19
	.4byte		.L11680
.L11678:
	.sleb128	18
	.4byte		.L11679
	.section	.debug_info,,n
.L11687:
	.sleb128	25
	.byte		"void"
	.byte		0
	.byte		0x0
.L11686:
	.sleb128	18
	.4byte		.L11687
.L11684:
	.sleb128	20
	.4byte		.L11685-.L2
	.4byte		.L11686
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11685:
.L11683:
	.sleb128	17
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11684
.L11682:
	.sleb128	18
	.4byte		.L11683
.L11689:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11465
.L11691:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11692
.L11690:
	.sleb128	18
	.4byte		.L11691
.L11696:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11565
.L11697:
	.sleb128	18
	.4byte		.L11393
.L11699:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11397
.L11700:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11686
.L11701:
	.sleb128	17
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11702
.L11704:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11393
.L11705:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11706
.L11709:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11566
.L11711:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11397
.L11715:
	.sleb128	18
	.4byte		.L11711
.L11714:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11715
.L11719:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11720
.L11718:
	.sleb128	18
	.4byte		.L11719
.L11717:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11718
.L11730:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11397
.L11734:
	.sleb128	22
	.4byte		.L11735-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11452
	.sleb128	0
.L11735:
.L11733:
	.sleb128	18
	.4byte		.L11734
.L11732:
	.sleb128	17
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11733
.L11739:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11393
.L11744:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11393
.L11743:
	.sleb128	18
	.4byte		.L11744
.L11742:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11743
.L11748:
	.sleb128	16
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11747:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L11748
.L11746:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11747
.L11751:
	.sleb128	18
	.4byte		.L11746
.L11750:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11751
.L11757:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11758
.L11756:
	.sleb128	18
	.4byte		.L11757
.L11755:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11756
.L11761:
	.sleb128	18
	.4byte		.L11696
.L11760:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11761
.L11765:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11397
.L11768:
	.sleb128	17
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11397
.L11773:
	.sleb128	17
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11774
.L11777:
	.sleb128	18
	.4byte		.L11392
.L11784:
	.sleb128	17
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11785
.L11783:
	.sleb128	18
	.4byte		.L11784
.L11782:
	.sleb128	19
	.4byte		.L11783
.L11786:
	.sleb128	17
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11465
.L11787:
	.sleb128	19
	.4byte		.L11686
.L11788:
	.sleb128	19
	.4byte		.L11465
.L11790:
	.sleb128	17
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11393
.L11789:
	.sleb128	19
	.4byte		.L11790
.L11794:
	.sleb128	17
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11795
.L11793:
	.sleb128	19
	.4byte		.L11794
.L11792:
	.sleb128	18
	.4byte		.L11793
.L11791:
	.sleb128	19
	.4byte		.L11792
.L11798:
	.sleb128	17
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11393
.L11797:
	.sleb128	18
	.4byte		.L11798
.L11796:
	.sleb128	19
	.4byte		.L11797
.L11801:
	.sleb128	17
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11465
.L11800:
	.sleb128	19
	.4byte		.L11801
.L11803:
	.sleb128	17
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11465
.L11802:
	.sleb128	19
	.4byte		.L11803
.L11809:
	.sleb128	17
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11810
.L11808:
	.sleb128	19
	.4byte		.L11809
.L11807:
	.sleb128	18
	.4byte		.L11808
.L11806:
	.sleb128	19
	.4byte		.L11807
.L11812:
	.sleb128	17
	.byte		"Os_SchTblSyncStrategyType"
	.byte		0
	.4byte		.L11813
.L11811:
	.sleb128	19
	.4byte		.L11812
.L11815:
	.sleb128	17
	.byte		"Os_SchTblRepeatingType"
	.byte		0
	.4byte		.L11816
.L11814:
	.sleb128	19
	.4byte		.L11815
.L11820:
	.sleb128	17
	.byte		"Os_SchTblEPStatType"
	.byte		0
	.4byte		.L11821
.L11819:
	.sleb128	19
	.4byte		.L11820
.L11818:
	.sleb128	18
	.4byte		.L11819
.L11817:
	.sleb128	19
	.4byte		.L11818
.L11822:
	.sleb128	19
	.4byte		.L11711
.L11825:
	.sleb128	17
	.byte		"Os_SchTblDynType"
	.byte		0
	.4byte		.L11826
.L11824:
	.sleb128	18
	.4byte		.L11825
.L11823:
	.sleb128	19
	.4byte		.L11824
.L11830:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11397
.L11829:
	.sleb128	19
	.4byte		.L11830
.L11828:
	.sleb128	18
	.4byte		.L11829
.L11827:
	.sleb128	19
	.4byte		.L11828
.L11831:
	.sleb128	19
	.4byte		.L11518
.L11835:
	.sleb128	17
	.byte		"Os_SchTblAutoStartStatType"
	.byte		0
	.4byte		.L11836
.L11834:
	.sleb128	19
	.4byte		.L11835
.L11833:
	.sleb128	18
	.4byte		.L11834
.L11832:
	.sleb128	19
	.4byte		.L11833
.L11839:
	.sleb128	17
	.byte		"Os_SchTblAutoStartKindType"
	.byte		0
	.4byte		.L11840
.L11838:
	.sleb128	19
	.4byte		.L11839
.L11843:
	.sleb128	19
	.4byte		.L11474
.L11842:
	.sleb128	18
	.4byte		.L11843
.L11845:
	.sleb128	19
	.4byte		.L11397
.L11848:
	.sleb128	19
	.4byte		.L11696
.L11847:
	.sleb128	18
	.4byte		.L11848
.L11846:
	.sleb128	19
	.4byte		.L11847
.L11852:
	.sleb128	17
	.byte		"Os_SchTblActionEventSetStatType"
	.byte		0
	.4byte		.L11853
.L11851:
	.sleb128	19
	.4byte		.L11852
.L11850:
	.sleb128	18
	.4byte		.L11851
.L11849:
	.sleb128	19
	.4byte		.L11850
.L11855:
	.sleb128	19
	.4byte		.L11746
.L11858:
	.sleb128	17
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11465
.L11863:
	.sleb128	17
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11864
.L11862:
	.sleb128	18
	.4byte		.L11863
.L11861:
	.sleb128	19
	.4byte		.L11862
.L11868:
	.sleb128	17
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11869
.L11867:
	.sleb128	19
	.4byte		.L11868
.L11866:
	.sleb128	18
	.4byte		.L11867
.L11865:
	.sleb128	19
	.4byte		.L11866
.L11871:
	.sleb128	17
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11872
.L11870:
	.sleb128	19
	.4byte		.L11871
.L11873:
	.sleb128	19
	.4byte		.L11540
.L11875:
	.sleb128	17
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11397
.L11874:
	.sleb128	19
	.4byte		.L11875
.L11876:
	.sleb128	19
	.4byte		.L11511
.L11880:
	.sleb128	22
	.4byte		.L11881-.L2
	.byte		0x1
	.sleb128	0
.L11881:
.L11879:
	.sleb128	18
	.4byte		.L11880
.L11878:
	.sleb128	17
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11879
.L11877:
	.sleb128	19
	.4byte		.L11878
.L11882:
	.sleb128	19
	.4byte		.L11765
.L11887:
	.sleb128	17
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11888
.L11886:
	.sleb128	19
	.4byte		.L11887
.L11885:
	.sleb128	18
	.4byte		.L11886
.L11884:
	.sleb128	17
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11885
.L11883:
	.sleb128	18
	.4byte		.L11884
.L11889:
	.sleb128	19
	.4byte		.L11545
.L11890:
	.sleb128	19
	.4byte		.L11550
.L11893:
	.sleb128	17
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11397
.L11892:
	.sleb128	19
	.4byte		.L11893
.L11895:
	.sleb128	17
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11896
.L11898:
	.sleb128	19
	.4byte		.L11899
.L11897:
	.sleb128	18
	.4byte		.L11898
.L11903:
	.sleb128	17
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L11904
.L11902:
	.sleb128	19
	.4byte		.L11903
.L11905:
	.sleb128	19
	.4byte		.L11566
.L11908:
	.sleb128	17
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L11909
.L11907:
	.sleb128	18
	.4byte		.L11908
.L11906:
	.sleb128	19
	.4byte		.L11907
.L11912:
	.sleb128	17
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L11913
.L11911:
	.sleb128	18
	.4byte		.L11912
.L11910:
	.sleb128	19
	.4byte		.L11911
.L11916:
	.sleb128	17
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L11917
.L11915:
	.sleb128	18
	.4byte		.L11916
.L11914:
	.sleb128	19
	.4byte		.L11915
.L11919:
	.sleb128	17
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11397
.L11918:
	.sleb128	19
	.4byte		.L11919
.L11923:
	.sleb128	17
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L11924
.L11927:
	.sleb128	19
	.4byte		.L11689
.L11930:
	.sleb128	17
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11931
.L11929:
	.sleb128	18
	.4byte		.L11930
.L11928:
	.sleb128	19
	.4byte		.L11929
.L11936:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11937
.L11935:
	.sleb128	18
	.4byte		.L11936
.L11934:
	.sleb128	19
	.4byte		.L11935
.L11938:
	.sleb128	19
	.4byte		.L11704
.L11940:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11941
.L11939:
	.sleb128	19
	.4byte		.L11940
.L11945:
	.sleb128	22
	.4byte		.L11946-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11392
	.sleb128	0
.L11946:
.L11944:
	.sleb128	18
	.4byte		.L11945
.L11943:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11944
.L11942:
	.sleb128	19
	.4byte		.L11943
.L11950:
	.sleb128	22
	.4byte		.L11951-.L2
	.byte		0x1
	.sleb128	0
.L11951:
.L11949:
	.sleb128	18
	.4byte		.L11950
.L11948:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11949
.L11947:
	.sleb128	19
	.4byte		.L11948
.L11955:
	.sleb128	22
	.4byte		.L11956-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11392
	.sleb128	0
.L11956:
.L11954:
	.sleb128	18
	.4byte		.L11955
.L11953:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11954
.L11952:
	.sleb128	19
	.4byte		.L11953
.L11959:
	.sleb128	19
	.4byte		.L11565
.L11958:
	.sleb128	18
	.4byte		.L11959
.L11957:
	.sleb128	19
	.4byte		.L11958
.L11962:
	.sleb128	19
	.4byte		.L11730
.L11961:
	.sleb128	18
	.4byte		.L11962
.L11960:
	.sleb128	19
	.4byte		.L11961
.L11965:
	.sleb128	19
	.4byte		.L11709
.L11964:
	.sleb128	18
	.4byte		.L11965
.L11963:
	.sleb128	19
	.4byte		.L11964
.L11967:
	.sleb128	18
	.4byte		.L11428
.L11966:
	.sleb128	19
	.4byte		.L11967
.L11972:
	.sleb128	17
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11973
.L11971:
	.sleb128	18
	.4byte		.L11972
.L11976:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11977
.L11978:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11979
.L11984:
	.sleb128	22
	.4byte		.L11985-.L2
	.byte		0x1
	.sleb128	0
.L11985:
.L11983:
	.sleb128	18
	.4byte		.L11984
.L11982:
	.sleb128	17
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11983
.L11981:
	.sleb128	19
	.4byte		.L11982
.L11987:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11988
.L11991:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11992
.L11993:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11994
.L11995:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11996
.L11998:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11393
.L11999:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12000
.L12002:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11690
.L12004:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12005
.L12011:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11465
.L12010:
	.sleb128	19
	.4byte		.L12011
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11385:
	.sleb128	0
.L11381:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11414:
	.sleb128	0
.L11410:

	.section	.debug_loc,,n
	.align	0
.L11399:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11404:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locend
.L11427:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),3
	.d2locend
.L11429:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locend
.L11431:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),5
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo8),30
	.d2locend
.L11433:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
.L11439:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
.L11440:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),4
	.d2locend
.L11444:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),5
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),31
	.d2locend
.L11446:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L11453:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),31
	.d2locend
.L11455:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),30
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),30
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo25),30
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locend
.L11457:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),29
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo38),4
	.d2locend
.L11459:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo40),28
	.d2locend
.L11461:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo40),27
	.d2locend
.L11467:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo40),26
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),26
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_GetScheduleTableStatus"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_Core_LockAllCores","Os_Core_UnLockAllCores","Os_GetScheduleTableStatus","Os_GetScheduleTableStatus_Err_Stat"
	.wrcm.end
	.wrcm.nelem "Os_GetScheduleTableStatus_Err_Stat"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_SchTbl_Err_Stat"
	.wrcm.end
	.wrcm.nelem "Os_GetScheduleTableStatus"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_SchTbl_Err_Dyn"
	.wrcm.end
	.wrcm.nelem "GetScheduleTableStatus"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_GetScheduleTableStatus.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_GetScheduleTableStatus.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_GetScheduleTableStatus.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_GetScheduleTableStatus.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_GetScheduleTableStatus.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_GetScheduleTableStatus.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\expiry_element\schedule_table\Os_GetScheduleTableStatus.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
