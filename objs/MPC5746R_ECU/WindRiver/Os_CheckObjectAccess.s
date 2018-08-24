#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_CheckObjectAccess.c"
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
.L11445:
	.section	.Os_TEXT,,c
#$$ld
.L11441:
	.0byte		.L11439
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11448:

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
.L11449:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (ObjectAccessType, OS_CODE) CheckObjectAccess( VAR (ApplicationType, AUTOMATIC)  applID,
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11466:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11462:
	.0byte		.L11460
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectAccess.c"
        .d2line         57,34
#$$ld
.L11469:

#$$bf	CheckObjectAccess,interprocedural,rasave,nostackparams
	.globl		CheckObjectAccess
	.d2_cfa_start __cie
CheckObjectAccess:
.Llo3:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo7:
	stw		r0,52(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# applID=r0 applID=r3
.Llo8:
	mr		r4,r4		# objectType=r4 objectType=r4
	mr		r5,r5		# object=r5 object=r5
	.d2prologue_end
#                                                     VAR (ObjectTypeType,  AUTOMATIC)  objectType,
#                                                     VAR (Os_ObjectType,   AUTOMATIC)  object )
# {
#     VAR (ObjectAccessType, AUTOMATIC)  retVal;
#     VAR (Os_APICallType,   AUTOMATIC)  checkObjectAcccesCall;
# 
#     checkObjectAcccesCall.Os_API_Data.Os_ApiCheckObjectAccess.AppID      =   applID;
	.d2line		64
	stb		r3,24(r1)		# applID=r3
#     checkObjectAcccesCall.Os_API_Data.Os_ApiCheckObjectAccess.ObjectType =   objectType;
	.d2line		65
	stw		r4,28(r1)		# objectType=r4
#     checkObjectAcccesCall.Os_API_Data.Os_ApiCheckObjectAccess.Object     =   object;
	.d2line		66
	stw		r5,32(r1)		# object=r5
# 
#     /* Taking address of function on purpose */
#     OS_LIGHT_SYSCALL ( checkObjectAcccesCall, CheckObjectAccess );
	.d2line		69
	diab.addi		r3,r1,8		# applID=r3
.Llo4:
	lis		r4,Os_API_CheckObjectAccess@ha		# objectType=r4
	e_add16i		r4,r4,Os_API_CheckObjectAccess@l		# objectType=r4 objectType=r4
.Llo5:
	bl		OS_SYS_CALL
# 
#     if ( E_OK == checkObjectAcccesCall.Os_API_ReturnValue )
	.d2line		71
.Llo6:
	lbz		r0,12(r1)		# retVal=r0
.Llo9:
	se_cmpi		r0,0		# retVal=r0
#     {
#         retVal = ACCESS; /* [OS271] */
	.d2line		73
	isel		r3,0,r0,2		# retVal=r3 retVal=r0
.L11351:
#     }
# 
#     else
#     {
#         /* [OS088-05-022] [OS088-05-023] [OS088-05-024] [OS088-05-025] [OS088-05-026]
#          * [OS088-05-063] [OS088-05-071] [OS272]
#          */
#         retVal = NO_ACCESS;
	.d2line		81
.Llo10:
	diab.li		r0,1		# retVal=r0
.Llo11:
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L11352:
#     }
# 
#     return retVal;
	.d2line		84
	mr		r3,r3		# retVal=r3 retVal=r3
# }
	.d2line		85
	.d2epilogue_begin
.Llo12:
	lwz		r0,52(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11470:
	.type		CheckObjectAccess,@function
	.size		CheckObjectAccess,.-CheckObjectAccess
# Number of nodes = 46

# Allocations for CheckObjectAccess
#	?a4		applID
#	?a5		objectType
#	?a6		object
#	?a7		retVal
#	SP,8		checkObjectAcccesCall
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_CheckObjectAccess( CONST (ObjectTypeType,  AUTOMATIC) objectType,
	.section	.Os_TEXT,,c
	.align		1
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectAccess.c"
        .d2line         164,41
#$$ld
.L11494:

#$$bf	Os_CheckObjectAccess,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CheckObjectAccess:
.Llo13:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# objectType=r3 objectType=r3
	mr		r4,r4		# object=r4 object=r4
.Llo15:
	mr		r31,r5		# applID=r31 applID=r5
	.d2prologue_end
#                                                               CONST (Os_ObjectType,   AUTOMATIC) object,
#                                                               CONST (ApplicationType, AUTOMATIC) applID)
# {
#     VAR (StatusType, AUTOMATIC) retVal;
#     /* List of requirements that are not checked (automatically satisfied):
#      * [OS088-01-139] [OS088-01-140]
#      */
#     switch(objectType)
	.d2line		172
	mr		r6,r3		# objectType=r6 objectType=r3
	se_cmpi		r6,3
	bc		1,1,.L11507	# gt
.Llo14:
	bc		1,2,.L11387	# eq
.Llo32:
	se_cmpi		r6,0
	bc		1,2,.L11371	# eq
	se_cmpi		r6,1
	bc		1,2,.L11377	# eq
	se_cmpi		r6,2
	bc		1,2,.L11382	# eq
	b		.L11407
.L11507:
	se_cmpi		r6,4
	bc		1,2,.L11397	# eq
	se_cmpi		r6,5
	bc		1,2,.L11402	# eq
	b		.L11407
.L11371:
	.section	.Os_TEXT,,c
.L11508:
#      {
#          case OBJECT_TASK:
#          {
#              VAR(TaskType,AUTOMATIC) task = (TaskType)object;
	.d2line		176
	mr		r28,r4		# task=r28 task=r4
#              if(Os_false == Os_Task_CheckId(task))
	.d2line		177
.Llo16:
	mr		r3,r28		# object=r3 object=r28
	bl		Os_Task_CheckId
.Llo81:
	se_cmpi		r3,0
	bc		0,2,.L11372	# ne
#              {
#                  retVal =  E_OS_VALUE; /* [OS423-01] */
	.d2line		179
.Llo33:
	diab.li		r31,8		# retVal=r31
.Llo56:
	b		.L11376
.L11372:
#              }
#              else if(Os_Access_Denied == Os_Access_Check(Os_Proc_Stat[task].Os_ProcAppAccess, (ProcType)applID) )
	.d2line		181
.Llo17:
	lis		r3,(Os_Proc_Stat+52)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+52)@l
.Llo18:
	e_mulli		r28,r28,80		# task=r28 task=r28
.Llo19:
	lwzx		r3,r3,r28
	rlwinm		r4,r31,0,24,31		# applID=r31
	bl		Os_Access_Check
	se_cmpi		r3,1
	bc		0,2,.L11374	# ne
#              {
#                  retVal =  E_OS_ACCESS; /* [OS423-01] */
	.d2line		183
.Llo34:
	diab.li		r31,1		# retVal=r31
.Llo57:
	b		.L11376
.L11374:
#              }
#              else
#              {
#                  retVal =  E_OK;
	.d2line		187
.Llo58:
	diab.li		r31,0		# retVal=r31
	.section	.Os_TEXT,,c
.L11509:
.Llo59:
	b		.L11376
.L11377:
	.section	.Os_TEXT,,c
.L11516:
#              }
#          }break;
# 
#          case OBJECT_ISR:
#          {
#              VAR(ISRType,AUTOMATIC) isrid = (ISRType)object;
	.d2line		193
.Llo35:
	mr		r28,r4		# isrid=r28 isrid=r4
#              if(Os_false == Os_ISR_CheckId(isrid))
	.d2line		194
.Llo20:
	mr		r3,r28		# object=r3 object=r28
	bl		Os_ISR_CheckId
.Llo82:
	se_cmpi		r3,0
	bc		0,2,.L11378	# ne
#              {
#                  retVal =  E_OS_VALUE; /* [OS423-01] */
	.d2line		196
.Llo36:
	diab.li		r31,8		# retVal=r31
.Llo60:
	b		.L11376
.L11378:
#              }
#              else if(Os_Access_Denied == Os_Access_Check(Os_Proc_Stat[isrid].Os_ProcAppAccess, (ProcType)applID) )
	.d2line		198
.Llo21:
	lis		r3,(Os_Proc_Stat+52)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+52)@l
.Llo22:
	e_mulli		r28,r28,80		# isrid=r28 isrid=r28
.Llo23:
	lwzx		r3,r3,r28
	rlwinm		r4,r31,0,24,31		# applID=r31
	bl		Os_Access_Check
	se_cmpi		r3,1
	bc		0,2,.L11380	# ne
#              {
#                  retVal =  E_OS_ACCESS; /* [OS423-01] */
	.d2line		200
.Llo37:
	diab.li		r31,1		# retVal=r31
.Llo61:
	b		.L11376
.L11380:
#              }
#              else
#              {
#                  retVal =  E_OK;
	.d2line		204
.Llo62:
	diab.li		r31,0		# retVal=r31
	.section	.Os_TEXT,,c
.L11517:
.Llo63:
	b		.L11376
.L11382:
	.section	.Os_TEXT,,c
.L11523:
#              }
#          }break;
# 
#          case OBJECT_ALARM:
#          {
#              VAR(AlarmType,AUTOMATIC) alarmId = (AlarmType)object;
	.d2line		210
.Llo38:
	mr		r28,r4		# alarmId=r28 alarmId=r4
#              if(Os_false == Os_Alarm_CheckId(alarmId) )
	.d2line		211
.Llo24:
	mr		r3,r28		# object=r3 object=r28
	bl		Os_Alarm_CheckId
.Llo83:
	se_cmpi		r3,0
	bc		0,2,.L11383	# ne
#              {
#                  retVal = E_OS_ID; /* [OS423-01] */
	.d2line		213
.Llo39:
	diab.li		r31,3		# retVal=r31
.Llo64:
	b		.L11376
.L11383:
#              }
#              else if( Os_Access_Denied == Os_Access_Check( Os_AlarmStat[alarmId].Os_AlarmAppAccessRights,
	.d2line		215
.Llo25:
	lis		r3,Os_AlarmStat@ha
	lwz		r0,Os_AlarmStat@l(r3)
.Llo26:
	e_mulli		r28,r28,24		# alarmId=r28 alarmId=r28
.Llo27:
	se_add		r28,r0		# alarmId=r28 alarmId=r28
	lwz		r3,16(r28)		# alarmId=r28
	rlwinm		r4,r31,0,24,31		# applID=r31
	bl		Os_Access_Check
	se_cmpi		r3,1
	bc		0,2,.L11385	# ne
#                                                            (ProcType)applID ) )
#              {
#                  retVal = E_OS_ACCESS; /* [OS423-01] */
	.d2line		218
.Llo40:
	diab.li		r31,1		# retVal=r31
.Llo65:
	b		.L11376
.L11385:
#              }
#              else
#              {
#                  retVal = E_OK;
	.d2line		222
.Llo66:
	diab.li		r31,0		# retVal=r31
	.section	.Os_TEXT,,c
.L11524:
.Llo67:
	b		.L11376
.L11387:
	.section	.Os_TEXT,,c
.L11530:
#              }
#          }break;
# 
#          case OBJECT_RESOURCE:
#          {
#              VAR(ResourceType,AUTOMATIC) resourceId = (ResourceType)object;
	.d2line		228
.Llo41:
	mr		r28,r4		# resourceId=r28 resourceId=r4
#              if(Os_false == Os_Resource_CheckId(resourceId) )
	.d2line		229
	lis		r3,(Os_ResourceRange+12)@ha
	lwz		r0,(Os_ResourceRange+12)@l(r3)
	se_cmpl		r0,r28		# resourceId=r28
	isel		r3,0,r0,0
.L11408:
.Llo84:
	diab.li		r0,1
.Llo87:
	isel		r0,r3,r0,0
.L11409:
	se_cmpi		r0,0
	bc		0,2,.L11388	# ne
#              {
#                  retVal = E_OS_ID; /* [OS423-01] */
	.d2line		231
.Llo42:
	diab.li		r31,3		# retVal=r31
.Llo43:
	b		.L11376
.L11388:
	.section	.Os_TEXT,,c
.L11537:
#              }
#              else
#              {
#                  CONSTP2CONST(ProcType, TYPEDEF, OS_CONST) currAppProcIDs = Os_Applications_Stat[applID].Os_AppProcIDs;
	.d2line		235
.Llo68:
	rlwinm		r31,r31,0,24,31		# applID=r31 applID=r31
	lis		r3,(Os_Applications_Stat+28)@ha
	e_add16i		r3,r3,(Os_Applications_Stat+28)@l
	rlwinm		r0,r31,6,0,25		# applID=r31
	se_slwi		r31,4		# applID=r31 applID=r31
	subf		r31,r31,r0		# applID=r31 applID=r31
	lwzx		r30,r3,r31		# currAppProcIDs=r30
.Llo88:
	mr		r30,r30		# currAppProcIDs=r30 currAppProcIDs=r30
#                  /**  SWS: Note that Resource objects do not belong to any OS-Application,
#                   *        but access to them must  be  explicitly  granted.
#                   */
#                  if (currAppProcIDs[0] == OS_INVALID_PROC)
	.d2line		239
	lwz		r0,0(r30)		# currAppProcIDs=r30
	cmpi		0,0,r0,-1
	bc		0,2,.L11390	# ne
#                  {
#                      retVal = E_OS_ACCESS; /* [OS423-01] */
	.d2line		241
	diab.li		r31,1		# retVal=r31
.Llo69:
	b		.L11376
.L11390:
	.section	.Os_TEXT,,c
.L11546:
#                  }
#                  else
#                  {
#                      VAR(ProcType,AUTOMATIC) applProcCtr;
#                      retVal = E_OS_ACCESS;
	.d2line		246
.Llo70:
	diab.li		r31,1		# retVal=r31
#                      for (applProcCtr = 0; currAppProcIDs[applProcCtr] != OS_INVALID_PROC; applProcCtr++)
	.d2line		247
.Llo71:
	diab.li		r29,0		# applProcCtr=r29
.L11392:
.Llo89:
	rlwinm		r5,r29,2,0,29		# applProcCtr=r29
.Llo44:
	lwzux		r0,r5,r30
	cmpi		0,0,r0,-1
	bc		1,2,.L11376	# eq
#                      {
#                          if (Os_Access_Granted ==
	.d2line		249
	lis		r3,(Os_ResourceStat+4)@ha
	e_add16i		r3,r3,(Os_ResourceStat+4)@l
	e_mulli		r0,r28,12		# resourceId=r28
	lwzx		r3,r3,r0
	rlwinm		r5,r29,2,0,29		# applProcCtr=r29
	lwzux		r4,r5,r30
	bl		Os_Access_Check
	se_cmpi		r3,0
	bc		0,2,.L11395	# ne
#                                    Os_Access_Check( Os_ResourceStat[resourceId].Os_ResourceAccessRights,
#                                                     (ProcType)currAppProcIDs[applProcCtr]) )
#                          {
#                              retVal = E_OK; /* [OS271] */
	.d2line		253
	diab.li		r31,0		# retVal=r31
	b		.L11376
.L11395:
#                              break;
#                          }
#                      }
	.d2line		256
	diab.addi		r5,r29,1		# applProcCtr=r29
	se_addi		r29,1		# applProcCtr=r29 applProcCtr=r29
	b		.L11392
	.section	.Os_TEXT,,c
.L11547:
	.section	.Os_TEXT,,c
.L11538:
	.section	.Os_TEXT,,c
.L11531:
.L11397:
	.section	.Os_TEXT,,c
.L11552:
#                  }
#              }
#          }break;
# 
#          case OBJECT_COUNTER:
#          {
#              VAR(CounterType,AUTOMATIC) counterId = (CounterType)object;
	.d2line		263
.Llo45:
	mr		r28,r4		# counterId=r28 counterId=r4
#              if(Os_false == Os_Counter_CheckId(counterId) )
	.d2line		264
.Llo28:
	mr		r3,r28		# object=r3 object=r28
	bl		Os_Counter_CheckId
.Llo85:
	se_cmpi		r3,0
	bc		0,2,.L11398	# ne
#              {
#                  retVal = E_OS_ID; /* [OS423-01] */
	.d2line		266
.Llo46:
	diab.li		r31,3		# retVal=r31
.Llo72:
	b		.L11376
.L11398:
#              }
#              else if (Os_Access_Denied ==
	.d2line		268
.Llo29:
	lis		r3,(Os_CounterStat+40)@ha
	e_add16i		r3,r3,(Os_CounterStat+40)@l
.Llo30:
	e_mulli		r28,r28,48		# counterId=r28 counterId=r28
.Llo31:
	lwzx		r3,r3,r28
	rlwinm		r4,r31,0,24,31		# applID=r31
	bl		Os_Access_Check
	se_cmpi		r3,1
	bc		0,2,.L11400	# ne
#                          Os_Access_Check(Os_CounterStat[counterId].Os_CounterAppAccess, (ProcType)applID ))
#              {
#                  retVal = E_OS_ACCESS; /* [OS423-01] */
	.d2line		271
.Llo47:
	diab.li		r31,1		# retVal=r31
.Llo73:
	b		.L11376
.L11400:
#              }
#              else
#              {
#                  retVal = E_OK;
	.d2line		275
.Llo74:
	diab.li		r31,0		# retVal=r31
	.section	.Os_TEXT,,c
.L11553:
.Llo75:
	b		.L11376
.L11402:
	.section	.Os_TEXT,,c
.L11559:
#              }
#          }break;
# 
#          case OBJECT_SCHEDULETABLE:
#          {
#              VAR(ScheduleTableType,AUTOMATIC) schTblId = (ScheduleTableType)object;
	.d2line		281
.Llo48:
	mr		r4,r4		# schTblId=r4 schTblId=r4
#              if( Os_false == OS_SCHTBL_CHECKID(schTblId) )
	.d2line		282
.Llo86:
	lis		r3,(Os_SchTblRange+12)@ha
	lwz		r0,(Os_SchTblRange+12)@l(r3)
	se_cmpl		r0,r4		# schTblId=r4
	isel		r3,0,r0,0
.L11410:
	diab.li		r0,1
	isel		r0,r3,r0,0
.L11411:
	se_cmpi		r0,0
	bc		0,2,.L11403	# ne
#              {
#                  retVal = E_OS_ID; /* [OS423-01] */
	.d2line		284
.Llo49:
	diab.li		r31,3		# retVal=r31
.Llo50:
	b		.L11376
.L11403:
#              }
#              else if (Os_Access_Denied ==
	.d2line		286
.Llo51:
	lis		r3,Os_SchTblStat@ha
.Llo52:
	lwz		r0,Os_SchTblStat@l(r3)
.Llo90:
	e_mulli		r4,r4,40		# schTblId=r4 schTblId=r4
	se_add		r4,r0		# schTblId=r4 schTblId=r4
	lwz		r3,28(r4)		# schTblId=r4
	rlwinm		r4,r31,0,24,31		# schTblId=r4 applID=r31
.Llo91:
	bl		Os_Access_Check
	se_cmpi		r3,1
	bc		0,2,.L11405	# ne
#                             Os_Access_Check(Os_SchTblStat[schTblId].Os_SchTblAppAccess, (ProcType)applID) )
#              {
#                  retVal = E_OS_ACCESS; /* [OS423-01] */
	.d2line		289
.Llo53:
	diab.li		r31,1		# retVal=r31
.Llo76:
	b		.L11376
.L11405:
#              }
#              else
#              {
#                  retVal = E_OK;
	.d2line		293
.Llo77:
	diab.li		r31,0		# retVal=r31
	.section	.Os_TEXT,,c
.L11560:
.Llo78:
	b		.L11376
.L11407:
#              }
#          }break;
# 
#          default:
#              retVal = E_OS_VALUE; /* [OS423-03] */
	.d2line		298
.Llo54:
	diab.li		r31,8		# retVal=r31
.L11376:
#          break;
#      }
#     return retVal;
	.d2line		301
.Llo79:
	rlwinm		r3,r31,0,24,31		# retVal=r31
# }
	.d2line		302
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo80:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo55:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11495:
	.type		Os_CheckObjectAccess,@function
	.size		Os_CheckObjectAccess,.-Os_CheckObjectAccess
# Number of nodes = 292

# Allocations for Os_CheckObjectAccess
#	?a4		objectType
#	?a5		object
#	?a6		applID
#	?a7		$$2356
#	?a8		$$2355
#	?a9		$$2354
#	?a10		retVal
#	?a11		task
#	?a12		isrid
#	?a13		alarmId
#	?a14		resourceId
#	?a15		currAppProcIDs
#	?a16		applProcCtr
#	?a17		counterId
#	?a18		schTblId
# OS_APILIGHT(CheckObjectAccess)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         100,1
#$$ld
.L11568:

#$$bf	Os_API_CheckObjectAccess,interprocedural,rasave,nostackparams
	.globl		Os_API_CheckObjectAccess
	.d2_cfa_start __cie
Os_API_CheckObjectAccess:
.Llo92:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     /* [OS450-01] */
#     VAR   (StatusType, AUTOMATIC)  retVal;
#     CONST (CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		104
	mfspr		r30,286		# coreId=r30
	mr		r30,r30		# coreId=r30 coreId=r30
# 
#     OS_TRACE (CheckObjectAccess_Entry , coreId);
	.d2line		106
	diab.li		r0,7
	lis		r3,(Os_Core_DynShared+120)@ha
.Llo93:
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	rlwinm		r5,r30,0,16,31		# coreId=r30
	e_mulli		r4,r5,152
	stbx		r0,r3,r4
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     if(OS_HOOKISNOT(OS_HOOKID_NONE           |
	.d2line		110
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	e_mulli		r5,r5,20
	lwzx		r3,r3,r5
	lhz		r0,100(r3)
	e_and2i.		r0,353
	se_cmpi		r0,0
	bc		0,2,.L11357	# ne
#                     OS_HOOKID_ERRORHOOK      | /* [OS088-01-141] */
#                     OS_HOOKID_APPERRORHOOK   | /* [OS088-01-220] */
#                     OS_HOOKID_PROTECTIONHOOK   /* [OS088-01-142] */
#                     , coreId))
#     {
#         /* [OS088-03-174] [OS088-03-175] [OS088-03-176] [OS088-03-177] [OS088-03-178]
#          * [OS088-03-400] [OS088-03-444] [OS088-03-400] [OS088-03-444] [OS-MGC-0056-20]
#          * [OS-MGC-0056-63]
#          */
#         retVal = E_OS_CALLEVEL;
	.d2line		120
.Llo94:
	diab.li		r3,2		# retVal=r3
.Llo96:
	b		.L11358
.L11357:
#     }
#     else
# 
#   #endif
# 
#     if ( (Os_ObjectType)Os_APICall->Os_API_Data.Os_ApiCheckObjectAccess.AppID >
	.d2line		126
.Llo97:
	lbz		r0,16(r31)		# Os_APICall=r31
	lis		r3,(Os_ApplicationRange+12)@ha
	lwz		r3,(Os_ApplicationRange+12)@l(r3)
	se_cmpl		r0,r3
	bc		0,1,.L11359	# le
#                                          Os_ApplicationRange[(uint32)OS_CORE_NO - 1U].Os_ObjEndId  )
#     {
#         retVal = E_OS_ID; /* [OS423-02] */
	.d2line		129
	diab.li		r3,3		# retVal=r3
.Llo98:
	b		.L11358
.L11359:
#     }
#     else if ( Os_Isr_Enabled != Os_Isr_GetState ( coreId ) )
	.d2line		131
.Llo99:
	mr		r3,r30		# coreId=r3 coreId=r30
	bl		Os_Isr_GetState
	se_cmpi		r3,0		# coreId=r3
	bc		1,2,.L11361	# eq
#     {
#         retVal = E_OS_DISABLEDINT; /* [OS093-01-26] */
	.d2line		133
	diab.li		r3,10		# retVal=r3
.Llo100:
	b		.L11358
.L11361:
#     }
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-139] [OS088-01-140]
#          */
#         retVal = Os_CheckObjectAccess(Os_APICall->Os_API_Data.Os_ApiCheckObjectAccess.ObjectType,
	.d2line		140
.Llo101:
	lwz		r3,20(r31)		# coreId=r3 Os_APICall=r31
	lwz		r4,24(r31)		# Os_APICall=r31
	lbz		r5,16(r31)		# Os_APICall=r31
	bl		Os_CheckObjectAccess
.Llo102:
	mr		r3,r3		# retVal=r3 retVal=r3
.L11358:
#                                       Os_APICall->Os_API_Data.Os_ApiCheckObjectAccess.Object,
#                                       Os_APICall->Os_API_Data.Os_ApiCheckObjectAccess.AppID);
#     }
# 
#   #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#     if ( E_OK != retVal )
	.d2line		147
	rlwinm		r0,r3,0,24,31		# retVal=r3
	se_cmpi		r0,0
	bc		1,2,.L11363	# eq
#     {
#         /* Setting global error variables */
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_ApplID   =   Os_APICall->Os_API_Data.Os_ApiCheckObjectAccess.AppID;
	.d2line		150
	lbz		r0,16(r31)		# Os_APICall=r31
	lis		r4,(Os_Core_DynShared+52)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+52)@l
	rlwinm		r5,r30,0,16,31		# coreId=r30
	e_mulli		r5,r5,152
	stbux		r0,r4,r5
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_ObjType  =   Os_APICall->Os_API_Data.Os_ApiCheckObjectAccess.ObjectType;
	.d2line		151
	lwz		r0,20(r31)		# Os_APICall=r31
	lis		r4,(Os_Core_DynShared+60)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+60)@l
	stwx		r0,r4,r5
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_ObjObj   =   Os_APICall->Os_API_Data.Os_ApiCheckObjectAccess.Object;
	.d2line		152
	lwz		r0,24(r31)		# Os_APICall=r31
	lis		r4,(Os_Core_DynShared+108)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+108)@l
	stwx		r0,r4,r5
.L11363:
#     }
# 
#   #endif
# 
#     Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		157
.Llo104:
	stb		r3,4(r31)		# Os_APICall=r31 retVal=r3
# 
#     OS_TRACE (CheckObjectAccess_Exit , coreId);
	.d2line		159
	diab.li		r3,6		# retVal=r3
	lis		r4,(Os_Core_DynShared+120)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l
.Llo105:
	rlwinm		r30,r30,0,16,31		# coreId=r30 coreId=r30
	e_mulli		r30,r30,152		# coreId=r30 coreId=r30
.Llo106:
	stbx		r3,r4,r30		# retVal=r3
# } /* End CheckObjectAccess () */
	.d2line		160
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo95:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo103:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11569:
	.type		Os_API_CheckObjectAccess,@function
	.size		Os_API_CheckObjectAccess,.-Os_API_CheckObjectAccess
# Number of nodes = 154

# Allocations for Os_API_CheckObjectAccess
#	?a4		Os_APICall
#	?a5		retVal
#	?a6		coreId

# Allocations for module
	.section	.text_vle
	.0byte		.L11577
	.section	.text_vle
	.0byte		.L11590
	.section	.text_vle
	.0byte		.L11600
	.section	.text_vle
	.0byte		.L11607
	.section	.text_vle
	.0byte		.L11614
	.section	.text_vle
	.0byte		.L11624
	.section	.text_vle
	.0byte		.L11631
	.section	.Os_BSS,,b
	.0byte		.L11638
	.section	.text_vle
#$$ld
.L5:
.L12221:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12217:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12215:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12213:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12211:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12191:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12187:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12184:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12167:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12147:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L12045:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11929:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11698:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11643:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11632:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11625:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_AlarmCfgTypes.h"
.L11615:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ScheduleTableCfgTypes.h"
.L11608:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11601:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L11591:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11578:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ResourceCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11442:
.L11496:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectAccess.c"
.L11450:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11463:
.L11471:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectAccess.c"
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
	.uleb128	6
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
	.uleb128	9
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectAccess.c"
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
.L11439:
	.4byte		.L11440-.L11438
.L11438:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11444-.L11439
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectAccess.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11441
	.4byte		.L11442
	.4byte		.L11445
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11453:
	.sleb128	2
	.4byte		.L11447-.L11439
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11450
	.uleb128	227
	.uleb128	45
	.4byte		.L11451
	.byte		0x1
	.4byte		.L11448
	.4byte		.L11449
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11450
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11454
	.4byte		.L11458
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11447:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11460:
	.4byte		.L11461-.L11459
.L11459:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11465-.L11460
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_CheckObjectAccess.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11462
	.4byte		.L11463
	.4byte		.L11466
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11474:
	.sleb128	4
	.4byte		.L11468-.L11460
	.byte		"CheckObjectAccess"
	.byte		0
	.4byte		.L11471
	.uleb128	57
	.uleb128	34
	.4byte		.L11472
	.byte		0x1
	.byte		0x1
	.4byte		.L11469
	.4byte		.L11470
	.sleb128	3
	.4byte		.L11471
	.uleb128	57
	.uleb128	34
	.byte		"applID"
	.byte		0
	.4byte		.L11475
	.4byte		.L11478
	.sleb128	3
	.4byte		.L11471
	.uleb128	57
	.uleb128	34
	.byte		"objectType"
	.byte		0
	.4byte		.L11479
	.4byte		.L11481
	.sleb128	3
	.4byte		.L11471
	.uleb128	57
	.uleb128	34
	.byte		"object"
	.byte		0
	.4byte		.L11482
	.4byte		.L11485
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11486:
	.sleb128	5
	.4byte		.L11471
	.uleb128	61
	.uleb128	40
	.byte		"retVal"
	.byte		0
	.4byte		.L11472
	.4byte		.L11487
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11488:
	.sleb128	6
	.4byte		.L11471
	.uleb128	62
	.uleb128	40
	.byte		"checkObjectAcccesCall"
	.byte		0
	.4byte		.L11489
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11468:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11498:
	.sleb128	2
	.4byte		.L11493-.L11439
	.byte		"Os_CheckObjectAccess"
	.byte		0
	.4byte		.L11496
	.uleb128	164
	.uleb128	41
	.4byte		.L11497
	.byte		0x1
	.4byte		.L11494
	.4byte		.L11495
	.sleb128	3
	.4byte		.L11496
	.uleb128	164
	.uleb128	41
	.byte		"objectType"
	.byte		0
	.4byte		.L11499
	.4byte		.L11500
	.sleb128	3
	.4byte		.L11496
	.uleb128	164
	.uleb128	41
	.byte		"object"
	.byte		0
	.4byte		.L11501
	.4byte		.L11502
	.sleb128	3
	.4byte		.L11496
	.uleb128	164
	.uleb128	41
	.byte		"applID"
	.byte		0
	.4byte		.L11503
	.4byte		.L11504
.L11505:
	.sleb128	5
	.4byte		.L11496
	.uleb128	168
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11497
	.4byte		.L11506
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11511
	.4byte		.L11508
	.4byte		.L11509
.L11512:
	.sleb128	5
	.4byte		.L11496
	.uleb128	176
	.uleb128	38
	.byte		"task"
	.byte		0
	.4byte		.L11513
	.4byte		.L11515
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11511:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11519
	.4byte		.L11516
	.4byte		.L11517
.L11520:
	.sleb128	5
	.4byte		.L11496
	.uleb128	193
	.uleb128	37
	.byte		"isrid"
	.byte		0
	.4byte		.L11521
	.4byte		.L11522
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11519:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11526
	.4byte		.L11523
	.4byte		.L11524
.L11527:
	.sleb128	5
	.4byte		.L11496
	.uleb128	210
	.uleb128	39
	.byte		"alarmId"
	.byte		0
	.4byte		.L11528
	.4byte		.L11529
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11526:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11533
	.4byte		.L11530
	.4byte		.L11531
.L11534:
	.sleb128	5
	.4byte		.L11496
	.uleb128	228
	.uleb128	42
	.byte		"resourceId"
	.byte		0
	.4byte		.L11535
	.4byte		.L11536
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11540
	.4byte		.L11537
	.4byte		.L11538
.L11541:
	.sleb128	5
	.4byte		.L11496
	.uleb128	235
	.uleb128	60
	.byte		"currAppProcIDs"
	.byte		0
	.4byte		.L11542
	.4byte		.L11545
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11549
	.4byte		.L11546
	.4byte		.L11547
.L11550:
	.sleb128	5
	.4byte		.L11496
	.uleb128	245
	.uleb128	46
	.byte		"applProcCtr"
	.byte		0
	.4byte		.L11514
	.4byte		.L11551
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11549:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11540:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11533:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11555
	.4byte		.L11552
	.4byte		.L11553
.L11556:
	.sleb128	5
	.4byte		.L11496
	.uleb128	263
	.uleb128	41
	.byte		"counterId"
	.byte		0
	.4byte		.L11557
	.4byte		.L11558
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11555:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11562
	.4byte		.L11559
	.4byte		.L11560
.L11563:
	.sleb128	5
	.4byte		.L11496
	.uleb128	281
	.uleb128	47
	.byte		"schTblId"
	.byte		0
	.4byte		.L11564
	.4byte		.L11565
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11562:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11493:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11570:
	.sleb128	8
	.4byte		.L11567-.L11439
	.byte		"Os_API_CheckObjectAccess"
	.byte		0
	.4byte		.L11496
	.uleb128	100
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11568
	.4byte		.L11569
	.sleb128	3
	.4byte		.L11496
	.uleb128	100
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11571
	.4byte		.L11572
.L11573:
	.sleb128	5
	.4byte		.L11496
	.uleb128	103
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L11497
	.4byte		.L11574
.L11575:
	.sleb128	5
	.4byte		.L11496
	.uleb128	104
	.uleb128	36
	.byte		"coreId"
	.byte		0
	.4byte		.L11454
	.4byte		.L11576
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11567:
	.section	.debug_info,,n
.L11577:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11578
	.uleb128	57
	.uleb128	45
	.byte		"Os_ResourceStat"
	.byte		0
	.4byte		.L11579
	.section	.debug_info,,n
.L11584:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11578
	.uleb128	59
	.uleb128	45
	.byte		"Os_ResourceRange"
	.byte		0
	.4byte		.L11585
.L11590:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11591
	.uleb128	100
	.uleb128	48
	.byte		"Os_Applications_Stat"
	.byte		0
	.4byte		.L11592
	.section	.debug_info,,n
.L11597:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11591
	.uleb128	102
	.uleb128	44
	.byte		"Os_ApplicationRange"
	.byte		0
	.4byte		.L11598
.L11600:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11601
	.uleb128	119
	.uleb128	44
	.byte		"Os_CounterStat"
	.byte		0
	.4byte		.L11602
	.section	.debug_info,,n
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
	.uleb128	144
	.uleb128	60
	.byte		"Os_SchTblStat"
	.byte		0
	.4byte		.L11616
	.section	.debug_info,,n
.L11621:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11615
	.uleb128	146
	.uleb128	44
	.byte		"Os_SchTblRange"
	.byte		0
	.4byte		.L11622
.L11624:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11625
	.uleb128	157
	.uleb128	59
	.byte		"Os_AlarmStat"
	.byte		0
	.4byte		.L11626
	.section	.debug_info,,n
.L11631:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11632
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11633
	.section	.debug_info,,n
.L11638:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11632
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11639
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11637:
	.sleb128	10
	.4byte		.L11643
	.uleb128	69
	.uleb128	1
	.4byte		.L11644-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11645
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11649
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11657
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11644:
.L11648:
	.sleb128	10
	.4byte		.L11643
	.uleb128	69
	.uleb128	1
	.4byte		.L11671-.L2
	.uleb128	36
.L785:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11671:
.L11642:
	.sleb128	10
	.4byte		.L11643
	.uleb128	69
	.uleb128	1
	.4byte		.L11677-.L2
	.uleb128	152
.L778:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11677:
.L11652:
	.sleb128	10
	.4byte		.L11643
	.uleb128	69
	.uleb128	1
	.4byte		.L11682-.L2
	.uleb128	104
.L775:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11682:
.L11675:
	.sleb128	10
	.4byte		.L11643
	.uleb128	69
	.uleb128	1
	.4byte		.L11689-.L2
	.uleb128	4
.L774:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11689:
.L11684:
	.sleb128	10
	.4byte		.L11643
	.uleb128	69
	.uleb128	1
	.4byte		.L11692-.L2
	.uleb128	48
.L766:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11692:
	.section	.debug_info,,n
.L11697:
	.sleb128	12
	.4byte		.L11698
	.uleb128	612
	.uleb128	1
	.4byte		.L11699-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11699:
.L11673:
	.sleb128	10
	.4byte		.L11698
	.uleb128	612
	.uleb128	1
	.4byte		.L11701-.L2
	.uleb128	28
.L745:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11701:
.L11686:
	.sleb128	10
	.4byte		.L11698
	.uleb128	612
	.uleb128	1
	.4byte		.L11704-.L2
	.uleb128	52
.L739:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11704:
.L11679:
	.sleb128	10
	.4byte		.L11698
	.uleb128	612
	.uleb128	1
	.4byte		.L11715-.L2
	.uleb128	8
.L737:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11715:
.L11656:
	.sleb128	12
	.4byte		.L11698
	.uleb128	612
	.uleb128	1
	.4byte		.L11716-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11521
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11716:
.L11490:
	.sleb128	12
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11720-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11728
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11720:
	.section	.debug_info,,n
.L11728:
	.sleb128	13
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11729-.L2
	.uleb128	24
.L679:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11732
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11764
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11788
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11729:
.L11825:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11826-.L2
	.uleb128	8
.L677:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11826:
.L11823:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11829-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11829:
.L11821:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11840-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11840:
.L11819:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11845-.L2
	.uleb128	2
.L672:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11845:
.L11817:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11846-.L2
	.uleb128	2
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11846:
.L11815:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11847-.L2
	.uleb128	20
.L666:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11476
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11476
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11847:
.L11813:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11849-.L2
	.uleb128	12
.L663:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11849:
.L11811:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11854-.L2
	.uleb128	12
.L660:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11854:
.L11809:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11855-.L2
	.uleb128	12
.L657:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11855:
.L11775:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11856-.L2
	.uleb128	4
.L656:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11856:
.L11773:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11857-.L2
	.uleb128	12
.L653:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11857:
.L11771:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11859-.L2
	.uleb128	12
.L650:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11859:
.L11769:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11860-.L2
	.uleb128	8
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11860:
.L11767:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11863-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11863:
.L11807:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11868-.L2
	.uleb128	4
.L645:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11868:
.L11805:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11869-.L2
	.uleb128	8
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11869:
.L11803:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11870-.L2
	.uleb128	4
.L642:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11870:
.L11801:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11871-.L2
	.uleb128	8
.L640:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11871:
.L11799:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11872-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11872:
.L11797:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11877-.L2
	.uleb128	4
.L637:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11877:
.L11795:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11878-.L2
	.uleb128	8
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11878:
.L11793:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11879-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11879:
.L11791:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11880-.L2
	.uleb128	12
.L630:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11880:
.L11789:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11881-.L2
	.uleb128	12
.L627:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11881:
.L11787:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	4
.L626:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11886:
.L11783:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11887-.L2
	.uleb128	4
.L625:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11521
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11887:
.L11779:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11888-.L2
	.uleb128	2
.L623:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11888:
.L11781:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11890-.L2
	.uleb128	1
.L622:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11890:
.L11777:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11891-.L2
	.uleb128	8
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11891:
.L11761:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11895-.L2
	.uleb128	8
.L619:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11895:
.L11759:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11899-.L2
	.uleb128	24
.L616:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11900
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11899:
.L11757:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11902-.L2
	.uleb128	8
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11902:
.L11755:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11903-.L2
	.uleb128	16
.L613:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11903:
.L11753:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11904-.L2
	.uleb128	8
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11904:
.L11751:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11909-.L2
	.uleb128	4
.L610:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11909:
.L11749:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11912-.L2
	.uleb128	4
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11912:
.L11747:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11913-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11913:
.L11765:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11914-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11914:
.L11763:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11915-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11915:
.L11785:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11916-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11916:
.L11745:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11918-.L2
	.uleb128	2
.L604:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11918:
.L11739:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11919-.L2
	.uleb128	2
.L603:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11919:
.L11737:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11920-.L2
	.uleb128	1
.L602:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11920:
.L11735:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11921-.L2
	.uleb128	8
.L600:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11921:
.L11733:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11924-.L2
	.uleb128	1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11924:
.L11743:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11925-.L2
	.uleb128	8
.L597:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11926
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11925:
.L11741:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11927-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11926
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11927:
.L11731:
	.sleb128	10
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L11928-.L2
	.uleb128	4
.L594:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11928:
.L11833:
	.sleb128	10
	.4byte		.L11929
	.uleb128	33
	.uleb128	14
	.4byte		.L11930-.L2
	.uleb128	24
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11936
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11940
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11930:
.L11944:
	.sleb128	10
	.4byte		.L11929
	.uleb128	33
	.uleb128	14
	.4byte		.L11948-.L2
	.uleb128	4
.L583:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11949
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11948:
.L11934:
	.sleb128	10
	.4byte		.L11929
	.uleb128	33
	.uleb128	14
	.4byte		.L11953-.L2
	.uleb128	6
.L580:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11953:
.L11630:
	.sleb128	10
	.4byte		.L11625
	.uleb128	121
	.uleb128	1
	.4byte		.L11954-.L2
	.uleb128	24
.L572:
	.sleb128	11
	.byte		"Os_AlarmDyn"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L573:
	.sleb128	11
	.byte		"Os_AlarmCounterStat"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L574:
	.sleb128	11
	.byte		"Os_AlarmAction"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L575:
	.sleb128	11
	.byte		"Os_AlarmAutoStart"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L576:
	.sleb128	11
	.byte		"Os_AlarmAppAccessRights"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L577:
	.sleb128	11
	.byte		"Os_AlarmOwnerApp"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11954:
.L11970:
	.sleb128	10
	.4byte		.L11625
	.uleb128	121
	.uleb128	1
	.4byte		.L11976-.L2
	.uleb128	16
.L568:
	.sleb128	11
	.byte		"Os_AlarmTime"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L569:
	.sleb128	11
	.byte		"Os_AlarmCycle"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L570:
	.sleb128	11
	.byte		"Os_AlarmStartKind"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L571:
	.sleb128	11
	.byte		"Os_AlarmAppModes"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11976:
.L11965:
	.sleb128	10
	.4byte		.L11625
	.uleb128	96
	.uleb128	1
	.4byte		.L11981-.L2
	.uleb128	32
.L566:
	.sleb128	11
	.byte		"Os_AlarmActionKind"
	.byte		0
	.4byte		.L11982
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L567:
	.sleb128	11
	.byte		"Os_AlarmActionData"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11981:
.L11958:
	.sleb128	10
	.4byte		.L11625
	.uleb128	96
	.uleb128	1
	.4byte		.L11988-.L2
	.uleb128	12
.L563:
	.sleb128	11
	.byte		"Os_AlarmState"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L564:
	.sleb128	11
	.byte		"Os_AlarmCycle"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L565:
	.sleb128	11
	.byte		"Os_AlarmValue"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11988:
.L11987:
	.sleb128	10
	.4byte		.L11625
	.uleb128	37
	.uleb128	1
	.4byte		.L11991-.L2
	.uleb128	24
.L560:
	.sleb128	11
	.byte		"Os_AlarmActionSeEvent"
	.byte		0
	.4byte		.L11992
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L561:
	.sleb128	11
	.byte		"Os_AlarmActionActivateTask"
	.byte		0
	.4byte		.L11995
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L562:
	.sleb128	11
	.byte		"Os_AlarmActionIncrementCounter"
	.byte		0
	.4byte		.L11998
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11991:
.L12000:
	.sleb128	10
	.4byte		.L11625
	.uleb128	37
	.uleb128	1
	.4byte		.L12001-.L2
	.uleb128	4
.L559:
	.sleb128	11
	.byte		"Os_AlarmActionCounterId"
	.byte		0
	.4byte		.L12002
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12001:
.L11994:
	.sleb128	10
	.4byte		.L11625
	.uleb128	37
	.uleb128	1
	.4byte		.L12003-.L2
	.uleb128	16
.L557:
	.sleb128	11
	.byte		"Os_AlarmActionTaskId"
	.byte		0
	.4byte		.L12004
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L558:
	.sleb128	11
	.byte		"Os_AlarmActionEventMask"
	.byte		0
	.4byte		.L12005
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12003:
.L11997:
	.sleb128	10
	.4byte		.L11625
	.uleb128	37
	.uleb128	1
	.4byte		.L12006-.L2
	.uleb128	4
.L556:
	.sleb128	11
	.byte		"Os_AlarmActionTaskId"
	.byte		0
	.4byte		.L12004
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12006:
.L11620:
	.sleb128	12
	.4byte		.L11615
	.uleb128	62
	.uleb128	1
	.4byte		.L12007-.L2
	.byte		"Os_SchTblStatType_s"
	.byte		0
	.uleb128	40
.L546:
	.sleb128	11
	.byte		"Os_SchTblCounter"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L547:
	.sleb128	11
	.byte		"Os_SchTblSyncStrategy"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L548:
	.sleb128	11
	.byte		"Os_SchTblRepeating"
	.byte		0
	.4byte		.L12011
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L549:
	.sleb128	11
	.byte		"Os_SchTblInitialEP"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L550:
	.sleb128	11
	.byte		"Os_SchTblFinalEP"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L551:
	.sleb128	11
	.byte		"Os_SchTblDuration"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L552:
	.sleb128	11
	.byte		"Os_SchTblRegistry"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L553:
	.sleb128	11
	.byte		"Os_SchTblAppAccess"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L554:
	.sleb128	11
	.byte		"Os_SchTblOwnerApp"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L555:
	.sleb128	11
	.byte		"Os_SchTblAutoStartStat"
	.byte		0
	.4byte		.L12023
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L12007:
.L12027:
	.sleb128	10
	.4byte		.L11615
	.uleb128	62
	.uleb128	1
	.4byte		.L12028-.L2
	.uleb128	12
.L543:
	.sleb128	11
	.byte		"Os_SchTblAutoStartValue"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L544:
	.sleb128	11
	.byte		"Os_SchTblAutoStartKind"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L545:
	.sleb128	11
	.byte		"Os_SchTblAppModeAutoStart"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12028:
.L12022:
	.sleb128	10
	.4byte		.L11615
	.uleb128	62
	.uleb128	1
	.4byte		.L12032-.L2
	.uleb128	16
.L539:
	.sleb128	11
	.byte		"Os_SchTblStatus"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L540:
	.sleb128	11
	.byte		"Os_SchTblNextEP"
	.byte		0
	.4byte		.L12015
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L541:
	.sleb128	11
	.byte		"Os_SchTblNextSchTblId"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L542:
	.sleb128	11
	.byte		"Os_SchTblNextSchTblBack"
	.byte		0
	.4byte		.L12033
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12032:
.L12018:
	.sleb128	10
	.4byte		.L11615
	.uleb128	62
	.uleb128	1
	.4byte		.L12035-.L2
	.uleb128	20
.L534:
	.sleb128	11
	.byte		"Os_SchTblEPDelay"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L535:
	.sleb128	11
	.byte		"Os_SchTblEPTaskActCount"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L536:
	.sleb128	11
	.byte		"Os_SchTblEPFirstTaskAct"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L537:
	.sleb128	11
	.byte		"Os_SchTblEPEventSetCount"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L538:
	.sleb128	11
	.byte		"Os_SchTblEPFirstEventSet"
	.byte		0
	.4byte		.L12039
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12035:
.L12043:
	.sleb128	10
	.4byte		.L11615
	.uleb128	62
	.uleb128	1
	.4byte		.L12044-.L2
	.uleb128	16
.L532:
	.sleb128	11
	.byte		"Os_SchTblEventSetTaskId"
	.byte		0
	.4byte		.L12004
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L533:
	.sleb128	11
	.byte		"Os_SchTblEventSetMask"
	.byte		0
	.4byte		.L12005
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12044:
.L11688:
	.sleb128	10
	.4byte		.L12045
	.uleb128	34
	.uleb128	14
	.4byte		.L12046-.L2
	.uleb128	2
.L531:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L12047
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12046:
.L11613:
	.sleb128	12
	.4byte		.L11608
	.uleb128	80
	.uleb128	13
	.4byte		.L12048-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L12004
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L12049
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L12005
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L12061
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L12061
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L12062
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L12064
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L12065
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12070
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12071
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12074
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L12075
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L12048:
.L12057:
	.sleb128	12
	.4byte		.L11608
	.uleb128	80
	.uleb128	13
	.4byte		.L12076-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L12064
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12076:
.L12052:
	.sleb128	10
	.4byte		.L11608
	.uleb128	80
	.uleb128	13
	.4byte		.L12079-.L2
	.uleb128	56
.L498:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12080
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L12063
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11476
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12082
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11476
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12079:
.L11606:
	.sleb128	12
	.4byte		.L11601
	.uleb128	44
	.uleb128	14
	.4byte		.L12085-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L486:
	.sleb128	11
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L12086
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L487:
	.sleb128	11
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L488:
	.sleb128	11
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L489:
	.sleb128	11
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L490:
	.sleb128	11
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11501
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L491:
	.sleb128	11
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L12089
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L492:
	.sleb128	11
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L12093
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L493:
	.sleb128	11
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L12097
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L494:
	.sleb128	11
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L12101
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L495:
	.sleb128	11
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L496:
	.sleb128	11
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L497:
	.sleb128	11
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12085:
.L12092:
	.sleb128	12
	.4byte		.L11601
	.uleb128	44
	.uleb128	14
	.4byte		.L12103-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L482:
	.sleb128	11
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L483:
	.sleb128	11
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L12094
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L484:
	.sleb128	11
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L12094
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L485:
	.sleb128	11
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L12098
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12103:
.L12096:
	.sleb128	12
	.4byte		.L11601
	.uleb128	44
	.uleb128	14
	.4byte		.L12104-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L478:
	.sleb128	11
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L479:
	.sleb128	11
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L12098
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L480:
	.sleb128	11
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L12098
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L481:
	.sleb128	11
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L12094
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12104:
.L12100:
	.sleb128	12
	.4byte		.L11601
	.uleb128	44
	.uleb128	14
	.4byte		.L12105-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L475:
	.sleb128	11
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L12106
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L476:
	.sleb128	11
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L477:
	.sleb128	11
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L12098
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12105:
.L12084:
	.sleb128	12
	.4byte		.L11591
	.uleb128	52
	.uleb128	1
	.4byte		.L12108-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12109
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12109
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12110
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12108:
.L12113:
	.sleb128	10
	.4byte		.L11591
	.uleb128	52
	.uleb128	1
	.4byte		.L12114-.L2
	.uleb128	12
.L447:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12082
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12114:
.L11596:
	.sleb128	12
	.4byte		.L11591
	.uleb128	52
	.uleb128	1
	.4byte		.L12115-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12116
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11503
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L12004
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12120
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12123
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12128
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12133
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12138
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12140
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12143
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12115:
.L12119:
	.sleb128	10
	.4byte		.L11591
	.uleb128	52
	.uleb128	1
	.4byte		.L12146-.L2
	.uleb128	1
.L434:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12146:
.L11583:
	.sleb128	10
	.4byte		.L12147
	.uleb128	32
	.uleb128	1
	.4byte		.L12148-.L2
	.uleb128	12
.L431:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L12061
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12149
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12148:
.L12151:
	.sleb128	10
	.4byte		.L12147
	.uleb128	32
	.uleb128	1
	.4byte		.L12152-.L2
	.uleb128	4
.L430:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12152:
.L11681:
	.sleb128	10
	.4byte		.L12147
	.uleb128	32
	.uleb128	1
	.4byte		.L12153-.L2
	.uleb128	144
.L425:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12154
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12156
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12153:
.L11712:
	.sleb128	10
	.4byte		.L12147
	.uleb128	32
	.uleb128	1
	.4byte		.L12158-.L2
	.uleb128	24
.L419:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12159
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12159
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12159
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12159
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12159
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12159
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12158:
.L12157:
	.sleb128	10
	.4byte		.L12147
	.uleb128	32
	.uleb128	1
	.4byte		.L12164-.L2
	.uleb128	20
.L414:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12165
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L417:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12164:
.L12155:
	.sleb128	10
	.4byte		.L12167
	.uleb128	174
	.uleb128	1
	.4byte		.L12168-.L2
	.uleb128	120
.L411:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12169
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L412:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12171
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12173
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12168:
.L12174:
	.sleb128	10
	.4byte		.L12167
	.uleb128	174
	.uleb128	1
	.4byte		.L12175-.L2
	.uleb128	8
.L408:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12176
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L409:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12177
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12175:
.L12172:
	.sleb128	10
	.4byte		.L12167
	.uleb128	174
	.uleb128	1
	.4byte		.L12179-.L2
	.uleb128	104
.L383:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11900
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L406:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12180
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12179:
.L12170:
	.sleb128	10
	.4byte		.L12167
	.uleb128	174
	.uleb128	1
	.4byte		.L12181-.L2
	.uleb128	8
.L381:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12182
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12181:
.L11867:
	.sleb128	10
	.4byte		.L12184
	.uleb128	50
	.uleb128	1
	.4byte		.L12185-.L2
	.uleb128	12
.L378:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12185:
.L11589:
	.sleb128	10
	.4byte		.L12184
	.uleb128	50
	.uleb128	1
	.4byte		.L12186-.L2
	.uleb128	8
.L376:
	.sleb128	11
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12186:
.L11708:
	.sleb128	10
	.4byte		.L12187
	.uleb128	87
	.uleb128	7
	.4byte		.L12188-.L2
	.uleb128	8
.L366:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12189
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12188:
	.section	.debug_info,,n
.L11452:
	.sleb128	14
	.4byte		.L12191
	.uleb128	155
	.uleb128	1
	.4byte		.L12192-.L2
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
.L12192:
.L11694:
	.sleb128	14
	.4byte		.L11643
	.uleb128	69
	.uleb128	1
	.4byte		.L12193-.L2
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
.L12193:
.L11718:
	.sleb128	14
	.4byte		.L11698
	.uleb128	612
	.uleb128	1
	.4byte		.L12194-.L2
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
.L12194:
.L11722:
	.sleb128	14
	.4byte		.L11698
	.uleb128	60
	.uleb128	1
	.4byte		.L12195-.L2
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
.L12195:
	.section	.debug_info,,n
.L11853:
	.sleb128	16
	.4byte		.L11929
	.uleb128	33
	.uleb128	14
	.4byte		.L12196-.L2
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
.L12196:
.L11980:
	.sleb128	14
	.4byte		.L11625
	.uleb128	121
	.uleb128	1
	.4byte		.L12197-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_ALARM_RELATIVE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_ALARM_ABSOLUTE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12197:
.L11990:
	.sleb128	14
	.4byte		.L11625
	.uleb128	96
	.uleb128	1
	.4byte		.L12198-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_ALARM_OFF"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_ALARM_SET"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12198:
.L11984:
	.sleb128	14
	.4byte		.L11625
	.uleb128	37
	.uleb128	1
	.4byte		.L12199-.L2
	.uleb128	4
	.sleb128	15
	.byte		"Os_AlarmAction_ActivateTask"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_AlarmAction_IncrementCounter"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"Os_AlarmAction_SetEvent"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12199:
.L12031:
	.sleb128	14
	.4byte		.L11615
	.uleb128	62
	.uleb128	1
	.4byte		.L12200-.L2
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
.L12200:
.L12013:
	.sleb128	14
	.4byte		.L11615
	.uleb128	54
	.uleb128	1
	.4byte		.L12201-.L2
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
.L12201:
.L12010:
	.sleb128	14
	.4byte		.L11615
	.uleb128	45
	.uleb128	1
	.4byte		.L12202-.L2
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
.L12202:
.L12081:
	.sleb128	14
	.4byte		.L11608
	.uleb128	80
	.uleb128	13
	.4byte		.L12203-.L2
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
.L12203:
.L12060:
	.sleb128	14
	.4byte		.L11608
	.uleb128	61
	.uleb128	1
	.4byte		.L12204-.L2
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
.L12204:
.L12107:
	.sleb128	16
	.4byte		.L11601
	.uleb128	44
	.uleb128	14
	.4byte		.L12205-.L2
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
.L12205:
.L12088:
	.sleb128	16
	.4byte		.L11601
	.uleb128	36
	.uleb128	14
	.4byte		.L12206-.L2
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
.L12206:
.L12122:
	.sleb128	14
	.4byte		.L11591
	.uleb128	52
	.uleb128	1
	.4byte		.L12207-.L2
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
.L12207:
.L12166:
	.sleb128	14
	.4byte		.L12147
	.uleb128	32
	.uleb128	1
	.4byte		.L12208-.L2
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
.L12208:
.L12183:
	.sleb128	14
	.4byte		.L12167
	.uleb128	174
	.uleb128	1
	.4byte		.L12209-.L2
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
.L12209:
.L12178:
	.sleb128	14
	.4byte		.L12167
	.uleb128	86
	.uleb128	1
	.4byte		.L12210-.L2
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
.L12210:
.L11844:
	.sleb128	14
	.4byte		.L12211
	.uleb128	43
	.uleb128	1
	.4byte		.L12212-.L2
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
.L12212:
.L11908:
	.sleb128	14
	.4byte		.L12213
	.uleb128	37
	.uleb128	1
	.4byte		.L12214-.L2
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
.L12214:
.L11876:
	.sleb128	14
	.4byte		.L12215
	.uleb128	40
	.uleb128	1
	.4byte		.L12216-.L2
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
.L12216:
.L11473:
	.sleb128	16
	.4byte		.L12217
	.uleb128	59
	.uleb128	14
	.4byte		.L12218-.L2
	.byte		"ObjectAccessType_e"
	.byte		0
	.uleb128	4
	.sleb128	15
	.byte		"ACCESS"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"NO_ACCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12218:
.L11480:
	.sleb128	14
	.4byte		.L12217
	.uleb128	47
	.uleb128	1
	.4byte		.L12219-.L2
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
.L12219:
.L11923:
	.sleb128	14
	.4byte		.L12184
	.uleb128	42
	.uleb128	13
	.4byte		.L12220-.L2
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
.L12220:
.L11828:
	.sleb128	14
	.4byte		.L12221
	.uleb128	83
	.uleb128	14
	.4byte		.L12222-.L2
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
.L12222:
	.section	.debug_info,,n
.L11451:
	.sleb128	17
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11452
	.section	.debug_info,,n
.L11457:
	.sleb128	18
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11456:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11457
.L11455:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11456
	.section	.debug_info,,n
.L11454:
	.sleb128	19
	.4byte		.L11455
.L11472:
	.sleb128	17
	.byte		"ObjectAccessType"
	.byte		0
	.4byte		.L11473
.L11477:
	.sleb128	18
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11476:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11477
.L11475:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11476
.L11479:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11480
.L11484:
	.sleb128	18
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11483:
	.sleb128	17
	.byte		"uint32"
	.byte		0
	.4byte		.L11484
.L11482:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11483
.L11489:
	.sleb128	17
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11490
.L11497:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11476
.L11499:
	.sleb128	19
	.4byte		.L11479
.L11501:
	.sleb128	19
	.4byte		.L11482
.L11503:
	.sleb128	19
	.4byte		.L11475
.L11514:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11482
.L11513:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11514
.L11521:
	.sleb128	17
	.byte		"ISRType"
	.byte		0
	.4byte		.L11514
.L11528:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11482
.L11535:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11483
.L11544:
	.sleb128	19
	.4byte		.L11514
	.section	.debug_info,,n
.L11543:
	.sleb128	20
	.4byte		.L11544
.L11542:
	.sleb128	19
	.4byte		.L11543
.L11557:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11483
.L11564:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11483
.L11571:
	.sleb128	20
	.4byte		.L11490
.L11582:
	.sleb128	17
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11583
.L11581:
	.sleb128	19
	.4byte		.L11582
	.section	.debug_info,,n
.L11579:
	.sleb128	21
	.4byte		.L11580-.L2
	.4byte		.L11581
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L11580:
.L11588:
	.sleb128	17
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11589
.L11587:
	.sleb128	19
	.4byte		.L11588
.L11585:
	.sleb128	21
	.4byte		.L11586-.L2
	.4byte		.L11587
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11586:
.L11595:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11596
.L11594:
	.sleb128	19
	.4byte		.L11595
.L11592:
	.sleb128	21
	.4byte		.L11593-.L2
	.4byte		.L11594
	.sleb128	22
	.sleb128	0
.L11593:
.L11598:
	.sleb128	21
	.4byte		.L11599-.L2
	.4byte		.L11587
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11599:
.L11605:
	.sleb128	17
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11606
.L11604:
	.sleb128	19
	.4byte		.L11605
.L11602:
	.sleb128	21
	.4byte		.L11603-.L2
	.4byte		.L11604
	.sleb128	22
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
	.byte		"Os_SchTblStatType"
	.byte		0
	.4byte		.L11620
.L11618:
	.sleb128	19
	.4byte		.L11619
.L11617:
	.sleb128	20
	.4byte		.L11618
.L11616:
	.sleb128	19
	.4byte		.L11617
.L11622:
	.sleb128	21
	.4byte		.L11623-.L2
	.4byte		.L11587
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11623:
.L11629:
	.sleb128	17
	.byte		"Os_AlarmStatType"
	.byte		0
	.4byte		.L11630
.L11628:
	.sleb128	19
	.4byte		.L11629
.L11627:
	.sleb128	20
	.4byte		.L11628
.L11626:
	.sleb128	19
	.4byte		.L11627
.L11636:
	.sleb128	17
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11637
.L11635:
	.sleb128	19
	.4byte		.L11636
.L11633:
	.sleb128	21
	.4byte		.L11634-.L2
	.4byte		.L11635
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11634:
.L11641:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11642
.L11639:
	.sleb128	21
	.4byte		.L11640-.L2
	.4byte		.L11641
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11640:
.L11647:
	.sleb128	17
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11648
.L11646:
	.sleb128	20
	.4byte		.L11647
.L11645:
	.sleb128	19
	.4byte		.L11646
.L11651:
	.sleb128	17
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11652
.L11650:
	.sleb128	20
	.4byte		.L11651
.L11649:
	.sleb128	19
	.4byte		.L11650
.L11655:
	.sleb128	17
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11656
.L11654:
	.sleb128	20
	.4byte		.L11655
.L11653:
	.sleb128	19
	.4byte		.L11654
	.section	.debug_info,,n
.L11660:
	.sleb128	24
	.4byte		.L11661-.L2
	.byte		0x1
.L11663:
	.sleb128	20
	.4byte		.L11611
.L11662:
	.sleb128	19
	.4byte		.L11663
	.section	.debug_info,,n
	.sleb128	25
	.4byte		.L11662
	.sleb128	0
.L11661:
.L11659:
	.sleb128	20
	.4byte		.L11660
.L11658:
	.sleb128	17
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11659
.L11657:
	.sleb128	19
	.4byte		.L11658
.L11670:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11483
.L11669:
	.sleb128	20
	.4byte		.L11670
	.section	.debug_info,,n
.L11667:
	.sleb128	26
	.4byte		.L11668-.L2
	.4byte		.L11669
	.byte		0x1
	.sleb128	25
	.4byte		.L11663
	.sleb128	0
.L11668:
.L11666:
	.sleb128	20
	.4byte		.L11667
.L11665:
	.sleb128	17
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11666
.L11664:
	.sleb128	19
	.4byte		.L11665
.L11672:
	.sleb128	17
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11673
.L11674:
	.sleb128	17
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11675
.L11676:
	.sleb128	20
	.4byte		.L11594
.L11678:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11679
.L11680:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11681
.L11683:
	.sleb128	17
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11684
.L11685:
	.sleb128	17
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11686
.L11687:
	.sleb128	17
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11688
.L11691:
	.sleb128	19
	.4byte		.L11613
.L11690:
	.sleb128	20
	.4byte		.L11691
.L11693:
	.sleb128	17
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11694
.L11695:
	.sleb128	17
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11483
.L11696:
	.sleb128	17
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11697
.L11700:
	.sleb128	20
	.4byte		.L11697
.L11702:
	.sleb128	17
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11483
.L11703:
	.sleb128	17
	.byte		"boolean"
	.byte		0
	.4byte		.L11477
.L11707:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11708
.L11706:
	.sleb128	19
	.4byte		.L11707
.L11705:
	.sleb128	20
	.4byte		.L11706
.L11711:
	.sleb128	17
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11712
.L11710:
	.sleb128	19
	.4byte		.L11711
.L11709:
	.sleb128	20
	.4byte		.L11710
.L11713:
	.sleb128	21
	.4byte		.L11714-.L2
	.4byte		.L11483
	.sleb128	23
	.uleb128	7
	.sleb128	0
.L11714:
.L11717:
	.sleb128	17
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11718
.L11719:
	.sleb128	20
	.4byte		.L11489
.L11721:
	.sleb128	17
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11722
.L11725:
	.sleb128	24
	.4byte		.L11726-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11571
.L11727:
	.sleb128	19
	.4byte		.L11690
	.sleb128	25
	.4byte		.L11727
	.sleb128	0
.L11726:
.L11724:
	.sleb128	20
	.4byte		.L11725
.L11723:
	.sleb128	17
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11724
.L11730:
	.sleb128	17
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11731
.L11732:
	.sleb128	17
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11733
.L11734:
	.sleb128	17
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11735
.L11736:
	.sleb128	17
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11737
.L11738:
	.sleb128	17
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11739
.L11740:
	.sleb128	17
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11741
.L11742:
	.sleb128	17
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11743
.L11744:
	.sleb128	17
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11745
.L11746:
	.sleb128	17
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11747
.L11748:
	.sleb128	17
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11749
.L11750:
	.sleb128	17
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11751
.L11752:
	.sleb128	17
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11753
.L11754:
	.sleb128	17
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11755
.L11756:
	.sleb128	17
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11757
.L11758:
	.sleb128	17
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11759
.L11760:
	.sleb128	17
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11761
.L11762:
	.sleb128	17
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11763
.L11764:
	.sleb128	17
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11765
.L11766:
	.sleb128	17
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11767
.L11768:
	.sleb128	17
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11769
.L11770:
	.sleb128	17
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11771
.L11772:
	.sleb128	17
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11773
.L11774:
	.sleb128	17
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11775
.L11776:
	.sleb128	17
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11777
.L11778:
	.sleb128	17
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11779
.L11780:
	.sleb128	17
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11781
.L11782:
	.sleb128	17
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11783
.L11784:
	.sleb128	17
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11785
.L11786:
	.sleb128	17
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11787
.L11788:
	.sleb128	17
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11789
.L11790:
	.sleb128	17
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11791
.L11792:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11793
.L11794:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11795
.L11796:
	.sleb128	17
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11797
.L11798:
	.sleb128	17
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11799
.L11800:
	.sleb128	17
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11801
.L11802:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11803
.L11804:
	.sleb128	17
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11805
.L11806:
	.sleb128	17
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11807
.L11808:
	.sleb128	17
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11809
.L11810:
	.sleb128	17
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11811
.L11812:
	.sleb128	17
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11813
.L11814:
	.sleb128	17
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11815
.L11816:
	.sleb128	17
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11817
.L11818:
	.sleb128	17
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11819
.L11820:
	.sleb128	17
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11821
.L11822:
	.sleb128	17
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11823
.L11824:
	.sleb128	17
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11825
.L11827:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11828
.L11832:
	.sleb128	17
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11833
.L11831:
	.sleb128	19
	.4byte		.L11832
.L11830:
	.sleb128	20
	.4byte		.L11831
	.section	.debug_info,,n
.L11839:
	.sleb128	27
	.byte		"void"
	.byte		0
	.byte		0x0
.L11838:
	.sleb128	20
	.4byte		.L11839
.L11836:
	.sleb128	21
	.4byte		.L11837-.L2
	.4byte		.L11838
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11837:
.L11835:
	.sleb128	17
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11836
.L11834:
	.sleb128	20
	.4byte		.L11835
.L11841:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11456
.L11843:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11844
.L11842:
	.sleb128	20
	.4byte		.L11843
.L11848:
	.sleb128	20
	.4byte		.L11476
.L11850:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11483
.L11851:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11838
.L11852:
	.sleb128	17
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11853
.L11858:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11483
.L11862:
	.sleb128	20
	.4byte		.L11858
.L11861:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11862
.L11866:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11867
.L11865:
	.sleb128	20
	.4byte		.L11866
.L11864:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11865
.L11875:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11876
.L11874:
	.sleb128	20
	.4byte		.L11875
.L11873:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11874
.L11884:
	.sleb128	24
	.4byte		.L11885-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11571
	.sleb128	0
.L11885:
.L11883:
	.sleb128	20
	.4byte		.L11884
.L11882:
	.sleb128	17
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11883
.L11889:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11476
.L11894:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11476
.L11893:
	.sleb128	20
	.4byte		.L11894
.L11892:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11893
.L11898:
	.sleb128	18
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11897:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L11898
.L11896:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11897
.L11901:
	.sleb128	20
	.4byte		.L11896
.L11900:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11901
.L11907:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11908
.L11906:
	.sleb128	20
	.4byte		.L11907
.L11905:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11906
.L11911:
	.sleb128	20
	.4byte		.L11513
.L11910:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11911
.L11917:
	.sleb128	17
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11483
.L11922:
	.sleb128	17
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11923
.L11926:
	.sleb128	20
	.4byte		.L11497
.L11933:
	.sleb128	17
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11934
.L11932:
	.sleb128	20
	.4byte		.L11933
.L11931:
	.sleb128	19
	.4byte		.L11932
.L11935:
	.sleb128	17
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11456
.L11936:
	.sleb128	19
	.4byte		.L11838
.L11937:
	.sleb128	19
	.4byte		.L11456
.L11939:
	.sleb128	17
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11476
.L11938:
	.sleb128	19
	.4byte		.L11939
.L11943:
	.sleb128	17
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11944
.L11942:
	.sleb128	19
	.4byte		.L11943
.L11941:
	.sleb128	20
	.4byte		.L11942
.L11940:
	.sleb128	19
	.4byte		.L11941
.L11947:
	.sleb128	17
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11476
.L11946:
	.sleb128	20
	.4byte		.L11947
.L11945:
	.sleb128	19
	.4byte		.L11946
.L11950:
	.sleb128	17
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11456
.L11949:
	.sleb128	19
	.4byte		.L11950
.L11952:
	.sleb128	17
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11456
.L11951:
	.sleb128	19
	.4byte		.L11952
.L11957:
	.sleb128	17
	.byte		"Os_AlarmDynType"
	.byte		0
	.4byte		.L11958
.L11956:
	.sleb128	20
	.4byte		.L11957
.L11955:
	.sleb128	19
	.4byte		.L11956
.L11960:
	.sleb128	20
	.4byte		.L11604
.L11959:
	.sleb128	19
	.4byte		.L11960
.L11964:
	.sleb128	17
	.byte		"Os_AlarmActionType"
	.byte		0
	.4byte		.L11965
.L11963:
	.sleb128	19
	.4byte		.L11964
.L11962:
	.sleb128	20
	.4byte		.L11963
.L11961:
	.sleb128	19
	.4byte		.L11962
.L11969:
	.sleb128	17
	.byte		"Os_AlarmAutoStartType"
	.byte		0
	.4byte		.L11970
.L11968:
	.sleb128	19
	.4byte		.L11969
.L11967:
	.sleb128	20
	.4byte		.L11968
.L11966:
	.sleb128	19
	.4byte		.L11967
.L11974:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11483
.L11973:
	.sleb128	19
	.4byte		.L11974
.L11972:
	.sleb128	20
	.4byte		.L11973
.L11971:
	.sleb128	19
	.4byte		.L11972
.L11975:
	.sleb128	19
	.4byte		.L11676
.L11977:
	.sleb128	19
	.4byte		.L11858
.L11979:
	.sleb128	17
	.byte		"Os_AlarmStartKindType"
	.byte		0
	.4byte		.L11980
.L11978:
	.sleb128	19
	.4byte		.L11979
.L11983:
	.sleb128	17
	.byte		"Os_AlarmActionKindType"
	.byte		0
	.4byte		.L11984
.L11982:
	.sleb128	19
	.4byte		.L11983
.L11986:
	.sleb128	17
	.byte		"Os_AlarmActionDataType"
	.byte		0
	.4byte		.L11987
.L11985:
	.sleb128	19
	.4byte		.L11986
.L11989:
	.sleb128	17
	.byte		"Os_AlarmStateType"
	.byte		0
	.4byte		.L11990
.L11993:
	.sleb128	17
	.byte		"Os_AlarmActionSeEventType"
	.byte		0
	.4byte		.L11994
.L11992:
	.sleb128	19
	.4byte		.L11993
.L11996:
	.sleb128	17
	.byte		"Os_AlarmActionActivateTaskType"
	.byte		0
	.4byte		.L11997
.L11995:
	.sleb128	19
	.4byte		.L11996
.L11999:
	.sleb128	17
	.byte		"Os_AlarmActionIncrementCounterType"
	.byte		0
	.4byte		.L12000
.L11998:
	.sleb128	19
	.4byte		.L11999
.L12002:
	.sleb128	19
	.4byte		.L11557
.L12004:
	.sleb128	19
	.4byte		.L11513
.L12005:
	.sleb128	19
	.4byte		.L11896
.L12009:
	.sleb128	17
	.byte		"Os_SchTblSyncStrategyType"
	.byte		0
	.4byte		.L12010
.L12008:
	.sleb128	19
	.4byte		.L12009
.L12012:
	.sleb128	17
	.byte		"Os_SchTblRepeatingType"
	.byte		0
	.4byte		.L12013
.L12011:
	.sleb128	19
	.4byte		.L12012
.L12017:
	.sleb128	17
	.byte		"Os_SchTblEPStatType"
	.byte		0
	.4byte		.L12018
.L12016:
	.sleb128	19
	.4byte		.L12017
.L12015:
	.sleb128	20
	.4byte		.L12016
.L12014:
	.sleb128	19
	.4byte		.L12015
.L12021:
	.sleb128	17
	.byte		"Os_SchTblDynType"
	.byte		0
	.4byte		.L12022
.L12020:
	.sleb128	20
	.4byte		.L12021
.L12019:
	.sleb128	19
	.4byte		.L12020
.L12026:
	.sleb128	17
	.byte		"Os_SchTblAutoStartStatType"
	.byte		0
	.4byte		.L12027
.L12025:
	.sleb128	19
	.4byte		.L12026
.L12024:
	.sleb128	20
	.4byte		.L12025
.L12023:
	.sleb128	19
	.4byte		.L12024
.L12030:
	.sleb128	17
	.byte		"Os_SchTblAutoStartKindType"
	.byte		0
	.4byte		.L12031
.L12029:
	.sleb128	19
	.4byte		.L12030
.L12034:
	.sleb128	19
	.4byte		.L11620
.L12033:
	.sleb128	20
	.4byte		.L12034
.L12036:
	.sleb128	19
	.4byte		.L11483
.L12038:
	.sleb128	20
	.4byte		.L12004
.L12037:
	.sleb128	19
	.4byte		.L12038
.L12042:
	.sleb128	17
	.byte		"Os_SchTblActionEventSetStatType"
	.byte		0
	.4byte		.L12043
.L12041:
	.sleb128	19
	.4byte		.L12042
.L12040:
	.sleb128	20
	.4byte		.L12041
.L12039:
	.sleb128	19
	.4byte		.L12040
.L12047:
	.sleb128	17
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11456
.L12051:
	.sleb128	17
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L12052
.L12050:
	.sleb128	20
	.4byte		.L12051
.L12049:
	.sleb128	19
	.4byte		.L12050
.L12056:
	.sleb128	17
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L12057
.L12055:
	.sleb128	19
	.4byte		.L12056
.L12054:
	.sleb128	20
	.4byte		.L12055
.L12053:
	.sleb128	19
	.4byte		.L12054
.L12059:
	.sleb128	17
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L12060
.L12058:
	.sleb128	19
	.4byte		.L12059
.L12061:
	.sleb128	19
	.4byte		.L11695
.L12063:
	.sleb128	17
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11483
.L12062:
	.sleb128	19
	.4byte		.L12063
.L12064:
	.sleb128	19
	.4byte		.L11669
.L12068:
	.sleb128	24
	.4byte		.L12069-.L2
	.byte		0x1
	.sleb128	0
.L12069:
.L12067:
	.sleb128	20
	.4byte		.L12068
.L12066:
	.sleb128	17
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L12067
.L12065:
	.sleb128	19
	.4byte		.L12066
.L12070:
	.sleb128	19
	.4byte		.L11535
.L12073:
	.sleb128	20
	.4byte		.L11581
.L12072:
	.sleb128	17
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12073
.L12071:
	.sleb128	20
	.4byte		.L12072
.L12074:
	.sleb128	19
	.4byte		.L11700
.L12075:
	.sleb128	19
	.4byte		.L11705
.L12078:
	.sleb128	17
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11483
.L12077:
	.sleb128	19
	.4byte		.L12078
.L12080:
	.sleb128	17
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12081
.L12083:
	.sleb128	19
	.4byte		.L12084
.L12082:
	.sleb128	20
	.4byte		.L12083
.L12087:
	.sleb128	17
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L12088
.L12086:
	.sleb128	19
	.4byte		.L12087
.L12091:
	.sleb128	17
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L12092
.L12090:
	.sleb128	20
	.4byte		.L12091
.L12089:
	.sleb128	19
	.4byte		.L12090
.L12095:
	.sleb128	17
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L12096
.L12094:
	.sleb128	20
	.4byte		.L12095
.L12093:
	.sleb128	19
	.4byte		.L12094
.L12099:
	.sleb128	17
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L12100
.L12098:
	.sleb128	20
	.4byte		.L12099
.L12097:
	.sleb128	19
	.4byte		.L12098
.L12102:
	.sleb128	17
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11483
.L12101:
	.sleb128	19
	.4byte		.L12102
.L12106:
	.sleb128	17
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L12107
.L12109:
	.sleb128	19
	.4byte		.L11841
.L12112:
	.sleb128	17
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12113
.L12111:
	.sleb128	20
	.4byte		.L12112
.L12110:
	.sleb128	19
	.4byte		.L12111
.L12118:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12119
.L12117:
	.sleb128	20
	.4byte		.L12118
.L12116:
	.sleb128	19
	.4byte		.L12117
.L12121:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12122
.L12120:
	.sleb128	19
	.4byte		.L12121
.L12126:
	.sleb128	24
	.4byte		.L12127-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11497
	.sleb128	0
.L12127:
.L12125:
	.sleb128	20
	.4byte		.L12126
.L12124:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12125
.L12123:
	.sleb128	19
	.4byte		.L12124
.L12131:
	.sleb128	24
	.4byte		.L12132-.L2
	.byte		0x1
	.sleb128	0
.L12132:
.L12130:
	.sleb128	20
	.4byte		.L12131
.L12129:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12130
.L12128:
	.sleb128	19
	.4byte		.L12129
.L12136:
	.sleb128	24
	.4byte		.L12137-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11497
	.sleb128	0
.L12137:
.L12135:
	.sleb128	20
	.4byte		.L12136
.L12134:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12135
.L12133:
	.sleb128	19
	.4byte		.L12134
.L12139:
	.sleb128	20
	.4byte		.L12002
.L12138:
	.sleb128	19
	.4byte		.L12139
.L12142:
	.sleb128	19
	.4byte		.L11528
.L12141:
	.sleb128	20
	.4byte		.L12142
.L12140:
	.sleb128	19
	.4byte		.L12141
.L12145:
	.sleb128	19
	.4byte		.L11564
.L12144:
	.sleb128	20
	.4byte		.L12145
.L12143:
	.sleb128	19
	.4byte		.L12144
.L12150:
	.sleb128	17
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12151
.L12149:
	.sleb128	20
	.4byte		.L12150
.L12154:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12155
.L12156:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12157
.L12162:
	.sleb128	24
	.4byte		.L12163-.L2
	.byte		0x1
	.sleb128	0
.L12163:
.L12161:
	.sleb128	20
	.4byte		.L12162
.L12160:
	.sleb128	17
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12161
.L12159:
	.sleb128	19
	.4byte		.L12160
.L12165:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12166
.L12169:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12170
.L12171:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12172
.L12173:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12174
.L12176:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11476
.L12177:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12178
.L12180:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11842
.L12182:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12183
.L12190:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11456
.L12189:
	.sleb128	19
	.4byte		.L12190
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11444:
	.sleb128	0
.L11440:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11465:
	.sleb128	0
.L11461:

	.section	.debug_loc,,n
	.align	0
.L11458:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11478:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L11481:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),4
	.d2locend
.L11485:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo6),5
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L11500:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L11502:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),28
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),28
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),28
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),28
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),28
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),28
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),28
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),28
	.d2locend
.L11504:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),5
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),31
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo34),31
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),31
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo37),31
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),31
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo40),31
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),5
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),31
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo47),31
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),31
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),5
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),31
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),5
	.d2locend
.L11506:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo17),31
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),31
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo35),31
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo21),31
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),31
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo38),31
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo25),31
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),31
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo41),31
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo68),31
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),31
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo45),31
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo29),31
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),31
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo48),31
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),31
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),31
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo54),31
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),31
	.d2locend
.L11515:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo81),4
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo17),28
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),28
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo82),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo83),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo85),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo86),4
	.d2locend
.L11522:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo81),4
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo82),4
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo21),28
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),28
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo83),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo85),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo86),4
	.d2locend
.L11529:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo81),4
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo82),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo83),4
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo25),28
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo40),28
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo85),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo86),4
	.d2locend
.L11536:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo81),4
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo82),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo83),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo45),28
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo85),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo86),4
	.d2locend
.L11545:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo45),30
	.d2locend
.L11551:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo45),29
	.d2locend
.L11558:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo81),4
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo82),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo83),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo85),4
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo29),28
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),28
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo86),4
	.d2locend
.L11565:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo81),4
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo82),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo83),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo85),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo51),4
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),4
	.d2locend
.L11572:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),31
	.d2locend
.L11574:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locend
.L11576:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo104),30
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_CheckObjectAccess"
	.wrcm.nstrlist "calls", "Os_CheckObjectAccess","Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_CheckObjectAccess"
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_Alarm_CheckId","Os_Counter_CheckId","Os_ISR_CheckId","Os_Task_CheckId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CheckObjectAccess"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectAccess.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectAccess.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectAccess.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectAccess.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectAccess.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_CheckObjectAccess.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\application\Os_CheckObjectAccess.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
