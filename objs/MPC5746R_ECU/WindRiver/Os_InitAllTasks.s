#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_InitAllTasks.c"
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
# FUNC(void, OS_CODE) Os_Proc_Init(CONST(CoreIdType,AUTOMATIC) coreID)
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11359:
	.section	.Os_TEXT,,c
#$$ld
.L11355:
	.0byte		.L11353
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_InitAllTasks.c"
        .d2line         53,21
#$$ld
.L11362:

#$$bf	Os_Proc_Init,interprocedural,rasave,nostackparams
	.globl		Os_Proc_Init
	.d2_cfa_start __cie
Os_Proc_Init:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# coreID=r31 coreID=r3
	.d2prologue_end
# {
#     VAR(Os_ObjectType, AUTOMATIC) proc;
# 
#     for(proc = Os_ProcRange[coreID].Os_ObjStartId; proc <=  Os_ProcRange[coreID].Os_ObjEndId; proc++)
	.d2line		57
.Llo2:
	lis		r3,Os_ProcRange@ha
.Llo3:
	e_add16i		r3,r3,Os_ProcRange@l
	rlwinm		r0,r31,3,13,28		# coreID=r31
	lwzx		r30,r3,r0
.Llo5:
	mr		r30,r30		# proc=r30 proc=r30
.L11343:
	lis		r3,(Os_ProcRange+4)@ha		# stackPtr=r3
.Llo6:
	e_add16i		r3,r3,(Os_ProcRange+4)@l		# stackPtr=r3 stackPtr=r3
	rlwinm		r0,r31,3,13,28		# coreID=r31
	lwzx		r0,r3,r0		# stackPtr=r3
	se_cmpl		r0,r30		# proc=r30
	bc		1,0,.L11342	# lt
	.section	.Os_TEXT,,c
.L11376:
#     {
#       #ifdef OS_MODULE_STACKSHARING
#         if(NULL_PTR != Os_Proc_Stat[proc].Os_ProcStackSharing)
#         {
#             /* Task is in a stack sharing group, the shared stack will be initialized in Os_StackSharing_Init. */
#         }
#         else
#         {
#             /* Next process does not share stack.
#              * Set the final stack for TASK or CAT2 interrupt.
#              */
#             Os_Proc_Stat[proc].Os_ProcStack->Os_ProcStackBase = Os_Proc_Stat[proc].Os_ProcOriginalStackBase;
#             Os_Proc_Stat[proc].Os_ProcStack->Os_ProcStackSize = Os_Proc_Stat[proc].Os_ProcOriginalStackSize;
#         #ifdef OS_MODULE_MEMORYPROTECTION
#             Os_Proc_Stat[proc].Os_ProcStack->Os_ProcMemoryProtectedStackBase =
#                     Os_Proc_Stat[proc].Os_ProcStack->Os_ProcStackBase + OS_STACKGUARDINGSIZE;
#             Os_Proc_Stat[proc].Os_ProcStack->Os_ProcMemoryProtectedStackSize =
#                     Os_Proc_Stat[proc].Os_ProcStack->Os_ProcStackSize + (OS_STACKGUARDINGSIZE << 1);
#             Os_Proc_Stat[proc].Os_ProcStack->Os_ProcMemoryProtectedStackSize *= sizeof(Os_StackType);
#         #endif /* OS_MODULE_MEMORYPROTECTION */
#       #else /* OS_MODULE_STACKSHARING */
#         {
#       #endif /* OS_MODULE_STACKSHARING */
# 
#           #ifdef OS_MODULE_STACKFILL
#             {
#                 P2VAR(Os_StackType,  AUTOMATIC, OS_VAR) stackPtr = Os_Proc_Stat[proc].Os_ProcStack->Os_ProcStackBase
	.d2line		84
.Llo7:
	lis		r3,(Os_Proc_Stat+12)@ha		# stackPtr=r3
.Llo8:
	e_add16i		r3,r3,(Os_Proc_Stat+12)@l		# stackPtr=r3 stackPtr=r3
	e_mulli		r7,r30,80		# proc=r30
	lwzux		r4,r3,r7		# stackPtr=r4 stackPtr=r3
	lwz		r0,4(r4)		# stackPtr=r4
	lis		r3,(Os_Proc_Stat+12)@ha		# stackPtr=r3
	e_add16i		r3,r3,(Os_Proc_Stat+12)@l		# stackPtr=r3 stackPtr=r3
	lwzx		r3,r3,r7		# stackPtr=r3 stackPtr=r3
	lwz		r3,0(r3)		# stackPtr=r3 stackPtr=r3
	se_slwi		r3,2		# stackPtr=r3 stackPtr=r3
	subf		r3,r3,r0		# stackPtr=r3 stackPtr=r3
	mr		r3,r3		# stackPtr=r3 stackPtr=r3
.L11346:
#                         - Os_Proc_Stat[proc].Os_ProcStack->Os_ProcStackSize;
# 
#                 while(stackPtr < Os_Proc_Stat[proc].Os_ProcStack->Os_ProcStackBase)
	.d2line		87
	lis		r4,(Os_Proc_Stat+12)@ha		# stackPtr=r4
	e_add16i		r4,r4,(Os_Proc_Stat+12)@l		# stackPtr=r4 stackPtr=r4
	e_mulli		r7,r30,80		# proc=r30
	lwzx		r4,r4,r7		# stackPtr=r4 stackPtr=r4
	lwz		r0,4(r4)		# stackPtr=r4
	se_cmpl		r0,r3		# stackPtr=r3
	bc		0,1,.L11347	# le
#                 {
#                     stackPtr++;
#                     *stackPtr = OS_STACKPATTERN;
	.d2line		90
	e_lis		r0,57005
	e_or2i		r0,48879
	stwu		r0,4(r3)		# stackPtr=r3
	b		.L11346
.L11347:
	.section	.Os_TEXT,,c
.L11377:
#                 }
#             }
#           #endif /* OS_MODULE_STACKFILL */
# 
#           #ifdef OS_CONFIG_STACKMONITORING
#             Os_StackMonitorInit(&Os_Proc_Stat[proc]);
	.d2line		96
.Llo9:
	lis		r3,Os_Proc_Stat@ha		# stackPtr=r3
.Llo10:
	e_add16i		r3,r3,Os_Proc_Stat@l		# stackPtr=r3 stackPtr=r3
	e_mulli		r7,r30,80		# proc=r30
	se_add		r3,r7		# stackPtr=r3 stackPtr=r3
.Llo11:
	bl		Os_StackMonitorInit
#           #endif /* OS_CONFIG_STACKMONITORING */
#         }
# 
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcState               =  SUSPENDED;
	.d2line		100
	diab.li		r0,3
	lis		r3,(Os_Proc_Stat+8)@ha		# stackPtr=r3
.Llo12:
	e_add16i		r3,r3,(Os_Proc_Stat+8)@l		# stackPtr=r3 stackPtr=r3
	e_mulli		r7,r30,80		# proc=r30
	lwzux		r4,r3,r7		# stackPtr=r4 stackPtr=r3
	stw		r0,0(r4)		# stackPtr=r4
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcContextState        =  Os_ProcContextInvalid;
	.d2line		101
	diab.li		r0,0
	lis		r3,(Os_Proc_Stat+8)@ha		# stackPtr=r3
	e_add16i		r3,r3,(Os_Proc_Stat+8)@l		# stackPtr=r3 stackPtr=r3
	lwzux		r4,r3,r7		# stackPtr=r4 stackPtr=r3
	stw		r0,4(r4)		# stackPtr=r4
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcEvents              =  0;     /* [OS001-009-MGC.v1] */
	.d2line		102
	lis		r3,(Os_Proc_Stat+8)@ha		# stackPtr=r3
	e_add16i		r3,r3,(Os_Proc_Stat+8)@l		# stackPtr=r3 stackPtr=r3
	lwzx		r4,r3,r7		# stackPtr=r4 stackPtr=r3
	stw		r0,8(r4)		# stackPtr=r4
	stw		r0,12(r4)		# stackPtr=r4
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcEventWaitingFor     =  0;
	.d2line		103
	lwzx		r4,r3,r7		# stackPtr=r4 stackPtr=r3
	stw		r0,16(r4)		# stackPtr=r4
	stw		r0,20(r4)		# stackPtr=r4
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcActivations         =  0;
	.d2line		104
	mr		r4,r3		# stackPtr=r4
	mr		r6,r7
	lwzux		r5,r4,r6		# stackPtr=r5 stackPtr=r4
	stw		r0,24(r5)		# stackPtr=r5
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcCurrentPriority     =  0U;
	.d2line		105
	mr		r4,r3		# stackPtr=r4
	lwzux		r5,r4,r6		# stackPtr=r5 stackPtr=r4
	stw		r0,48(r5)		# stackPtr=r5
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcResourcesAllocated  =  0;
	.d2line		106
	mr		r4,r3		# stackPtr=r4
	lwzx		r5,r4,r6		# stackPtr=r5 stackPtr=r4
	stw		r0,28(r5)		# stackPtr=r5
#       #ifdef OS_MODULE_APPLICATION
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcCurrentApp          =  Os_Proc_Stat[proc].Os_ProcOwnerApp;
	.d2line		108
	lis		r4,(Os_Proc_Stat+48)@ha		# stackPtr=r4
	e_add16i		r4,r4,(Os_Proc_Stat+48)@l		# stackPtr=r4 stackPtr=r4
	lwzx		r6,r4,r7		# stackPtr=r4
	mr		r5,r3		# stackPtr=r5
	lwzux		r4,r5,r7		# stackPtr=r4 stackPtr=r5
	stw		r6,36(r4)		# stackPtr=r4
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcEnabled             =  (uint8)0U;
	.d2line		109
	mr		r4,r3		# stackPtr=r4
	lwzux		r5,r4,r7		# stackPtr=r5 stackPtr=r4
	stb		r0,32(r5)		# stackPtr=r5
#       #endif
#       #ifdef OS_MODULE_SPINLOCK
#         Os_Proc_Stat[proc].Os_ProcDyn->Os_ProcSpinlock            =  NULL_PTR;
	.d2line		112
	lwzx		r3,r3,r7		# stackPtr=r3 stackPtr=r3
	stw		r0,40(r3)		# stackPtr=r3
#       #endif
# 
# 
#       #ifdef OS_MODULE_TIMINGPROTECTION
#         if(NULL_PTR != Os_Proc_Stat[proc].Os_ProcBudgetTimerConf)
#         {
#             /* [OS474-02] */
#             Os_Proc_Stat[proc].Os_ProcBudgetTimerConf->Os_TP_ListElement->Os_Tp_OwnerProc   = &Os_Proc_Stat[proc];
#             Os_Proc_Stat[proc].Os_ProcBudgetTimerConf->Os_TP_ListElement->Os_TP_State       = Os_TPT_Inactive;
#             Os_Proc_Stat[proc].Os_ProcBudgetTimerConf->Os_TP_ListElement->Os_TPListPrev     = NULL_PTR;
#             Os_Proc_Stat[proc].Os_ProcBudgetTimerConf->Os_TP_ListElement->Os_TPListNext     = NULL_PTR;
#         }
#         if(NULL_PTR != Os_Proc_Stat[proc].Os_ProcIntervalTimerConf)
#         {
#             Os_Proc_Stat[proc].Os_ProcIntervalTimerConf->Os_TP_ListElement->Os_Tp_OwnerProc = &Os_Proc_Stat[proc];
#             Os_Proc_Stat[proc].Os_ProcIntervalTimerConf->Os_TP_ListElement->Os_TP_State     = Os_TPT_Inactive;
#             Os_Proc_Stat[proc].Os_ProcIntervalTimerConf->Os_TP_ListElement->Os_TPListPrev   = NULL_PTR;
#             Os_Proc_Stat[proc].Os_ProcIntervalTimerConf->Os_TP_ListElement->Os_TPListNext   = NULL_PTR;
#         }
#         if(NULL_PTR != Os_Proc_Stat[proc].Os_ProcLockAllTimerConf)
#         {
#             Os_Proc_Stat[proc].Os_ProcLockAllTimerConf->Os_TP_ListElement->Os_Tp_OwnerProc  = &Os_Proc_Stat[proc];
#             Os_Proc_Stat[proc].Os_ProcLockAllTimerConf->Os_TP_ListElement->Os_TP_State      = Os_TPT_Inactive;
#             Os_Proc_Stat[proc].Os_ProcLockAllTimerConf->Os_TP_ListElement->Os_TPListPrev    = NULL_PTR;
#             Os_Proc_Stat[proc].Os_ProcLockAllTimerConf->Os_TP_ListElement->Os_TPListNext    = NULL_PTR;
#         }
#         if(NULL_PTR != Os_Proc_Stat[proc].Os_ProcLockOsTimerConf)
#         {
#             Os_Proc_Stat[proc].Os_ProcLockOsTimerConf->Os_TP_ListElement->Os_Tp_OwnerProc   = &Os_Proc_Stat[proc];
#             Os_Proc_Stat[proc].Os_ProcLockOsTimerConf->Os_TP_ListElement->Os_TP_State       = Os_TPT_Inactive;
#             Os_Proc_Stat[proc].Os_ProcLockOsTimerConf->Os_TP_ListElement->Os_TPListPrev     = NULL_PTR;
#             Os_Proc_Stat[proc].Os_ProcLockOsTimerConf->Os_TP_ListElement->Os_TPListNext     = NULL_PTR;
#         }
#         {
#             VAR(ResourceType,AUTOMATIC) resIdx;
#             for( resIdx = 0; resIdx < Os_Proc_Stat[proc].Os_ProcResourceBudgetCount; resIdx++ )
#             {
#                 P2VAR( struct Os_TPListElement_t, AUTOMATIC, OS_CONST )  procResBudgetTPListElemPtr =
#                                 Os_Proc_Stat[proc].Os_ProcResourceBudgets[resIdx].Os_ResourceBudget->Os_TP_ListElement;
# 
#                 procResBudgetTPListElemPtr->Os_Tp_OwnerProc = &Os_Proc_Stat[proc];
#                 procResBudgetTPListElemPtr->Os_TP_State     = Os_TPT_ResourceInactive;
#                 procResBudgetTPListElemPtr->Os_TPListPrev   = NULL_PTR;
#                 procResBudgetTPListElemPtr->Os_TPListNext   = NULL_PTR;
#             }
# 
#         }
#       #endif
#     }
	.d2line		161
	diab.addi		r7,r30,1		# proc=r30
	se_addi		r30,1		# proc=r30 proc=r30
	b		.L11343
.L11342:
# }
	.d2line		162
	.d2epilogue_begin
.Llo4:
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
.L11363:
	.type		Os_Proc_Init,@function
	.size		Os_Proc_Init,.-Os_Proc_Init
# Number of nodes = 228

# Allocations for Os_Proc_Init
#	?a4		coreID
#	?a5		proc
#	?a6		stackPtr

# Allocations for module
	.section	.text_vle
	.0byte		.L11384
	.section	.text_vle
#$$ld
.L5:
.L11540:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11532:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11530:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11524:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11470:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11452:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11385:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11356:
.L11364:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_InitAllTasks.c"
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_InitAllTasks.c"
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
.L11353:
	.4byte		.L11354-.L11352
.L11352:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11358-.L11353
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_InitAllTasks.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11355
	.4byte		.L11356
	.4byte		.L11359
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11365:
	.sleb128	2
	.4byte		.L11361-.L11353
	.byte		"Os_Proc_Init"
	.byte		0
	.4byte		.L11364
	.uleb128	53
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11362
	.4byte		.L11363
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11364
	.uleb128	53
	.uleb128	21
	.byte		"coreID"
	.byte		0
	.4byte		.L11366
	.4byte		.L11370
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11371:
	.sleb128	4
	.4byte		.L11364
	.uleb128	55
	.uleb128	35
	.byte		"proc"
	.byte		0
	.4byte		.L11372
	.4byte		.L11375
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	5
	.4byte		.L11379
	.4byte		.L11376
	.4byte		.L11377
.L11380:
	.sleb128	4
	.4byte		.L11364
	.uleb128	84
	.uleb128	57
	.byte		"stackPtr"
	.byte		0
	.4byte		.L11381
	.4byte		.L11383
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11379:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11361:
	.section	.debug_info,,n
.L11384:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11385
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11386
	.section	.debug_info,,n
.L11391:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11385
	.uleb128	213
	.uleb128	45
	.byte		"Os_ProcRange"
	.byte		0
	.4byte		.L11392
	.section	.debug_info,,n
.L11390:
	.sleb128	7
	.4byte		.L11385
	.uleb128	80
	.uleb128	13
	.4byte		.L11397-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
	.section	.debug_info,,n
.L506:
	.sleb128	8
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11398
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L507:
	.sleb128	8
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L508:
	.sleb128	8
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11401
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L509:
	.sleb128	8
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L510:
	.sleb128	8
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11410
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L511:
	.sleb128	8
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11413
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L512:
	.sleb128	8
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L513:
	.sleb128	8
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L514:
	.sleb128	8
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11419
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L515:
	.sleb128	8
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11421
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L516:
	.sleb128	8
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L517:
	.sleb128	8
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11427
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L518:
	.sleb128	8
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11431
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L519:
	.sleb128	8
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11427
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L520:
	.sleb128	8
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11436
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L521:
	.sleb128	8
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L522:
	.sleb128	8
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11444
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L523:
	.sleb128	8
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11397:
.L11446:
	.sleb128	7
	.4byte		.L11452
	.uleb128	612
	.uleb128	1
	.4byte		.L11453-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L745:
	.sleb128	8
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	8
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	8
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11453:
.L11409:
	.sleb128	7
	.4byte		.L11385
	.uleb128	80
	.uleb128	13
	.4byte		.L11456-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L504:
	.sleb128	8
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L505:
	.sleb128	8
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11421
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11456:
	.section	.debug_info,,n
.L11404:
	.sleb128	9
	.4byte		.L11385
	.uleb128	80
	.uleb128	13
	.4byte		.L11459-.L2
	.uleb128	56
.L491:
	.sleb128	8
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11460
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L492:
	.sleb128	8
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L493:
	.sleb128	8
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11414
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L494:
	.sleb128	8
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11414
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L495:
	.sleb128	8
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11420
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L496:
	.sleb128	8
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L497:
	.sleb128	8
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L498:
	.sleb128	8
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L499:
	.sleb128	8
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L500:
	.sleb128	8
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L501:
	.sleb128	8
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L502:
	.sleb128	8
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L503:
	.sleb128	8
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11469
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11459:
.L11468:
	.sleb128	7
	.4byte		.L11470
	.uleb128	52
	.uleb128	1
	.4byte		.L11471-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L443:
	.sleb128	8
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L444:
	.sleb128	8
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L445:
	.sleb128	8
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11474
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L446:
	.sleb128	8
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11427
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L447:
	.sleb128	8
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11478
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11471:
.L11477:
	.sleb128	9
	.4byte		.L11470
	.uleb128	52
	.uleb128	1
	.4byte		.L11481-.L2
	.uleb128	12
.L440:
	.sleb128	8
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L441:
	.sleb128	8
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L442:
	.sleb128	8
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11481:
.L11426:
	.sleb128	7
	.4byte		.L11470
	.uleb128	52
	.uleb128	1
	.4byte		.L11482-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L428:
	.sleb128	8
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L429:
	.sleb128	8
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11487
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L430:
	.sleb128	8
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11398
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L431:
	.sleb128	8
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L432:
	.sleb128	8
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L433:
	.sleb128	8
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L434:
	.sleb128	8
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11502
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L435:
	.sleb128	8
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L436:
	.sleb128	8
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11510
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L437:
	.sleb128	8
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L438:
	.sleb128	8
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L439:
	.sleb128	8
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11482:
.L11486:
	.sleb128	9
	.4byte		.L11470
	.uleb128	52
	.uleb128	1
	.4byte		.L11522-.L2
	.uleb128	1
.L427:
	.sleb128	8
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11522:
.L11443:
	.sleb128	9
	.4byte		.L11524
	.uleb128	32
	.uleb128	1
	.4byte		.L11525-.L2
	.uleb128	12
.L424:
	.sleb128	8
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L425:
	.sleb128	8
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11428
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L426:
	.sleb128	8
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11526
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11525:
.L11528:
	.sleb128	9
	.4byte		.L11524
	.uleb128	32
	.uleb128	1
	.4byte		.L11529-.L2
	.uleb128	4
.L423:
	.sleb128	8
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11529:
.L11396:
	.sleb128	9
	.4byte		.L11530
	.uleb128	50
	.uleb128	1
	.4byte		.L11531-.L2
	.uleb128	8
.L369:
	.sleb128	8
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11372
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L370:
	.sleb128	8
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11372
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11531:
.L11451:
	.sleb128	9
	.4byte		.L11532
	.uleb128	87
	.uleb128	7
	.4byte		.L11533-.L2
	.uleb128	8
.L359:
	.sleb128	8
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L360:
	.sleb128	8
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11533:
	.section	.debug_info,,n
.L11463:
	.sleb128	10
	.4byte		.L11385
	.uleb128	80
	.uleb128	13
	.4byte		.L11537-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11537:
.L11412:
	.sleb128	10
	.4byte		.L11385
	.uleb128	61
	.uleb128	1
	.4byte		.L11538-.L2
	.uleb128	4
	.sleb128	11
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11538:
.L11491:
	.sleb128	10
	.4byte		.L11470
	.uleb128	52
	.uleb128	1
	.4byte		.L11539-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11539:
.L11461:
	.sleb128	10
	.4byte		.L11540
	.uleb128	37
	.uleb128	1
	.4byte		.L11541-.L2
	.uleb128	4
	.sleb128	11
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11541:
	.section	.debug_info,,n
.L11369:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L11368:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L11369
.L11367:
	.sleb128	13
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11368
	.section	.debug_info,,n
.L11366:
	.sleb128	14
	.4byte		.L11367
.L11374:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11373:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L11374
.L11372:
	.sleb128	13
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11373
.L11382:
	.sleb128	13
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11373
	.section	.debug_info,,n
.L11381:
	.sleb128	15
	.4byte		.L11382
.L11389:
	.sleb128	13
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11390
.L11388:
	.sleb128	14
	.4byte		.L11389
	.section	.debug_info,,n
.L11386:
	.sleb128	16
	.4byte		.L11387-.L2
	.4byte		.L11388
	.section	.debug_info,,n
	.sleb128	17
	.sleb128	0
.L11387:
.L11395:
	.sleb128	13
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11396
.L11394:
	.sleb128	14
	.4byte		.L11395
.L11392:
	.sleb128	16
	.4byte		.L11393-.L2
	.4byte		.L11394
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	1
	.sleb128	0
.L11393:
.L11400:
	.sleb128	13
	.byte		"ProcType"
	.byte		0
	.4byte		.L11372
.L11399:
	.sleb128	13
	.byte		"TaskType"
	.byte		0
	.4byte		.L11400
.L11398:
	.sleb128	14
	.4byte		.L11399
.L11403:
	.sleb128	13
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11404
.L11402:
	.sleb128	15
	.4byte		.L11403
.L11401:
	.sleb128	14
	.4byte		.L11402
.L11408:
	.sleb128	13
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11409
.L11407:
	.sleb128	14
	.4byte		.L11408
.L11406:
	.sleb128	15
	.4byte		.L11407
.L11405:
	.sleb128	14
	.4byte		.L11406
.L11411:
	.sleb128	13
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11412
.L11410:
	.sleb128	14
	.4byte		.L11411
.L11416:
	.sleb128	12
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11415:
	.sleb128	13
	.byte		"uint64"
	.byte		0
	.4byte		.L11416
.L11414:
	.sleb128	13
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11415
.L11413:
	.sleb128	14
	.4byte		.L11414
.L11418:
	.sleb128	13
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11373
.L11417:
	.sleb128	14
	.4byte		.L11418
.L11420:
	.sleb128	13
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11373
.L11419:
	.sleb128	14
	.4byte		.L11420
.L11421:
	.sleb128	14
	.4byte		.L11381
.L11425:
	.sleb128	13
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11426
.L11424:
	.sleb128	14
	.4byte		.L11425
.L11423:
	.sleb128	15
	.4byte		.L11424
.L11422:
	.sleb128	14
	.4byte		.L11423
.L11430:
	.sleb128	13
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11373
.L11429:
	.sleb128	14
	.4byte		.L11430
.L11428:
	.sleb128	15
	.4byte		.L11429
.L11427:
	.sleb128	14
	.4byte		.L11428
	.section	.debug_info,,n
.L11434:
	.sleb128	19
	.4byte		.L11435-.L2
	.byte		0x1
	.sleb128	0
.L11435:
.L11433:
	.sleb128	15
	.4byte		.L11434
.L11432:
	.sleb128	13
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11433
.L11431:
	.sleb128	14
	.4byte		.L11432
.L11437:
	.sleb128	13
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11373
.L11436:
	.sleb128	14
	.4byte		.L11437
.L11442:
	.sleb128	13
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11443
.L11441:
	.sleb128	14
	.4byte		.L11442
.L11440:
	.sleb128	15
	.4byte		.L11441
.L11439:
	.sleb128	13
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11440
.L11438:
	.sleb128	15
	.4byte		.L11439
.L11445:
	.sleb128	15
	.4byte		.L11446
.L11444:
	.sleb128	14
	.4byte		.L11445
.L11450:
	.sleb128	13
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11451
.L11449:
	.sleb128	14
	.4byte		.L11450
.L11448:
	.sleb128	15
	.4byte		.L11449
.L11447:
	.sleb128	14
	.4byte		.L11448
.L11455:
	.sleb128	14
	.4byte		.L11390
.L11454:
	.sleb128	15
	.4byte		.L11455
.L11458:
	.sleb128	13
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11373
.L11457:
	.sleb128	14
	.4byte		.L11458
.L11460:
	.sleb128	13
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11461
.L11462:
	.sleb128	13
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11463
.L11465:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11464:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L11465
.L11467:
	.sleb128	14
	.4byte		.L11468
.L11466:
	.sleb128	15
	.4byte		.L11467
.L11469:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11464
.L11473:
	.sleb128	13
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11368
.L11472:
	.sleb128	14
	.4byte		.L11473
.L11476:
	.sleb128	13
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11477
.L11475:
	.sleb128	15
	.4byte		.L11476
.L11474:
	.sleb128	14
	.4byte		.L11475
.L11480:
	.sleb128	13
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11464
.L11479:
	.sleb128	15
	.4byte		.L11480
.L11478:
	.sleb128	14
	.4byte		.L11479
.L11485:
	.sleb128	13
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11486
.L11484:
	.sleb128	15
	.4byte		.L11485
.L11483:
	.sleb128	14
	.4byte		.L11484
.L11488:
	.sleb128	13
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11464
.L11487:
	.sleb128	14
	.4byte		.L11488
.L11490:
	.sleb128	13
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11491
.L11489:
	.sleb128	14
	.4byte		.L11490
.L11495:
	.sleb128	19
	.4byte		.L11496-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L11469
	.sleb128	0
.L11496:
.L11494:
	.sleb128	15
	.4byte		.L11495
.L11493:
	.sleb128	13
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11494
.L11492:
	.sleb128	14
	.4byte		.L11493
.L11500:
	.sleb128	19
	.4byte		.L11501-.L2
	.byte		0x1
	.sleb128	0
.L11501:
.L11499:
	.sleb128	15
	.4byte		.L11500
.L11498:
	.sleb128	13
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11499
.L11497:
	.sleb128	14
	.4byte		.L11498
.L11505:
	.sleb128	19
	.4byte		.L11506-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L11469
	.sleb128	0
.L11506:
.L11504:
	.sleb128	15
	.4byte		.L11505
.L11503:
	.sleb128	13
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11504
.L11502:
	.sleb128	14
	.4byte		.L11503
.L11509:
	.sleb128	14
	.4byte		.L11400
.L11508:
	.sleb128	15
	.4byte		.L11509
.L11507:
	.sleb128	14
	.4byte		.L11508
.L11513:
	.sleb128	13
	.byte		"CounterType"
	.byte		0
	.4byte		.L11373
.L11512:
	.sleb128	14
	.4byte		.L11513
.L11511:
	.sleb128	15
	.4byte		.L11512
.L11510:
	.sleb128	14
	.4byte		.L11511
.L11517:
	.sleb128	13
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11372
.L11516:
	.sleb128	14
	.4byte		.L11517
.L11515:
	.sleb128	15
	.4byte		.L11516
.L11514:
	.sleb128	14
	.4byte		.L11515
.L11521:
	.sleb128	13
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11373
.L11520:
	.sleb128	14
	.4byte		.L11521
.L11519:
	.sleb128	15
	.4byte		.L11520
.L11518:
	.sleb128	14
	.4byte		.L11519
.L11523:
	.sleb128	13
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11464
.L11527:
	.sleb128	13
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11528
.L11526:
	.sleb128	15
	.4byte		.L11527
.L11534:
	.sleb128	14
	.4byte		.L11373
.L11536:
	.sleb128	13
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11368
.L11535:
	.sleb128	14
	.4byte		.L11536
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11358:
	.sleb128	0
.L11354:

	.section	.debug_loc,,n
	.align	0
.L11370:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L11375:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo4),30
	.d2locend
.L11383:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo4),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Proc_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_StackMonitorInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_InitAllTasks.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_InitAllTasks.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_InitAllTasks.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_InitAllTasks.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_InitAllTasks.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_InitAllTasks.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\task\Os_InitAllTasks.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
