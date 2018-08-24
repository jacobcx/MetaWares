#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_StackMonitoring.c"
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
# FUNC (void, OS_CODE) Os_StackMonitorInit (CONSTP2CONST (Os_ProcStatType, AUTOMATIC,OS_CONST) proc)
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11390:
	.section	.Os_TEXT,,c
#$$ld
.L11386:
	.0byte		.L11384
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_StackMonitoring.c"
        .d2line         47,22
#$$ld
.L11393:

#$$bf	Os_StackMonitorInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Os_StackMonitorInit
	.d2_cfa_start __cie
Os_StackMonitorInit:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# proc=r3 proc=r3
	.d2prologue_end
# {
#     P2VAR(Os_StackType, AUTOMATIC, OS_VAR) procStackBegin;
#     P2VAR(Os_StackType, AUTOMATIC, OS_VAR) procStackEnd;
#     VAR(uint32, AUTOMATIC) patternOffset;
# 
#     procStackBegin = proc->Os_ProcStack->Os_ProcStackBase;
	.d2line		53
	lwz		r4,12(r3)		# proc=r3
	lwz		r3,4(r4)		# proc=r3
.Llo2:
	mr		r3,r3		# procStackBegin=r3 procStackBegin=r3
#     procStackEnd   = procStackBegin - proc->Os_ProcStack->Os_ProcStackSize;
	.d2line		54
	lwz		r0,0(r4)
	se_slwi		r0,2
	subf		r4,r0,r3		# procStackBegin=r3
.Llo4:
	mr		r4,r4		# procStackEnd=r4 procStackEnd=r4
# 
#     /* Guard the begin and end of the stack. */
#     for(patternOffset = (uint32) 0U; patternOffset < (uint32) OS_STACKGUARDINGSIZE; patternOffset++)
	.d2line		57
	diab.li		r5,0		# patternOffset=r5
.L11357:
.Llo5:
	se_cmpi		r5,0		# patternOffset=r5
	bc		0,2,.L11356	# ne
#     {
#         procStackBegin++;
# 
#         *procStackBegin = OS_STACKGUARDPATTERN; /* [OS067-05-MGC] [OS067-03.v2-MGC] */
	.d2line		61
	e_lis		r0,65249
	e_or2i		r0,57005
	stwu		r0,4(r3)		# procStackBegin=r3
#         *procStackEnd   = OS_STACKGUARDPATTERN; /* [OS067-05-MGC] [OS067-06.v2-MGC] */
	.d2line		62
	stw		r0,0(r4)		# procStackEnd=r4
# 
#         procStackEnd--;
	.d2line		64
	diab.addi		r4,r4,-4		# procStackEnd=r4 procStackEnd=r4
#     }
	.d2line		65
	diab.addi		r0,r5,1		# patternOffset=r5
	se_addi		r5,1		# patternOffset=r5 patternOffset=r5
	b		.L11357
.L11356:
# }
	.d2line		66
	.d2epilogue_begin
.Llo3:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11394:
	.type		Os_StackMonitorInit,@function
	.size		Os_StackMonitorInit,.-Os_StackMonitorInit
# Number of nodes = 41

# Allocations for Os_StackMonitorInit
#	?a4		proc
#	?a5		procStackBegin
#	?a6		procStackEnd
#	?a7		patternOffset
# FUNC (boolean, OS_CODE) Os_StackMonitorCheckProc ( CONSTP2CONST (Os_ProcStatType, AUTOMATIC,OS_CONST) proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         75,25
#$$ld
.L11415:

#$$bf	Os_StackMonitorCheckProc,interprocedural,rasave,nostackparams
	.globl		Os_StackMonitorCheckProc
	.d2_cfa_start __cie
Os_StackMonitorCheckProc:
.Llo6:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr.		r31,r3		# proc=?a4 proc=r3
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC)                 isStackOverflow = FALSE;
	.d2line		77
	diab.li		r30,0		# isStackOverflow=r30
#     P2VAR(Os_StackType, AUTOMATIC,OS_VAR)   procStackBegin;
#     P2VAR(Os_StackType, AUTOMATIC,OS_VAR)   procStackEnd;
#     VAR(uint32, AUTOMATIC)                  patternOffset;
# 
#     if(proc == NULL_PTR)
	.d2line		82
.Llo10:
	bc		0,2,.L11363	# ne
#     {
#         return FALSE;
	.d2line		84
.Llo7:
	diab.li		r3,0
.Llo8:
	b		.L11362
.L11363:
#     }
#     else
#     {
#         /* Do nothing on purpose. */
#     }
# 
#     procStackBegin = proc->Os_ProcStack->Os_ProcStackBase;
	.d2line		91
	lwz		r3,12(r31)		# proc=r31
	lwz		r29,4(r3)		# procStackBegin=r29
.Llo11:
	mr		r29,r29		# procStackBegin=r29 procStackBegin=r29
#     procStackEnd   = procStackBegin - proc->Os_ProcStack->Os_ProcStackSize;
	.d2line		92
	lwz		r28,0(r3)
	se_slwi		r28,2
	subf		r28,r28,r29		# procStackBegin=r29
.Llo12:
	mr		r28,r28		# procStackEnd=r28 procStackEnd=r28
# 
#     for ( patternOffset = (uint32) 0U; patternOffset < (uint32) OS_STACKGUARDINGSIZE; patternOffset++ )
	.d2line		94
	diab.li		r27,0		# patternOffset=r27
.L11365:
.Llo13:
	se_cmpi		r27,0		# patternOffset=r27
	bc		0,2,.L11367	# ne
#     {
#         procStackBegin++;
# 
#         if ( *procStackBegin != OS_STACKGUARDPATTERN )      /* [OS067-05-MGC] [OS067-03.v2-MGC] */
	.d2line		98
	lwzu		r0,4(r29)		# procStackBegin=r29
	e_lis		r3,65249
	e_or2i		r3,57005
	se_cmpl		r0,r3
	bc		1,2,.L11368	# eq
#         {
#             isStackOverflow = TRUE;
	.d2line		100
	diab.li		r30,1		# isStackOverflow=r30
#             Os_Call_ProtectionHook(E_OS_STACKFAULT, proc);  /* [OS396-01] */
	.d2line		101
	mr		r4,r31		# proc=r4 proc=r31
	diab.li		r3,16
	bl		Os_Call_ProtectionHook
	b		.L11369
.L11368:
#         }
#         else if ( *procStackEnd != OS_STACKGUARDPATTERN )   /* [OS067-05-MGC] [OS067-06.v2-MGC]*/
	.d2line		103
	lwz		r3,0(r28)		# procStackEnd=r28
	e_lis		r0,65249
	e_or2i		r0,57005
	se_cmpl		r3,r0
	bc		1,2,.L11369	# eq
#         {
#             isStackOverflow = TRUE;
	.d2line		105
	diab.li		r30,1		# isStackOverflow=r30
#             Os_Call_ProtectionHook(E_OS_STACKFAULT, proc);  /* [OS396-01] */
	.d2line		106
	mr		r4,r31		# proc=r4 proc=r31
	diab.li		r3,16
	bl		Os_Call_ProtectionHook
.L11369:
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
# 
#         procStackEnd--;
	.d2line		113
	diab.addi		r28,r28,-4		# procStackEnd=r28 procStackEnd=r28
#     }
	.d2line		114
	diab.addi		r0,r27,1		# patternOffset=r27
	se_addi		r27,1		# patternOffset=r27 patternOffset=r27
	b		.L11365
.L11367:
# 
#     return isStackOverflow;
	.d2line		116
	rlwinm		r3,r30,0,24,31		# isStackOverflow=r30
.L11362:
# }
	.d2line		117
	.d2epilogue_begin
.Llo9:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11416:
	.type		Os_StackMonitorCheckProc,@function
	.size		Os_StackMonitorCheckProc,.-Os_StackMonitorCheckProc
# Number of nodes = 71

# Allocations for Os_StackMonitorCheckProc
#	?a4		proc
#	?a5		isStackOverflow
#	?a6		procStackBegin
#	?a7		procStackEnd
#	?a8		patternOffset
# FUNC (void, OS_CODE) Os_StackMonitor_PreInit(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         120,22
#$$ld
.L11431:

#$$bf	Os_StackMonitor_PreInit,interprocedural,rasave,nostackparams
	.globl		Os_StackMonitor_PreInit
	.d2_cfa_start __cie
Os_StackMonitor_PreInit:
.Llo14:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Initialize guard pattern on kernel stack */
#     Os_Core_GetKernelStack ( coreID )[0] = OS_STACKGUARDPATTERN;
	.d2line		123
	e_lis		r31,65249
	e_or2i		r31,57005
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
.Llo15:
	bl		Os_Core_GetKernelStack
.Llo16:
	stw		r31,0(r3)		# coreID=r3
# }
	.d2line		124
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo17:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11432:
	.type		Os_StackMonitor_PreInit,@function
	.size		Os_StackMonitor_PreInit,.-Os_StackMonitor_PreInit
# Number of nodes = 8

# Allocations for Os_StackMonitor_PreInit
#	?a4		coreID
# FUNC (void, OS_CODE) Os_StackMonitorKernel ( void )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         132,22
#$$ld
.L11441:

#$$bf	Os_StackMonitorKernel,interprocedural,rasave,nostackparams
	.globl		Os_StackMonitorKernel
	.d2_cfa_start __cie
Os_StackMonitorKernel:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_GETCOREID();
	.d2line		134
	mfspr		r3,286		# coreID=r3
.Llo18:
	mr		r3,r3		# coreID=r3 coreID=r3
#     if ( Os_Core_GetKernelStack ( coreID )[0] != OS_STACKGUARDPATTERN )
	.d2line		135
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
.Llo19:
	bl		Os_Core_GetKernelStack
.Llo20:
	lwz		r0,0(r3)		# coreID=r3
	e_lis		r3,65249		# coreID=r3
	e_or2i		r3,57005		# coreID=r3
	se_cmpl		r0,r3		# coreID=r3
	bc		1,2,.L11379	# eq
#     {
#         OS_FATAL_ERROR(E_OS_SYS_KERNELSTACK_OVERFLOW);
	.d2line		137
.Llo21:
	diab.li		r4,50
	lis		r3,(Os_Core_DynShared+12)@ha		# coreID=r3
.Llo22:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# coreID=r3 coreID=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# coreID=r3
	diab.li		r3,30		# coreID=r3
.Llo23:
	bl		Os_ShutdownAllCores
.L11379:
#     }
# }
	.d2line		139
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
.L11442:
	.type		Os_StackMonitorKernel,@function
	.size		Os_StackMonitorKernel,.-Os_StackMonitorKernel
# Number of nodes = 35

# Allocations for Os_StackMonitorKernel
#	?a4		coreID

# Allocations for module
	.section	.Os_BSS,,b
	.0byte		.L11446
	.section	.text_vle
#$$ld
.L5:
.L11666:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11664:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11662:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11660:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11649:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11647:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11601:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11587:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11533:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11460:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11458:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11452:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11447:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11387:
.L11395:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_StackMonitoring.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
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
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	5
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_StackMonitoring.c"
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
.L11384:
	.4byte		.L11385-.L11383
.L11383:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11389-.L11384
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\MemoryProtection\\Os_StackMonitoring.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11386
	.4byte		.L11387
	.4byte		.L11390
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11396:
	.sleb128	2
	.4byte		.L11392-.L11384
	.byte		"Os_StackMonitorInit"
	.byte		0
	.4byte		.L11395
	.uleb128	47
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11393
	.4byte		.L11394
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11395
	.uleb128	47
	.uleb128	22
	.byte		"proc"
	.byte		0
	.4byte		.L11397
	.4byte		.L11402
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11403:
	.sleb128	4
	.4byte		.L11395
	.uleb128	49
	.uleb128	44
	.byte		"procStackBegin"
	.byte		0
	.4byte		.L11404
	.4byte		.L11408
.L11409:
	.sleb128	4
	.4byte		.L11395
	.uleb128	50
	.uleb128	44
	.byte		"procStackEnd"
	.byte		0
	.4byte		.L11404
	.4byte		.L11410
.L11411:
	.sleb128	4
	.4byte		.L11395
	.uleb128	51
	.uleb128	28
	.byte		"patternOffset"
	.byte		0
	.4byte		.L11406
	.4byte		.L11412
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11392:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11419:
	.sleb128	5
	.4byte		.L11414-.L11384
	.byte		"Os_StackMonitorCheckProc"
	.byte		0
	.4byte		.L11395
	.uleb128	75
	.uleb128	25
	.4byte		.L11417
	.byte		0x1
	.byte		0x1
	.4byte		.L11415
	.4byte		.L11416
	.sleb128	3
	.4byte		.L11395
	.uleb128	75
	.uleb128	25
	.byte		"proc"
	.byte		0
	.4byte		.L11397
	.4byte		.L11420
.L11421:
	.sleb128	4
	.4byte		.L11395
	.uleb128	77
	.uleb128	45
	.byte		"isStackOverflow"
	.byte		0
	.4byte		.L11417
	.4byte		.L11422
.L11423:
	.sleb128	4
	.4byte		.L11395
	.uleb128	78
	.uleb128	45
	.byte		"procStackBegin"
	.byte		0
	.4byte		.L11404
	.4byte		.L11424
.L11425:
	.sleb128	4
	.4byte		.L11395
	.uleb128	79
	.uleb128	45
	.byte		"procStackEnd"
	.byte		0
	.4byte		.L11404
	.4byte		.L11426
.L11427:
	.sleb128	4
	.4byte		.L11395
	.uleb128	80
	.uleb128	45
	.byte		"patternOffset"
	.byte		0
	.4byte		.L11406
	.4byte		.L11428
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11414:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11433:
	.sleb128	2
	.4byte		.L11430-.L11384
	.byte		"Os_StackMonitor_PreInit"
	.byte		0
	.4byte		.L11395
	.uleb128	120
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11431
	.4byte		.L11432
	.sleb128	3
	.4byte		.L11395
	.uleb128	120
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11434
	.4byte		.L11438
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11430:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11443:
	.sleb128	2
	.4byte		.L11440-.L11384
	.byte		"Os_StackMonitorKernel"
	.byte		0
	.4byte		.L11395
	.uleb128	132
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11441
	.4byte		.L11442
.L11444:
	.sleb128	4
	.4byte		.L11395
	.uleb128	134
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11434
	.4byte		.L11445
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11440:
	.section	.debug_info,,n
.L11446:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11447
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11448
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11451:
	.sleb128	7
	.4byte		.L11452
	.uleb128	69
	.uleb128	1
	.4byte		.L11453-.L2
	.uleb128	152
	.section	.debug_info,,n
.L776:
	.sleb128	8
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	8
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11453:
.L11455:
	.sleb128	7
	.4byte		.L11458
	.uleb128	612
	.uleb128	1
	.4byte		.L11459-.L2
	.uleb128	8
.L735:
	.sleb128	8
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11406
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	8
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11406
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11459:
	.section	.debug_info,,n
.L11401:
	.sleb128	9
	.4byte		.L11460
	.uleb128	80
	.uleb128	13
	.4byte		.L11461-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	8
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	8
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	8
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	8
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11470
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	8
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	8
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11478
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	8
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	8
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	8
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11484
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	8
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	8
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11487
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	8
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	8
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	8
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	8
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11501
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	8
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11503
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	8
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11509
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	8
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11461:
.L11511:
	.sleb128	9
	.4byte		.L11458
	.uleb128	612
	.uleb128	1
	.4byte		.L11517-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	8
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	8
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11510
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	8
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11510
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11517:
.L11474:
	.sleb128	9
	.4byte		.L11460
	.uleb128	80
	.uleb128	13
	.4byte		.L11520-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	8
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11521
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	8
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11520:
.L11469:
	.sleb128	7
	.4byte		.L11460
	.uleb128	80
	.uleb128	13
	.4byte		.L11523-.L2
	.uleb128	56
.L496:
	.sleb128	8
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	8
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11526
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	8
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	8
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	8
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11485
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	8
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11502
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	8
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	8
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11488
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	8
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11529
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	8
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11510
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	8
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	8
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	8
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11532
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11523:
.L11531:
	.sleb128	9
	.4byte		.L11533
	.uleb128	52
	.uleb128	1
	.4byte		.L11534-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	8
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	8
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	8
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	8
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	8
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11534:
.L11540:
	.sleb128	7
	.4byte		.L11533
	.uleb128	52
	.uleb128	1
	.4byte		.L11544-.L2
	.uleb128	12
.L445:
	.sleb128	8
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	8
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11529
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	8
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11544:
.L11491:
	.sleb128	9
	.4byte		.L11533
	.uleb128	52
	.uleb128	1
	.4byte		.L11545-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	8
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	8
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	8
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	8
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	8
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	8
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11560
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	8
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	8
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11570
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	8
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11573
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	8
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	8
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11581
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	8
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11545:
.L11549:
	.sleb128	7
	.4byte		.L11533
	.uleb128	52
	.uleb128	1
	.4byte		.L11585-.L2
	.uleb128	1
.L432:
	.sleb128	8
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11585:
.L11508:
	.sleb128	7
	.4byte		.L11587
	.uleb128	32
	.uleb128	1
	.4byte		.L11588-.L2
	.uleb128	12
.L429:
	.sleb128	8
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	8
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11493
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	8
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11588:
.L11591:
	.sleb128	7
	.4byte		.L11587
	.uleb128	32
	.uleb128	1
	.4byte		.L11592-.L2
	.uleb128	4
.L428:
	.sleb128	8
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11592:
.L11457:
	.sleb128	7
	.4byte		.L11587
	.uleb128	32
	.uleb128	1
	.4byte		.L11593-.L2
	.uleb128	144
.L423:
	.sleb128	8
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11594
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	8
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11593:
.L11597:
	.sleb128	7
	.4byte		.L11587
	.uleb128	32
	.uleb128	1
	.4byte		.L11598-.L2
	.uleb128	20
.L412:
	.sleb128	8
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	8
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11406
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	8
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11406
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	8
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	8
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11598:
.L11595:
	.sleb128	7
	.4byte		.L11601
	.uleb128	174
	.uleb128	1
	.4byte		.L11602-.L2
	.uleb128	120
.L409:
	.sleb128	8
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11603
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	8
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	8
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11602:
.L11608:
	.sleb128	7
	.4byte		.L11601
	.uleb128	174
	.uleb128	1
	.4byte		.L11609-.L2
	.uleb128	8
.L406:
	.sleb128	8
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11610
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	8
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11532
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	8
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11609:
.L11606:
	.sleb128	7
	.4byte		.L11601
	.uleb128	174
	.uleb128	1
	.4byte		.L11613-.L2
	.uleb128	104
.L381:
	.sleb128	8
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	8
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11502
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	8
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	8
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	8
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	8
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	8
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11615
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	8
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	8
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11551
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	8
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	8
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11621
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	8
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11584
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	8
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11584
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	8
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	8
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11623
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	8
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	8
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	8
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	8
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	8
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	8
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	8
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	8
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	8
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	8
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11613:
.L11604:
	.sleb128	7
	.4byte		.L11601
	.uleb128	174
	.uleb128	1
	.4byte		.L11644-.L2
	.uleb128	8
.L379:
	.sleb128	8
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11532
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	8
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11645
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11644:
.L11633:
	.sleb128	7
	.4byte		.L11647
	.uleb128	50
	.uleb128	1
	.4byte		.L11648-.L2
	.uleb128	12
.L376:
	.sleb128	8
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	8
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	8
	.byte		"mincycle"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11648:
.L11516:
	.sleb128	7
	.4byte		.L11649
	.uleb128	87
	.uleb128	7
	.4byte		.L11650-.L2
	.uleb128	8
.L364:
	.sleb128	8
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	8
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11652
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11650:
	.section	.debug_info,,n
.L11527:
	.sleb128	10
	.4byte		.L11460
	.uleb128	80
	.uleb128	13
	.4byte		.L11654-.L2
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
.L11654:
.L11477:
	.sleb128	10
	.4byte		.L11460
	.uleb128	61
	.uleb128	1
	.4byte		.L11655-.L2
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
.L11655:
.L11554:
	.sleb128	10
	.4byte		.L11533
	.uleb128	52
	.uleb128	1
	.4byte		.L11656-.L2
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
.L11656:
.L11600:
	.sleb128	10
	.4byte		.L11587
	.uleb128	32
	.uleb128	1
	.4byte		.L11657-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	11
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	11
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	11
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	11
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	11
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	11
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	11
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	11
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	11
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	11
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L11657:
.L11646:
	.sleb128	10
	.4byte		.L11601
	.uleb128	174
	.uleb128	1
	.4byte		.L11658-.L2
	.uleb128	4
	.sleb128	11
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	11
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	11
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	11
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	11
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	11
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	11
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	11
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	11
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	11
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	11
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	11
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	11
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	11
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	11
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	11
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	11
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	11
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	11
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	11
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	11
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	11
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	11
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	11
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	11
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	11
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	11
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	11
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L11658:
.L11612:
	.sleb128	10
	.4byte		.L11601
	.uleb128	86
	.uleb128	1
	.4byte		.L11659-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	11
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	11
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	11
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	11
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	11
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	11
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	11
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	11
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	11
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	11
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	11
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	11
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	11
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	11
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	11
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	11
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	11
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	11
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	11
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	11
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	11
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	11
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	11
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	11
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	11
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	11
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	11
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	11
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	11
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	11
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	11
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	11
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	11
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	11
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	11
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	11
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	11
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	11
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	11
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	11
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	11
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	11
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	11
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	11
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	11
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	11
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	11
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	11
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	11
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	11
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	11
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	11
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	11
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	11
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	11
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	11
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	11
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L11659:
.L11643:
	.sleb128	10
	.4byte		.L11660
	.uleb128	43
	.uleb128	1
	.4byte		.L11661-.L2
	.uleb128	4
	.sleb128	11
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11661:
.L11525:
	.sleb128	10
	.4byte		.L11662
	.uleb128	37
	.uleb128	1
	.4byte		.L11663-.L2
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
.L11663:
.L11639:
	.sleb128	10
	.4byte		.L11664
	.uleb128	40
	.uleb128	1
	.4byte		.L11665-.L2
	.uleb128	4
	.sleb128	11
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11665:
.L11622:
	.sleb128	10
	.4byte		.L11666
	.uleb128	47
	.uleb128	1
	.4byte		.L11667-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11667:
	.section	.debug_info,,n
.L11400:
	.sleb128	12
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11401
	.section	.debug_info,,n
.L11399:
	.sleb128	13
	.4byte		.L11400
	.section	.debug_info,,n
.L11398:
	.sleb128	14
	.4byte		.L11399
.L11397:
	.sleb128	13
	.4byte		.L11398
	.section	.debug_info,,n
.L11407:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11406:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L11407
.L11405:
	.sleb128	12
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11406
.L11404:
	.sleb128	14
	.4byte		.L11405
.L11418:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11417:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L11418
.L11437:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11436:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L11437
.L11435:
	.sleb128	12
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11436
.L11434:
	.sleb128	13
	.4byte		.L11435
.L11450:
	.sleb128	12
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11451
	.section	.debug_info,,n
.L11448:
	.sleb128	16
	.4byte		.L11449-.L2
	.4byte		.L11450
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	1
	.sleb128	0
.L11449:
.L11454:
	.sleb128	12
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11455
.L11456:
	.sleb128	12
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11457
.L11465:
	.sleb128	12
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11406
.L11464:
	.sleb128	12
	.byte		"ProcType"
	.byte		0
	.4byte		.L11465
.L11463:
	.sleb128	12
	.byte		"TaskType"
	.byte		0
	.4byte		.L11464
.L11462:
	.sleb128	13
	.4byte		.L11463
.L11468:
	.sleb128	12
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11469
.L11467:
	.sleb128	14
	.4byte		.L11468
.L11466:
	.sleb128	13
	.4byte		.L11467
.L11473:
	.sleb128	12
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11474
.L11472:
	.sleb128	13
	.4byte		.L11473
.L11471:
	.sleb128	14
	.4byte		.L11472
.L11470:
	.sleb128	13
	.4byte		.L11471
.L11476:
	.sleb128	12
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11477
.L11475:
	.sleb128	13
	.4byte		.L11476
.L11481:
	.sleb128	15
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11480:
	.sleb128	12
	.byte		"uint64"
	.byte		0
	.4byte		.L11481
.L11479:
	.sleb128	12
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11480
.L11478:
	.sleb128	13
	.4byte		.L11479
.L11483:
	.sleb128	12
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11406
.L11482:
	.sleb128	13
	.4byte		.L11483
.L11485:
	.sleb128	12
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11406
.L11484:
	.sleb128	13
	.4byte		.L11485
.L11486:
	.sleb128	13
	.4byte		.L11404
.L11490:
	.sleb128	12
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11491
.L11489:
	.sleb128	13
	.4byte		.L11490
.L11488:
	.sleb128	14
	.4byte		.L11489
.L11487:
	.sleb128	13
	.4byte		.L11488
.L11495:
	.sleb128	12
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11406
.L11494:
	.sleb128	13
	.4byte		.L11495
.L11493:
	.sleb128	14
	.4byte		.L11494
.L11492:
	.sleb128	13
	.4byte		.L11493
	.section	.debug_info,,n
.L11499:
	.sleb128	18
	.4byte		.L11500-.L2
	.byte		0x1
	.sleb128	0
.L11500:
.L11498:
	.sleb128	14
	.4byte		.L11499
.L11497:
	.sleb128	12
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11498
.L11496:
	.sleb128	13
	.4byte		.L11497
.L11502:
	.sleb128	12
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11406
.L11501:
	.sleb128	13
	.4byte		.L11502
.L11507:
	.sleb128	12
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11508
.L11506:
	.sleb128	13
	.4byte		.L11507
.L11505:
	.sleb128	14
	.4byte		.L11506
.L11504:
	.sleb128	12
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11505
.L11503:
	.sleb128	14
	.4byte		.L11504
.L11510:
	.sleb128	14
	.4byte		.L11511
.L11509:
	.sleb128	13
	.4byte		.L11510
.L11515:
	.sleb128	12
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11516
.L11514:
	.sleb128	13
	.4byte		.L11515
.L11513:
	.sleb128	14
	.4byte		.L11514
.L11512:
	.sleb128	13
	.4byte		.L11513
.L11519:
	.sleb128	13
	.4byte		.L11401
.L11518:
	.sleb128	14
	.4byte		.L11519
.L11522:
	.sleb128	12
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11406
.L11521:
	.sleb128	13
	.4byte		.L11522
.L11524:
	.sleb128	12
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11525
.L11526:
	.sleb128	12
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11527
.L11528:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L11418
.L11530:
	.sleb128	13
	.4byte		.L11531
.L11529:
	.sleb128	14
	.4byte		.L11530
.L11532:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11528
.L11536:
	.sleb128	12
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11436
.L11535:
	.sleb128	13
	.4byte		.L11536
.L11539:
	.sleb128	12
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11540
.L11538:
	.sleb128	14
	.4byte		.L11539
.L11537:
	.sleb128	13
	.4byte		.L11538
.L11543:
	.sleb128	12
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11528
.L11542:
	.sleb128	14
	.4byte		.L11543
.L11541:
	.sleb128	13
	.4byte		.L11542
.L11548:
	.sleb128	12
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11549
.L11547:
	.sleb128	14
	.4byte		.L11548
.L11546:
	.sleb128	13
	.4byte		.L11547
.L11551:
	.sleb128	12
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11528
.L11550:
	.sleb128	13
	.4byte		.L11551
.L11553:
	.sleb128	12
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11554
.L11552:
	.sleb128	13
	.4byte		.L11553
.L11558:
	.sleb128	18
	.4byte		.L11559-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	19
	.4byte		.L11532
	.sleb128	0
.L11559:
.L11557:
	.sleb128	14
	.4byte		.L11558
.L11556:
	.sleb128	12
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11557
.L11555:
	.sleb128	13
	.4byte		.L11556
.L11563:
	.sleb128	18
	.4byte		.L11564-.L2
	.byte		0x1
	.sleb128	0
.L11564:
.L11562:
	.sleb128	14
	.4byte		.L11563
.L11561:
	.sleb128	12
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11562
.L11560:
	.sleb128	13
	.4byte		.L11561
.L11568:
	.sleb128	18
	.4byte		.L11569-.L2
	.byte		0x1
	.sleb128	19
	.4byte		.L11532
	.sleb128	0
.L11569:
.L11567:
	.sleb128	14
	.4byte		.L11568
.L11566:
	.sleb128	12
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11567
.L11565:
	.sleb128	13
	.4byte		.L11566
.L11572:
	.sleb128	13
	.4byte		.L11464
.L11571:
	.sleb128	14
	.4byte		.L11572
.L11570:
	.sleb128	13
	.4byte		.L11571
.L11576:
	.sleb128	12
	.byte		"CounterType"
	.byte		0
	.4byte		.L11406
.L11575:
	.sleb128	13
	.4byte		.L11576
.L11574:
	.sleb128	14
	.4byte		.L11575
.L11573:
	.sleb128	13
	.4byte		.L11574
.L11580:
	.sleb128	12
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11465
.L11579:
	.sleb128	13
	.4byte		.L11580
.L11578:
	.sleb128	14
	.4byte		.L11579
.L11577:
	.sleb128	13
	.4byte		.L11578
.L11584:
	.sleb128	12
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11406
.L11583:
	.sleb128	13
	.4byte		.L11584
.L11582:
	.sleb128	14
	.4byte		.L11583
.L11581:
	.sleb128	13
	.4byte		.L11582
.L11586:
	.sleb128	12
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11528
.L11590:
	.sleb128	12
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11591
.L11589:
	.sleb128	14
	.4byte		.L11590
.L11594:
	.sleb128	12
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11595
.L11596:
	.sleb128	12
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11597
.L11599:
	.sleb128	12
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11600
.L11603:
	.sleb128	12
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11604
.L11605:
	.sleb128	12
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11606
.L11607:
	.sleb128	12
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11608
.L11610:
	.sleb128	12
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11528
.L11611:
	.sleb128	12
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11612
.L11614:
	.sleb128	12
	.byte		"TickType"
	.byte		0
	.4byte		.L11406
.L11615:
	.sleb128	12
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11406
	.section	.debug_info,,n
.L11618:
	.sleb128	20
	.byte		"void"
	.byte		0
	.byte		0x0
.L11617:
	.sleb128	14
	.4byte		.L11618
.L11616:
	.sleb128	12
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11617
.L11620:
	.sleb128	14
	.4byte		.L11586
.L11619:
	.sleb128	12
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11620
.L11621:
	.sleb128	12
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11622
.L11623:
	.sleb128	12
	.byte		"RestartType"
	.byte		0
	.4byte		.L11528
.L11625:
	.sleb128	14
	.4byte		.L11479
.L11624:
	.sleb128	12
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11625
.L11627:
	.sleb128	14
	.4byte		.L11524
.L11626:
	.sleb128	12
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11627
.L11629:
	.sleb128	14
	.4byte		.L11614
.L11628:
	.sleb128	12
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11629
.L11632:
	.sleb128	12
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11633
.L11631:
	.sleb128	14
	.4byte		.L11632
.L11630:
	.sleb128	12
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11631
.L11635:
	.sleb128	14
	.4byte		.L11463
.L11634:
	.sleb128	12
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11635
.L11638:
	.sleb128	12
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11639
.L11637:
	.sleb128	14
	.4byte		.L11638
.L11636:
	.sleb128	12
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11637
.L11642:
	.sleb128	12
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11643
.L11641:
	.sleb128	14
	.4byte		.L11642
.L11640:
	.sleb128	12
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11641
.L11645:
	.sleb128	12
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11646
.L11651:
	.sleb128	13
	.4byte		.L11406
.L11653:
	.sleb128	12
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11436
.L11652:
	.sleb128	13
	.4byte		.L11653
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11389:
	.sleb128	0
.L11385:

	.section	.debug_loc,,n
	.align	0
.L11402:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11408:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo3),3
	.d2locend
.L11410:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo3),4
	.d2locend
.L11412:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo3),5
	.d2locend
.L11420:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),31
	.d2locend
.L11422:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo9),30
	.d2locend
.L11424:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo9),29
	.d2locend
.L11426:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo9),28
	.d2locend
.L11428:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo9),27
	.d2locend
.L11438:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L11445:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_StackMonitorKernel"
	.wrcm.nstrlist "calls", "Os_Core_GetKernelStack","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_StackMonitor_PreInit"
	.wrcm.nstrlist "calls", "Os_Core_GetKernelStack"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_StackMonitorCheckProc"
	.wrcm.nstrlist "calls", "Os_Call_ProtectionHook"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_StackMonitorInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_StackMonitoring.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_StackMonitoring.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_StackMonitoring.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_StackMonitoring.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_StackMonitoring.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_StackMonitoring.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\protection\MemoryProtection\Os_StackMonitoring.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
