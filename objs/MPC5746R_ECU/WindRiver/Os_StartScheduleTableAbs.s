#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_StartScheduleTableAbs.c"
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
# FUNC (StatusType, OS_CODE) StartScheduleTableAbs(VAR (ScheduleTableType, AUTOMATIC)  schTblId,
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11401:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11397:
	.0byte		.L11395
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_StartScheduleTableAbs.c"
        .d2line         69,28
#$$ld
.L11404:

#$$bf	StartScheduleTableAbs,interprocedural,rasave,nostackparams
	.globl		StartScheduleTableAbs
	.d2_cfa_start __cie
StartScheduleTableAbs:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr		# start=r0
	stw		r0,52(r1)		# start=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# schTblId=r3 schTblId=r3
	mr		r0,r4		# start=r0 start=r4
	.d2prologue_end
#                                                  VAR (TickType, AUTOMATIC)           start)
# {
#     VAR (Os_APICallType, AUTOMATIC) Os_StartScheduleTableAbsAPI_Call;
# 
#     OS_API_ALLOC(Os_StartScheduleTableAbsAPI_Call,StartScheduleTableAbs);
	.d2line		74
.Llo3:
	e_lis		r4,4660
.Llo4:
	e_or2i		r4,22136
	stw		r4,8(r1)
	lis		r4,Os_API_StartScheduleTableAbs@ha
	e_add16i		r4,r4,Os_API_StartScheduleTableAbs@l
	stw		r4,20(r1)
	diab.li		r4,0
	stw		r4,16(r1)
# 
#     Os_StartScheduleTableAbsAPI_Call.Os_API_Data.Os_ApiStartScheduleTableAbs.SchTblId  =  schTblId;
	.d2line		76
	stw		r3,24(r1)		# schTblId=r3
#     Os_StartScheduleTableAbsAPI_Call.Os_API_Data.Os_ApiStartScheduleTableAbs.Start     =  start;
	.d2line		77
	stw		r0,28(r1)		# start=r0
# 
#     OS_SYSCALL(Os_StartScheduleTableAbsAPI_Call);
	.d2line		79
	diab.addi		r3,r1,8		# schTblId=r3
.Llo2:
	bl		OS_SYS_CALL
# 
#     return Os_StartScheduleTableAbsAPI_Call.Os_API_ReturnValue;
	.d2line		81
.Llo5:
	lbz		r3,12(r1)		# schTblId=r3
# }
	.d2line		82
	.d2epilogue_begin
	lwz		r0,52(r1)		# start=r0
	mtspr		lr,r0		# start=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11405:
	.type		StartScheduleTableAbs,@function
	.size		StartScheduleTableAbs,.-StartScheduleTableAbs
# Number of nodes = 47

# Allocations for StartScheduleTableAbs
#	?a4		schTblId
#	?a5		start
#	SP,8		Os_StartScheduleTableAbsAPI_Call
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_StartScheduleTableAbs_Err_Dyn(
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11427:
	.section	.Os_TEXT,,c
#$$ld
.L11423:
	.0byte		.L11421
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_StartScheduleTableAbs.c"
        .d2line         241,41
#$$ld
.L11430:

#$$bf	Os_StartScheduleTableAbs_Err_Dyn,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_StartScheduleTableAbs_Err_Dyn:
.Llo6:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo11:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	mr		r31,r4		# schTblId=r31 schTblId=r4
	.d2prologue_end
#                                             P2CONST ( Os_ProcStatType,   AUTOMATIC, OS_CONST ) callerProc,
#                                             CONST   ( ScheduleTableType, AUTOMATIC )           schTblId
#                                 )
# {
#     VAR (StatusType, AUTOMATIC ) retVal;
# 
#     retVal = Os_SchTbl_Err_Dyn(callerProc,schTblId);
	.d2line		248
	mr		r0,r3		# callerProc=r0 callerProc=r3
.Llo12:
	mr		r4,r31		# schTblId=r4 schTblId=r31
.Llo8:
	bl		Os_SchTbl_Err_Dyn
.Llo7:
	mr		r4,r3		# retVal=r4 retVal=r3
# 
#     if(retVal == E_OK)
	.d2line		250
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11389	# ne
#     {
#         if(Os_SchTblGetStatus(schTblId) != SCHEDULETABLE_STOPPED)
	.d2line		252
.Llo13:
	lis		r3,Os_SchTblStat@ha		# retVal=r3
.Llo14:
	lwz		r0,Os_SchTblStat@l(r3)		# retVal=r0 retVal=r3
.Llo9:
	e_mulli		r31,r31,40		# schTblId=r31 schTblId=r31
	se_add		r31,r0		# schTblId=r31 schTblId=r31 retVal=r0
	lwz		r3,24(r31)		# retVal=r3 schTblId=r31
	lwz		r0,0(r3)		# retVal=r0 retVal=r3
	se_cmpi		r0,0		# retVal=r0
#         {
#             retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_STATE);
	.d2line		254
	diab.li		r0,7		# retVal=r0
	isel		r0,r4,r0,2		# retVal=r0 retVal=r4 retVal=r0
.L11390:
#         }
#         else
#         {
#             retVal = E_OK;
	.d2line		258
.Llo10:
	isel		r4,0,r0,2		# retVal=r4 retVal=r0
.L11389:
#         }
#     }
#     return retVal;
	.d2line		261
.Llo15:
	rlwinm		r3,r4,0,24,31		# retVal=r3 retVal=r4
# }
	.d2line		262
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo16:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11431:
	.type		Os_StartScheduleTableAbs_Err_Dyn,@function
	.size		Os_StartScheduleTableAbs_Err_Dyn,.-Os_StartScheduleTableAbs_Err_Dyn
# Number of nodes = 32

# Allocations for Os_StartScheduleTableAbs_Err_Dyn
#	?a4		callerProc
#	?a5		schTblId
#	?a6		retVal
# FUNC(StatusType, OS_CODE) Os_StartScheduleTableAbs(P2CONST(Os_ProcStatType,AUTOMATIC ,OS_CONST)   callerProc,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         166,27
#$$ld
.L11445:

#$$bf	Os_StartScheduleTableAbs,interprocedural,rasave,nostackparams
	.globl		Os_StartScheduleTableAbs
	.d2_cfa_start __cie
Os_StartScheduleTableAbs:
.Llo17:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r29,r3		# callerProc=r29 callerProc=r3
	mr		r31,r4		# schTblId=r31 schTblId=r4
	mr		r30,r5		# start=r30 start=r5
	.d2prologue_end
#                                                    CONST(ScheduleTableType, AUTOMATIC)  schTblId,
#                                                    CONST(TickType, AUTOMATIC)           start)
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
#     retVal = Os_StartScheduleTableAbs_Err_Dyn(callerProc,schTblId);
	.d2line		172
	mr		r3,r29		# callerProc=r3 callerProc=r29
.Llo18:
	mr		r4,r31		# schTblId=r4 schTblId=r31
.Llo21:
	bl		Os_StartScheduleTableAbs_Err_Dyn
.Llo24:
	mr		r27,r3		# retVal=r27 retVal=r3
# 
#     if(E_OK == retVal)
	.d2line		174
.Llo26:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
.Llo27:
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11374	# ne
	.section	.Os_TEXT,,c
.L11454:
#     {
#         CONSTP2CONST(Os_CounterStatType,AUTOMATIC,OS_CONST) schTblCounter =  Os_SchTblStat[schTblId].Os_SchTblCounter;
	.d2line		176
.Llo22:
	lis		r3,Os_SchTblStat@ha		# retVal=r3
.Llo28:
	lwz		r3,Os_SchTblStat@l(r3)		# retVal=r3 retVal=r3
	e_mulli		r4,r31,40		# schTblId=r31
	lwzx		r29,r3,r4		# retVal=r29 retVal=r3
.Llo30:
	mr		r29,r29		# schTblCounter=r29 schTblCounter=r29
#         CONST(TickType, AUTOMATIC) relStartvalue   =  Os_CounterTickDiff(
	.d2line		177
	mr		r3,r29		# schTblCounter=r3 schTblCounter=r29
	bl		Os_CounterStopAndGetValue
	se_cmpl		r3,r30		# retVal=r3 start=r30
	bc		0,0,.L11376	# ge
	mr		r3,r29		# schTblCounter=r3 schTblCounter=r29
	bl		Os_CounterStopAndGetValue
	subf		r3,r3,r30		# retVal=r3 retVal=r3 start=r30
.Llo31:
	mr		r4,r3		# relStartvalue=r4 relStartvalue=r3
	b		.L11377
.L11376:
.Llo32:
	lwz		r28,4(r29)		# schTblCounter=r29
	mr		r3,r29		# schTblCounter=r3 schTblCounter=r29
	bl		Os_CounterStopAndGetValue
	subf		r3,r3,r28		# schTblCounter=r3 schTblCounter=r3
	se_add		r3,r30		# schTblCounter=r3 schTblCounter=r3 start=r30
	se_addi		r3,1		# schTblCounter=r3 schTblCounter=r3
.Llo33:
	mr		r4,r3		# relStartvalue=r4 relStartvalue=r3
.L11377:
#                                                           schTblCounter,
#                                                           Os_CounterStopAndGetValue(schTblCounter),
#                                                           start
#                                                       );
# 
#         Os_SchTblStartRel(schTblId, relStartvalue);
	.d2line		183
.Llo25:
	mr		r3,r31		# schTblId=r3 schTblId=r31
.Llo34:
	mr		r4,r4		# relStartvalue=r4 relStartvalue=r4
.Llo35:
	bl		Os_SchTblStartRel
	.section	.Os_TEXT,,c
.L11455:
.Llo23:
	b		.L11375
.L11374:
	.section	.Os_TEXT,,c
.L11467:
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         CONST (CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		189
.Llo19:
	mfspr		r0,286		# coreId=r0
.Llo36:
	mr		r0,r0		# coreId=r0 coreId=r0
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_SchedID    = schTblId;
	.d2line		191
	lis		r3,(Os_Core_DynShared+64)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+64)@l		# retVal=r3 retVal=r3
	rlwinm		r0,r0,0,16,31		# coreId=r0 coreId=r0
	e_mulli		r0,r0,152		# coreId=r0 coreId=r0
.Llo37:
	stwux		r31,r3,r0		# retVal=r3 schTblId=r31
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TicksStart = start;
	.d2line		192
	lis		r3,(Os_Core_DynShared+36)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+36)@l		# retVal=r3 retVal=r3
	stwx		r30,r3,r0		# retVal=r3 start=r30
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_StartScheduleTableAbs,callerProc); /* [OS001-302.v1-21] */
	.d2line		196
	rlwinm		r3,r27,0,24,31		# retVal=r3 retVal=r27
	diab.li		r4,8
	mr		r5,r29		# callerProc=r5 callerProc=r29
	bl		Os_Call_ErrorHook
	.section	.Os_TEXT,,c
.L11468:
.L11375:
#     }
# 
#     return retVal;
	.d2line		199
.Llo20:
	rlwinm		r3,r27,0,24,31		# schTblId=r3 retVal=r27
# }
	.d2line		200
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo29:
	lwz		r0,52(r1)		# coreId=r0
	mtspr		lr,r0		# coreId=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11446:
	.type		Os_StartScheduleTableAbs,@function
	.size		Os_StartScheduleTableAbs,.-Os_StartScheduleTableAbs
# Number of nodes = 99

# Allocations for Os_StartScheduleTableAbs
#	?a4		callerProc
#	?a5		schTblId
#	?a6		start
#	?a7		retVal
#	?a8		schTblCounter
#	?a9		relStartvalue
#	?a10		coreId
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_StartScheduleTableAbs_Err_Stat(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         208,41
#$$ld
.L11479:

#$$bf	Os_StartScheduleTableAbs_Err_Stat,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_StartScheduleTableAbs_Err_Stat:
.Llo38:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo45:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	mr		r31,r4		# schTblId=r31 schTblId=r4
	mr		r30,r5		# start=r30 start=r5
	.d2prologue_end
#                                             P2CONST ( Os_ProcStatType,   AUTOMATIC, OS_CONST ) callerProc,
#                                             CONST   ( ScheduleTableType, AUTOMATIC )           schTblId,
#                                             CONST   ( TickType,          AUTOMATIC )           start
#                                 )
# {
#     VAR (StatusType, AUTOMATIC ) retVal;
# 
#     retVal = Os_SchTbl_Err_Stat(callerProc,schTblId);
	.d2line		216
	mr		r0,r3		# callerProc=r0 callerProc=r3
.Llo46:
	mr		r4,r31		# schTblId=r4 schTblId=r31
.Llo40:
	bl		Os_SchTbl_Err_Stat
.Llo39:
	mr		r4,r3		# retVal=r4 retVal=r3
# 
#     if(retVal == E_OK)
	.d2line		218
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11383	# ne
#     {
#         if(start > Os_CounterGetMaxAllowedValue(Os_SchTblStat[schTblId].Os_SchTblCounter))
	.d2line		220
.Llo43:
	lis		r3,Os_SchTblStat@ha		# retVal=r3
.Llo47:
	lwz		r3,Os_SchTblStat@l(r3)		# retVal=r3 retVal=r3
.Llo41:
	e_mulli		r31,r31,40		# schTblId=r31 schTblId=r31
.Llo42:
	lwzx		r3,r3,r31		# retVal=r3 retVal=r3
	lwz		r0,4(r3)		# retVal=r0 retVal=r3
	se_cmpl		r0,r30		# retVal=r0 start=r30
#         {
#             retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_VALUE);
	.d2line		222
	diab.li		r3,8		# retVal=r3
	isel		r3,r3,r4,0		# retVal=r3 retVal=r3 retVal=r4
.L11384:
#         }
#         else
#         {
#             /* List of requirements that are not checked (automatically satisfied):
#              * [OS088-01-149] [OS088-01-150]
#              */
#             retVal = E_OK;
	.d2line		229
.Llo44:
	diab.li		r0,0		# retVal=r0
.Llo48:
	isel		r4,r3,r0,0		# retVal=r4 retVal=r3 retVal=r0
.L11383:
#         }
#     }
#     return retVal;
	.d2line		232
.Llo49:
	rlwinm		r3,r4,0,24,31		# retVal=r3 retVal=r4
# }
	.d2line		233
	.d2epilogue_begin
.Llo50:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo51:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11480:
	.type		Os_StartScheduleTableAbs_Err_Stat,@function
	.size		Os_StartScheduleTableAbs_Err_Stat,.-Os_StartScheduleTableAbs_Err_Stat
# Number of nodes = 32

# Allocations for Os_StartScheduleTableAbs_Err_Stat
#	?a4		callerProc
#	?a5		schTblId
#	?a6		start
#	?a7		retVal
# OS_API(StartScheduleTableAbs)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         95,1
#$$ld
.L11489:

#$$bf	Os_API_StartScheduleTableAbs,interprocedural,rasave,nostackparams
	.globl		Os_API_StartScheduleTableAbs
	.d2_cfa_start __cie
Os_API_StartScheduleTableAbs:
.Llo52:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo60:
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	mr		r30,r4		# callerProc=r30 callerProc=r4
	.d2prologue_end
# {
#     VAR (StatusType, AUTOMATIC)           retVal    =  E_NOT_OK;
	.d2line		97
	diab.li		r0,1		# retVal=r0
#     CONST (ScheduleTableType, AUTOMATIC)  schTblId  =  Os_APICall->Os_API_Data.Os_ApiStartScheduleTableAbs.SchTblId;
	.d2line		98
.Llo61:
	lwz		r28,16(r31)		# Os_APICall=r31
.Llo76:
	mr		r28,r28		# schTblId=r28 schTblId=r28
#     CONST (TickType, AUTOMATIC)           start     =  Os_APICall->Os_API_Data.Os_ApiStartScheduleTableAbs.Start;
	.d2line		99
	lwz		r27,20(r31)		# Os_APICall=r31
.Llo78:
	mr		r27,r27		# start=r27 start=r27
#   #if defined(OS_CONFIG_HOOK) || defined(OS_MODULE_ORTISUPPORT) || \
#       defined(OS_MODULE_MULTICORE) || defined(OS_CONFIG_USEPARAMETERACCESS)
#     CONST(CoreIdType, AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		102
	mfspr		r26,286		# coreId=r26
	mr		r26,r26		# coreId=r26 coreId=r26
#   #endif /* OS_CONFIG_HOOK || OS_MODULE_ORTISUPPORT || OS_MODULE_MULTICORE || OS_CONFIG_USEPARAMETERACCESS */
# 
#     OS_TRACE(StartScheduleTableAbs_Entry , coreId);
	.d2line		105
	diab.li		r0,25		# retVal=r0
.Llo62:
	lis		r3,(Os_Core_DynShared+120)@ha
.Llo53:
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	rlwinm		r5,r26,0,16,31		# coreId=r26
	e_mulli		r4,r5,152
.Llo58:
	stbx		r0,r3,r4		# retVal=r0
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     /* Validate API access and parameters */
#     if( OS_HOOKID_NONE != OS_GET_CORE_HOOK_DYN ( coreId )->Os_HookID )
	.d2line		110
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	e_mulli		r5,r5,20
	lwzx		r3,r3,r5
	lhz		r0,100(r3)		# retVal=r0
	se_cmpi		r0,1		# retVal=r0
	bc		1,2,.L11360	# eq
#     {
#         /* [OS088-03-194] [OS088-03-195] [OS088-03-196] [OS088-03-197] [OS088-03-198]
#          * [OS088-03-199] [OS088-03-200] [OS088-03-360] [OS088-03-403] [OS088-03-447]
#          * [OS-MGC-0056-23] [OS-MGC-0056-66]
#          */
#         OS_FATAL_ERROR(E_OS_SYS_CALLEVEL);
	.d2line		116
.Llo54:
	diab.li		r4,53
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# retVal=r0
.Llo63:
	rlwinm		r0,r0,0,16,31		# retVal=r0 retVal=r0
	e_mulli		r0,r0,152		# retVal=r0 retVal=r0
.Llo64:
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11360:
#     }
# 
#   #endif
# 
#     retVal = Os_StartScheduleTableAbs_Err_Stat(callerProc, schTblId, start);
	.d2line		121
	mr		r3,r30		# callerProc=r3 callerProc=r30
	mr		r4,r28		# schTblId=r4 schTblId=r28
	mr		r5,r27		# start=r5 start=r27
	bl		Os_StartScheduleTableAbs_Err_Stat
.Llo65:
	mr		r29,r3		# retVal=r29 retVal=r3
# 
#     /* Call API if validation was successful */
#     if( E_OK == retVal )
	.d2line		124
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11362	# ne
#     {
#       #ifdef OS_MODULE_MULTICORE
#         /* the cores core activation must be executed by the dispatcher */
#         if(coreId != Os_SchTblStat[schTblId].Os_SchTblCounter->Os_CounterCoreId)
	.d2line		128
.Llo66:
	rlwinm		r0,r26,0,16,31		# retVal=r0 coreId=r26
.Llo67:
	lis		r3,Os_SchTblStat@ha		# retVal=r3
	lwz		r3,Os_SchTblStat@l(r3)		# retVal=r3 retVal=r3
	e_mulli		r4,r28,40		# schTblId=r28
	lwzx		r3,r3,r4		# retVal=r3 retVal=r3
	lhz		r3,36(r3)		# retVal=r3 retVal=r3
	se_cmp		r0,r3		# retVal=r0 retVal=r3
	bc		1,2,.L11363	# eq
	.section	.Os_TEXT,,c
.L11506:
#         {
#             /*[OS644-01-MGC]*/
#             OS_API_ALLOCAPIREMULTI(StartScheduleTableAbs, coreId, Os_SchTblStat[schTblId].Os_SchTblCounter->Os_CounterCoreId);
	.d2line		131
.Llo59:
	rlwinm		r3,r26,0,16,31		# retVal=r3 coreId=r26
	bl		Os_Dispatcher_Alloc_Core
.Llo81:
	mr		r4,r3		# _disp=r4 _disp=r3
.Llo82:
	lis		r3,Os_API_MC_StartScheduleTableAbs@ha		# retVal=r3
.Llo68:
	e_add16i		r3,r3,Os_API_MC_StartScheduleTableAbs@l		# retVal=r3 retVal=r3
	stw		r3,12(r31)		# Os_APICall=r31 retVal=r3
	diab.li		r0,1		# retVal=r0
	stw		r0,8(r31)		# Os_APICall=r31 retVal=r0
	lis		r3,Os_SchTblStat@ha		# retVal=r3
.Llo69:
	lwz		r3,Os_SchTblStat@l(r3)		# retVal=r3 retVal=r3
.Llo70:
	e_mulli		r28,r28,40		# schTblId=r28 schTblId=r28
.Llo77:
	lwzx		r3,r3,r28		# retVal=r3 retVal=r3
	lhz		r0,36(r3)		# retVal=r0 retVal=r3
	sth		r0,4(r4)		# _disp=r4 retVal=r0
	diab.li		r0,3		# retVal=r0
	stw		r0,0(r4)		# _disp=r4 retVal=r0
	stw		r31,12(r4)		# _disp=r4 Os_APICall=r31
	.section	.Os_TEXT,,c
.L11507:
.Llo55:
	b		.L11366
.L11363:
#         }
#         else
#       #endif
#         {
#             Os_APICall->Os_API_ReturnValue = Os_StartScheduleTableAbs(callerProc,schTblId,start);
	.d2line		136
.Llo56:
	mr		r3,r30		# callerProc=r3 callerProc=r30
	mr		r4,r28		# schTblId=r4 schTblId=r28
	mr		r5,r27		# start=r5 start=r27
	bl		Os_StartScheduleTableAbs
.Llo71:
	stb		r3,4(r31)		# Os_APICall=r31 retVal=r3
	b		.L11366
.L11362:
#         }
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_SchedID    = schTblId;
	.d2line		143
.Llo72:
	lis		r3,(Os_Core_DynShared+64)@ha		# retVal=r3
.Llo73:
	e_add16i		r3,r3,(Os_Core_DynShared+64)@l		# retVal=r3 retVal=r3
	rlwinm		r0,r26,0,16,31		# retVal=r0 coreId=r26
	e_mulli		r0,r0,152		# retVal=r0 retVal=r0
	stwux		r28,r3,r0		# retVal=r3 schTblId=r28
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TicksStart = start;
	.d2line		144
	lis		r3,(Os_Core_DynShared+36)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+36)@l		# retVal=r3 retVal=r3
	stwx		r27,r3,r0		# retVal=r3 start=r27
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_StartScheduleTableAbs,callerProc); /* [OS001-302.v1-21] */
	.d2line		148
	rlwinm		r3,r29,0,24,31		# retVal=r3 retVal=r29
	mr		r5,r30		# callerProc=r5 callerProc=r30
	diab.li		r4,8
	bl		Os_Call_ErrorHook
#         Os_APICall->Os_API_ReturnValue  =  retVal;
	.d2line		149
	stb		r29,4(r31)		# Os_APICall=r31 retVal=r29
.L11366:
#     }
# 
#     OS_TRACE(StartScheduleTableAbs_Exit , coreId);
	.d2line		152
.Llo57:
	diab.li		r3,24		# retVal=r3
.Llo74:
	lis		r4,(Os_Core_DynShared+120)@ha		# _disp=r4
.Llo83:
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l		# _disp=r4 _disp=r4
.Llo79:
	rlwinm		r26,r26,0,16,31		# coreId=r26 coreId=r26
	e_mulli		r26,r26,152		# coreId=r26 coreId=r26
.Llo80:
	stbx		r3,r4,r26		# _disp=r4 retVal=r3
# }
	.d2line		153
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo75:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11490:
	.type		Os_API_StartScheduleTableAbs,@function
	.size		Os_API_StartScheduleTableAbs,.-Os_API_StartScheduleTableAbs
# Number of nodes = 207

# Allocations for Os_API_StartScheduleTableAbs
#	?a4		Os_APICall
#	?a5		callerProc
#	?a6		retVal
#	?a7		schTblId
#	?a8		start
#	?a9		coreId
#	?a10		_disp
# OS_APIMC(StartScheduleTableAbs)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         156,1
#$$ld
.L11517:

#$$bf	Os_API_MC_StartScheduleTableAbs,interprocedural,rasave,nostackparams
	.globl		Os_API_MC_StartScheduleTableAbs
	.d2_cfa_start __cie
Os_API_MC_StartScheduleTableAbs:
.Llo84:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
.Llo85:
	mr		r3,r4		# callerProc=r3 callerProc=r4
	.d2prologue_end
# {
#     Os_APICall->Os_API_ReturnValue =
	.d2line		158
.Llo86:
	lwz		r4,16(r31)		# Os_APICall=r31
.Llo88:
	lwz		r5,20(r31)		# Os_APICall=r31
.Llo89:
	mr		r3,r3		# callerProc=r3 callerProc=r3
.Llo90:
	bl		Os_StartScheduleTableAbs
	stb		r3,4(r31)		# Os_APICall=r31
#                                 Os_StartScheduleTableAbs( callerProc,
#                                                           Os_APICall->Os_API_Data.Os_ApiStartScheduleTableAbs.SchTblId,
#                                                           Os_APICall->Os_API_Data.Os_ApiStartScheduleTableAbs.Start );
# }
	.d2line		162
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo87:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11518:
	.type		Os_API_MC_StartScheduleTableAbs,@function
	.size		Os_API_MC_StartScheduleTableAbs,.-Os_API_MC_StartScheduleTableAbs
# Number of nodes = 19

# Allocations for Os_API_MC_StartScheduleTableAbs
#	?a4		Os_APICall
#	?a5		callerProc

# Allocations for module
	.section	.text_vle
	.0byte		.L11522
	.section	.text_vle
	.0byte		.L11529
	.section	.Os_BSS,,b
	.0byte		.L11536
	.section	.text_vle
#$$ld
.L5:
.L12082:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12079:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12077:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12075:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12073:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12054:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12052:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12035:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12015:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11971:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11946:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L11905:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11902:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11832:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11593:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11541:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11530:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11523:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ScheduleTableCfgTypes.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11398:
.L11406:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_StartScheduleTableAbs.c"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11424:
.L11432:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_StartScheduleTableAbs.c"
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
	.uleb128	8
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_StartScheduleTableAbs.c"
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
.L11395:
	.4byte		.L11396-.L11394
.L11394:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11400-.L11395
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_StartScheduleTableAbs.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11397
	.4byte		.L11398
	.4byte		.L11401
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11410:
	.sleb128	2
	.4byte		.L11403-.L11395
	.byte		"StartScheduleTableAbs"
	.byte		0
	.4byte		.L11406
	.uleb128	69
	.uleb128	28
	.4byte		.L11407
	.byte		0x1
	.byte		0x1
	.4byte		.L11404
	.4byte		.L11405
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11406
	.uleb128	69
	.uleb128	28
	.byte		"schTblId"
	.byte		0
	.4byte		.L11411
	.4byte		.L11414
	.sleb128	3
	.4byte		.L11406
	.uleb128	69
	.uleb128	28
	.byte		"start"
	.byte		0
	.4byte		.L11415
	.4byte		.L11416
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11417:
	.sleb128	4
	.4byte		.L11406
	.uleb128	72
	.uleb128	37
	.byte		"Os_StartScheduleTableAbsAPI_Call"
	.byte		0
	.4byte		.L11418
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11403:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11421:
	.4byte		.L11422-.L11420
.L11420:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11426-.L11421
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_StartScheduleTableAbs.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11423
	.4byte		.L11424
	.4byte		.L11427
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11433:
	.sleb128	5
	.4byte		.L11429-.L11421
	.byte		"Os_StartScheduleTableAbs_Err_Dyn"
	.byte		0
	.4byte		.L11432
	.uleb128	241
	.uleb128	41
	.4byte		.L11407
	.byte		0x1
	.4byte		.L11430
	.4byte		.L11431
	.sleb128	3
	.4byte		.L11432
	.uleb128	241
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11434
	.4byte		.L11438
	.sleb128	3
	.4byte		.L11432
	.uleb128	241
	.uleb128	41
	.byte		"schTblId"
	.byte		0
	.4byte		.L11439
	.4byte		.L11440
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11441:
	.sleb128	6
	.4byte		.L11432
	.uleb128	246
	.uleb128	34
	.byte		"retVal"
	.byte		0
	.4byte		.L11407
	.4byte		.L11442
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11429:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11447:
	.sleb128	2
	.4byte		.L11444-.L11421
	.byte		"Os_StartScheduleTableAbs"
	.byte		0
	.4byte		.L11432
	.uleb128	166
	.uleb128	27
	.4byte		.L11407
	.byte		0x1
	.byte		0x1
	.4byte		.L11445
	.4byte		.L11446
	.sleb128	3
	.4byte		.L11432
	.uleb128	166
	.uleb128	27
	.byte		"callerProc"
	.byte		0
	.4byte		.L11434
	.4byte		.L11448
	.sleb128	3
	.4byte		.L11432
	.uleb128	166
	.uleb128	27
	.byte		"schTblId"
	.byte		0
	.4byte		.L11439
	.4byte		.L11449
	.sleb128	3
	.4byte		.L11432
	.uleb128	166
	.uleb128	27
	.byte		"start"
	.byte		0
	.4byte		.L11450
	.4byte		.L11451
.L11452:
	.sleb128	6
	.4byte		.L11432
	.uleb128	170
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11407
	.4byte		.L11453
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11457
	.4byte		.L11454
	.4byte		.L11455
.L11458:
	.sleb128	6
	.4byte		.L11432
	.uleb128	176
	.uleb128	61
	.byte		"schTblCounter"
	.byte		0
	.4byte		.L11459
	.4byte		.L11464
.L11465:
	.sleb128	6
	.4byte		.L11432
	.uleb128	177
	.uleb128	36
	.byte		"relStartvalue"
	.byte		0
	.4byte		.L11450
	.4byte		.L11466
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11457:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11470
	.4byte		.L11467
	.4byte		.L11468
.L11471:
	.sleb128	6
	.4byte		.L11432
	.uleb128	189
	.uleb128	40
	.byte		"coreId"
	.byte		0
	.4byte		.L11472
	.4byte		.L11476
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11470:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11444:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11481:
	.sleb128	5
	.4byte		.L11478-.L11421
	.byte		"Os_StartScheduleTableAbs_Err_Stat"
	.byte		0
	.4byte		.L11432
	.uleb128	208
	.uleb128	41
	.4byte		.L11407
	.byte		0x1
	.4byte		.L11479
	.4byte		.L11480
	.sleb128	3
	.4byte		.L11432
	.uleb128	208
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11434
	.4byte		.L11482
	.sleb128	3
	.4byte		.L11432
	.uleb128	208
	.uleb128	41
	.byte		"schTblId"
	.byte		0
	.4byte		.L11439
	.4byte		.L11483
	.sleb128	3
	.4byte		.L11432
	.uleb128	208
	.uleb128	41
	.byte		"start"
	.byte		0
	.4byte		.L11450
	.4byte		.L11484
.L11485:
	.sleb128	6
	.4byte		.L11432
	.uleb128	214
	.uleb128	34
	.byte		"retVal"
	.byte		0
	.4byte		.L11407
	.4byte		.L11486
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11478:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11491:
	.sleb128	8
	.4byte		.L11488-.L11421
	.byte		"Os_API_StartScheduleTableAbs"
	.byte		0
	.4byte		.L11432
	.uleb128	95
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11489
	.4byte		.L11490
	.sleb128	3
	.4byte		.L11432
	.uleb128	95
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11492
	.4byte		.L11493
	.sleb128	3
	.4byte		.L11432
	.uleb128	95
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11494
	.4byte		.L11497
.L11498:
	.sleb128	6
	.4byte		.L11432
	.uleb128	97
	.uleb128	43
	.byte		"retVal"
	.byte		0
	.4byte		.L11407
	.4byte		.L11499
.L11500:
	.sleb128	6
	.4byte		.L11432
	.uleb128	98
	.uleb128	43
	.byte		"schTblId"
	.byte		0
	.4byte		.L11439
	.4byte		.L11501
.L11502:
	.sleb128	6
	.4byte		.L11432
	.uleb128	99
	.uleb128	43
	.byte		"start"
	.byte		0
	.4byte		.L11450
	.4byte		.L11503
.L11504:
	.sleb128	6
	.4byte		.L11432
	.uleb128	102
	.uleb128	34
	.byte		"coreId"
	.byte		0
	.4byte		.L11472
	.4byte		.L11505
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11509
	.4byte		.L11506
	.4byte		.L11507
.L11510:
	.sleb128	6
	.4byte		.L11432
	.uleb128	131
	.uleb128	13
	.byte		"_disp"
	.byte		0
	.4byte		.L11511
	.4byte		.L11514
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11509:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11488:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11519:
	.sleb128	8
	.4byte		.L11516-.L11421
	.byte		"Os_API_MC_StartScheduleTableAbs"
	.byte		0
	.4byte		.L11432
	.uleb128	156
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11517
	.4byte		.L11518
	.sleb128	3
	.4byte		.L11432
	.uleb128	156
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11492
	.4byte		.L11520
	.sleb128	3
	.4byte		.L11432
	.uleb128	156
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11494
	.4byte		.L11521
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11516:
	.section	.debug_info,,n
.L11522:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11523
	.uleb128	144
	.uleb128	60
	.byte		"Os_SchTblStat"
	.byte		0
	.4byte		.L11524
	.section	.debug_info,,n
.L11529:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11530
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11531
	.section	.debug_info,,n
.L11536:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11530
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11537
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11535:
	.sleb128	10
	.4byte		.L11541
	.uleb128	69
	.uleb128	1
	.4byte		.L11542-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11551
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11542:
.L11546:
	.sleb128	10
	.4byte		.L11541
	.uleb128	69
	.uleb128	1
	.4byte		.L11565-.L2
	.uleb128	36
.L783:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11566
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11570
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11565:
.L11540:
	.sleb128	10
	.4byte		.L11541
	.uleb128	69
	.uleb128	1
	.4byte		.L11574-.L2
	.uleb128	152
.L776:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11575
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11574:
.L11550:
	.sleb128	10
	.4byte		.L11541
	.uleb128	69
	.uleb128	1
	.4byte		.L11579-.L2
	.uleb128	104
.L773:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11584
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11579:
.L11569:
	.sleb128	10
	.4byte		.L11541
	.uleb128	69
	.uleb128	1
	.4byte		.L11586-.L2
	.uleb128	4
.L772:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11586:
.L11581:
	.sleb128	10
	.4byte		.L11541
	.uleb128	69
	.uleb128	1
	.4byte		.L11587-.L2
	.uleb128	48
.L764:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11588
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11590
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11587:
	.section	.debug_info,,n
.L11592:
	.sleb128	12
	.4byte		.L11593
	.uleb128	612
	.uleb128	1
	.4byte		.L11594-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11594:
.L11567:
	.sleb128	10
	.4byte		.L11593
	.uleb128	612
	.uleb128	1
	.4byte		.L11596-.L2
	.uleb128	28
.L743:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11596:
.L11583:
	.sleb128	10
	.4byte		.L11593
	.uleb128	612
	.uleb128	1
	.4byte		.L11599-.L2
	.uleb128	52
.L737:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11599:
.L11576:
	.sleb128	10
	.4byte		.L11593
	.uleb128	612
	.uleb128	1
	.4byte		.L11610-.L2
	.uleb128	8
.L735:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11610:
.L11513:
	.sleb128	12
	.4byte		.L11593
	.uleb128	612
	.uleb128	1
	.4byte		.L11611-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11617
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11611:
.L11419:
	.sleb128	12
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11618-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11621
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11618:
	.section	.debug_info,,n
.L11625:
	.sleb128	13
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11626-.L2
	.uleb128	24
.L677:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11627
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11629
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11631
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11641
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11645
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11647
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11649
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11655
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11657
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11665
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11679
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11707
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11715
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11626:
.L11722:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11723-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11724
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11723:
.L11720:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11726-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11726:
.L11718:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11737-.L2
	.uleb128	8
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11737:
.L11716:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11742-.L2
	.uleb128	2
.L670:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11742:
.L11714:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11743-.L2
	.uleb128	2
.L669:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11743:
.L11712:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11744-.L2
	.uleb128	20
.L664:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11744:
.L11710:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11747-.L2
	.uleb128	12
.L661:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11747:
.L11708:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11752-.L2
	.uleb128	12
.L658:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11752:
.L11706:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11756-.L2
	.uleb128	12
.L655:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11756:
.L11672:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11757-.L2
	.uleb128	4
.L654:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11757:
.L11670:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11759-.L2
	.uleb128	12
.L651:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11759:
.L11668:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11760-.L2
	.uleb128	12
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11760:
.L11666:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11761-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11761:
.L11664:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11764-.L2
	.uleb128	8
.L644:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11764:
.L11704:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11769-.L2
	.uleb128	4
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11769:
.L11702:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11770-.L2
	.uleb128	8
.L641:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11770:
.L11700:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11771-.L2
	.uleb128	4
.L640:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11771:
.L11698:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11772-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11772:
.L11696:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11773-.L2
	.uleb128	8
.L636:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11773:
.L11694:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11778-.L2
	.uleb128	4
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11778:
.L11692:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11779-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11779:
.L11690:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11780-.L2
	.uleb128	8
.L631:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11780:
.L11688:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11781-.L2
	.uleb128	12
.L628:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11781:
.L11686:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11783-.L2
	.uleb128	12
.L625:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11783:
.L11684:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11788-.L2
	.uleb128	4
.L624:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11788:
.L11680:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11789-.L2
	.uleb128	4
.L623:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11789:
.L11676:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11790-.L2
	.uleb128	2
.L621:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11790:
.L11678:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11792-.L2
	.uleb128	1
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11792:
.L11674:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11793-.L2
	.uleb128	8
.L618:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11793:
.L11658:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11797-.L2
	.uleb128	8
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11797:
.L11656:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11801-.L2
	.uleb128	24
.L614:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11801:
.L11654:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11804-.L2
	.uleb128	8
.L613:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11804:
.L11652:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11805-.L2
	.uleb128	16
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11805:
.L11650:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11806-.L2
	.uleb128	8
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11806:
.L11648:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11811-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11811:
.L11646:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11814-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11814:
.L11644:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11815-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11815:
.L11662:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11816-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11816:
.L11660:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11818-.L2
	.uleb128	4
.L604:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11818:
.L11682:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11819-.L2
	.uleb128	4
.L603:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11819:
.L11642:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11821-.L2
	.uleb128	2
.L602:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11821:
.L11636:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11822-.L2
	.uleb128	2
.L601:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11822:
.L11634:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11823-.L2
	.uleb128	1
.L600:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11823:
.L11632:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11824-.L2
	.uleb128	8
.L598:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11824:
.L11630:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11827-.L2
	.uleb128	1
.L597:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11827:
.L11640:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11828-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11828:
.L11638:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11830-.L2
	.uleb128	8
.L593:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11830:
.L11628:
	.sleb128	10
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L11831-.L2
	.uleb128	4
.L592:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11831:
.L11730:
	.sleb128	10
	.4byte		.L11832
	.uleb128	33
	.uleb128	14
	.4byte		.L11833-.L2
	.uleb128	24
.L585:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11839
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11843
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11833:
.L11847:
	.sleb128	10
	.4byte		.L11832
	.uleb128	33
	.uleb128	14
	.4byte		.L11851-.L2
	.uleb128	4
.L581:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11851:
.L11837:
	.sleb128	10
	.4byte		.L11832
	.uleb128	33
	.uleb128	14
	.4byte		.L11856-.L2
	.uleb128	6
.L578:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11856:
.L11528:
	.sleb128	12
	.4byte		.L11523
	.uleb128	62
	.uleb128	1
	.4byte		.L11857-.L2
	.byte		"Os_SchTblStatType_s"
	.byte		0
	.uleb128	40
.L544:
	.sleb128	11
	.byte		"Os_SchTblCounter"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L545:
	.sleb128	11
	.byte		"Os_SchTblSyncStrategy"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L546:
	.sleb128	11
	.byte		"Os_SchTblRepeating"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L547:
	.sleb128	11
	.byte		"Os_SchTblInitialEP"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L548:
	.sleb128	11
	.byte		"Os_SchTblFinalEP"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L549:
	.sleb128	11
	.byte		"Os_SchTblDuration"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L550:
	.sleb128	11
	.byte		"Os_SchTblRegistry"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L551:
	.sleb128	11
	.byte		"Os_SchTblAppAccess"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L552:
	.sleb128	11
	.byte		"Os_SchTblOwnerApp"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L553:
	.sleb128	11
	.byte		"Os_SchTblAutoStartStat"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11857:
.L11882:
	.sleb128	10
	.4byte		.L11523
	.uleb128	62
	.uleb128	1
	.4byte		.L11883-.L2
	.uleb128	12
.L541:
	.sleb128	11
	.byte		"Os_SchTblAutoStartValue"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L542:
	.sleb128	11
	.byte		"Os_SchTblAutoStartKind"
	.byte		0
	.4byte		.L11884
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L543:
	.sleb128	11
	.byte		"Os_SchTblAppModeAutoStart"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11883:
.L11872:
	.sleb128	10
	.4byte		.L11523
	.uleb128	62
	.uleb128	1
	.4byte		.L11887-.L2
	.uleb128	16
.L537:
	.sleb128	11
	.byte		"Os_SchTblStatus"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L538:
	.sleb128	11
	.byte		"Os_SchTblNextEP"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L539:
	.sleb128	11
	.byte		"Os_SchTblNextSchTblId"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L540:
	.sleb128	11
	.byte		"Os_SchTblNextSchTblBack"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11887:
.L11868:
	.sleb128	10
	.4byte		.L11523
	.uleb128	62
	.uleb128	1
	.4byte		.L11890-.L2
	.uleb128	20
.L532:
	.sleb128	11
	.byte		"Os_SchTblEPDelay"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L533:
	.sleb128	11
	.byte		"Os_SchTblEPTaskActCount"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L534:
	.sleb128	11
	.byte		"Os_SchTblEPFirstTaskAct"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L535:
	.sleb128	11
	.byte		"Os_SchTblEPEventSetCount"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L536:
	.sleb128	11
	.byte		"Os_SchTblEPFirstEventSet"
	.byte		0
	.4byte		.L11895
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11890:
.L11899:
	.sleb128	10
	.4byte		.L11523
	.uleb128	62
	.uleb128	1
	.4byte		.L11900-.L2
	.uleb128	16
.L530:
	.sleb128	11
	.byte		"Os_SchTblEventSetTaskId"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L531:
	.sleb128	11
	.byte		"Os_SchTblEventSetMask"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11900:
.L11585:
	.sleb128	10
	.4byte		.L11902
	.uleb128	34
	.uleb128	14
	.4byte		.L11903-.L2
	.uleb128	2
.L529:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11903:
.L11437:
	.sleb128	12
	.4byte		.L11905
	.uleb128	80
	.uleb128	13
	.4byte		.L11906-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11928
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11929
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11936
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11906:
.L11915:
	.sleb128	12
	.4byte		.L11905
	.uleb128	80
	.uleb128	13
	.4byte		.L11937-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11937:
.L11910:
	.sleb128	10
	.4byte		.L11905
	.uleb128	80
	.uleb128	13
	.4byte		.L11940-.L2
	.uleb128	56
.L496:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11809
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11941
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11570
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11590
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11940:
.L11463:
	.sleb128	12
	.4byte		.L11946
	.uleb128	44
	.uleb128	14
	.4byte		.L11947-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L484:
	.sleb128	11
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L11948
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L485:
	.sleb128	11
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L486:
	.sleb128	11
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L487:
	.sleb128	11
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L488:
	.sleb128	11
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L489:
	.sleb128	11
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L490:
	.sleb128	11
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L11956
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L491:
	.sleb128	11
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L492:
	.sleb128	11
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L493:
	.sleb128	11
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L494:
	.sleb128	11
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L495:
	.sleb128	11
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11947:
.L11955:
	.sleb128	12
	.4byte		.L11946
	.uleb128	44
	.uleb128	14
	.4byte		.L11966-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L480:
	.sleb128	11
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L481:
	.sleb128	11
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L482:
	.sleb128	11
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L483:
	.sleb128	11
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11966:
.L11959:
	.sleb128	12
	.4byte		.L11946
	.uleb128	44
	.uleb128	14
	.4byte		.L11967-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L476:
	.sleb128	11
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L477:
	.sleb128	11
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L478:
	.sleb128	11
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L479:
	.sleb128	11
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11967:
.L11963:
	.sleb128	12
	.4byte		.L11946
	.uleb128	44
	.uleb128	14
	.4byte		.L11968-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L473:
	.sleb128	11
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L11969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L474:
	.sleb128	11
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L475:
	.sleb128	11
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11968:
.L11945:
	.sleb128	12
	.4byte		.L11971
	.uleb128	52
	.uleb128	1
	.4byte		.L11972-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11974
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11972:
.L11977:
	.sleb128	10
	.4byte		.L11971
	.uleb128	52
	.uleb128	1
	.4byte		.L11978-.L2
	.uleb128	12
.L445:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11978:
.L11573:
	.sleb128	12
	.4byte		.L11971
	.uleb128	52
	.uleb128	1
	.4byte		.L11979-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11980
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11993
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11998
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12009
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12012
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11979:
.L11983:
	.sleb128	10
	.4byte		.L11971
	.uleb128	52
	.uleb128	1
	.4byte		.L12014-.L2
	.uleb128	1
.L432:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12014:
.L11934:
	.sleb128	10
	.4byte		.L12015
	.uleb128	32
	.uleb128	1
	.4byte		.L12016-.L2
	.uleb128	12
.L429:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12017
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12016:
.L12019:
	.sleb128	10
	.4byte		.L12015
	.uleb128	32
	.uleb128	1
	.4byte		.L12020-.L2
	.uleb128	4
.L428:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12020:
.L11578:
	.sleb128	10
	.4byte		.L12015
	.uleb128	32
	.uleb128	1
	.4byte		.L12021-.L2
	.uleb128	144
.L423:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12022
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12024
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12021:
.L11607:
	.sleb128	10
	.4byte		.L12015
	.uleb128	32
	.uleb128	1
	.4byte		.L12026-.L2
	.uleb128	24
.L417:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12027
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12027
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12027
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12027
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12027
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12027
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12026:
.L12025:
	.sleb128	10
	.4byte		.L12015
	.uleb128	32
	.uleb128	1
	.4byte		.L12032-.L2
	.uleb128	20
.L412:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12033
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12032:
.L12023:
	.sleb128	10
	.4byte		.L12035
	.uleb128	174
	.uleb128	1
	.4byte		.L12036-.L2
	.uleb128	120
.L409:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12039
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12041
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12036:
.L12042:
	.sleb128	10
	.4byte		.L12035
	.uleb128	174
	.uleb128	1
	.4byte		.L12043-.L2
	.uleb128	8
.L406:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12044
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12043:
.L12040:
	.sleb128	10
	.4byte		.L12035
	.uleb128	174
	.uleb128	1
	.4byte		.L12047-.L2
	.uleb128	104
.L381:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12048
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12047:
.L12038:
	.sleb128	10
	.4byte		.L12035
	.uleb128	174
	.uleb128	1
	.4byte		.L12049-.L2
	.uleb128	8
.L379:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12049:
.L11768:
	.sleb128	10
	.4byte		.L12052
	.uleb128	50
	.uleb128	1
	.4byte		.L12053-.L2
	.uleb128	12
.L376:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12053:
.L11603:
	.sleb128	10
	.4byte		.L12054
	.uleb128	87
	.uleb128	7
	.4byte		.L12055-.L2
	.uleb128	8
.L364:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12056
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12055:
	.section	.debug_info,,n
.L11589:
	.sleb128	14
	.4byte		.L11541
	.uleb128	69
	.uleb128	1
	.4byte		.L12058-.L2
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
.L12058:
.L11613:
	.sleb128	14
	.4byte		.L11593
	.uleb128	612
	.uleb128	1
	.4byte		.L12059-.L2
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
.L12059:
.L11620:
	.sleb128	14
	.4byte		.L11593
	.uleb128	60
	.uleb128	1
	.4byte		.L12060-.L2
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
.L12060:
	.section	.debug_info,,n
.L11751:
	.sleb128	16
	.4byte		.L11832
	.uleb128	33
	.uleb128	14
	.4byte		.L12061-.L2
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
.L12061:
.L11886:
	.sleb128	14
	.4byte		.L11523
	.uleb128	62
	.uleb128	1
	.4byte		.L12062-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_ABSOLUTE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_RELATIVE"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OS_SYNCHRON"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12062:
.L11863:
	.sleb128	14
	.4byte		.L11523
	.uleb128	54
	.uleb128	1
	.4byte		.L12063-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_SINGLESHOT"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_REPEATING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12063:
.L11860:
	.sleb128	14
	.4byte		.L11523
	.uleb128	45
	.uleb128	1
	.4byte		.L12064-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_NONE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_IMPLICIT"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OS_EXPLICIT"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12064:
.L11942:
	.sleb128	14
	.4byte		.L11905
	.uleb128	80
	.uleb128	13
	.4byte		.L12065-.L2
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
.L12065:
.L11918:
	.sleb128	14
	.4byte		.L11905
	.uleb128	61
	.uleb128	1
	.4byte		.L12066-.L2
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
.L12066:
.L11970:
	.sleb128	16
	.4byte		.L11946
	.uleb128	44
	.uleb128	14
	.4byte		.L12067-.L2
	.byte		"Os_CounterActionOwnerType_e"
	.byte		0
	.uleb128	4
	.sleb128	15
	.byte		"OS_COUNTERACTION_OWNER_INVALID"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_COUNTERACTION_ALARM"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OS_COUNTERACTION_SCHTBL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12067:
.L11950:
	.sleb128	16
	.4byte		.L11946
	.uleb128	36
	.uleb128	14
	.4byte		.L12068-.L2
	.byte		"Os_CounterKindType_e"
	.byte		0
	.uleb128	4
	.sleb128	15
	.byte		"OS_HARDWARE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_SOFTWARE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12068:
.L11987:
	.sleb128	14
	.4byte		.L11971
	.uleb128	52
	.uleb128	1
	.4byte		.L12069-.L2
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
.L12069:
.L12034:
	.sleb128	14
	.4byte		.L12015
	.uleb128	32
	.uleb128	1
	.4byte		.L12070-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	15
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	15
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	15
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	15
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	15
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	15
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	15
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	15
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	15
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	15
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	15
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	15
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	15
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	15
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L12070:
.L12051:
	.sleb128	14
	.4byte		.L12035
	.uleb128	174
	.uleb128	1
	.4byte		.L12071-.L2
	.uleb128	4
	.sleb128	15
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	15
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	15
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	15
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	15
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	15
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	15
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	15
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	15
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	15
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	15
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	15
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	15
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	15
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	15
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	15
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	15
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	15
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	15
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	15
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	15
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	15
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	15
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	15
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	15
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	15
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	15
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	15
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	15
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L12071:
.L12046:
	.sleb128	14
	.4byte		.L12035
	.uleb128	86
	.uleb128	1
	.4byte		.L12072-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	15
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	15
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	15
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	15
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	15
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	15
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	15
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	15
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	15
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	15
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	15
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	15
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	15
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	15
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	15
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	15
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	15
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	15
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	15
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	15
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	15
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	15
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	15
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	15
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	15
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	15
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	15
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	15
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	15
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	15
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	15
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	15
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	15
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	15
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	15
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	15
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	15
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	15
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	15
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	15
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	15
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	15
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	15
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	15
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	15
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	15
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	15
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	15
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	15
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	15
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	15
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	15
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	15
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	15
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	15
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	15
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	15
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	15
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	15
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	15
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	15
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L12072:
.L11741:
	.sleb128	14
	.4byte		.L12073
	.uleb128	43
	.uleb128	1
	.4byte		.L12074-.L2
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
.L12074:
.L11810:
	.sleb128	14
	.4byte		.L12075
	.uleb128	37
	.uleb128	1
	.4byte		.L12076-.L2
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
.L12076:
.L11777:
	.sleb128	14
	.4byte		.L12077
	.uleb128	40
	.uleb128	1
	.4byte		.L12078-.L2
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
.L12078:
.L11755:
	.sleb128	14
	.4byte		.L12079
	.uleb128	47
	.uleb128	1
	.4byte		.L12080-.L2
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
.L12080:
.L11826:
	.sleb128	14
	.4byte		.L12052
	.uleb128	42
	.uleb128	13
	.4byte		.L12081-.L2
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
.L12081:
.L11725:
	.sleb128	14
	.4byte		.L12082
	.uleb128	83
	.uleb128	14
	.4byte		.L12083-.L2
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
.L12083:
	.section	.debug_info,,n
.L11409:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L11408:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L11409
.L11407:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11408
.L11413:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11412:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L11413
.L11411:
	.sleb128	18
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11412
.L11415:
	.sleb128	18
	.byte		"TickType"
	.byte		0
	.4byte		.L11412
.L11418:
	.sleb128	18
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11419
.L11436:
	.sleb128	18
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11437
	.section	.debug_info,,n
.L11435:
	.sleb128	19
	.4byte		.L11436
	.section	.debug_info,,n
.L11434:
	.sleb128	20
	.4byte		.L11435
.L11439:
	.sleb128	19
	.4byte		.L11411
.L11450:
	.sleb128	19
	.4byte		.L11415
.L11462:
	.sleb128	18
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11463
.L11461:
	.sleb128	19
	.4byte		.L11462
.L11460:
	.sleb128	20
	.4byte		.L11461
.L11459:
	.sleb128	19
	.4byte		.L11460
.L11475:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11474:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L11475
.L11473:
	.sleb128	18
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11474
.L11472:
	.sleb128	19
	.4byte		.L11473
.L11492:
	.sleb128	20
	.4byte		.L11419
.L11496:
	.sleb128	19
	.4byte		.L11437
.L11495:
	.sleb128	20
	.4byte		.L11496
.L11494:
	.sleb128	19
	.4byte		.L11495
.L11512:
	.sleb128	18
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11513
.L11511:
	.sleb128	20
	.4byte		.L11512
.L11527:
	.sleb128	18
	.byte		"Os_SchTblStatType"
	.byte		0
	.4byte		.L11528
.L11526:
	.sleb128	19
	.4byte		.L11527
.L11525:
	.sleb128	20
	.4byte		.L11526
.L11524:
	.sleb128	19
	.4byte		.L11525
.L11534:
	.sleb128	18
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11535
.L11533:
	.sleb128	19
	.4byte		.L11534
	.section	.debug_info,,n
.L11531:
	.sleb128	21
	.4byte		.L11532-.L2
	.4byte		.L11533
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11532:
.L11539:
	.sleb128	18
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11540
.L11537:
	.sleb128	21
	.4byte		.L11538-.L2
	.4byte		.L11539
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11538:
.L11545:
	.sleb128	18
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11546
.L11544:
	.sleb128	20
	.4byte		.L11545
.L11543:
	.sleb128	19
	.4byte		.L11544
.L11549:
	.sleb128	18
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11550
.L11548:
	.sleb128	20
	.4byte		.L11549
.L11547:
	.sleb128	19
	.4byte		.L11548
.L11551:
	.sleb128	19
	.4byte		.L11511
	.section	.debug_info,,n
.L11555:
	.sleb128	23
	.4byte		.L11556-.L2
	.byte		0x1
.L11557:
	.sleb128	19
	.4byte		.L11434
	.section	.debug_info,,n
	.sleb128	24
	.4byte		.L11557
	.sleb128	0
.L11556:
.L11554:
	.sleb128	20
	.4byte		.L11555
.L11553:
	.sleb128	18
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11554
.L11552:
	.sleb128	19
	.4byte		.L11553
.L11564:
	.sleb128	18
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11412
.L11563:
	.sleb128	20
	.4byte		.L11564
	.section	.debug_info,,n
.L11561:
	.sleb128	25
	.4byte		.L11562-.L2
	.4byte		.L11563
	.byte		0x1
	.sleb128	24
	.4byte		.L11434
	.sleb128	0
.L11562:
.L11560:
	.sleb128	20
	.4byte		.L11561
.L11559:
	.sleb128	18
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11560
.L11558:
	.sleb128	19
	.4byte		.L11559
.L11566:
	.sleb128	18
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11567
.L11568:
	.sleb128	18
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11569
.L11572:
	.sleb128	18
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11573
.L11571:
	.sleb128	19
	.4byte		.L11572
.L11570:
	.sleb128	20
	.4byte		.L11571
.L11575:
	.sleb128	18
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11576
.L11577:
	.sleb128	18
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11578
.L11580:
	.sleb128	18
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11581
.L11582:
	.sleb128	18
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11583
.L11584:
	.sleb128	18
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11585
.L11588:
	.sleb128	18
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11589
.L11590:
	.sleb128	18
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11412
.L11591:
	.sleb128	18
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11592
.L11595:
	.sleb128	20
	.4byte		.L11592
.L11597:
	.sleb128	18
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11412
.L11598:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L11409
.L11602:
	.sleb128	18
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11603
.L11601:
	.sleb128	19
	.4byte		.L11602
.L11600:
	.sleb128	20
	.4byte		.L11601
.L11606:
	.sleb128	18
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11607
.L11605:
	.sleb128	19
	.4byte		.L11606
.L11604:
	.sleb128	20
	.4byte		.L11605
.L11608:
	.sleb128	21
	.4byte		.L11609-.L2
	.4byte		.L11412
	.sleb128	22
	.uleb128	7
	.sleb128	0
.L11609:
.L11612:
	.sleb128	18
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11613
.L11616:
	.sleb128	18
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11412
.L11615:
	.sleb128	18
	.byte		"ProcType"
	.byte		0
	.4byte		.L11616
.L11614:
	.sleb128	18
	.byte		"ISRType"
	.byte		0
	.4byte		.L11615
.L11617:
	.sleb128	20
	.4byte		.L11418
.L11619:
	.sleb128	18
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11620
.L11623:
	.sleb128	23
	.4byte		.L11624-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11492
	.sleb128	24
	.4byte		.L11494
	.sleb128	0
.L11624:
.L11622:
	.sleb128	20
	.4byte		.L11623
.L11621:
	.sleb128	18
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11622
.L11627:
	.sleb128	18
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11628
.L11629:
	.sleb128	18
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11630
.L11631:
	.sleb128	18
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11632
.L11633:
	.sleb128	18
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11634
.L11635:
	.sleb128	18
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11636
.L11637:
	.sleb128	18
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11638
.L11639:
	.sleb128	18
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11640
.L11641:
	.sleb128	18
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11642
.L11643:
	.sleb128	18
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11644
.L11645:
	.sleb128	18
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11646
.L11647:
	.sleb128	18
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11648
.L11649:
	.sleb128	18
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11650
.L11651:
	.sleb128	18
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11652
.L11653:
	.sleb128	18
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11654
.L11655:
	.sleb128	18
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11656
.L11657:
	.sleb128	18
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11658
.L11659:
	.sleb128	18
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11660
.L11661:
	.sleb128	18
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11662
.L11663:
	.sleb128	18
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11664
.L11665:
	.sleb128	18
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11666
.L11667:
	.sleb128	18
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11668
.L11669:
	.sleb128	18
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11670
.L11671:
	.sleb128	18
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11672
.L11673:
	.sleb128	18
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11674
.L11675:
	.sleb128	18
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11676
.L11677:
	.sleb128	18
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11678
.L11679:
	.sleb128	18
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11680
.L11681:
	.sleb128	18
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11682
.L11683:
	.sleb128	18
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11684
.L11685:
	.sleb128	18
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11686
.L11687:
	.sleb128	18
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11688
.L11689:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11690
.L11691:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11692
.L11693:
	.sleb128	18
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11694
.L11695:
	.sleb128	18
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11696
.L11697:
	.sleb128	18
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11698
.L11699:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11700
.L11701:
	.sleb128	18
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11702
.L11703:
	.sleb128	18
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11704
.L11705:
	.sleb128	18
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11706
.L11707:
	.sleb128	18
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11708
.L11709:
	.sleb128	18
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11710
.L11711:
	.sleb128	18
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11712
.L11713:
	.sleb128	18
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11714
.L11715:
	.sleb128	18
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11716
.L11717:
	.sleb128	18
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11718
.L11719:
	.sleb128	18
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11720
.L11721:
	.sleb128	18
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11722
.L11724:
	.sleb128	18
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11725
.L11729:
	.sleb128	18
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11730
.L11728:
	.sleb128	19
	.4byte		.L11729
.L11727:
	.sleb128	20
	.4byte		.L11728
	.section	.debug_info,,n
.L11736:
	.sleb128	26
	.byte		"void"
	.byte		0
	.byte		0x0
.L11735:
	.sleb128	20
	.4byte		.L11736
.L11733:
	.sleb128	21
	.4byte		.L11734-.L2
	.4byte		.L11735
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11734:
.L11732:
	.sleb128	18
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11733
.L11731:
	.sleb128	20
	.4byte		.L11732
.L11738:
	.sleb128	18
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11474
.L11740:
	.sleb128	18
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11741
.L11739:
	.sleb128	20
	.4byte		.L11740
.L11745:
	.sleb128	18
	.byte		"TaskType"
	.byte		0
	.4byte		.L11615
.L11746:
	.sleb128	20
	.4byte		.L11408
.L11748:
	.sleb128	18
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11412
.L11749:
	.sleb128	18
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11735
.L11750:
	.sleb128	18
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11751
.L11753:
	.sleb128	18
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11408
.L11754:
	.sleb128	18
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11755
.L11758:
	.sleb128	18
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11616
.L11763:
	.sleb128	20
	.4byte		.L11415
.L11762:
	.sleb128	18
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11763
.L11767:
	.sleb128	18
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11768
.L11766:
	.sleb128	20
	.4byte		.L11767
.L11765:
	.sleb128	18
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11766
.L11776:
	.sleb128	18
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11777
.L11775:
	.sleb128	20
	.4byte		.L11776
.L11774:
	.sleb128	18
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11775
.L11782:
	.sleb128	18
	.byte		"CounterType"
	.byte		0
	.4byte		.L11412
.L11786:
	.sleb128	23
	.4byte		.L11787-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11492
	.sleb128	0
.L11787:
.L11785:
	.sleb128	20
	.4byte		.L11786
.L11784:
	.sleb128	18
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11785
.L11791:
	.sleb128	18
	.byte		"RestartType"
	.byte		0
	.4byte		.L11408
.L11796:
	.sleb128	18
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11408
.L11795:
	.sleb128	20
	.4byte		.L11796
.L11794:
	.sleb128	18
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11795
.L11800:
	.sleb128	17
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11799:
	.sleb128	18
	.byte		"uint64"
	.byte		0
	.4byte		.L11800
.L11798:
	.sleb128	18
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11799
.L11803:
	.sleb128	20
	.4byte		.L11798
.L11802:
	.sleb128	18
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11803
.L11809:
	.sleb128	18
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11810
.L11808:
	.sleb128	20
	.4byte		.L11809
.L11807:
	.sleb128	18
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11808
.L11813:
	.sleb128	20
	.4byte		.L11745
.L11812:
	.sleb128	18
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11813
.L11817:
	.sleb128	18
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11412
.L11820:
	.sleb128	18
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11412
.L11825:
	.sleb128	18
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11826
.L11829:
	.sleb128	20
	.4byte		.L11407
.L11836:
	.sleb128	18
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11837
.L11835:
	.sleb128	20
	.4byte		.L11836
.L11834:
	.sleb128	19
	.4byte		.L11835
.L11838:
	.sleb128	18
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11474
.L11839:
	.sleb128	19
	.4byte		.L11735
.L11840:
	.sleb128	19
	.4byte		.L11474
.L11842:
	.sleb128	18
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11408
.L11841:
	.sleb128	19
	.4byte		.L11842
.L11846:
	.sleb128	18
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11847
.L11845:
	.sleb128	19
	.4byte		.L11846
.L11844:
	.sleb128	20
	.4byte		.L11845
.L11843:
	.sleb128	19
	.4byte		.L11844
.L11850:
	.sleb128	18
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11408
.L11849:
	.sleb128	20
	.4byte		.L11850
.L11848:
	.sleb128	19
	.4byte		.L11849
.L11853:
	.sleb128	18
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11474
.L11852:
	.sleb128	19
	.4byte		.L11853
.L11855:
	.sleb128	18
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11474
.L11854:
	.sleb128	19
	.4byte		.L11855
.L11859:
	.sleb128	18
	.byte		"Os_SchTblSyncStrategyType"
	.byte		0
	.4byte		.L11860
.L11858:
	.sleb128	19
	.4byte		.L11859
.L11862:
	.sleb128	18
	.byte		"Os_SchTblRepeatingType"
	.byte		0
	.4byte		.L11863
.L11861:
	.sleb128	19
	.4byte		.L11862
.L11867:
	.sleb128	18
	.byte		"Os_SchTblEPStatType"
	.byte		0
	.4byte		.L11868
.L11866:
	.sleb128	19
	.4byte		.L11867
.L11865:
	.sleb128	20
	.4byte		.L11866
.L11864:
	.sleb128	19
	.4byte		.L11865
.L11871:
	.sleb128	18
	.byte		"Os_SchTblDynType"
	.byte		0
	.4byte		.L11872
.L11870:
	.sleb128	20
	.4byte		.L11871
.L11869:
	.sleb128	19
	.4byte		.L11870
.L11876:
	.sleb128	18
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11412
.L11875:
	.sleb128	19
	.4byte		.L11876
.L11874:
	.sleb128	20
	.4byte		.L11875
.L11873:
	.sleb128	19
	.4byte		.L11874
.L11877:
	.sleb128	19
	.4byte		.L11570
.L11881:
	.sleb128	18
	.byte		"Os_SchTblAutoStartStatType"
	.byte		0
	.4byte		.L11882
.L11880:
	.sleb128	19
	.4byte		.L11881
.L11879:
	.sleb128	20
	.4byte		.L11880
.L11878:
	.sleb128	19
	.4byte		.L11879
.L11885:
	.sleb128	18
	.byte		"Os_SchTblAutoStartKindType"
	.byte		0
	.4byte		.L11886
.L11884:
	.sleb128	19
	.4byte		.L11885
.L11889:
	.sleb128	19
	.4byte		.L11528
.L11888:
	.sleb128	20
	.4byte		.L11889
.L11891:
	.sleb128	19
	.4byte		.L11412
.L11894:
	.sleb128	19
	.4byte		.L11745
.L11893:
	.sleb128	20
	.4byte		.L11894
.L11892:
	.sleb128	19
	.4byte		.L11893
.L11898:
	.sleb128	18
	.byte		"Os_SchTblActionEventSetStatType"
	.byte		0
	.4byte		.L11899
.L11897:
	.sleb128	19
	.4byte		.L11898
.L11896:
	.sleb128	20
	.4byte		.L11897
.L11895:
	.sleb128	19
	.4byte		.L11896
.L11901:
	.sleb128	19
	.4byte		.L11798
.L11904:
	.sleb128	18
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11474
.L11909:
	.sleb128	18
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11910
.L11908:
	.sleb128	20
	.4byte		.L11909
.L11907:
	.sleb128	19
	.4byte		.L11908
.L11914:
	.sleb128	18
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11915
.L11913:
	.sleb128	19
	.4byte		.L11914
.L11912:
	.sleb128	20
	.4byte		.L11913
.L11911:
	.sleb128	19
	.4byte		.L11912
.L11917:
	.sleb128	18
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11918
.L11916:
	.sleb128	19
	.4byte		.L11917
.L11919:
	.sleb128	19
	.4byte		.L11590
.L11921:
	.sleb128	18
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11412
.L11920:
	.sleb128	19
	.4byte		.L11921
.L11922:
	.sleb128	19
	.4byte		.L11563
.L11926:
	.sleb128	23
	.4byte		.L11927-.L2
	.byte		0x1
	.sleb128	0
.L11927:
.L11925:
	.sleb128	20
	.4byte		.L11926
.L11924:
	.sleb128	18
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11925
.L11923:
	.sleb128	19
	.4byte		.L11924
.L11928:
	.sleb128	19
	.4byte		.L11817
.L11933:
	.sleb128	18
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11934
.L11932:
	.sleb128	19
	.4byte		.L11933
.L11931:
	.sleb128	20
	.4byte		.L11932
.L11930:
	.sleb128	18
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11931
.L11929:
	.sleb128	20
	.4byte		.L11930
.L11935:
	.sleb128	19
	.4byte		.L11595
.L11936:
	.sleb128	19
	.4byte		.L11600
.L11939:
	.sleb128	18
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11412
.L11938:
	.sleb128	19
	.4byte		.L11939
.L11941:
	.sleb128	18
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11942
.L11944:
	.sleb128	19
	.4byte		.L11945
.L11943:
	.sleb128	20
	.4byte		.L11944
.L11949:
	.sleb128	18
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L11950
.L11948:
	.sleb128	19
	.4byte		.L11949
.L11951:
	.sleb128	19
	.4byte		.L11616
.L11954:
	.sleb128	18
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L11955
.L11953:
	.sleb128	20
	.4byte		.L11954
.L11952:
	.sleb128	19
	.4byte		.L11953
.L11958:
	.sleb128	18
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L11959
.L11957:
	.sleb128	20
	.4byte		.L11958
.L11956:
	.sleb128	19
	.4byte		.L11957
.L11962:
	.sleb128	18
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L11963
.L11961:
	.sleb128	20
	.4byte		.L11962
.L11960:
	.sleb128	19
	.4byte		.L11961
.L11965:
	.sleb128	18
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11412
.L11964:
	.sleb128	19
	.4byte		.L11965
.L11969:
	.sleb128	18
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L11970
.L11973:
	.sleb128	19
	.4byte		.L11738
.L11976:
	.sleb128	18
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11977
.L11975:
	.sleb128	20
	.4byte		.L11976
.L11974:
	.sleb128	19
	.4byte		.L11975
.L11982:
	.sleb128	18
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11983
.L11981:
	.sleb128	20
	.4byte		.L11982
.L11980:
	.sleb128	19
	.4byte		.L11981
.L11984:
	.sleb128	19
	.4byte		.L11753
.L11986:
	.sleb128	18
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11987
.L11985:
	.sleb128	19
	.4byte		.L11986
.L11991:
	.sleb128	23
	.4byte		.L11992-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11407
	.sleb128	0
.L11992:
.L11990:
	.sleb128	20
	.4byte		.L11991
.L11989:
	.sleb128	18
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11990
.L11988:
	.sleb128	19
	.4byte		.L11989
.L11996:
	.sleb128	23
	.4byte		.L11997-.L2
	.byte		0x1
	.sleb128	0
.L11997:
.L11995:
	.sleb128	20
	.4byte		.L11996
.L11994:
	.sleb128	18
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11995
.L11993:
	.sleb128	19
	.4byte		.L11994
.L12001:
	.sleb128	23
	.4byte		.L12002-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11407
	.sleb128	0
.L12002:
.L12000:
	.sleb128	20
	.4byte		.L12001
.L11999:
	.sleb128	18
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12000
.L11998:
	.sleb128	19
	.4byte		.L11999
.L12005:
	.sleb128	19
	.4byte		.L11615
.L12004:
	.sleb128	20
	.4byte		.L12005
.L12003:
	.sleb128	19
	.4byte		.L12004
.L12008:
	.sleb128	19
	.4byte		.L11782
.L12007:
	.sleb128	20
	.4byte		.L12008
.L12006:
	.sleb128	19
	.4byte		.L12007
.L12011:
	.sleb128	19
	.4byte		.L11758
.L12010:
	.sleb128	20
	.4byte		.L12011
.L12009:
	.sleb128	19
	.4byte		.L12010
.L12013:
	.sleb128	20
	.4byte		.L11439
.L12012:
	.sleb128	19
	.4byte		.L12013
.L12018:
	.sleb128	18
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12019
.L12017:
	.sleb128	20
	.4byte		.L12018
.L12022:
	.sleb128	18
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12023
.L12024:
	.sleb128	18
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12025
.L12030:
	.sleb128	23
	.4byte		.L12031-.L2
	.byte		0x1
	.sleb128	0
.L12031:
.L12029:
	.sleb128	20
	.4byte		.L12030
.L12028:
	.sleb128	18
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12029
.L12027:
	.sleb128	19
	.4byte		.L12028
.L12033:
	.sleb128	18
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12034
.L12037:
	.sleb128	18
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12038
.L12039:
	.sleb128	18
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12040
.L12041:
	.sleb128	18
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12042
.L12044:
	.sleb128	18
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11408
.L12045:
	.sleb128	18
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12046
.L12048:
	.sleb128	18
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11739
.L12050:
	.sleb128	18
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12051
.L12057:
	.sleb128	18
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11474
.L12056:
	.sleb128	19
	.4byte		.L12057
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11400:
	.sleb128	0
.L11396:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11426:
	.sleb128	0
.L11422:

	.section	.debug_loc,,n
	.align	0
.L11414:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11416:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),0
	.d2locend
.L11438:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locend
.L11440:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),4
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locend
.L11442:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo10),4
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),4
	.d2locend
.L11448:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),29
	.d2locend
.L11449:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo21),4
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),31
	.d2locend
.L11451:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo24),5
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo25),30
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),30
	.d2locend
.L11453:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo26),27
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),27
	.d2locend
.L11464:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo25),29
	.d2locend
.L11466:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),4
	.d2locend
.L11476:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locend
.L11482:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locend
.L11483:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locend
.L11484:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),5
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),30
	.d2locend
.L11486:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo44),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),4
	.d2locend
.L11493:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),31
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),31
	.d2locend
.L11497:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo58),4
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo59),30
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),30
	.d2locend
.L11499:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo54),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo59),29
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo55),0
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo57),29
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locend
.L11501:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo59),28
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo77),28
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),28
	.d2locend
.L11503:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo59),27
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),27
	.d2locend
.L11505:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo57),26
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),26
	.d2locend
.L11514:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo55),4
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo75),4
	.d2locend
.L11520:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),31
	.d2locend
.L11521:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo88),4
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_MC_StartScheduleTableAbs"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_StartScheduleTableAbs"
	.wrcm.end
	.wrcm.nelem "Os_API_StartScheduleTableAbs"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_Dispatcher_Alloc_Core","Os_ShutdownAllCores","Os_StartScheduleTableAbs","Os_StartScheduleTableAbs_Err_Stat"
	.wrcm.end
	.wrcm.nelem "Os_StartScheduleTableAbs_Err_Stat"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_SchTbl_Err_Stat"
	.wrcm.end
	.wrcm.nelem "Os_StartScheduleTableAbs"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_CounterStopAndGetValue","Os_SchTblStartRel","Os_StartScheduleTableAbs_Err_Dyn"
	.wrcm.end
	.wrcm.nelem "Os_StartScheduleTableAbs_Err_Dyn"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_SchTbl_Err_Dyn"
	.wrcm.end
	.wrcm.nelem "StartScheduleTableAbs"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_StartScheduleTableAbs.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_StartScheduleTableAbs.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_StartScheduleTableAbs.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_StartScheduleTableAbs.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_StartScheduleTableAbs.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_StartScheduleTableAbs.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\expiry_element\schedule_table\Os_StartScheduleTableAbs.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
