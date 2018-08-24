#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"master.c"
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
# ISR(MasterButton)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11007:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11003:
	.0byte		.L11001
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\master.c"
        .d2line         30,1
#$$ld
.L11010:

#$$bf	OS_ISR_MasterButton,interprocedural,rasave,nostackparams
	.globl		OS_ISR_MasterButton
	.d2_cfa_start __cie
OS_ISR_MasterButton:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* PRQA S 0303 1 */ /* Register assignment */
#     HANDLE_BUTTON_ISR();                    /* hardware specific handling */
#     /* notify the task */
#     if(E_OK != SetEvent(MasterController,MasterButtonIsPressed)) { errorHandler(); }
	.d2line		35
	diab.li		r3,4
	diab.li		r5,0
	diab.li		r6,1
	bl		SetEvent
	e_andi.		r3,r3,255
	bc		1,2,.L10944	# eq
	bl		errorHandler
.L10944:
# 
# }
	.d2line		37
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11011:
	.type		OS_ISR_MasterButton,@function
	.size		OS_ISR_MasterButton,.-OS_ISR_MasterButton
# Number of nodes = 11

# Allocations for OS_ISR_MasterButton
# TASK(MasterController)
	.align		2
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         40,1
#$$ld
.L11016:

#$$bf	OS_TASK_MasterController,interprocedural,rasave,nostackparams
	.globl		OS_TASK_MasterController
	.d2_cfa_start __cie
OS_TASK_MasterController:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Initialize the global variable */
#     /* this call not strictly required due the MasterBlinker task is not running */
#     if(E_OK != GetResource( MasterBlinkerSettings )) { errorHandler(); }
	.d2line		44
	diab.li		r3,0
	bl		GetResource
	e_andi.		r3,r3,255
	bc		1,2,.L10948	# eq
	bl		errorHandler
.L10948:
# #ifndef NO_EXTERNAL_BUTTON_AVAILABLE	
#     masterBlinkerStatus.state = OFF;
	.d2line		46
	diab.li		r3,0
	lis		r4,masterBlinkerStatus@ha
	e_add16i		r4,r4,masterBlinkerStatus@l
	stw		r3,0(r4)
#     masterBlinkerStatus.timeout = 0;
	.d2line		47
	lis		r4,(masterBlinkerStatus+4)@ha
	stw		r3,(masterBlinkerStatus+4)@l(r4)
# #else
#     masterBlinkerStatus.state = FAST;
#     masterBlinkerStatus.timeout = BLINKING_FAST_TIMEOUT;
# #endif
#     if(E_OK != ReleaseResource( MasterBlinkerSettings )) { errorHandler(); }
	.d2line		52
	bl		ReleaseResource
	e_andi.		r3,r3,255
	bc		1,2,.L10949	# eq
	bl		errorHandler
.L10949:
# 
#     /* Cross core action */
#     if(E_OK != ActivateTask(SlaveFastBlinker)) { errorHandler(); }
	.d2line		55
	diab.li		r3,12
	bl		ActivateTask
	e_andi.		r3,r3,255
	bc		1,2,.L10950	# eq
	bl		errorHandler
.L10950:
# 
#     /* Cross core action */
# 	/* start the schedule table */
#     if(E_OK != StartScheduleTableAbs(SlaveBlinkerScheduleTable,0)) { errorHandler(); }
	.d2line		59
	diab.li		r3,1
	diab.li		r4,0
	bl		StartScheduleTableAbs
	e_andi.		r3,r3,255
	bc		1,2,.L10952	# eq
	bl		errorHandler
.L10952:
# 
# 	/* enter into the never ending loop */
#     while(1)
#     {
#         if(E_OK != ClearEvent(MasterButtonIsPressed)) { errorHandler(); } /* clear the event before wait */
	.d2line		64
	diab.li		r3,0
	diab.li		r4,1
	bl		ClearEvent
	e_andi.		r3,r3,255
	bc		1,2,.L10954	# eq
	bl		errorHandler
.L10954:
#         if(E_OK != WaitEvent(MasterButtonIsPressed)) { errorHandler(); } /* wait for the button */
	.d2line		65
	diab.li		r3,0
	diab.li		r4,1
	bl		WaitEvent
	e_andi.		r3,r3,255
	bc		1,2,.L10955	# eq
	bl		errorHandler
.L10955:
# 
#         /* button is pushed, lock the resource */
#         if(E_OK != GetResource( MasterBlinkerSettings )) { errorHandler(); }
	.d2line		68
	diab.li		r3,0
	bl		GetResource
	e_andi.		r3,r3,255
	bc		1,2,.L10956	# eq
	bl		errorHandler
.L10956:
#         switch(masterBlinkerStatus.state)
	.d2line		69
	lis		r3,masterBlinkerStatus@ha
	lwz		r6,masterBlinkerStatus@l(r3)
	se_cmpi		r6,0
	bc		1,2,.L10957	# eq
	se_cmpi		r6,1
	bc		1,2,.L10959	# eq
	se_cmpi		r6,2
	bc		1,2,.L10960	# eq
	b		.L10961
.L10957:
#         {
#             case OFF:
#             {
#                 masterBlinkerStatus.state = BLINKING;
	.d2line		73
	diab.li		r0,1
	lis		r3,masterBlinkerStatus@ha
	e_add16i		r3,r3,masterBlinkerStatus@l
	stw		r0,0(r3)
	b		.L10958
.L10959:
#             }break;
# 		    case BLINKING:
#             {
#                 masterBlinkerStatus.state = FAST;
	.d2line		77
	diab.li		r0,2
	lis		r3,masterBlinkerStatus@ha
	e_add16i		r3,r3,masterBlinkerStatus@l
	stw		r0,0(r3)
#                 masterBlinkerStatus.timeout = BLINKING_FAST_TIMEOUT;
	.d2line		78
	diab.li		r0,10
	lis		r3,(masterBlinkerStatus+4)@ha
	stw		r0,(masterBlinkerStatus+4)@l(r3)
	b		.L10958
.L10960:
#             }break;
#             case FAST:
#             {
#                 masterBlinkerStatus.timeout = BLINKING_FAST_TIMEOUT;
	.d2line		82
	diab.li		r0,10
	lis		r3,(masterBlinkerStatus+4)@ha
	stw		r0,(masterBlinkerStatus+4)@l(r3)
	b		.L10958
.L10961:
#             }break;
# 
#             default: /* problem detected */
#             {
#                 errorHandler();
	.d2line		87
	bl		errorHandler
.L10958:
#             }break;
#         }
#         if(E_OK != ReleaseResource(MasterBlinkerSettings)) { errorHandler(); }
	.d2line		90
	diab.li		r3,0
	bl		ReleaseResource
	e_andi.		r3,r3,255
	bc		1,2,.L10952	# eq
	bl		errorHandler
	b		.L10952
# 
#     } /* end of while(1) */
# }
	.d2line		93
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11017:
	.type		OS_TASK_MasterController,@function
	.size		OS_TASK_MasterController,.-OS_TASK_MasterController
# Number of nodes = 120

# Allocations for OS_TASK_MasterController
# TASK(MasterBlinker)
	.align		2
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         99,1
#$$ld
.L11021:

#$$bf	OS_TASK_MasterBlinker,interprocedural,rasave,nostackparams
	.globl		OS_TASK_MasterBlinker
	.d2_cfa_start __cie
OS_TASK_MasterBlinker:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     if(E_OK != GetResource( MasterBlinkerSettings )) { errorHandler(); }
	.d2line		101
	diab.li		r3,0
	bl		GetResource
	e_andi.		r3,r3,255
	bc		1,2,.L10976	# eq
	bl		errorHandler
.L10976:
#     switch(masterBlinkerStatus.state)
	.d2line		102
	lis		r3,masterBlinkerStatus@ha
	lwz		r6,masterBlinkerStatus@l(r3)
	se_cmpi		r6,0
	bc		1,2,.L10978	# eq
	se_cmpi		r6,1
	bc		1,2,.L10978	# eq
	se_cmpi		r6,2
	bc		1,2,.L10980	# eq
	b		.L10984
.L10980:
#     {
#         case OFF:
#         {
#             /* do nothing */
#         }break;
#         case BLINKING:
#         {
#             /* Toggle the led */
#             /* PRQA S 0303 1 */ /* Register assignment */
#             TOOGLE_LED();
#         }break;
#         case FAST:
#         {
#             if(masterBlinkerStatus.timeout > 0)
	.d2line		116
	lis		r3,(masterBlinkerStatus+4)@ha
	lwz		r0,(masterBlinkerStatus+4)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L10981	# eq
#             {
#                 /* PRQA S 0303 1 */ /* Register assignment */
#                 TOOGLE_LED();
#                 /* Set an alarm to clear the LED*/
#                 /* The alam time is the half of the schedule table length */
#                 /* Indirect cross core action (alarm of this core activates a task on other core) */
#                 if(E_OK != SetAbsAlarm(MasterBlinkerAlarm,SCHEDULE_TABLE_LENGHT/2,0)) { errorHandler(); }
	.d2line		123
	diab.li		r3,0
	diab.li		r4,50
	diab.li		r5,0
	bl		SetAbsAlarm
	e_andi.		r3,r3,255
	bc		1,2,.L10982	# eq
	bl		errorHandler
.L10982:
#                 masterBlinkerStatus.timeout-- ;
	.d2line		124
	lis		r4,(masterBlinkerStatus+4)@ha
	lwz		r3,(masterBlinkerStatus+4)@l(r4)
	diab.addi		r3,r3,-1
	stw		r3,(masterBlinkerStatus+4)@l(r4)
	b		.L10978
.L10981:
#             }
#             else
#             {
#                 masterBlinkerStatus.state = BLINKING;
	.d2line		128
	diab.li		r0,1
	lis		r3,masterBlinkerStatus@ha
	e_add16i		r3,r3,masterBlinkerStatus@l
	stw		r0,0(r3)
	b		.L10978
.L10984:
#             }
#         }break;
#         default:
#             ShutdownOS(0);
	.d2line		132
	diab.li		r3,0
	bl		ShutdownOS
.L10978:
#             break;
#     }
#     if(E_OK != ReleaseResource( MasterBlinkerSettings )) { errorHandler(); }
	.d2line		135
	diab.li		r3,0
	bl		ReleaseResource
	e_andi.		r3,r3,255
	bc		1,2,.L10985	# eq
	bl		errorHandler
.L10985:
#     if(E_OK != TerminateTask()) { errorHandler(); }
	.d2line		136
	bl		TerminateTask
	e_andi.		r3,r3,255
	bc		1,2,.L10975	# eq
	bl		errorHandler
.L10975:
# }
	.d2line		137
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11022:
	.type		OS_TASK_MasterBlinker,@function
	.size		OS_TASK_MasterBlinker,.-OS_TASK_MasterBlinker
# Number of nodes = 67

# Allocations for OS_TASK_MasterBlinker
# TASK(MasterFastBlinker)
	.align		2
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         145,1
#$$ld
.L11026:

#$$bf	OS_TASK_MasterFastBlinker,interprocedural,rasave,nostackparams
	.globl		OS_TASK_MasterFastBlinker
	.d2_cfa_start __cie
OS_TASK_MasterFastBlinker:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* PRQA S 0303 1 */ /* Register assignment */
#     TOOGLE_LED();
#     if(E_OK != TerminateTask()) { errorHandler(); }
	.d2line		149
	bl		TerminateTask
	e_andi.		r3,r3,255
	bc		1,2,.L10995	# eq
	bl		errorHandler
.L10995:
# }
	.d2line		150
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11027:
	.type		OS_TASK_MasterFastBlinker,@function
	.size		OS_TASK_MasterFastBlinker,.-OS_TASK_MasterFastBlinker
# Number of nodes = 7

# Allocations for OS_TASK_MasterFastBlinker
# FUNC (void, AUTOMATIC) StartupHook_MasterCoreApp(void)
	.align		2
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         152,24
#$$ld
.L11031:

#$$bf	StartupHook_MasterCoreApp,interprocedural,rasave,nostackparams
	.globl		StartupHook_MasterCoreApp
	.d2_cfa_start __cie
StartupHook_MasterCoreApp:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     HardwareInitMaster();
	.d2line		154
	bl		HardwareInitMaster
# }
	.d2line		155
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11032:
	.type		StartupHook_MasterCoreApp,@function
	.size		StartupHook_MasterCoreApp,.-StartupHook_MasterCoreApp
# Number of nodes = 2

# Allocations for StartupHook_MasterCoreApp
# FUNC (void, AUTOMATIC) ShutdownHook_MasterCoreApp(VAR(StatusType,AUTOMATIC) Fatalerror)
	.align		2
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         157,24
#$$ld
.L11036:

#$$bf	ShutdownHook_MasterCoreApp,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		ShutdownHook_MasterCoreApp
	.d2_cfa_start __cie
ShutdownHook_MasterCoreApp:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
# }
	.d2line		160
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11037:
	.type		ShutdownHook_MasterCoreApp,@function
	.size		ShutdownHook_MasterCoreApp,.-ShutdownHook_MasterCoreApp
# Number of nodes = 0

# Allocations for ShutdownHook_MasterCoreApp
#	not allocated	Fatalerror

# Allocations for module
	.section	.invalid_BSS,,b
	.0byte		.L11042
	.section	.invalid_BSS,,b
	.type		masterBlinkerStatus,@object
	.size		masterBlinkerStatus,8
	.align		2
masterBlinkerStatus:
	.space		8
	.section	.text_vle
#$$ld
.L5:
.L11047:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\inc\\double.h"
.L11043:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\master.c"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11004:
.L11012:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\master.c"
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
	.uleb128	9
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
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
	.uleb128	10
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	53
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\master.c"
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
.L11001:
	.4byte		.L11002-.L11000
.L11000:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11006-.L11001
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\master.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11003
	.4byte		.L11004
	.4byte		.L11007
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11013:
	.sleb128	2
	.4byte		.L11009-.L11001
	.byte		"OS_ISR_MasterButton"
	.byte		0
	.4byte		.L11012
	.uleb128	30
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11010
	.4byte		.L11011
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11009:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11018:
	.sleb128	2
	.4byte		.L11015-.L11001
	.byte		"OS_TASK_MasterController"
	.byte		0
	.4byte		.L11012
	.uleb128	40
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11016
	.4byte		.L11017
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11015:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11023:
	.sleb128	2
	.4byte		.L11020-.L11001
	.byte		"OS_TASK_MasterBlinker"
	.byte		0
	.4byte		.L11012
	.uleb128	99
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11021
	.4byte		.L11022
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11020:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11028:
	.sleb128	2
	.4byte		.L11025-.L11001
	.byte		"OS_TASK_MasterFastBlinker"
	.byte		0
	.4byte		.L11012
	.uleb128	145
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11026
	.4byte		.L11027
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11025:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11033:
	.sleb128	2
	.4byte		.L11030-.L11001
	.byte		"StartupHook_MasterCoreApp"
	.byte		0
	.4byte		.L11012
	.uleb128	152
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L11031
	.4byte		.L11032
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11030:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11038:
	.sleb128	2
	.4byte		.L11035-.L11001
	.byte		"ShutdownHook_MasterCoreApp"
	.byte		0
	.4byte		.L11012
	.uleb128	157
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L11036
	.4byte		.L11037
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11012
	.uleb128	157
	.uleb128	24
	.byte		"Fatalerror"
	.byte		0
	.4byte		.L11039
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11035:
	.section	.debug_info,,n
.L11042:
	.sleb128	4
	.4byte		.L11043
	.uleb128	25
	.uleb128	29
	.byte		"masterBlinkerStatus"
	.byte		0
	.4byte		.L11044
	.sleb128	5
	.byte		0x3
	.4byte		masterBlinkerStatus
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11046:
	.sleb128	5
	.4byte		.L11047
	.uleb128	19
	.uleb128	1
	.4byte		.L11048-.L2
	.uleb128	8
	.section	.debug_info,,n
.L10942:
	.sleb128	6
	.byte		"state"
	.byte		0
	.4byte		.L11049
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L10943:
	.sleb128	6
	.byte		"timeout"
	.byte		0
	.4byte		.L11051
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11048:
	.section	.debug_info,,n
.L11050:
	.sleb128	7
	.4byte		.L11047
	.uleb128	19
	.uleb128	1
	.4byte		.L11052-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"OFF"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"BLINKING"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"FAST"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11052:
	.section	.debug_info,,n
.L11041:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L11040:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L11041
.L11039:
	.sleb128	10
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11040
.L11045:
	.sleb128	10
	.byte		"Blinker_s"
	.byte		0
	.4byte		.L11046
	.section	.debug_info,,n
.L11044:
	.sleb128	11
	.4byte		.L11045
.L11049:
	.sleb128	10
	.byte		"BlinkerState_e"
	.byte		0
	.4byte		.L11050
.L11051:
	.sleb128	9
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11006:
	.sleb128	0
.L11002:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ShutdownHook_MasterCoreApp"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "StartupHook_MasterCoreApp"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "HardwareInitMaster"
	.wrcm.end
	.wrcm.nelem "OS_TASK_MasterFastBlinker"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "TerminateTask","errorHandler"
	.wrcm.end
	.wrcm.nelem "OS_TASK_MasterBlinker"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "GetResource","ReleaseResource","SetAbsAlarm","ShutdownOS","TerminateTask","errorHandler"
	.wrcm.end
	.wrcm.nelem "OS_TASK_MasterController"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "ActivateTask","ClearEvent","GetResource","ReleaseResource","StartScheduleTableAbs","WaitEvent","errorHandler"
	.wrcm.end
	.wrcm.nelem "OS_ISR_MasterButton"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SetEvent","errorHandler"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\master.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\master.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\master.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\master.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\master.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\master.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\Application\MetaWares\make\..\src\master.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
