#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_CheckObjectOwnership.c"
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
.L11430:
	.section	.Os_TEXT,,c
#$$ld
.L11426:
	.0byte		.L11424
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11433:

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
.L11434:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (ApplicationType, OS_CODE) CheckObjectOwnership ( VAR (ObjectTypeType, AUTOMATIC)  objectType,
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11451:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11447:
	.0byte		.L11445
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectOwnership.c"
        .d2line         53,33
#$$ld
.L11454:

#$$bf	CheckObjectOwnership,interprocedural,rasave,nostackparams
	.globl		CheckObjectOwnership
	.d2_cfa_start __cie
CheckObjectOwnership:
.Llo3:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# objectType=r3 objectType=r3
	mr		r4,r4		# object=r4 object=r4
	.d2prologue_end
#                                                        VAR (Os_ObjectType,  AUTOMATIC)  object )
# {
#     VAR(Os_APICallType,AUTOMATIC) OsCheckObjectOwnershipCall;
# 
#     OsCheckObjectOwnershipCall.Os_API_Data.Os_ApiCheckObjectOwnership.Object     = object;
	.d2line		58
	stw		r4,32(r1)		# object=r4
#     OsCheckObjectOwnershipCall.Os_API_Data.Os_ApiCheckObjectOwnership.ObjectType = objectType;
	.d2line		59
	stw		r3,28(r1)		# objectType=r3
# 
#     /* Taking address of function on purpose */
#     OS_LIGHT_SYSCALL ( OsCheckObjectOwnershipCall, CheckObjectOwnership );
	.d2line		62
	diab.addi		r3,r1,8		# objectType=r3
.Llo4:
	lis		r4,Os_API_CheckObjectOwnership@ha		# object=r4
	e_add16i		r4,r4,Os_API_CheckObjectOwnership@l		# object=r4 object=r4
.Llo5:
	bl		OS_SYS_CALL
# 
#     return OsCheckObjectOwnershipCall.Os_API_Data.Os_ApiCheckObjectOwnership.AppID;
	.d2line		64
	lbz		r3,24(r1)		# objectType=r3
# }
	.d2line		65
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
.L11455:
	.type		CheckObjectOwnership,@function
	.size		CheckObjectOwnership,.-CheckObjectOwnership
# Number of nodes = 28

# Allocations for CheckObjectOwnership
#	?a4		objectType
#	?a5		object
#	SP,8		OsCheckObjectOwnershipCall
# LOCAL_INLINE FUNC(StatusType,OS_CODE) Os_CheckObjectOwnerShip(CONST (ObjectTypeType, AUTOMATIC)  objectType,
	.section	.Os_TEXT,,c
	.align		1
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectOwnership.c"
        .d2line         145,39
#$$ld
.L11474:

#$$bf	Os_CheckObjectOwnerShip,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CheckObjectOwnerShip:
.Llo6:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# objectType=r3 objectType=r3
	mr		r4,r4		# object=r4 object=r4
.Llo8:
	mr		r30,r5		# applID=r30 applID=r5
	.d2prologue_end
#                                                               CONST (Os_ObjectType,  AUTOMATIC)  object,
#                                                               CONSTP2VAR(ApplicationType,AUTOMATIC,AUTOMATIC) applID)
# {
#     VAR   (StatusType, AUTOMATIC) retVal;
#     CONST (CoreIdType, AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		150
	mfspr		r0,286
.Llo36:
	mr		r0,r0		# coreId=r0 coreId=r0
# 
#     switch(objectType)
	.d2line		152
.Llo37:
	mr		r6,r3		# objectType=r6 objectType=r3
	se_cmpi		r6,3
	bc		1,1,.L11490	# gt
.Llo7:
	bc		1,2,.L11380	# eq
.Llo17:
	se_cmpi		r6,0
	bc		1,2,.L11364	# eq
	se_cmpi		r6,1
	bc		1,2,.L11368	# eq
	se_cmpi		r6,2
	bc		1,2,.L11371	# eq
	b		.L11399
.L11490:
	se_cmpi		r6,4
	bc		1,2,.L11381	# eq
	se_cmpi		r6,5
	bc		1,2,.L11390	# eq
	b		.L11399
.L11364:
	.section	.Os_TEXT,,c
.L11491:
#     {
#         case OBJECT_TASK:
#         {
#             VAR(TaskType, AUTOMATIC) task = (TaskType)object;
	.d2line		156
	mr		r31,r4		# task=r31 task=r4
# 
#             if(Os_false == Os_Task_CheckId(task))
	.d2line		158
.Llo9:
	mr		r3,r31		# object=r3 object=r31
	bl		Os_Task_CheckId
.Llo38:
	se_cmpi		r3,0
	bc		0,2,.L11365	# ne
#             {
#                 retVal =  E_OS_VALUE;
	.d2line		160
.Llo39:
	diab.li		r7,8		# retVal=r7
.Llo27:
	b		.L11367
.L11365:
#             }
#             /* When applications are enabled, Os_Proc_Stat[task].Os_ProcOwnerApp is never NULL_PTR */
#             else
#             {
#                 *applID = Os_Proc_Stat[task].Os_ProcOwnerApp->Os_AppId; /* [OS273] */
	.d2line		165
.Llo10:
	lis		r3,(Os_Proc_Stat+48)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+48)@l
.Llo11:
	e_mulli		r31,r31,80		# task=r31 task=r31
.Llo12:
	lwzx		r3,r3,r31
	lbz		r0,4(r3)
	stb		r0,0(r30)		# applID=r30
#                 retVal =  E_OK;
	.d2line		166
	diab.li		r7,0		# retVal=r7
	.section	.Os_TEXT,,c
.L11492:
.Llo18:
	b		.L11367
.L11368:
	.section	.Os_TEXT,,c
.L11499:
#             }
#         }break;
# 
#         case OBJECT_ISR:
#         {
#             VAR(ISRType, AUTOMATIC) isrid = (ISRType)object;
	.d2line		172
.Llo19:
	mr		r31,r4		# isrid=r31 isrid=r4
# 
#             if(Os_false == Os_ISR_CheckId(isrid))
	.d2line		174
.Llo13:
	mr		r3,r31		# object=r3 object=r31
	bl		Os_ISR_CheckId
.Llo40:
	se_cmpi		r3,0
	bc		0,2,.L11369	# ne
#             {
#                 retVal =  E_OS_VALUE;
	.d2line		176
.Llo44:
	diab.li		r7,8		# retVal=r7
.Llo28:
	b		.L11367
.L11369:
#             }
#             else
#             {
#                 *applID = Os_Proc_Stat[isrid].Os_ProcOwnerApp->Os_AppId; /* [OS273] */
	.d2line		180
.Llo14:
	lis		r3,(Os_Proc_Stat+48)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+48)@l
.Llo15:
	e_mulli		r31,r31,80		# isrid=r31 isrid=r31
.Llo16:
	lwzx		r3,r3,r31
	lbz		r0,4(r3)
	stb		r0,0(r30)		# applID=r30
#                 retVal =  E_OK;
	.d2line		181
	diab.li		r7,0		# retVal=r7
	.section	.Os_TEXT,,c
.L11500:
.Llo20:
	b		.L11367
.L11371:
	.section	.Os_TEXT,,c
.L11506:
#             }
# 
#         }break;
# 
#         case OBJECT_ALARM:
#         {
#             VAR(AlarmType, AUTOMATIC) alarmId = (AlarmType) object;
	.d2line		188
.Llo21:
	mr		r31,r4		# alarmId=r31 alarmId=r4
#             VAR(ApplicationType, AUTOMATIC) appIter;
# 
#             retVal = E_OS_ID;
	.d2line		191
	diab.li		r7,3		# retVal=r7
# 
#             for( appIter  = (ApplicationType) 0U;
	.d2line		193
.Llo29:
	diab.li		r3,0		# appIter=r3
.L11372:
.Llo41:
	rlwinm		r0,r3,0,24,31		# appIter=r3
.Llo45:
	lis		r4,(Os_ApplicationRange+12)@ha		# alarmIter=r4
.Llo55:
	lwz		r4,(Os_ApplicationRange+12)@l(r4)		# alarmIter=r4 alarmIter=r4
	rlwinm		r4,r4,0,24,31		# alarmIter=r4 alarmIter=r4
	se_cmp		r0,r4		# alarmIter=r4
	bc		1,1,.L11367	# gt
	.section	.Os_TEXT,,c
.L11515:
#                  appIter <= (ApplicationType) Os_ApplicationRange[(uint32)OS_CORE_NO - 1U].Os_ObjEndId;
#                  appIter++ )
#             {
#                 CONSTP2CONST(AlarmType, AUTOMATIC,OS_CONST) alarmsOfApp = Os_Applications_Stat[appIter].Os_AppAlarmIDs;
	.d2line		197
.Llo56:
	rlwinm		r0,r3,0,24,31		# appIter=r3
	lis		r4,(Os_Applications_Stat+36)@ha		# alarmIter=r4
.Llo57:
	e_add16i		r4,r4,(Os_Applications_Stat+36)@l		# alarmIter=r4 alarmIter=r4
	rlwinm		r5,r0,6,0,25
	se_slwi		r0,4
	subf		r0,r0,r5
	lwzx		r0,r4,r0		# alarmIter=r4
	.d2line		199
.Llo75:
	mr.		r6,r0		# alarmsOfApp=?a16 alarmsOfApp=?a29
# 
#                 if(alarmsOfApp != NULL_PTR)
.Llo76:
	bc		1,2,.L11375	# eq
	.section	.Os_TEXT,,c
.L11524:
#                 {
#                     VAR(AlarmType, AUTOMATIC) alarmIter;
# 
#                     for(alarmIter = 0; alarmsOfApp[alarmIter] != OS_INVALID_ALARM; alarmIter++)
	.d2line		203
.Llo58:
	diab.li		r4,0		# alarmIter=r4
.L11376:
.Llo59:
	rlwinm		r5,r4,2,0,29		# alarmIter=r4
	lwzux		r0,r5,r6
	cmpi		0,0,r0,-1
	bc		1,2,.L11375	# eq
#                     {
#                         if(alarmsOfApp[alarmIter] == alarmId)
	.d2line		205
	rlwinm		r5,r4,2,0,29		# alarmIter=r4
	lwzux		r0,r5,r6
	se_cmpl		r0,r31		# alarmId=r31
	bc		0,2,.L11379	# ne
#                         {
#                             retVal = E_OK;
	.d2line		207
	diab.li		r0,0		# retVal=r0
#                             *applID = appIter; /* [OS273] */
	.d2line		208
	stb		r3,0(r30)		# applID=r30 appIter=r3
#                             return retVal;
	.d2line		209
	diab.li		r3,0		# appIter=r3
.Llo49:
	b		.L11363
.L11379:
#                         }
#                     }
	.d2line		211
.Llo50:
	diab.addi		r5,r4,1		# alarmIter=r4
	se_addi		r4,1		# alarmIter=r4 alarmIter=r4
	b		.L11376
	.section	.Os_TEXT,,c
.L11525:
.L11375:
	.section	.Os_TEXT,,c
.L11516:
#                 }
#             }
	.d2line		213
.Llo60:
	diab.addi		r0,r3,1		# appIter=r3
	se_addi		r3,1		# appIter=r3 appIter=r3
	b		.L11372
	.section	.Os_TEXT,,c
.L11507:
.L11380:
#         }break;
# 
#         case OBJECT_RESOURCE:
#         {
#             /*
#              *  OsResources are not assigned to application in AR4.0.3
#              */
#             retVal = E_OS_ACCESS;
	.d2line		221
.Llo30:
	diab.li		r7,1		# retVal=r7
.Llo31:
	b		.L11367
.L11381:
	.section	.Os_TEXT,,c
.L11530:
#         }break;
# 
#         case OBJECT_COUNTER:
#         {
#             VAR(CounterType, AUTOMATIC) counterId = (CounterType)object;
	.d2line		226
.Llo32:
	mr		r31,r4		# counterId=r31 counterId=r4
#             VAR(ApplicationType, AUTOMATIC) appIter;
# 
#             retVal = E_OS_ID;
	.d2line		229
	diab.li		r7,3		# retVal=r7
# 
#             for( appIter  = (ApplicationType) 0U;
	.d2line		231
.Llo33:
	diab.li		r3,0		# appIter=r3
.L11382:
.Llo42:
	rlwinm		r0,r3,0,24,31		# counterOfApp=r0 appIter=r3
.Llo46:
	lis		r4,(Os_ApplicationRange+12)@ha		# counterIter=r4
.Llo64:
	lwz		r4,(Os_ApplicationRange+12)@l(r4)		# counterIter=r4 counterIter=r4
	rlwinm		r4,r4,0,24,31		# counterIter=r4 counterIter=r4
	se_cmp		r0,r4		# counterOfApp=r0 counterIter=r4
	bc		1,1,.L11367	# gt
	.section	.Os_TEXT,,c
.L11539:
#                  appIter <= (ApplicationType)Os_ApplicationRange[(uint32)OS_CORE_NO - 1U].Os_ObjEndId;
#                  appIter++ )
#             {
#                 CONSTP2CONST(CounterType, AUTOMATIC, OS_CONST) counterOfApp =
	.d2line		235
.Llo61:
	rlwinm		r0,r3,0,24,31		# counterOfApp=r0 appIter=r3
.Llo62:
	lis		r4,(Os_Applications_Stat+32)@ha		# counterIter=r4
.Llo65:
	e_add16i		r4,r4,(Os_Applications_Stat+32)@l		# counterIter=r4 counterIter=r4
	rlwinm		r5,r0,6,0,25		# counterOfApp=r0
	se_slwi		r0,4		# counterOfApp=r0 counterOfApp=r0
	subf		r0,r0,r5		# counterOfApp=r0 counterOfApp=r0
	lwzx		r0,r4,r0		# counterOfApp=r0 counterIter=r4
	.d2line		238
	mr.		r0,r0		# counterOfApp=?a20 counterOfApp=?a29
#                                                                     Os_Applications_Stat[appIter].Os_AppCounterIDs;
# 
#                 if(counterOfApp != NULL_PTR)
.Llo63:
	bc		1,2,.L11385	# eq
	.section	.Os_TEXT,,c
.L11548:
#                 {
#                     VAR(CounterType, AUTOMATIC) counterIter;
# 
#                     for(counterIter = 0; counterOfApp[counterIter] != OS_INVALID_COUNTER;counterIter++)
	.d2line		242
.Llo66:
	diab.li		r4,0		# counterIter=r4
.L11386:
.Llo67:
	rlwinm		r5,r4,2,0,29		# counterIter=r4
	lwzux		r6,r5,r0
	cmpi		0,0,r6,-1
	bc		1,2,.L11385	# eq
#                     {
#                         if(counterOfApp[counterIter] == counterId)
	.d2line		244
	rlwinm		r5,r4,2,0,29		# counterIter=r4
	lwzux		r6,r5,r0
	se_cmpl		r6,r31		# counterId=r31
	bc		0,2,.L11389	# ne
#                         {
#                             retVal = E_OK;
	.d2line		246
	diab.li		r0,0		# retVal=r0
#                             *applID = appIter; /* [OS273] */
	.d2line		247
	stb		r3,0(r30)		# applID=r30 appIter=r3
#                             return retVal;
	.d2line		248
	diab.li		r3,0		# appIter=r3
.Llo51:
	b		.L11363
.L11389:
#                         }
#                     }
	.d2line		250
.Llo52:
	diab.addi		r5,r4,1		# counterIter=r4
	se_addi		r4,1		# counterIter=r4 counterIter=r4
	b		.L11386
	.section	.Os_TEXT,,c
.L11549:
.L11385:
	.section	.Os_TEXT,,c
.L11540:
#                 }
#             }
	.d2line		252
.Llo68:
	diab.addi		r0,r3,1		# counterOfApp=r0 appIter=r3
	se_addi		r3,1		# appIter=r3 appIter=r3
	b		.L11382
	.section	.Os_TEXT,,c
.L11531:
.L11390:
	.section	.Os_TEXT,,c
.L11554:
#         }break;
# 
#         case OBJECT_SCHEDULETABLE:
#         {
#             VAR(ScheduleTableType, AUTOMATIC) schTblId = (ScheduleTableType)object;
	.d2line		257
.Llo34:
	mr		r31,r4		# schTblId=r31 schTblId=r4
#             VAR(ApplicationType, AUTOMATIC) appIter;
# 
#             retVal = E_OS_ID;
	.d2line		260
.Llo47:
	diab.li		r7,3		# retVal=r7
# 
#             for( appIter  = (ApplicationType) 0U;
	.d2line		262
.Llo35:
	diab.li		r3,0		# appIter=r3
.L11391:
.Llo43:
	rlwinm		r0,r3,0,24,31		# appIter=r3
.Llo48:
	lis		r4,(Os_ApplicationRange+12)@ha		# schTblIter=r4
.Llo69:
	lwz		r4,(Os_ApplicationRange+12)@l(r4)		# schTblIter=r4 schTblIter=r4
	rlwinm		r4,r4,0,24,31		# schTblIter=r4 schTblIter=r4
	se_cmp		r0,r4		# schTblIter=r4
	bc		1,1,.L11367	# gt
	.section	.Os_TEXT,,c
.L11563:
#                  appIter <= (ApplicationType)Os_ApplicationRange[(uint32)OS_CORE_NO - 1U].Os_ObjEndId;
#                  appIter++ )
#             {
#                 CONSTP2CONST(ScheduleTableType, AUTOMATIC, OS_CONST) schTblOfApp =
	.d2line		266
.Llo70:
	rlwinm		r0,r3,0,24,31		# appIter=r3
	lis		r4,(Os_Applications_Stat+40)@ha		# schTblIter=r4
.Llo71:
	e_add16i		r4,r4,(Os_Applications_Stat+40)@l		# schTblIter=r4 schTblIter=r4
	rlwinm		r5,r0,6,0,25
	se_slwi		r0,4
	subf		r0,r0,r5
	lwzx		r0,r4,r0		# schTblIter=r4
	.d2line		269
.Llo77:
	mr.		r6,r0		# schTblOfApp=?a24 schTblOfApp=?a29
#                                                                     Os_Applications_Stat[appIter].Os_AppSchTblIDs;
# 
#                 if(schTblOfApp != NULL_PTR)
.Llo78:
	bc		1,2,.L11394	# eq
	.section	.Os_TEXT,,c
.L11572:
#                 {
#                     VAR(ScheduleTableType, AUTOMATIC) schTblIter;
# 
#                     for(schTblIter = (ScheduleTableType)0; schTblOfApp[schTblIter] != OS_INVALID_SCHTBL; schTblIter++)
	.d2line		273
.Llo72:
	diab.li		r4,0		# schTblIter=r4
.L11395:
.Llo73:
	rlwinm		r5,r4,2,0,29		# schTblIter=r4
	lwzux		r0,r5,r6
	cmpi		0,0,r0,-1
	bc		1,2,.L11394	# eq
#                     {
#                         if(schTblOfApp[schTblIter] == schTblId)
	.d2line		275
	rlwinm		r5,r4,2,0,29		# schTblIter=r4
	lwzux		r0,r5,r6
	se_cmpl		r0,r31		# schTblId=r31
	bc		0,2,.L11398	# ne
#                         {
#                             retVal = E_OK;
	.d2line		277
	diab.li		r0,0		# retVal=r0
#                             *applID = appIter; /* [OS273] */
	.d2line		278
	stb		r3,0(r30)		# applID=r30 appIter=r3
#                             return retVal;
	.d2line		279
	diab.li		r3,0		# appIter=r3
.Llo53:
	b		.L11363
.L11398:
#                         }
#                     }
	.d2line		281
.Llo54:
	diab.addi		r5,r4,1		# schTblIter=r4
	se_addi		r4,1		# schTblIter=r4 schTblIter=r4
	b		.L11395
	.section	.Os_TEXT,,c
.L11573:
.L11394:
	.section	.Os_TEXT,,c
.L11564:
#                 }
#             }
	.d2line		283
.Llo74:
	diab.addi		r0,r3,1		# appIter=r3
	se_addi		r3,1		# appIter=r3 appIter=r3
	b		.L11391
	.section	.Os_TEXT,,c
.L11555:
.L11399:
#         }break;
# 
#         default:
#         {
#             retVal = E_OS_VALUE;
	.d2line		288
.Llo22:
	diab.li		r7,8		# retVal=r7
.L11367:
#         }break;
#     }
#     return retVal;
	.d2line		291
.Llo23:
	rlwinm		r3,r7,0,24,31		# appIter=r3 retVal=r7
.L11363:
# }
	.d2line		292
	.d2epilogue_begin
.Llo24:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo25:
	lwz		r0,36(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo26:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11475:
	.type		Os_CheckObjectOwnerShip,@function
	.size		Os_CheckObjectOwnerShip,.-Os_CheckObjectOwnerShip
# Number of nodes = 289

# Allocations for Os_CheckObjectOwnerShip
#	?a4		objectType
#	?a5		object
#	?a6		applID
#	?a7		$$2356
#	?a8		$$2355
#	?a9		$$2354
#	?a10		retVal
#	?a11		coreId
#	?a12		task
#	?a13		isrid
#	?a14		alarmId
#	?a15		appIter
#	?a16		alarmsOfApp
#	?a17		alarmIter
#	?a18		counterId
#	?a19		appIter
#	?a20		counterOfApp
#	?a21		counterIter
#	?a22		schTblId
#	?a23		appIter
#	?a24		schTblOfApp
#	?a25		schTblIter
# OS_APILIGHT(CheckObjectOwnership)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         82,1
#$$ld
.L11580:

#$$bf	Os_API_CheckObjectOwnership,interprocedural,rasave,nostackparams
	.globl		Os_API_CheckObjectOwnership
	.d2_cfa_start __cie
Os_API_CheckObjectOwnership:
.Llo79:
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
#     VAR   (ApplicationType, AUTOMATIC) applID = INVALID_OSAPPLICATION; /* [OS274-01] [OS274-02] */
	.d2line		84
.Llo80:
	diab.li		r0,255
.Llo81:
	stb		r0,8(r1)
#     VAR   (ObjectTypeType,  AUTOMATIC) objectType;
#     VAR   (Os_ObjectType,   AUTOMATIC) object;
#     VAR   (StatusType,      AUTOMATIC) retVal;
#     CONST (CoreIdType,      AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		88
	mfspr		r28,286		# coreId=r28
	mr		r28,r28		# coreId=r28 coreId=r28
# 
#     OS_TRACE(CheckObjectOwnership_Entry , coreId);
	.d2line		90
	diab.li		r4,9
	lis		r3,(Os_Core_DynShared+120)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	rlwinm		r0,r28,0,16,31		# coreId=r28
	e_mulli		r5,r0,152
	stbx		r4,r3,r5
# 
#     objectType = Os_APICall->Os_API_Data.Os_ApiCheckObjectOwnership.ObjectType;
	.d2line		92
	lwz		r30,20(r31)		# Os_APICall=r31
.Llo83:
	mr		r30,r30		# objectType=r30 objectType=r30
#     object     = Os_APICall->Os_API_Data.Os_ApiCheckObjectOwnership.Object;
	.d2line		93
	lwz		r29,24(r31)		# Os_APICall=r31
.Llo85:
	mr		r29,r29		# object=r29 object=r29
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     if( OS_HOOKISNOT( OS_HOOKID_NONE           |
	.d2line		97
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	lhz		r0,100(r3)
	e_and2i.		r0,353
	se_cmpi		r0,0
	bc		0,2,.L11353	# ne
#                       OS_HOOKID_ERRORHOOK      | /* [OS088-01-145] */
#                       OS_HOOKID_APPERRORHOOK   | /* [OS088-01-221] */
#                       OS_HOOKID_PROTECTIONHOOK   /* [OS088-01-146] */
#                       , coreId))
#     {
#         /* [OS088-03-180] [OS088-03-181] [OS088-03-182] [OS088-03-183] [OS088-03-184]
#          * [OS088-03-401] [OS088-03-445] [OS088-05-028] [OS-MGC-0056-21] [OS-MGC-0056-64]
#          */
#         retVal = E_OS_CALLEVEL;
	.d2line		106
	diab.li		r3,2		# retVal=r3
.Llo86:
	b		.L11354
.L11353:
#     }
#     else
# 
#   #endif
# 
#     if(Os_Isr_Enabled != Os_Isr_GetState(coreId))
	.d2line		112
.Llo87:
	mr		r3,r28		# coreId=r3 coreId=r28
	bl		Os_Isr_GetState
	se_cmpi		r3,0		# coreId=r3
	bc		1,2,.L11355	# eq
#     {
#         retVal = E_OS_DISABLEDINT; /* [OS093-01-27] */
	.d2line		114
	diab.li		r3,10		# retVal=r3
.Llo88:
	b		.L11354
.L11355:
#     }
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-143] [OS088-01-144]
#          */
#         retVal = Os_CheckObjectOwnerShip(objectType,object,&applID);
	.d2line		121
.Llo89:
	diab.addi		r5,r1,8
	mr		r3,r30		# objectType=r3 objectType=r30
	mr		r4,r29		# object=r4 object=r29
	bl		Os_CheckObjectOwnerShip
.Llo90:
	mr		r3,r3		# retVal=r3 retVal=r3
.L11354:
#     }
# 
#   #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#     if (E_OK != retVal)
	.d2line		126
	rlwinm		r0,r3,0,24,31		# retVal=r3
	se_cmpi		r0,0
	bc		1,2,.L11357	# eq
#     {
#         /* Update the global error variables  */
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_ObjType  = objectType;
	.d2line		129
	lis		r4,(Os_Core_DynShared+60)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+60)@l
	rlwinm		r0,r28,0,16,31		# coreId=r28
	e_mulli		r0,r0,152
	stwux		r30,r4,r0		# objectType=r30
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_ObjObj   = object;
	.d2line		130
	lis		r4,(Os_Core_DynShared+108)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+108)@l
	stwx		r29,r4,r0		# object=r29
.L11357:
#     }
# 
#   #endif    /* OS_CONFIG_USEPARAMETERACCESS */
# 
#     /* [OS088-05-029] [OS088-05-030] [OS088-05-064] [OS088-05-031] [OS088-05-072]
#      * [OS088-05-032]
#      */
#     Os_APICall->Os_API_Data.Os_ApiCheckObjectOwnership.AppID = applID;
	.d2line		138
.Llo84:
	lbz		r4,8(r1)
	stb		r4,16(r31)		# Os_APICall=r31
#     Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		139
	stb		r3,4(r31)		# Os_APICall=r31 retVal=r3
# 
#     OS_TRACE (CheckObjectOwnership_Exit , coreId);
	.d2line		141
	diab.li		r3,8		# retVal=r3
	lis		r4,(Os_Core_DynShared+120)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l
.Llo92:
	rlwinm		r28,r28,0,16,31		# coreId=r28 coreId=r28
	e_mulli		r28,r28,152		# coreId=r28 coreId=r28
.Llo93:
	stbx		r3,r4,r28		# retVal=r3
# } /* End CheckObjectOwnership () */
	.d2line		142
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo82:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo91:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11581:
	.type		Os_API_CheckObjectOwnership,@function
	.size		Os_API_CheckObjectOwnership,.-Os_API_CheckObjectOwnership
# Number of nodes = 130

# Allocations for Os_API_CheckObjectOwnership
#	?a4		Os_APICall
#	SP,8		applID
#	?a5		objectType
#	?a6		object
#	?a7		retVal
#	?a8		coreId

# Allocations for module
	.section	.text_vle
	.0byte		.L11594
	.section	.text_vle
	.0byte		.L11607
	.section	.text_vle
	.0byte		.L11614
	.section	.Os_BSS,,b
	.0byte		.L11621
	.section	.text_vle
#$$ld
.L5:
.L12089:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12086:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12084:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12082:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12080:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12068:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12063:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12060:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12043:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12023:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11938:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11913:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11681:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11626:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11615:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11608:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11595:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11427:
.L11476:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectOwnership.c"
.L11435:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11448:
.L11456:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectOwnership.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectOwnership.c"
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
.L11424:
	.4byte		.L11425-.L11423
.L11423:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11429-.L11424
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectOwnership.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11426
	.4byte		.L11427
	.4byte		.L11430
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11438:
	.sleb128	2
	.4byte		.L11432-.L11424
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11435
	.uleb128	227
	.uleb128	45
	.4byte		.L11436
	.byte		0x1
	.4byte		.L11433
	.4byte		.L11434
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11435
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11439
	.4byte		.L11443
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11432:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11445:
	.4byte		.L11446-.L11444
.L11444:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11450-.L11445
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectOwnership.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11447
	.4byte		.L11448
	.4byte		.L11451
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11460:
	.sleb128	4
	.4byte		.L11453-.L11445
	.byte		"CheckObjectOwnership"
	.byte		0
	.4byte		.L11456
	.uleb128	53
	.uleb128	33
	.4byte		.L11457
	.byte		0x1
	.byte		0x1
	.4byte		.L11454
	.4byte		.L11455
	.sleb128	3
	.4byte		.L11456
	.uleb128	53
	.uleb128	33
	.byte		"objectType"
	.byte		0
	.4byte		.L11461
	.4byte		.L11463
	.sleb128	3
	.4byte		.L11456
	.uleb128	53
	.uleb128	33
	.byte		"object"
	.byte		0
	.4byte		.L11464
	.4byte		.L11467
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11468:
	.sleb128	5
	.4byte		.L11456
	.uleb128	56
	.uleb128	35
	.byte		"OsCheckObjectOwnershipCall"
	.byte		0
	.4byte		.L11469
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11453:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11478:
	.sleb128	2
	.4byte		.L11473-.L11424
	.byte		"Os_CheckObjectOwnerShip"
	.byte		0
	.4byte		.L11476
	.uleb128	145
	.uleb128	39
	.4byte		.L11477
	.byte		0x1
	.4byte		.L11474
	.4byte		.L11475
	.sleb128	3
	.4byte		.L11476
	.uleb128	145
	.uleb128	39
	.byte		"objectType"
	.byte		0
	.4byte		.L11479
	.4byte		.L11480
	.sleb128	3
	.4byte		.L11476
	.uleb128	145
	.uleb128	39
	.byte		"object"
	.byte		0
	.4byte		.L11481
	.4byte		.L11482
	.sleb128	3
	.4byte		.L11476
	.uleb128	145
	.uleb128	39
	.byte		"applID"
	.byte		0
	.4byte		.L11483
	.4byte		.L11485
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11486:
	.sleb128	6
	.4byte		.L11476
	.uleb128	149
	.uleb128	35
	.byte		"retVal"
	.byte		0
	.4byte		.L11477
	.4byte		.L11487
.L11488:
	.sleb128	6
	.4byte		.L11476
	.uleb128	150
	.uleb128	35
	.byte		"coreId"
	.byte		0
	.4byte		.L11439
	.4byte		.L11489
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11494
	.4byte		.L11491
	.4byte		.L11492
.L11495:
	.sleb128	6
	.4byte		.L11476
	.uleb128	156
	.uleb128	38
	.byte		"task"
	.byte		0
	.4byte		.L11496
	.4byte		.L11498
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11494:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11502
	.4byte		.L11499
	.4byte		.L11500
.L11503:
	.sleb128	6
	.4byte		.L11476
	.uleb128	172
	.uleb128	37
	.byte		"isrid"
	.byte		0
	.4byte		.L11504
	.4byte		.L11505
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11502:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11509
	.4byte		.L11506
	.4byte		.L11507
.L11510:
	.sleb128	6
	.4byte		.L11476
	.uleb128	188
	.uleb128	39
	.byte		"alarmId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11512
.L11513:
	.sleb128	6
	.4byte		.L11476
	.uleb128	189
	.uleb128	45
	.byte		"appIter"
	.byte		0
	.4byte		.L11457
	.4byte		.L11514
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11518
	.4byte		.L11515
	.4byte		.L11516
.L11519:
	.sleb128	6
	.4byte		.L11476
	.uleb128	197
	.uleb128	61
	.byte		"alarmsOfApp"
	.byte		0
	.4byte		.L11520
	.4byte		.L11523
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11527
	.4byte		.L11524
	.4byte		.L11525
.L11528:
	.sleb128	6
	.4byte		.L11476
	.uleb128	201
	.uleb128	47
	.byte		"alarmIter"
	.byte		0
	.4byte		.L11511
	.4byte		.L11529
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11527:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11518:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11509:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11533
	.4byte		.L11530
	.4byte		.L11531
.L11534:
	.sleb128	6
	.4byte		.L11476
	.uleb128	226
	.uleb128	41
	.byte		"counterId"
	.byte		0
	.4byte		.L11535
	.4byte		.L11536
.L11537:
	.sleb128	6
	.4byte		.L11476
	.uleb128	227
	.uleb128	45
	.byte		"appIter"
	.byte		0
	.4byte		.L11457
	.4byte		.L11538
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11542
	.4byte		.L11539
	.4byte		.L11540
.L11543:
	.sleb128	6
	.4byte		.L11476
	.uleb128	235
	.uleb128	64
	.byte		"counterOfApp"
	.byte		0
	.4byte		.L11544
	.4byte		.L11547
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11551
	.4byte		.L11548
	.4byte		.L11549
.L11552:
	.sleb128	6
	.4byte		.L11476
	.uleb128	240
	.uleb128	49
	.byte		"counterIter"
	.byte		0
	.4byte		.L11535
	.4byte		.L11553
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11551:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11542:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11533:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11557
	.4byte		.L11554
	.4byte		.L11555
.L11558:
	.sleb128	6
	.4byte		.L11476
	.uleb128	257
	.uleb128	47
	.byte		"schTblId"
	.byte		0
	.4byte		.L11559
	.4byte		.L11560
.L11561:
	.sleb128	6
	.4byte		.L11476
	.uleb128	258
	.uleb128	45
	.byte		"appIter"
	.byte		0
	.4byte		.L11457
	.4byte		.L11562
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11566
	.4byte		.L11563
	.4byte		.L11564
.L11567:
	.sleb128	6
	.4byte		.L11476
	.uleb128	266
	.uleb128	70
	.byte		"schTblOfApp"
	.byte		0
	.4byte		.L11568
	.4byte		.L11571
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11575
	.4byte		.L11572
	.4byte		.L11573
.L11576:
	.sleb128	6
	.4byte		.L11476
	.uleb128	271
	.uleb128	55
	.byte		"schTblIter"
	.byte		0
	.4byte		.L11559
	.4byte		.L11577
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11575:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11566:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11557:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11473:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11582:
	.sleb128	8
	.4byte		.L11579-.L11424
	.byte		"Os_API_CheckObjectOwnership"
	.byte		0
	.4byte		.L11476
	.uleb128	82
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11580
	.4byte		.L11581
	.sleb128	3
	.4byte		.L11476
	.uleb128	82
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11583
	.4byte		.L11584
.L11585:
	.sleb128	5
	.4byte		.L11476
	.uleb128	84
	.uleb128	40
	.byte		"applID"
	.byte		0
	.4byte		.L11457
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L11586:
	.sleb128	6
	.4byte		.L11476
	.uleb128	85
	.uleb128	40
	.byte		"objectType"
	.byte		0
	.4byte		.L11461
	.4byte		.L11587
.L11588:
	.sleb128	6
	.4byte		.L11476
	.uleb128	86
	.uleb128	40
	.byte		"object"
	.byte		0
	.4byte		.L11464
	.4byte		.L11589
.L11590:
	.sleb128	6
	.4byte		.L11476
	.uleb128	87
	.uleb128	40
	.byte		"retVal"
	.byte		0
	.4byte		.L11477
	.4byte		.L11591
.L11592:
	.sleb128	6
	.4byte		.L11476
	.uleb128	88
	.uleb128	40
	.byte		"coreId"
	.byte		0
	.4byte		.L11439
	.4byte		.L11593
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11579:
	.section	.debug_info,,n
.L11594:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11595
	.uleb128	100
	.uleb128	48
	.byte		"Os_Applications_Stat"
	.byte		0
	.4byte		.L11596
	.section	.debug_info,,n
.L11601:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11595
	.uleb128	102
	.uleb128	44
	.byte		"Os_ApplicationRange"
	.byte		0
	.4byte		.L11602
.L11607:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11608
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11609
	.section	.debug_info,,n
.L11614:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11615
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11616
	.section	.debug_info,,n
.L11621:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11615
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11622
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11620:
	.sleb128	10
	.4byte		.L11626
	.uleb128	69
	.uleb128	1
	.4byte		.L11627-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11647
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11627:
.L11631:
	.sleb128	10
	.4byte		.L11626
	.uleb128	69
	.uleb128	1
	.4byte		.L11654-.L2
	.uleb128	36
.L785:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11655
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11657
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11654:
.L11625:
	.sleb128	10
	.4byte		.L11626
	.uleb128	69
	.uleb128	1
	.4byte		.L11660-.L2
	.uleb128	152
.L778:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11660:
.L11635:
	.sleb128	10
	.4byte		.L11626
	.uleb128	69
	.uleb128	1
	.4byte		.L11665-.L2
	.uleb128	104
.L775:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11665:
.L11658:
	.sleb128	10
	.4byte		.L11626
	.uleb128	69
	.uleb128	1
	.4byte		.L11672-.L2
	.uleb128	4
.L774:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11672:
.L11667:
	.sleb128	10
	.4byte		.L11626
	.uleb128	69
	.uleb128	1
	.4byte		.L11675-.L2
	.uleb128	48
.L766:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11652
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11652
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11679
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11679
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11675:
	.section	.debug_info,,n
.L11680:
	.sleb128	12
	.4byte		.L11681
	.uleb128	612
	.uleb128	1
	.4byte		.L11682-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11682:
.L11656:
	.sleb128	10
	.4byte		.L11681
	.uleb128	612
	.uleb128	1
	.4byte		.L11684-.L2
	.uleb128	28
.L745:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11684:
.L11669:
	.sleb128	10
	.4byte		.L11681
	.uleb128	612
	.uleb128	1
	.4byte		.L11687-.L2
	.uleb128	52
.L739:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11687:
.L11662:
	.sleb128	10
	.4byte		.L11681
	.uleb128	612
	.uleb128	1
	.4byte		.L11698-.L2
	.uleb128	8
.L737:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11698:
.L11639:
	.sleb128	12
	.4byte		.L11681
	.uleb128	612
	.uleb128	1
	.4byte		.L11699-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11504
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11469
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11699:
.L11470:
	.sleb128	12
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11703-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11703:
	.section	.debug_info,,n
.L11711:
	.sleb128	13
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11712-.L2
	.uleb128	24
.L679:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11715
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11725
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11735
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11751
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11777
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11783
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11785
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11787
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11793
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11805
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11712:
.L11808:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11809-.L2
	.uleb128	8
.L677:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11809:
.L11806:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11812-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11812:
.L11804:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11823-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11823:
.L11802:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11828-.L2
	.uleb128	2
.L672:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11828:
.L11800:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11829-.L2
	.uleb128	2
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11829:
.L11798:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11830-.L2
	.uleb128	20
.L666:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11830:
.L11796:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11832-.L2
	.uleb128	12
.L663:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11832:
.L11794:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11837-.L2
	.uleb128	12
.L660:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11837:
.L11792:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11838-.L2
	.uleb128	12
.L657:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11838:
.L11758:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11839-.L2
	.uleb128	4
.L656:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11839:
.L11756:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11840-.L2
	.uleb128	12
.L653:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11840:
.L11754:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11842-.L2
	.uleb128	12
.L650:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11842:
.L11752:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11843-.L2
	.uleb128	8
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11843:
.L11750:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11846-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11846:
.L11790:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11851-.L2
	.uleb128	4
.L645:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11851:
.L11788:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11852-.L2
	.uleb128	8
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11852:
.L11786:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11853-.L2
	.uleb128	4
.L642:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11853:
.L11784:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11854-.L2
	.uleb128	8
.L640:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11854:
.L11782:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11855-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11855:
.L11780:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11860-.L2
	.uleb128	4
.L637:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11860:
.L11778:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11861-.L2
	.uleb128	8
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11861:
.L11776:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11862-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11862:
.L11774:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11863-.L2
	.uleb128	12
.L630:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11863:
.L11772:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11864-.L2
	.uleb128	12
.L627:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11864:
.L11770:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11869-.L2
	.uleb128	4
.L626:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11869:
.L11766:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11870-.L2
	.uleb128	4
.L625:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11504
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11870:
.L11762:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11871-.L2
	.uleb128	2
.L623:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11871:
.L11764:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11873-.L2
	.uleb128	1
.L622:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11873:
.L11760:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11874-.L2
	.uleb128	8
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11874:
.L11744:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11878-.L2
	.uleb128	8
.L619:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11878:
.L11742:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11882-.L2
	.uleb128	24
.L616:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11882:
.L11740:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11885-.L2
	.uleb128	8
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11885:
.L11738:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	16
.L613:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11886:
.L11736:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11887-.L2
	.uleb128	8
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11887:
.L11734:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11892-.L2
	.uleb128	4
.L610:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11892:
.L11732:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11895-.L2
	.uleb128	4
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11895:
.L11730:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11896-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11896:
.L11748:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11897-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11898
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11897:
.L11746:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11899-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11898
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11899:
.L11768:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11900-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11900:
.L11728:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11902-.L2
	.uleb128	2
.L604:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11902:
.L11722:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11903-.L2
	.uleb128	2
.L603:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11903:
.L11720:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11904-.L2
	.uleb128	1
.L602:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11904:
.L11718:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11905-.L2
	.uleb128	8
.L600:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11905:
.L11716:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11908-.L2
	.uleb128	1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11908:
.L11726:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11909-.L2
	.uleb128	8
.L597:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11909:
.L11724:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11911-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11911:
.L11714:
	.sleb128	10
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L11912-.L2
	.uleb128	4
.L594:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11912:
.L11816:
	.sleb128	10
	.4byte		.L11913
	.uleb128	33
	.uleb128	14
	.4byte		.L11914-.L2
	.uleb128	24
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11929
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11914:
.L11928:
	.sleb128	10
	.4byte		.L11913
	.uleb128	33
	.uleb128	14
	.4byte		.L11932-.L2
	.uleb128	4
.L583:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11933
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11932:
.L11918:
	.sleb128	10
	.4byte		.L11913
	.uleb128	33
	.uleb128	14
	.4byte		.L11937-.L2
	.uleb128	6
.L580:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11937:
.L11671:
	.sleb128	10
	.4byte		.L11938
	.uleb128	34
	.uleb128	14
	.4byte		.L11939-.L2
	.uleb128	2
.L531:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11940
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11939:
.L11613:
	.sleb128	12
	.4byte		.L11608
	.uleb128	80
	.uleb128	13
	.4byte		.L11941-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11956
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11956
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11965
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11941:
.L11951:
	.sleb128	12
	.4byte		.L11608
	.uleb128	80
	.uleb128	13
	.4byte		.L11979-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11980
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11979:
.L11946:
	.sleb128	10
	.4byte		.L11608
	.uleb128	80
	.uleb128	13
	.4byte		.L11982-.L2
	.uleb128	56
.L498:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11890
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11958
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11898
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11982:
.L11987:
	.sleb128	12
	.4byte		.L11595
	.uleb128	52
	.uleb128	1
	.4byte		.L11988-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11929
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11988:
.L11993:
	.sleb128	10
	.4byte		.L11595
	.uleb128	52
	.uleb128	1
	.4byte		.L11994-.L2
	.uleb128	12
.L447:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11994:
.L11600:
	.sleb128	12
	.4byte		.L11595
	.uleb128	52
	.uleb128	1
	.4byte		.L11995-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12004
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12009
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11544
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11520
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11995:
.L11999:
	.sleb128	10
	.4byte		.L11595
	.uleb128	52
	.uleb128	1
	.4byte		.L12022-.L2
	.uleb128	1
.L434:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12022:
.L11976:
	.sleb128	10
	.4byte		.L12023
	.uleb128	32
	.uleb128	1
	.4byte		.L12024-.L2
	.uleb128	12
.L431:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11956
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12025
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12024:
.L12027:
	.sleb128	10
	.4byte		.L12023
	.uleb128	32
	.uleb128	1
	.4byte		.L12028-.L2
	.uleb128	4
.L430:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12028:
.L11664:
	.sleb128	10
	.4byte		.L12023
	.uleb128	32
	.uleb128	1
	.4byte		.L12029-.L2
	.uleb128	144
.L425:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12030
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12029:
.L11695:
	.sleb128	10
	.4byte		.L12023
	.uleb128	32
	.uleb128	1
	.4byte		.L12034-.L2
	.uleb128	24
.L419:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12034:
.L12033:
	.sleb128	10
	.4byte		.L12023
	.uleb128	32
	.uleb128	1
	.4byte		.L12040-.L2
	.uleb128	20
.L414:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12041
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L417:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12040:
.L12031:
	.sleb128	10
	.4byte		.L12043
	.uleb128	174
	.uleb128	1
	.4byte		.L12044-.L2
	.uleb128	120
.L411:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L412:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12047
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12049
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12044:
.L12050:
	.sleb128	10
	.4byte		.L12043
	.uleb128	174
	.uleb128	1
	.4byte		.L12051-.L2
	.uleb128	8
.L408:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12052
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L409:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12051:
.L12048:
	.sleb128	10
	.4byte		.L12043
	.uleb128	174
	.uleb128	1
	.4byte		.L12055-.L2
	.uleb128	104
.L383:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11898
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L406:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12056
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12055:
.L12046:
	.sleb128	10
	.4byte		.L12043
	.uleb128	174
	.uleb128	1
	.4byte		.L12057-.L2
	.uleb128	8
.L381:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12057:
.L11850:
	.sleb128	10
	.4byte		.L12060
	.uleb128	50
	.uleb128	1
	.4byte		.L12061-.L2
	.uleb128	12
.L378:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12061:
.L11606:
	.sleb128	10
	.4byte		.L12060
	.uleb128	50
	.uleb128	1
	.4byte		.L12062-.L2
	.uleb128	8
.L376:
	.sleb128	11
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12062:
.L11691:
	.sleb128	10
	.4byte		.L12063
	.uleb128	87
	.uleb128	7
	.4byte		.L12064-.L2
	.uleb128	8
.L366:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12065
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12066
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12064:
	.section	.debug_info,,n
.L11437:
	.sleb128	14
	.4byte		.L12068
	.uleb128	155
	.uleb128	1
	.4byte		.L12069-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	15
	.byte		"Os_Isr_Enabled"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_Isr_Disabled"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12069:
.L11677:
	.sleb128	14
	.4byte		.L11626
	.uleb128	69
	.uleb128	1
	.4byte		.L12070-.L2
	.uleb128	4
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
.L12070:
.L11701:
	.sleb128	14
	.4byte		.L11681
	.uleb128	612
	.uleb128	1
	.4byte		.L12071-.L2
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
.L12071:
.L11705:
	.sleb128	14
	.4byte		.L11681
	.uleb128	60
	.uleb128	1
	.4byte		.L12072-.L2
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
.L12072:
	.section	.debug_info,,n
.L11836:
	.sleb128	16
	.4byte		.L11913
	.uleb128	33
	.uleb128	14
	.4byte		.L12073-.L2
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
.L12073:
.L11984:
	.sleb128	14
	.4byte		.L11608
	.uleb128	80
	.uleb128	13
	.4byte		.L12074-.L2
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
.L12074:
.L11954:
	.sleb128	14
	.4byte		.L11608
	.uleb128	61
	.uleb128	1
	.4byte		.L12075-.L2
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
.L12075:
.L12003:
	.sleb128	14
	.4byte		.L11595
	.uleb128	52
	.uleb128	1
	.4byte		.L12076-.L2
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
.L12076:
.L12042:
	.sleb128	14
	.4byte		.L12023
	.uleb128	32
	.uleb128	1
	.4byte		.L12077-.L2
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
.L12077:
.L12059:
	.sleb128	14
	.4byte		.L12043
	.uleb128	174
	.uleb128	1
	.4byte		.L12078-.L2
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
.L12078:
.L12054:
	.sleb128	14
	.4byte		.L12043
	.uleb128	86
	.uleb128	1
	.4byte		.L12079-.L2
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
.L12079:
.L11827:
	.sleb128	14
	.4byte		.L12080
	.uleb128	43
	.uleb128	1
	.4byte		.L12081-.L2
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
.L12081:
.L11891:
	.sleb128	14
	.4byte		.L12082
	.uleb128	37
	.uleb128	1
	.4byte		.L12083-.L2
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
.L12083:
.L11859:
	.sleb128	14
	.4byte		.L12084
	.uleb128	40
	.uleb128	1
	.4byte		.L12085-.L2
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
.L12085:
.L11462:
	.sleb128	14
	.4byte		.L12086
	.uleb128	47
	.uleb128	1
	.4byte		.L12087-.L2
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
.L12087:
.L11907:
	.sleb128	14
	.4byte		.L12060
	.uleb128	42
	.uleb128	13
	.4byte		.L12088-.L2
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
.L12088:
.L11811:
	.sleb128	14
	.4byte		.L12089
	.uleb128	83
	.uleb128	14
	.4byte		.L12090-.L2
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
.L12090:
	.section	.debug_info,,n
.L11436:
	.sleb128	17
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11437
	.section	.debug_info,,n
.L11442:
	.sleb128	18
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11441:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11442
.L11440:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11441
	.section	.debug_info,,n
.L11439:
	.sleb128	19
	.4byte		.L11440
.L11459:
	.sleb128	18
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11458:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11459
.L11457:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11458
.L11461:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11462
.L11466:
	.sleb128	18
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11465:
	.sleb128	17
	.byte		"uint32"
	.byte		0
	.4byte		.L11466
.L11464:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11465
.L11469:
	.sleb128	17
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11470
.L11477:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11458
.L11479:
	.sleb128	19
	.4byte		.L11461
.L11481:
	.sleb128	19
	.4byte		.L11464
	.section	.debug_info,,n
.L11484:
	.sleb128	20
	.4byte		.L11457
.L11483:
	.sleb128	19
	.4byte		.L11484
.L11497:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11464
.L11496:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11497
.L11504:
	.sleb128	17
	.byte		"ISRType"
	.byte		0
	.4byte		.L11497
.L11511:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11464
.L11522:
	.sleb128	19
	.4byte		.L11511
.L11521:
	.sleb128	20
	.4byte		.L11522
.L11520:
	.sleb128	19
	.4byte		.L11521
.L11535:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11465
.L11546:
	.sleb128	19
	.4byte		.L11535
.L11545:
	.sleb128	20
	.4byte		.L11546
.L11544:
	.sleb128	19
	.4byte		.L11545
.L11559:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11465
.L11570:
	.sleb128	19
	.4byte		.L11559
.L11569:
	.sleb128	20
	.4byte		.L11570
.L11568:
	.sleb128	19
	.4byte		.L11569
.L11583:
	.sleb128	20
	.4byte		.L11470
.L11599:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11600
.L11598:
	.sleb128	19
	.4byte		.L11599
	.section	.debug_info,,n
.L11596:
	.sleb128	21
	.4byte		.L11597-.L2
	.4byte		.L11598
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L11597:
.L11605:
	.sleb128	17
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11606
.L11604:
	.sleb128	19
	.4byte		.L11605
.L11602:
	.sleb128	21
	.4byte		.L11603-.L2
	.4byte		.L11604
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11603:
.L11612:
	.sleb128	17
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11613
.L11611:
	.sleb128	19
	.4byte		.L11612
.L11609:
	.sleb128	21
	.4byte		.L11610-.L2
	.4byte		.L11611
	.sleb128	22
	.sleb128	0
.L11610:
.L11619:
	.sleb128	17
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11620
.L11618:
	.sleb128	19
	.4byte		.L11619
.L11616:
	.sleb128	21
	.4byte		.L11617-.L2
	.4byte		.L11618
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11617:
.L11624:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11625
.L11622:
	.sleb128	21
	.4byte		.L11623-.L2
	.4byte		.L11624
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11623:
.L11630:
	.sleb128	17
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11631
.L11629:
	.sleb128	20
	.4byte		.L11630
.L11628:
	.sleb128	19
	.4byte		.L11629
.L11634:
	.sleb128	17
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11635
.L11633:
	.sleb128	20
	.4byte		.L11634
.L11632:
	.sleb128	19
	.4byte		.L11633
.L11638:
	.sleb128	17
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11639
.L11637:
	.sleb128	20
	.4byte		.L11638
.L11636:
	.sleb128	19
	.4byte		.L11637
	.section	.debug_info,,n
.L11643:
	.sleb128	24
	.4byte		.L11644-.L2
	.byte		0x1
.L11646:
	.sleb128	20
	.4byte		.L11611
.L11645:
	.sleb128	19
	.4byte		.L11646
	.section	.debug_info,,n
	.sleb128	25
	.4byte		.L11645
	.sleb128	0
.L11644:
.L11642:
	.sleb128	20
	.4byte		.L11643
.L11641:
	.sleb128	17
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11642
.L11640:
	.sleb128	19
	.4byte		.L11641
.L11653:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11465
.L11652:
	.sleb128	20
	.4byte		.L11653
	.section	.debug_info,,n
.L11650:
	.sleb128	26
	.4byte		.L11651-.L2
	.4byte		.L11652
	.byte		0x1
	.sleb128	25
	.4byte		.L11646
	.sleb128	0
.L11651:
.L11649:
	.sleb128	20
	.4byte		.L11650
.L11648:
	.sleb128	17
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11649
.L11647:
	.sleb128	19
	.4byte		.L11648
.L11655:
	.sleb128	17
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11656
.L11657:
	.sleb128	17
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11658
.L11659:
	.sleb128	20
	.4byte		.L11598
.L11661:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11662
.L11663:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11664
.L11666:
	.sleb128	17
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11667
.L11668:
	.sleb128	17
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11669
.L11670:
	.sleb128	17
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11671
.L11674:
	.sleb128	19
	.4byte		.L11613
.L11673:
	.sleb128	20
	.4byte		.L11674
.L11676:
	.sleb128	17
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11677
.L11678:
	.sleb128	17
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11465
.L11679:
	.sleb128	17
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11680
.L11683:
	.sleb128	20
	.4byte		.L11680
.L11685:
	.sleb128	17
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11465
.L11686:
	.sleb128	17
	.byte		"boolean"
	.byte		0
	.4byte		.L11459
.L11690:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11691
.L11689:
	.sleb128	19
	.4byte		.L11690
.L11688:
	.sleb128	20
	.4byte		.L11689
.L11694:
	.sleb128	17
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11695
.L11693:
	.sleb128	19
	.4byte		.L11694
.L11692:
	.sleb128	20
	.4byte		.L11693
.L11696:
	.sleb128	21
	.4byte		.L11697-.L2
	.4byte		.L11465
	.sleb128	23
	.uleb128	7
	.sleb128	0
.L11697:
.L11700:
	.sleb128	17
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11701
.L11702:
	.sleb128	20
	.4byte		.L11469
.L11704:
	.sleb128	17
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11705
.L11708:
	.sleb128	24
	.4byte		.L11709-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11583
.L11710:
	.sleb128	19
	.4byte		.L11673
	.sleb128	25
	.4byte		.L11710
	.sleb128	0
.L11709:
.L11707:
	.sleb128	20
	.4byte		.L11708
.L11706:
	.sleb128	17
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11707
.L11713:
	.sleb128	17
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11714
.L11715:
	.sleb128	17
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11716
.L11717:
	.sleb128	17
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11718
.L11719:
	.sleb128	17
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11720
.L11721:
	.sleb128	17
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11722
.L11723:
	.sleb128	17
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11724
.L11725:
	.sleb128	17
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11726
.L11727:
	.sleb128	17
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11728
.L11729:
	.sleb128	17
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11730
.L11731:
	.sleb128	17
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11732
.L11733:
	.sleb128	17
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11734
.L11735:
	.sleb128	17
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11736
.L11737:
	.sleb128	17
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11738
.L11739:
	.sleb128	17
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11740
.L11741:
	.sleb128	17
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11742
.L11743:
	.sleb128	17
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11744
.L11745:
	.sleb128	17
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11746
.L11747:
	.sleb128	17
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11748
.L11749:
	.sleb128	17
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11750
.L11751:
	.sleb128	17
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11752
.L11753:
	.sleb128	17
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11754
.L11755:
	.sleb128	17
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11756
.L11757:
	.sleb128	17
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11758
.L11759:
	.sleb128	17
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11760
.L11761:
	.sleb128	17
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11762
.L11763:
	.sleb128	17
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11764
.L11765:
	.sleb128	17
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11766
.L11767:
	.sleb128	17
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11768
.L11769:
	.sleb128	17
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11770
.L11771:
	.sleb128	17
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11772
.L11773:
	.sleb128	17
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11774
.L11775:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11776
.L11777:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11778
.L11779:
	.sleb128	17
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11780
.L11781:
	.sleb128	17
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11782
.L11783:
	.sleb128	17
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11784
.L11785:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11786
.L11787:
	.sleb128	17
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11788
.L11789:
	.sleb128	17
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11790
.L11791:
	.sleb128	17
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11792
.L11793:
	.sleb128	17
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11794
.L11795:
	.sleb128	17
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11796
.L11797:
	.sleb128	17
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11798
.L11799:
	.sleb128	17
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11800
.L11801:
	.sleb128	17
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11802
.L11803:
	.sleb128	17
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11804
.L11805:
	.sleb128	17
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11806
.L11807:
	.sleb128	17
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11808
.L11810:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11811
.L11815:
	.sleb128	17
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11816
.L11814:
	.sleb128	19
	.4byte		.L11815
.L11813:
	.sleb128	20
	.4byte		.L11814
	.section	.debug_info,,n
.L11822:
	.sleb128	27
	.byte		"void"
	.byte		0
	.byte		0x0
.L11821:
	.sleb128	20
	.4byte		.L11822
.L11819:
	.sleb128	21
	.4byte		.L11820-.L2
	.4byte		.L11821
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11820:
.L11818:
	.sleb128	17
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11819
.L11817:
	.sleb128	20
	.4byte		.L11818
.L11824:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11441
.L11826:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11827
.L11825:
	.sleb128	20
	.4byte		.L11826
.L11831:
	.sleb128	20
	.4byte		.L11458
.L11833:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11465
.L11834:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11821
.L11835:
	.sleb128	17
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11836
.L11841:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11465
.L11845:
	.sleb128	20
	.4byte		.L11841
.L11844:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11845
.L11849:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11850
.L11848:
	.sleb128	20
	.4byte		.L11849
.L11847:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11848
.L11858:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11859
.L11857:
	.sleb128	20
	.4byte		.L11858
.L11856:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11857
.L11867:
	.sleb128	24
	.4byte		.L11868-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11583
	.sleb128	0
.L11868:
.L11866:
	.sleb128	20
	.4byte		.L11867
.L11865:
	.sleb128	17
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11866
.L11872:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11458
.L11877:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11458
.L11876:
	.sleb128	20
	.4byte		.L11877
.L11875:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11876
.L11881:
	.sleb128	18
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11880:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L11881
.L11879:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11880
.L11884:
	.sleb128	20
	.4byte		.L11879
.L11883:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11884
.L11890:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11891
.L11889:
	.sleb128	20
	.4byte		.L11890
.L11888:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11889
.L11894:
	.sleb128	20
	.4byte		.L11496
.L11893:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11894
.L11898:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11465
.L11901:
	.sleb128	17
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11465
.L11906:
	.sleb128	17
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11907
.L11910:
	.sleb128	20
	.4byte		.L11477
.L11917:
	.sleb128	17
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11918
.L11916:
	.sleb128	20
	.4byte		.L11917
.L11915:
	.sleb128	19
	.4byte		.L11916
.L11919:
	.sleb128	17
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11441
.L11920:
	.sleb128	19
	.4byte		.L11821
.L11921:
	.sleb128	19
	.4byte		.L11441
.L11923:
	.sleb128	17
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11458
.L11922:
	.sleb128	19
	.4byte		.L11923
.L11927:
	.sleb128	17
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11928
.L11926:
	.sleb128	19
	.4byte		.L11927
.L11925:
	.sleb128	20
	.4byte		.L11926
.L11924:
	.sleb128	19
	.4byte		.L11925
.L11931:
	.sleb128	17
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11458
.L11930:
	.sleb128	20
	.4byte		.L11931
.L11929:
	.sleb128	19
	.4byte		.L11930
.L11934:
	.sleb128	17
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11441
.L11933:
	.sleb128	19
	.4byte		.L11934
.L11936:
	.sleb128	17
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11441
.L11935:
	.sleb128	19
	.4byte		.L11936
.L11940:
	.sleb128	17
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11441
.L11942:
	.sleb128	19
	.4byte		.L11496
.L11945:
	.sleb128	17
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11946
.L11944:
	.sleb128	20
	.4byte		.L11945
.L11943:
	.sleb128	19
	.4byte		.L11944
.L11950:
	.sleb128	17
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11951
.L11949:
	.sleb128	19
	.4byte		.L11950
.L11948:
	.sleb128	20
	.4byte		.L11949
.L11947:
	.sleb128	19
	.4byte		.L11948
.L11953:
	.sleb128	17
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11954
.L11952:
	.sleb128	19
	.4byte		.L11953
.L11955:
	.sleb128	19
	.4byte		.L11879
.L11956:
	.sleb128	19
	.4byte		.L11678
.L11958:
	.sleb128	17
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11465
.L11957:
	.sleb128	19
	.4byte		.L11958
.L11959:
	.sleb128	19
	.4byte		.L11652
.L11960:
	.sleb128	19
	.4byte		.L11659
.L11964:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11465
.L11963:
	.sleb128	19
	.4byte		.L11964
.L11962:
	.sleb128	20
	.4byte		.L11963
.L11961:
	.sleb128	19
	.4byte		.L11962
.L11968:
	.sleb128	24
	.4byte		.L11969-.L2
	.byte		0x1
	.sleb128	0
.L11969:
.L11967:
	.sleb128	20
	.4byte		.L11968
.L11966:
	.sleb128	17
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11967
.L11965:
	.sleb128	19
	.4byte		.L11966
.L11970:
	.sleb128	19
	.4byte		.L11898
.L11975:
	.sleb128	17
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11976
.L11974:
	.sleb128	19
	.4byte		.L11975
.L11973:
	.sleb128	20
	.4byte		.L11974
.L11972:
	.sleb128	17
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11973
.L11971:
	.sleb128	20
	.4byte		.L11972
.L11977:
	.sleb128	19
	.4byte		.L11683
.L11978:
	.sleb128	19
	.4byte		.L11688
.L11981:
	.sleb128	17
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11465
.L11980:
	.sleb128	19
	.4byte		.L11981
.L11983:
	.sleb128	17
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11984
.L11986:
	.sleb128	19
	.4byte		.L11987
.L11985:
	.sleb128	20
	.4byte		.L11986
.L11989:
	.sleb128	19
	.4byte		.L11824
.L11992:
	.sleb128	17
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11993
.L11991:
	.sleb128	20
	.4byte		.L11992
.L11990:
	.sleb128	19
	.4byte		.L11991
.L11998:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11999
.L11997:
	.sleb128	20
	.4byte		.L11998
.L11996:
	.sleb128	19
	.4byte		.L11997
.L12000:
	.sleb128	19
	.4byte		.L11457
.L12002:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12003
.L12001:
	.sleb128	19
	.4byte		.L12002
.L12007:
	.sleb128	24
	.4byte		.L12008-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11477
	.sleb128	0
.L12008:
.L12006:
	.sleb128	20
	.4byte		.L12007
.L12005:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12006
.L12004:
	.sleb128	19
	.4byte		.L12005
.L12012:
	.sleb128	24
	.4byte		.L12013-.L2
	.byte		0x1
	.sleb128	0
.L12013:
.L12011:
	.sleb128	20
	.4byte		.L12012
.L12010:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12011
.L12009:
	.sleb128	19
	.4byte		.L12010
.L12017:
	.sleb128	24
	.4byte		.L12018-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11477
	.sleb128	0
.L12018:
.L12016:
	.sleb128	20
	.4byte		.L12017
.L12015:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12016
.L12014:
	.sleb128	19
	.4byte		.L12015
.L12021:
	.sleb128	19
	.4byte		.L11497
.L12020:
	.sleb128	20
	.4byte		.L12021
.L12019:
	.sleb128	19
	.4byte		.L12020
.L12026:
	.sleb128	17
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12027
.L12025:
	.sleb128	20
	.4byte		.L12026
.L12030:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12031
.L12032:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12033
.L12038:
	.sleb128	24
	.4byte		.L12039-.L2
	.byte		0x1
	.sleb128	0
.L12039:
.L12037:
	.sleb128	20
	.4byte		.L12038
.L12036:
	.sleb128	17
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12037
.L12035:
	.sleb128	19
	.4byte		.L12036
.L12041:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12042
.L12045:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12046
.L12047:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12048
.L12049:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12050
.L12052:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11458
.L12053:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12054
.L12056:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11825
.L12058:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12059
.L12065:
	.sleb128	19
	.4byte		.L11465
.L12067:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11441
.L12066:
	.sleb128	19
	.4byte		.L12067
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11429:
	.sleb128	0
.L11425:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11450:
	.sleb128	0
.L11446:

	.section	.debug_loc,,n
	.align	0
.L11443:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11463:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L11467:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),4
	.d2locend
.L11480:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locend
.L11482:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),4
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),31
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),31
	.d2locend
.L11485:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),5
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),30
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),30
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),30
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),30
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),5
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo10),7
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),7
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo14),7
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),7
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),7
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),7
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),7
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo22),7
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),7
	.d2locend
.L11489:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locend
.L11498:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo38),4
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo10),31
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo42),4
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo43),4
	.d2locend
.L11505:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo38),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo14),31
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),31
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo42),4
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo43),4
	.d2locend
.L11512:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo38),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo30),31
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo42),4
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo34),31
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo43),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo22),31
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),31
	.d2locend
.L11514:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo49),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo22),3
	.d2locend
.L11529:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),4
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),4
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),4
	.d2locend
.L11536:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo38),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo30),31
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo42),4
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo34),31
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo43),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo22),31
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),31
	.d2locend
.L11538:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo49),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo22),3
	.d2locend
.L11547:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo61),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locend
.L11553:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo61),4
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),4
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),4
	.d2locend
.L11560:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo38),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo30),31
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo42),4
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo34),31
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo43),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo22),31
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),31
	.d2locend
.L11562:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo49),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo22),3
	.d2locend
.L11577:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),4
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),4
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),4
	.d2locend
.L11523:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),6
	.d2locend
.L11571:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),6
	.d2locend
.L11584:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),3
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),31
	.d2locend
.L11587:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),30
	.d2locend
.L11589:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo84),29
	.d2locend
.L11591:
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),3
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locend
.L11593:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo84),28
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_CheckObjectOwnership"
	.wrcm.nstrlist "calls", "Os_CheckObjectOwnerShip","Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_CheckObjectOwnerShip"
	.wrcm.nstrlist "calls", "Os_ISR_CheckId","Os_Task_CheckId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CheckObjectOwnership"
	.wrcm.nstrlist "calls", "OS_SYS_CALL"
	.wrcm.nint32 "frameSize", 48
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectOwnership.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectOwnership.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectOwnership.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectOwnership.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectOwnership.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectOwnership.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\application\Os_CheckObjectOwnership.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
