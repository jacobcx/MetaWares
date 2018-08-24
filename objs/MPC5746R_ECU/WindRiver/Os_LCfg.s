#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_LCfg.c"
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

# Allocations for module
	.section	.text_vle
	.0byte		.L11342
	.section	.Os_BSS,,b
	.0byte		.L11347
	.section	.Os_BSS,,b
	.type		Os_KernelStack_0,@object
	.size		Os_KernelStack_0,2048
	.align		2
	.globl		Os_KernelStack_0
Os_KernelStack_0:
	.space		2048
	.section	.Os_BSS,,b
	.0byte		.L11354
	.section	.Os_BSS,,b
	.type		Os_KernelStack_1,@object
	.size		Os_KernelStack_1,2048
	.align		2
	.globl		Os_KernelStack_1
Os_KernelStack_1:
	.space		2048
	.section	.Os_BSS,,b
	.0byte		.L11357
	.section	.Os_BSS,,b
	.type		Os_LockResources,@object
	.size		Os_LockResources,4
	.align		2
	.globl		Os_LockResources
Os_LockResources:
	.space		4
	.section	.Os_CONST,,r
	.0byte		.L11363
	.section	.Os_CONST,,r
	.type		Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2,@object
	.size		Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2,1
	.align		0
	.globl		Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2
Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2:
	.byte		0
	.section	.Os_CONST,,r
	.0byte		.L11365
	.section	.Os_CONST,,r
	.type		Os_KernelStackSize,@object
	.size		Os_KernelStackSize,4
	.align		2
	.globl		Os_KernelStackSize
Os_KernelStackSize:
	.long		512
	.section	.Os_CONST,,r
	.type		Os_KernelStack,@object
	.size		Os_KernelStack,8
	.align		2
	.globl		Os_KernelStack
Os_KernelStack:
	.long		Os_KernelStack_0
	.long		Os_KernelStack_1
	.section	.Os_CONST,,r
	.type		Os_KernelStackStart,@object
	.size		Os_KernelStackStart,8
	.align		2
	.globl		Os_KernelStackStart
Os_KernelStackStart:
	.long		Os_KernelStack_0+2044
	.long		Os_KernelStack_1+2044
	.section	.Os_CONST,,r
	.0byte		.L11375
	.section	.Os_CONST,,r
	.type		Os_KernelStackPtr_0,@object
	.size		Os_KernelStackPtr_0,4
	.align		2
	.globl		Os_KernelStackPtr_0
Os_KernelStackPtr_0:
	.long		Os_KernelStack_0+2044
	.section	.Os_CONST,,r
	.type		Os_KernelStackPtr_1,@object
	.size		Os_KernelStackPtr_1,4
	.align		2
	.globl		Os_KernelStackPtr_1
Os_KernelStackPtr_1:
	.long		Os_KernelStack_1+2044
	.section	.Os_CONST,,r
	.type		Os_AppModeCount,@object
	.size		Os_AppModeCount,4
	.align		2
	.globl		Os_AppModeCount
Os_AppModeCount:
	.long		1
	.section	.Os_CONST,,r
	.0byte		.L11380
	.section	.Os_CONST,,r
	.type		Os_MasterCoreApp_Proc,@object
	.size		Os_MasterCoreApp_Proc,36
	.align		2
Os_MasterCoreApp_Proc:
	.long		4
	.long		5
	.long		2
	.long		7
	.long		8
	.long		3
	.long		0
	.long		1
	.long		-1
	.section	.Os_CONST,,r
	.type		Os_MasterCoreApp_Counters,@object
	.size		Os_MasterCoreApp_Counters,8
	.align		2
Os_MasterCoreApp_Counters:
	.long		0
	.long		-1
	.section	.Os_CONST,,r
	.type		Os_MasterCoreApp_Alarms,@object
	.size		Os_MasterCoreApp_Alarms,12
	.align		2
Os_MasterCoreApp_Alarms:
	.long		0
	.long		1
	.long		-1
	.section	.Os_CONST,,r
	.type		Os_MasterCoreApp_SchTbls,@object
	.size		Os_MasterCoreApp_SchTbls,8
	.align		2
Os_MasterCoreApp_SchTbls:
	.long		0
	.long		-1
	.section	.Os_CONST,,r
	.type		Os_SlaveCoreApp_Proc,@object
	.size		Os_SlaveCoreApp_Proc,24
	.align		2
Os_SlaveCoreApp_Proc:
	.long		11
	.long		12
	.long		9
	.long		6
	.long		10
	.long		-1
	.section	.Os_CONST,,r
	.type		Os_SlaveCoreApp_Counters,@object
	.size		Os_SlaveCoreApp_Counters,8
	.align		2
Os_SlaveCoreApp_Counters:
	.long		1
	.long		-1
	.section	.Os_CONST,,r
	.type		Os_SlaveCoreApp_Alarms,@object
	.size		Os_SlaveCoreApp_Alarms,12
	.align		2
Os_SlaveCoreApp_Alarms:
	.long		3
	.long		2
	.long		-1
	.section	.Os_CONST,,r
	.type		Os_SlaveCoreApp_SchTbls,@object
	.size		Os_SlaveCoreApp_SchTbls,8
	.align		2
Os_SlaveCoreApp_SchTbls:
	.long		1
	.long		-1
	.section	.Os_BSS,,b
	.0byte		.L11413
	.section	.Os_BSS,,b
	.type		Os_Applications_Dyn,@object
	.size		Os_Applications_Dyn,2
	.align		0
Os_Applications_Dyn:
	.space		2
	.section	.Os_CONST,,r
	.0byte		.L11418
	.section	.Os_CONST,,r
	.type		Os_Applications_Stat,@object
	.size		Os_Applications_Stat,96
	.align		2
	.globl		Os_Applications_Stat
Os_Applications_Stat:
	.long		Os_Applications_Dyn
	.byte		0
	.space		3
	.long		-1
	.long		0
	.long		ShutdownHook_MasterCoreApp
	.long		StartupHook_MasterCoreApp
	.long		0
	.long		Os_MasterCoreApp_Proc
	.long		Os_MasterCoreApp_Counters
	.long		Os_MasterCoreApp_Alarms
	.long		Os_MasterCoreApp_SchTbls
	.short		1
	.space		2
	.long		Os_Applications_Dyn+1
	.byte		1
	.space		3
	.long		-1
	.long		0
	.long		ShutdownHook_SlaveCoreApp
	.long		StartupHook_SlaveCoreApp
	.long		0
	.long		Os_SlaveCoreApp_Proc
	.long		Os_SlaveCoreApp_Counters
	.long		Os_SlaveCoreApp_Alarms
	.long		Os_SlaveCoreApp_SchTbls
	.short		1
	.space		2
	.section	.Os_CONST,,r
	.0byte		.L11424
	.section	.Os_CONST,,r
	.type		Os_ApplicationRange,@object
	.size		Os_ApplicationRange,16
	.align		2
	.globl		Os_ApplicationRange
Os_ApplicationRange:
	.long		-1
	.long		0
	.long		0
	.long		1
	.section	.Os_CONST,,r
	.type		Os_TrustedFunctions,@object
	.size		Os_TrustedFunctions,8
	.align		2
	.globl		Os_TrustedFunctions
Os_TrustedFunctions:
	.long		0
	.byte		0
	.space		3
	.section	.Os_CONST,,r
	.0byte		.L11436
	.section	.Os_CONST,,r
	.type		Os_TrustedFunctionCount,@object
	.size		Os_TrustedFunctionCount,4
	.align		2
	.globl		Os_TrustedFunctionCount
Os_TrustedFunctionCount:
	.long		0
	.section	.Os_CONST,,r
	.0byte		.L11439
	.section	.Os_CONST,,r
	.type		Os_MasterBlinkerSettingsAccessRights,@object
	.size		Os_MasterBlinkerSettingsAccessRights,4
	.align		2
Os_MasterBlinkerSettingsAccessRights:
	.long		20
	.section	.Os_CONST,,r
	.type		Os_SlaveBlinkerSettingsAccessRights,@object
	.size		Os_SlaveBlinkerSettingsAccessRights,4
	.align		2
Os_SlaveBlinkerSettingsAccessRights:
	.long		2560
	.section	.Os_BSS,,b
	.0byte		.L11447
	.section	.Os_BSS,,b
	.type		Os_ResourceDyns,@object
	.size		Os_ResourceDyns,8
	.align		2
Os_ResourceDyns:
	.space		8
	.section	.Os_CONST,,r
	.0byte		.L11452
	.section	.Os_CONST,,r
	.type		Os_ResourceStat,@object
	.size		Os_ResourceStat,24
	.align		2
	.globl		Os_ResourceStat
Os_ResourceStat:
	.long		2
	.long		Os_MasterBlinkerSettingsAccessRights
	.long		Os_ResourceDyns
	.long		4
	.long		Os_SlaveBlinkerSettingsAccessRights
	.long		Os_ResourceDyns+4
	.section	.Os_CONST,,r
	.0byte		.L11458
	.section	.Os_CONST,,r
	.type		Os_ResourceRange,@object
	.size		Os_ResourceRange,16
	.align		2
	.globl		Os_ResourceRange
Os_ResourceRange:
	.long		-1
	.long		0
	.long		0
	.long		1
	.section	.invalid_BSS,,b
	.0byte		.L11461
	.section	.invalid_BSS,,b
	.type		OS_CAT2_ISR_LEVEL_P6_Core1_App0_Stack,@object
	.size		OS_CAT2_ISR_LEVEL_P6_Core1_App0_Stack,256
	.align		2
OS_CAT2_ISR_LEVEL_P6_Core1_App0_Stack:
	.space		256
	.section	.invalid_BSS,,b
	.type		OS_CAT2_ISR_LEVEL_P7_Core1_App0_Stack,@object
	.size		OS_CAT2_ISR_LEVEL_P7_Core1_App0_Stack,256
	.align		2
OS_CAT2_ISR_LEVEL_P7_Core1_App0_Stack:
	.space		256
	.section	.invalid_BSS,,b
	.type		Os_MasterBlinkerStack,@object
	.size		Os_MasterBlinkerStack,512
	.align		2
Os_MasterBlinkerStack:
	.space		512
	.section	.invalid_BSS,,b
	.type		OS_CAT2_ISR_LEVEL_P5_Core1_App0_Stack,@object
	.size		OS_CAT2_ISR_LEVEL_P5_Core1_App0_Stack,512
	.align		2
OS_CAT2_ISR_LEVEL_P5_Core1_App0_Stack:
	.space		512
	.section	.invalid_BSS,,b
	.type		Os_MasterControllerStack,@object
	.size		Os_MasterControllerStack,512
	.align		2
Os_MasterControllerStack:
	.space		512
	.section	.invalid_BSS,,b
	.type		Os_MasterFastBlinkerStack,@object
	.size		Os_MasterFastBlinkerStack,400
	.align		2
Os_MasterFastBlinkerStack:
	.space		400
	.section	.invalid_BSS,,b
	.type		Os_OsTask_Core0_20msStack,@object
	.size		Os_OsTask_Core0_20msStack,512
	.align		2
Os_OsTask_Core0_20msStack:
	.space		512
	.section	.invalid_BSS,,b
	.type		Os_OsTask_Core1_10msStack,@object
	.size		Os_OsTask_Core1_10msStack,2560
	.align		2
Os_OsTask_Core1_10msStack:
	.space		2560
	.section	.invalid_BSS,,b
	.type		Os_OsTask_Core1_StartUpStack,@object
	.size		Os_OsTask_Core1_StartUpStack,512
	.align		2
Os_OsTask_Core1_StartUpStack:
	.space		512
	.section	.invalid_BSS,,b
	.type		Os_SlaveBlinkerStack,@object
	.size		Os_SlaveBlinkerStack,512
	.align		2
Os_SlaveBlinkerStack:
	.space		512
	.section	.invalid_BSS,,b
	.type		OS_CAT2_ISR_LEVEL_P5_Core1_App1_Stack,@object
	.size		OS_CAT2_ISR_LEVEL_P5_Core1_App1_Stack,512
	.align		2
OS_CAT2_ISR_LEVEL_P5_Core1_App1_Stack:
	.space		512
	.section	.invalid_BSS,,b
	.type		Os_SlaveControllerStack,@object
	.size		Os_SlaveControllerStack,512
	.align		2
Os_SlaveControllerStack:
	.space		512
	.section	.invalid_BSS,,b
	.type		Os_SlaveFastBlinkerStack,@object
	.size		Os_SlaveFastBlinkerStack,400
	.align		2
Os_SlaveFastBlinkerStack:
	.space		400
	.section	.invalid_BSS,,b
	.type		OS_CAT2_ISR_LEVEL_P6_Core1_App0_Context,@object
	.size		OS_CAT2_ISR_LEVEL_P6_Core1_App0_Context,296
	.align		2
OS_CAT2_ISR_LEVEL_P6_Core1_App0_Context:
	.space		296
	.section	.invalid_BSS,,b
	.type		OS_CAT2_ISR_LEVEL_P7_Core1_App0_Context,@object
	.size		OS_CAT2_ISR_LEVEL_P7_Core1_App0_Context,296
	.align		2
OS_CAT2_ISR_LEVEL_P7_Core1_App0_Context:
	.space		296
	.section	.invalid_BSS,,b
	.type		Os_MasterBlinkerContext,@object
	.size		Os_MasterBlinkerContext,296
	.align		2
Os_MasterBlinkerContext:
	.space		296
	.section	.invalid_BSS,,b
	.type		OS_CAT2_ISR_LEVEL_P5_Core1_App0_Context,@object
	.size		OS_CAT2_ISR_LEVEL_P5_Core1_App0_Context,296
	.align		2
OS_CAT2_ISR_LEVEL_P5_Core1_App0_Context:
	.space		296
	.section	.invalid_BSS,,b
	.type		Os_MasterControllerContext,@object
	.size		Os_MasterControllerContext,296
	.align		2
Os_MasterControllerContext:
	.space		296
	.section	.invalid_BSS,,b
	.type		Os_MasterFastBlinkerContext,@object
	.size		Os_MasterFastBlinkerContext,296
	.align		2
Os_MasterFastBlinkerContext:
	.space		296
	.section	.invalid_BSS,,b
	.type		Os_OsTask_Core0_20msContext,@object
	.size		Os_OsTask_Core0_20msContext,296
	.align		2
Os_OsTask_Core0_20msContext:
	.space		296
	.section	.invalid_BSS,,b
	.type		Os_OsTask_Core1_10msContext,@object
	.size		Os_OsTask_Core1_10msContext,296
	.align		2
Os_OsTask_Core1_10msContext:
	.space		296
	.section	.invalid_BSS,,b
	.type		Os_OsTask_Core1_StartUpContext,@object
	.size		Os_OsTask_Core1_StartUpContext,296
	.align		2
Os_OsTask_Core1_StartUpContext:
	.space		296
	.section	.invalid_BSS,,b
	.type		Os_SlaveBlinkerContext,@object
	.size		Os_SlaveBlinkerContext,296
	.align		2
Os_SlaveBlinkerContext:
	.space		296
	.section	.invalid_BSS,,b
	.type		OS_CAT2_ISR_LEVEL_P5_Core1_App1_Context,@object
	.size		OS_CAT2_ISR_LEVEL_P5_Core1_App1_Context,296
	.align		2
OS_CAT2_ISR_LEVEL_P5_Core1_App1_Context:
	.space		296
	.section	.invalid_BSS,,b
	.type		Os_SlaveControllerContext,@object
	.size		Os_SlaveControllerContext,296
	.align		2
Os_SlaveControllerContext:
	.space		296
	.section	.invalid_BSS,,b
	.type		Os_SlaveFastBlinkerContext,@object
	.size		Os_SlaveFastBlinkerContext,296
	.align		2
Os_SlaveFastBlinkerContext:
	.space		296
	.section	.Os_BSS,,b
	.0byte		.L11539
	.section	.Os_BSS,,b
	.type		Os_ResourceStack_MasterBlinker,@object
	.size		Os_ResourceStack_MasterBlinker,4
	.align		2
Os_ResourceStack_MasterBlinker:
	.space		4
	.section	.Os_BSS,,b
	.type		Os_ResourceStack_MasterController,@object
	.size		Os_ResourceStack_MasterController,4
	.align		2
Os_ResourceStack_MasterController:
	.space		4
	.section	.Os_BSS,,b
	.type		Os_ResourceStack_SlaveBlinker,@object
	.size		Os_ResourceStack_SlaveBlinker,4
	.align		2
Os_ResourceStack_SlaveBlinker:
	.space		4
	.section	.Os_BSS,,b
	.type		Os_ResourceStack_SlaveController,@object
	.size		Os_ResourceStack_SlaveController,4
	.align		2
Os_ResourceStack_SlaveController:
	.space		4
	.section	.Os_CONST,,r
	.0byte		.L11553
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_Adc_Adcdig_EndGroupConvUnit0,@object
	.size		Os_AppAccessRights_Adc_Adcdig_EndGroupConvUnit0,4
	.align		2
Os_AppAccessRights_Adc_Adcdig_EndGroupConvUnit0:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_Gpt_PIT_0_TIMER_7_ISR,@object
	.size		Os_AppAccessRights_Gpt_PIT_0_TIMER_7_ISR,4
	.align		2
Os_AppAccessRights_Gpt_PIT_0_TIMER_7_ISR:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_MasterBlinker,@object
	.size		Os_AppAccessRights_MasterBlinker,4
	.align		2
Os_AppAccessRights_MasterBlinker:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_MasterButton,@object
	.size		Os_AppAccessRights_MasterButton,4
	.align		2
Os_AppAccessRights_MasterButton:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_MasterController,@object
	.size		Os_AppAccessRights_MasterController,4
	.align		2
Os_AppAccessRights_MasterController:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_MasterFastBlinker,@object
	.size		Os_AppAccessRights_MasterFastBlinker,4
	.align		2
Os_AppAccessRights_MasterFastBlinker:
	.long		3
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_OsTask_Core0_20ms,@object
	.size		Os_AppAccessRights_OsTask_Core0_20ms,4
	.align		2
Os_AppAccessRights_OsTask_Core0_20ms:
	.long		2
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_OsTask_Core1_10ms,@object
	.size		Os_AppAccessRights_OsTask_Core1_10ms,4
	.align		2
Os_AppAccessRights_OsTask_Core1_10ms:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_OsTask_Core1_StartUp,@object
	.size		Os_AppAccessRights_OsTask_Core1_StartUp,4
	.align		2
Os_AppAccessRights_OsTask_Core1_StartUp:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_SlaveBlinker,@object
	.size		Os_AppAccessRights_SlaveBlinker,4
	.align		2
Os_AppAccessRights_SlaveBlinker:
	.long		2
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_SlaveButton,@object
	.size		Os_AppAccessRights_SlaveButton,4
	.align		2
Os_AppAccessRights_SlaveButton:
	.long		2
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_SlaveController,@object
	.size		Os_AppAccessRights_SlaveController,4
	.align		2
Os_AppAccessRights_SlaveController:
	.long		2
	.section	.Os_CONST,,r
	.type		Os_AppAccessRights_SlaveFastBlinker,@object
	.size		Os_AppAccessRights_SlaveFastBlinker,4
	.align		2
Os_AppAccessRights_SlaveFastBlinker:
	.long		3
	.section	.Os_CONST,,r
	.type		Os_AutoStart_MasterController,@object
	.size		Os_AutoStart_MasterController,4
	.align		2
Os_AutoStart_MasterController:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AutoStart_OsTask_Core1_StartUp,@object
	.size		Os_AutoStart_OsTask_Core1_StartUp,4
	.align		2
Os_AutoStart_OsTask_Core1_StartUp:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AutoStart_SlaveController,@object
	.size		Os_AutoStart_SlaveController,4
	.align		2
Os_AutoStart_SlaveController:
	.long		1
	.section	.Os_BSS,,b
	.0byte		.L11601
	.section	.Os_BSS,,b
	.type		Os_Proc_Dyn,@object
	.size		Os_Proc_Dyn,728
	.align		3
Os_Proc_Dyn:
	.space		728
	.section	.Os_BSS,,b
	.type		Os_SchedulerQueueElements,@object
	.size		Os_SchedulerQueueElements,156
	.align		2
Os_SchedulerQueueElements:
	.space		156
	.section	.Os_CONST,,r
	.0byte		.L11611
	.section	.Os_CONST,,r
	.type		Os_Proc_Stack,@object
	.size		Os_Proc_Stack,104
	.align		2
Os_Proc_Stack:
	.long		62
	.long		OS_CAT2_ISR_LEVEL_P6_Core1_App0_Stack+248
	.long		62
	.long		OS_CAT2_ISR_LEVEL_P7_Core1_App0_Stack+248
	.long		126
	.long		Os_MasterBlinkerStack+504
	.long		126
	.long		OS_CAT2_ISR_LEVEL_P5_Core1_App0_Stack+504
	.long		126
	.long		Os_MasterControllerStack+504
	.long		98
	.long		Os_MasterFastBlinkerStack+392
	.long		126
	.long		Os_OsTask_Core0_20msStack+504
	.long		638
	.long		Os_OsTask_Core1_10msStack+2552
	.long		126
	.long		Os_OsTask_Core1_StartUpStack+504
	.long		126
	.long		Os_SlaveBlinkerStack+504
	.long		126
	.long		OS_CAT2_ISR_LEVEL_P5_Core1_App1_Stack+504
	.long		126
	.long		Os_SlaveControllerStack+504
	.long		98
	.long		Os_SlaveFastBlinkerStack+392
	.section	.Os_CONST,,r
	.type		Os_Proc_Stat,@object
	.size		Os_Proc_Stat,1040
	.align		3
	.globl		Os_Proc_Stat
Os_Proc_Stat:
	.long		0
	.short		1
	.space		2
	.long		Os_Proc_Dyn
	.long		Os_Proc_Stack
	.long		1
	.space		4
	.long		0x0,0x0
	.long		6
	.long		6
	.long		1
	.long		OS_CAT2_ISR_LEVEL_P6_Core1_App0_Context
	.long		Os_Applications_Stat
	.long		Os_AppAccessRights_Adc_Adcdig_EndGroupConvUnit0
	.long		OS_ISR_Adc_Adcdig_EndGroupConvUnit0
	.long		0
	.long		0
	.long		0
	.long		Os_SchedulerQueueElements
	.long		Os_IsrPlatformConfig+56
	.long		1
	.short		1
	.space		2
	.long		Os_Proc_Dyn+56
	.long		Os_Proc_Stack+8
	.long		1
	.space		4
	.long		0x0,0x0
	.long		7
	.long		7
	.long		1
	.long		OS_CAT2_ISR_LEVEL_P7_Core1_App0_Context
	.long		Os_Applications_Stat
	.long		Os_AppAccessRights_Gpt_PIT_0_TIMER_7_ISR
	.long		OS_ISR_Gpt_PIT_0_TIMER_7_ISR
	.long		0
	.long		0
	.long		0
	.long		Os_SchedulerQueueElements+12
	.long		Os_IsrPlatformConfig+32
	.long		2
	.short		1
	.space		2
	.long		Os_Proc_Dyn+112
	.long		Os_Proc_Stack+16
	.long		0
	.space		4
	.long		0x0,0x0
	.long		2
	.long		2
	.long		1
	.long		Os_MasterBlinkerContext
	.long		Os_Applications_Stat
	.long		Os_AppAccessRights_MasterBlinker
	.long		OS_TASK_MasterBlinker
	.long		0
	.long		1
	.long		Os_ResourceStack_MasterBlinker
	.long		Os_SchedulerQueueElements+24
	.long		0
	.long		3
	.short		1
	.space		2
	.long		Os_Proc_Dyn+168
	.long		Os_Proc_Stack+24
	.long		1
	.space		4
	.long		0x0,0x0
	.long		5
	.long		5
	.long		1
	.long		OS_CAT2_ISR_LEVEL_P5_Core1_App0_Context
	.long		Os_Applications_Stat
	.long		Os_AppAccessRights_MasterButton
	.long		OS_ISR_MasterButton
	.long		0
	.long		0
	.long		0
	.long		Os_SchedulerQueueElements+36
	.long		Os_IsrPlatformConfig+40
	.long		4
	.short		1
	.space		2
	.long		Os_Proc_Dyn+224
	.long		Os_Proc_Stack+32
	.long		0
	.space		4
	.long		0x0,0x1
	.long		1
	.long		1
	.long		1
	.long		Os_MasterControllerContext
	.long		Os_Applications_Stat
	.long		Os_AppAccessRights_MasterController
	.long		OS_TASK_MasterController
	.long		Os_AutoStart_MasterController
	.long		1
	.long		Os_ResourceStack_MasterController
	.long		Os_SchedulerQueueElements+48
	.long		0
	.long		5
	.short		1
	.space		2
	.long		Os_Proc_Dyn+280
	.long		Os_Proc_Stack+40
	.long		0
	.space		4
	.long		0x0,0x0
	.long		3
	.long		4
	.long		1
	.long		Os_MasterFastBlinkerContext
	.long		Os_Applications_Stat
	.long		Os_AppAccessRights_MasterFastBlinker
	.long		OS_TASK_MasterFastBlinker
	.long		0
	.long		0
	.long		0
	.long		Os_SchedulerQueueElements+60
	.long		0
	.long		6
	.short		1
	.space		2
	.long		Os_Proc_Dyn+336
	.long		Os_Proc_Stack+48
	.long		0
	.space		4
	.long		0x0,0x0
	.long		1
	.long		1
	.long		1
	.long		Os_OsTask_Core0_20msContext
	.long		Os_Applications_Stat+48
	.long		Os_AppAccessRights_OsTask_Core0_20ms
	.long		OS_TASK_OsTask_Core0_20ms
	.long		0
	.long		0
	.long		0
	.long		Os_SchedulerQueueElements+72
	.long		0
	.long		7
	.short		1
	.space		2
	.long		Os_Proc_Dyn+392
	.long		Os_Proc_Stack+56
	.long		0
	.space		4
	.long		0x0,0x0
	.long		1
	.long		1
	.long		1
	.long		Os_OsTask_Core1_10msContext
	.long		Os_Applications_Stat
	.long		Os_AppAccessRights_OsTask_Core1_10ms
	.long		OS_TASK_OsTask_Core1_10ms
	.long		0
	.long		0
	.long		0
	.long		Os_SchedulerQueueElements+84
	.long		0
	.long		8
	.short		1
	.space		2
	.long		Os_Proc_Dyn+448
	.long		Os_Proc_Stack+64
	.long		0
	.space		4
	.long		0x0,0x0
	.long		1
	.long		1
	.long		1
	.long		Os_OsTask_Core1_StartUpContext
	.long		Os_Applications_Stat
	.long		Os_AppAccessRights_OsTask_Core1_StartUp
	.long		OS_TASK_OsTask_Core1_StartUp
	.long		Os_AutoStart_OsTask_Core1_StartUp
	.long		0
	.long		0
	.long		Os_SchedulerQueueElements+96
	.long		0
	.long		9
	.short		1
	.space		2
	.long		Os_Proc_Dyn+504
	.long		Os_Proc_Stack+72
	.long		0
	.space		4
	.long		0x0,0x0
	.long		4
	.long		4
	.long		1
	.long		Os_SlaveBlinkerContext
	.long		Os_Applications_Stat+48
	.long		Os_AppAccessRights_SlaveBlinker
	.long		OS_TASK_SlaveBlinker
	.long		0
	.long		1
	.long		Os_ResourceStack_SlaveBlinker
	.long		Os_SchedulerQueueElements+108
	.long		0
	.long		10
	.short		1
	.space		2
	.long		Os_Proc_Dyn+560
	.long		Os_Proc_Stack+80
	.long		1
	.space		4
	.long		0x0,0x0
	.long		5
	.long		5
	.long		1
	.long		OS_CAT2_ISR_LEVEL_P5_Core1_App1_Context
	.long		Os_Applications_Stat+48
	.long		Os_AppAccessRights_SlaveButton
	.long		OS_ISR_SlaveButton
	.long		0
	.long		0
	.long		0
	.long		Os_SchedulerQueueElements+120
	.long		Os_IsrPlatformConfig+48
	.long		11
	.short		1
	.space		2
	.long		Os_Proc_Dyn+616
	.long		Os_Proc_Stack+88
	.long		0
	.space		4
	.long		0x0,0x1
	.long		1
	.long		1
	.long		1
	.long		Os_SlaveControllerContext
	.long		Os_Applications_Stat+48
	.long		Os_AppAccessRights_SlaveController
	.long		OS_TASK_SlaveController
	.long		Os_AutoStart_SlaveController
	.long		1
	.long		Os_ResourceStack_SlaveController
	.long		Os_SchedulerQueueElements+132
	.long		0
	.long		12
	.short		1
	.space		2
	.long		Os_Proc_Dyn+672
	.long		Os_Proc_Stack+96
	.long		0
	.space		4
	.long		0x0,0x0
	.long		3
	.long		4
	.long		1
	.long		Os_SlaveFastBlinkerContext
	.long		Os_Applications_Stat+48
	.long		Os_AppAccessRights_SlaveFastBlinker
	.long		OS_TASK_SlaveFastBlinker
	.long		0
	.long		0
	.long		0
	.long		Os_SchedulerQueueElements+144
	.long		0
	.section	.Os_BSS,,b
	.0byte		.L11623
	.section	.Os_BSS,,b
	.type		Os_SchedulerQueuesOn_0,@object
	.size		Os_SchedulerQueuesOn_0,48
	.align		2
Os_SchedulerQueuesOn_0:
	.space		48
	.section	.Os_BSS,,b
	.type		Os_IsrCurrent_0,@object
	.size		Os_IsrCurrent_0,4
	.align		2
Os_IsrCurrent_0:
	.space		4
	.section	.Os_BSS,,b
	.0byte		.L11632
	.section	.Os_BSS,,b
	.type		Os_SchedulerQueuesOn_1,@object
	.size		Os_SchedulerQueuesOn_1,132
	.align		2
Os_SchedulerQueuesOn_1:
	.space		132
	.section	.Os_BSS,,b
	.type		Os_IsrCurrent_1,@object
	.size		Os_IsrCurrent_1,20
	.align		2
Os_IsrCurrent_1:
	.space		20
	.section	.Os_CONST,,r
	.0byte		.L11638
	.section	.Os_CONST,,r
	.type		Os_SchedulerQueueStruct,@object
	.size		Os_SchedulerQueueStruct,64
	.align		2
	.globl		Os_SchedulerQueueStruct
Os_SchedulerQueueStruct:
	.long		0
	.long		1
	.long		1
	.long		1
	.long		1
	.long		1
	.long		4
	.long		Os_SchedulerQueuesOn_0
	.long		4
	.long		9
	.long		9
	.long		5
	.long		5
	.long		5
	.long		11
	.long		Os_SchedulerQueuesOn_1
	.section	.Os_CONST,,r
	.0byte		.L11644
	.section	.Os_CONST,,r
	.type		Os_IsrCurrentDeepness,@object
	.size		Os_IsrCurrentDeepness,8
	.align		2
	.globl		Os_IsrCurrentDeepness
Os_IsrCurrentDeepness:
	.long		1
	.long		5
	.section	.Os_CONST,,r
	.type		Os_IsrCurrentIsr,@object
	.size		Os_IsrCurrentIsr,8
	.align		2
	.globl		Os_IsrCurrentIsr
Os_IsrCurrentIsr:
	.long		Os_IsrCurrent_0
	.long		Os_IsrCurrent_1
	.section	.Os_CONST,,r
	.0byte		.L11652
	.section	.Os_CONST,,r
	.type		Os_ProcRange,@object
	.size		Os_ProcRange,16
	.align		2
	.globl		Os_ProcRange
Os_ProcRange:
	.long		-1
	.long		0
	.long		0
	.long		12
	.section	.Os_BSS,,b
	.0byte		.L11655
	.section	.Os_BSS,,b
	.type		Os_AlarmDyns,@object
	.size		Os_AlarmDyns,48
	.align		2
Os_AlarmDyns:
	.space		48
	.section	.Os_CONST,,r
	.0byte		.L11660
	.section	.Os_CONST,,r
	.type		Os_AlarmActions,@object
	.size		Os_AlarmActions,128
	.align		3
Os_AlarmActions:
	.long		0
	.space		4
	.long		0
	.space		4
	.long		0x0,0x0
	.long		5
	.long		0
	.long		0
	.space		4
	.long		0
	.space		4
	.long		0x0,0x0
	.long		6
	.long		0
	.long		0
	.space		4
	.long		0
	.space		4
	.long		0x0,0x0
	.long		7
	.long		0
	.long		0
	.space		4
	.long		0
	.space		4
	.long		0x0,0x0
	.long		12
	.long		0
	.section	.Os_CONST,,r
	.type		Os_AlarmAppAccess_MasterBlinkerAlarm,@object
	.size		Os_AlarmAppAccess_MasterBlinkerAlarm,4
	.align		2
Os_AlarmAppAccess_MasterBlinkerAlarm:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AlarmAppAccess_OsAlarm_10ms,@object
	.size		Os_AlarmAppAccess_OsAlarm_10ms,4
	.align		2
Os_AlarmAppAccess_OsAlarm_10ms:
	.long		1
	.section	.Os_CONST,,r
	.type		Os_AlarmAppAccess_OsAlarm_20ms,@object
	.size		Os_AlarmAppAccess_OsAlarm_20ms,4
	.align		2
Os_AlarmAppAccess_OsAlarm_20ms:
	.long		2
	.section	.Os_CONST,,r
	.type		Os_AlarmAppAccess_SlaveBlinkerAlarm,@object
	.size		Os_AlarmAppAccess_SlaveBlinkerAlarm,4
	.align		2
Os_AlarmAppAccess_SlaveBlinkerAlarm:
	.long		2
	.section	.Os_CONST,,r
	.type		Os_AlarmStatArray,@object
	.size		Os_AlarmStatArray,96
	.align		2
Os_AlarmStatArray:
	.long		Os_AlarmDyns
	.long		Os_CounterStat
	.long		Os_AlarmActions+96
	.long		0
	.long		Os_AlarmAppAccess_MasterBlinkerAlarm
	.long		Os_Applications_Stat
	.long		Os_AlarmDyns+12
	.long		Os_CounterStat
	.long		Os_AlarmActions+64
	.long		0
	.long		Os_AlarmAppAccess_OsAlarm_10ms
	.long		Os_Applications_Stat
	.long		Os_AlarmDyns+24
	.long		Os_CounterStat
	.long		Os_AlarmActions+32
	.long		0
	.long		Os_AlarmAppAccess_OsAlarm_20ms
	.long		Os_Applications_Stat+48
	.long		Os_AlarmDyns+36
	.long		Os_CounterStat+48
	.long		Os_AlarmActions
	.long		0
	.long		Os_AlarmAppAccess_SlaveBlinkerAlarm
	.long		Os_Applications_Stat+48
	.section	.Os_CONST,,r
	.0byte		.L11684
	.section	.Os_CONST,,r
	.type		Os_AlarmStat,@object
	.size		Os_AlarmStat,4
	.align		2
	.globl		Os_AlarmStat
Os_AlarmStat:
	.long		Os_AlarmStatArray
	.section	.Os_CONST,,r
	.type		Os_AlarmRange,@object
	.size		Os_AlarmRange,16
	.align		2
	.globl		Os_AlarmRange
Os_AlarmRange:
	.long		-1
	.long		0
	.long		0
	.long		3
	.section	.Os_BSS,,b
	.0byte		.L11690
	.section	.Os_BSS,,b
	.type		Os_CounterEPsOfMasterCounter100,@object
	.size		Os_CounterEPsOfMasterCounter100,96
	.align		2
Os_CounterEPsOfMasterCounter100:
	.space		96
	.section	.Os_BSS,,b
	.type		Os_CounterEPsOfSlaveCounter100,@object
	.size		Os_CounterEPsOfSlaveCounter100,64
	.align		2
Os_CounterEPsOfSlaveCounter100:
	.space		64
	.section	.Os_BSS,,b
	.type		Os_CounterActionsOfMasterCounter100,@object
	.size		Os_CounterActionsOfMasterCounter100,72
	.align		2
Os_CounterActionsOfMasterCounter100:
	.space		72
	.section	.Os_BSS,,b
	.type		Os_CounterActionsOfSlaveCounter100,@object
	.size		Os_CounterActionsOfSlaveCounter100,48
	.align		2
Os_CounterActionsOfSlaveCounter100:
	.space		48
	.section	.Os_BSS,,b
	.type		Os_CounterDyn,@object
	.size		Os_CounterDyn,32
	.align		2
Os_CounterDyn:
	.space		32
	.section	.Os_CONST,,r
	.0byte		.L11711
	.section	.Os_CONST,,r
	.type		Os_CounterEPRange,@object
	.size		Os_CounterEPRange,16
	.align		2
	.globl		Os_CounterEPRange
Os_CounterEPRange:
	.long		-1
	.long		0
	.long		0
	.long		7
	.section	.Os_CONST,,r
	.0byte		.L11714
	.section	.Os_CONST,,r
	.type		Os_CounterAccessStat,@object
	.size		Os_CounterAccessStat,8
	.align		2
Os_CounterAccessStat:
	.long		1
	.long		3
	.section	.Os_CONST,,r
	.type		Os_CounterStat,@object
	.size		Os_CounterStat,96
	.align		2
	.globl		Os_CounterStat
Os_CounterStat:
	.long		0
	.long		99
	.long		1
	.long		1
	.long		6
	.long		Os_CounterDyn
	.long		Os_CounterEPsOfMasterCounter100
	.long		Os_CounterActionsOfMasterCounter100
	.long		0
	.short		1
	.space		2
	.long		Os_CounterAccessStat
	.long		Os_Applications_Stat
	.long		0
	.long		99
	.long		1
	.long		1
	.long		4
	.long		Os_CounterDyn+16
	.long		Os_CounterEPsOfSlaveCounter100
	.long		Os_CounterActionsOfSlaveCounter100
	.long		1
	.short		1
	.space		2
	.long		Os_CounterAccessStat+4
	.long		Os_Applications_Stat+48
	.section	.Os_CONST,,r
	.type		Os_CounterRange,@object
	.size		Os_CounterRange,16
	.align		2
	.globl		Os_CounterRange
Os_CounterRange:
	.long		-1
	.long		0
	.long		0
	.long		1
	.section	.Os_BSS,,b
	.0byte		.L11726
	.section	.Os_BSS,,b
	.type		Os_SchTblDyn,@object
	.size		Os_SchTblDyn,32
	.align		2
Os_SchTblDyn:
	.space		32
	.section	.Os_CONST,,r
	.0byte		.L11731
	.section	.Os_CONST,,r
	.type		Os_SchTblAppAccessStat,@object
	.size		Os_SchTblAppAccessStat,8
	.align		2
Os_SchTblAppAccessStat:
	.long		3
	.long		3
	.section	.Os_CONST,,r
	.type		Os_SchTblEPTaskActStat,@object
	.size		Os_SchTblEPTaskActStat,8
	.align		2
Os_SchTblEPTaskActStat:
	.long		2
	.long		9
	.section	.Os_CONST,,r
	.type		Os_SchTblEPStat,@object
	.size		Os_SchTblEPStat,40
	.align		2
Os_SchTblEPStat:
	.long		0
	.long		1
	.long		Os_SchTblEPTaskActStat
	.long		0
	.long		0
	.long		0
	.long		1
	.long		Os_SchTblEPTaskActStat+4
	.long		0
	.long		0
	.section	.Os_CONST,,r
	.type		Os_SchTblStatArray,@object
	.size		Os_SchTblStatArray,80
	.align		2
Os_SchTblStatArray:
	.long		Os_CounterStat
	.long		0
	.long		1
	.long		Os_SchTblEPStat
	.long		Os_SchTblEPStat
	.long		100
	.long		Os_SchTblDyn
	.long		Os_SchTblAppAccessStat
	.long		Os_Applications_Stat
	.long		0
	.long		Os_CounterStat+48
	.long		0
	.long		1
	.long		Os_SchTblEPStat+20
	.long		Os_SchTblEPStat+20
	.long		100
	.long		Os_SchTblDyn+16
	.long		Os_SchTblAppAccessStat+4
	.long		Os_Applications_Stat+48
	.long		0
	.section	.Os_CONST,,r
	.0byte		.L11751
	.section	.Os_CONST,,r
	.type		Os_SchTblStat,@object
	.size		Os_SchTblStat,4
	.align		2
	.globl		Os_SchTblStat
Os_SchTblStat:
	.long		Os_SchTblStatArray
	.section	.Os_CONST,,r
	.type		Os_SchTblRange,@object
	.size		Os_SchTblRange,16
	.align		2
	.globl		Os_SchTblRange
Os_SchTblRange:
	.long		-1
	.long		0
	.long		0
	.long		1
	.section	.Os_CONST,,r
	.0byte		.L11757
	.section	.Os_CONST,,r
	.type		Os_SpinlockAppAccessStat,@object
	.size		Os_SpinlockAppAccessStat,16
	.align		2
Os_SpinlockAppAccessStat:
	.long		3
	.long		3
	.long		3
	.long		3
	.section	.Os_BSS,,b
	.0byte		.L11760
	.section	.Os_BSS,,b
	.type		Os_Spinlock_Dyn,@object
	.size		Os_Spinlock_Dyn,48
	.align		2
Os_Spinlock_Dyn:
	.space		48
	.section	.Os_CONST,,r
	.0byte		.L11765
	.section	.Os_CONST,,r
	.type		Os_SpinlockStat,@object
	.size		Os_SpinlockStat,80
	.align		2
	.globl		Os_SpinlockStat
Os_SpinlockStat:
	.short		0
	.short		0
	.long		0
	.long		0
	.space		4
	.short		1
	.short		1
	.long		Os_Spinlock_Dyn
	.long		Os_SpinlockAppAccessStat
	.long		Os_LockResources+3
	.short		2
	.short		4
	.long		Os_Spinlock_Dyn+12
	.long		Os_SpinlockAppAccessStat+4
	.long		Os_LockResources
	.short		3
	.short		4
	.long		Os_Spinlock_Dyn+24
	.long		Os_SpinlockAppAccessStat+8
	.long		Os_LockResources+1
	.short		4
	.short		4
	.long		Os_Spinlock_Dyn+36
	.long		Os_SpinlockAppAccessStat+12
	.long		Os_LockResources+2
	.section	.Os_CONST,,r
	.0byte		.L11771
	.section	.Os_CONST,,r
	.type		Os_SpinlockNumber,@object
	.size		Os_SpinlockNumber,2
	.align		1
	.globl		Os_SpinlockNumber
Os_SpinlockNumber:
	.short		5
	.section	.Os_BSS,,b
	.0byte		.L11776
	.section	.Os_BSS,,b
	.type		Os_DispatcherElementsCore0,@object
	.size		Os_DispatcherElementsCore0,168
	.align		3
	.globl		Os_DispatcherElementsCore0
Os_DispatcherElementsCore0:
	.space		168
	.section	.Os_BSS,,b
	.type		Os_DispatcherElementsCore1,@object
	.size		Os_DispatcherElementsCore1,504
	.align		3
	.globl		Os_DispatcherElementsCore1
Os_DispatcherElementsCore1:
	.space		504
	.section	.Os_CONST,,r
	.0byte		.L11784
	.section	.Os_CONST,,r
	.type		Os_DispatcherElementsSize,@object
	.size		Os_DispatcherElementsSize,8
	.align		2
	.globl		Os_DispatcherElementsSize
Os_DispatcherElementsSize:
	.long		3
	.long		9
	.section	.Os_BSS,,b
	.0byte		.L11787
	.section	.Os_BSS,,b
	.type		Os_Core_DynShared,@object
	.size		Os_Core_DynShared,304
	.align		3
	.globl		Os_Core_DynShared
Os_Core_DynShared:
	.space		304
	.section	.Os_DATA,,d
	.0byte		.L11792
	.section	.Os_DATA,,d
	.type		Os_Core_DynInitShared,@object
	.size		Os_Core_DynInitShared,40
	.align		2
	.globl		Os_Core_DynInitShared
Os_Core_DynInitShared:
	.long		Os_StartOsFirstTime
	.long		452901566
	.long		464367618
	.long		-1
	.long		0
	.long		Os_StartOsFirstTime
	.long		1902837941
	.long		464367618
	.long		-1
	.long		0
	.section	.Os_DATA,,d
	.0byte		.L11797
	.section	.Os_DATA,,d
	.type		Os_Core_DynInit_0,@object
	.size		Os_Core_DynInit_0,36
	.align		2
	.globl		Os_Core_DynInit_0
Os_Core_DynInit_0:
	.long		0
	.byte		0
	.space		3
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.section	.Os_DATA,,d
	.0byte		.L11800
	.section	.Os_DATA,,d
	.type		Os_Core_DynInit_1,@object
	.size		Os_Core_DynInit_1,36
	.align		2
	.globl		Os_Core_DynInit_1
Os_Core_DynInit_1:
	.long		0
	.byte		0
	.space		3
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.section	.Os_BSS,,b
	.0byte		.L11801
	.section	.Os_BSS,,b
	.type		Os_Core_Dyn_0,@object
	.size		Os_Core_Dyn_0,104
	.align		2
	.globl		Os_Core_Dyn_0
Os_Core_Dyn_0:
	.space		104
	.section	.Os_BSS,,b
	.0byte		.L11804
	.section	.Os_BSS,,b
	.type		Os_Core_Dyn_1,@object
	.size		Os_Core_Dyn_1,104
	.align		2
	.globl		Os_Core_Dyn_1
Os_Core_Dyn_1:
	.space		104
	.section	.Os_PUBLIC_DATA,,d
	.0byte		.L11805
	.section	.Os_PUBLIC_DATA,,d
	.type		Os_PublicDataVarInit_0,@object
	.size		Os_PublicDataVarInit_0,4
	.align		2
	.globl		Os_PublicDataVarInit_0
Os_PublicDataVarInit_0:
	.long		Os_ISRServicesDefault
	.section	.Os_PUBLIC_DATA,,d
	.type		Os_PublicDataVarInit_1,@object
	.size		Os_PublicDataVarInit_1,4
	.align		2
	.globl		Os_PublicDataVarInit_1
Os_PublicDataVarInit_1:
	.long		Os_ISRServicesDefault
	.section	.Os_PUBLIC_CONST,,r
	.0byte		.L11809
	.section	.Os_PUBLIC_CONST,,r
	.type		Os_PublicData,@object
	.size		Os_PublicData,16
	.align		2
	.globl		Os_PublicData
Os_PublicData:
	.long		Os_Core_DynShared+8
	.long		Os_PublicDataVarInit_0
	.long		Os_Core_DynShared+160
	.long		Os_PublicDataVarInit_1
	.section	.Os_CONST,,r
	.0byte		.L11815
	.section	.Os_CONST,,r
	.type		Os_Core_Stat,@object
	.size		Os_Core_Stat,40
	.align		2
	.globl		Os_Core_Stat
Os_Core_Stat:
	.long		Os_Core_DynInit_0
	.long		Os_Core_Dyn_0
	.long		Os_DispatcherElementsCore0
	.long		Os_PrepareContext_Z4
	.long		Os_GetStackPointer_Z4
	.long		Os_Core_DynInit_1
	.long		Os_Core_Dyn_1
	.long		Os_DispatcherElementsCore1
	.long		Os_PrepareContext_Z4
	.long		Os_GetStackPointer_Z4
	.section	.Os_CONST,,r
	.type		Os_CoreLockAddresses,@object
	.size		Os_CoreLockAddresses,8
	.align		2
	.globl		Os_CoreLockAddresses
Os_CoreLockAddresses:
	.long		-66863104
	.long		-66863103
	.section	.Os_CONST,,r
	.type		Os_CoreLockAddressesCount,@object
	.size		Os_CoreLockAddressesCount,4
	.align		2
	.globl		Os_CoreLockAddressesCount
Os_CoreLockAddressesCount:
	.long		2
	.section	.Os_BSS,,b
	.0byte		.L11829
	.section	.Os_BSS,,b
	.type		Os_Timer,@object
	.size		Os_Timer,44
	.align		2
Os_Timer:
	.space		44
	.section	.Os_BSS,,b
	.type		Os_Timer2,@object
	.size		Os_Timer2,44
	.align		2
Os_Timer2:
	.space		44
	.section	.Os_CONST,,r
	.0byte		.L11833
	.section	.Os_CONST,,r
	.type		Os_TimersListOnCore1,@object
	.size		Os_TimersListOnCore1,8
	.align		2
Os_TimersListOnCore1:
	.long		0
	.long		1
	.section	.Os_CONST,,r
	.type		Os_CountersOfTimer,@object
	.size		Os_CountersOfTimer,4
	.align		2
Os_CountersOfTimer:
	.long		Os_CounterStat
	.section	.Os_CONST,,r
	.type		Os_CountersOfTimer2,@object
	.size		Os_CountersOfTimer2,4
	.align		2
Os_CountersOfTimer2:
	.long		Os_CounterStat+48
	.section	.Os_CONST,,r
	.0byte		.L11846
	.section	.Os_CONST,,r
	.type		Os_TimersListOnCores,@object
	.size		Os_TimersListOnCores,16
	.align		2
	.globl		Os_TimersListOnCores
Os_TimersListOnCores:
	.long		0
	.byte		0
	.space		3
	.long		Os_TimersListOnCore1
	.byte		2
	.space		3
	.section	.Os_CONST,,r
	.type		Os_TimerConf,@object
	.size		Os_TimerConf,56
	.align		2
	.globl		Os_TimerConf
Os_TimerConf:
	.long		1
	.long		Os_CountersOfTimer
	.long		Os_Timer
	.long		Os_IsrPlatformConfig+16
	.long		Os_TimerPlatformConf
	.long		50000
	.long		85899
	.long		1
	.long		Os_CountersOfTimer2
	.long		Os_Timer2
	.long		Os_IsrPlatformConfig+24
	.long		Os_TimerPlatformConf+2
	.long		50000
	.long		85899
	.section	.Os_CONST,,r
	.type		Os_IsrCAT1PlatformConfig,@object
	.size		Os_IsrCAT1PlatformConfig,4
	.align		2
	.globl		Os_IsrCAT1PlatformConfig
Os_IsrCAT1PlatformConfig:
	.long		0
	.section	.Os_CONST,,r
	.type		Os_IsrCAT1PlatformConfigRange,@object
	.size		Os_IsrCAT1PlatformConfigRange,16
	.align		2
	.globl		Os_IsrCAT1PlatformConfigRange
Os_IsrCAT1PlatformConfigRange:
	.long		-1
	.long		0
	.long		-1
	.long		0
	.section	.Os_CONST,,r
	.0byte		.L11869
	.section	.Os_CONST,,r
	.type		Os_Isr_Platform_CrossCoreIsr,@object
	.size		Os_Isr_Platform_CrossCoreIsr,8
	.align		2
	.globl		Os_Isr_Platform_CrossCoreIsr
Os_Isr_Platform_CrossCoreIsr:
	.long		Os_IsrPlatformConfig+8
	.long		Os_IsrPlatformConfig
	.section	.Os_CONST,,r
	.0byte		.L11872
	.section	.Os_CONST,,r
	.type		Os_IsrPlatformConfig,@object
	.size		Os_IsrPlatformConfig,64
	.align		2
	.globl		Os_IsrPlatformConfig
Os_IsrPlatformConfig:
	.long		30
	.short		16389
	.space		2
	.long		31
	.short		32769
	.space		2
	.long		226
	.short		16388
	.space		2
	.long		227
	.short		16388
	.space		2
	.long		233
	.short		16387
	.space		2
	.long		240
	.short		16385
	.space		2
	.long		241
	.short		16385
	.space		2
	.long		528
	.short		16386
	.space		2
	.section	.Os_CONST,,r
	.type		Os_IsrPlatformConfigSize,@object
	.size		Os_IsrPlatformConfigSize,4
	.align		2
	.globl		Os_IsrPlatformConfigSize
Os_IsrPlatformConfigSize:
	.long		8
	.section	.Os_CONST,,r
	.type		Os_IsrIvpr,@object
	.size		Os_IsrIvpr,8
	.align		2
	.globl		Os_IsrIvpr
Os_IsrIvpr:
	.long		16786432
	.long		16778240
	.section	.Os_CONST,,r
	.type		Os_TimerPlatformConf,@object
	.size		Os_TimerPlatformConf,4
	.align		1
	.globl		Os_TimerPlatformConf
Os_TimerPlatformConf:
	.short		0
	.short		1
	.section	.Os_CONST,,r
	.type		Os_TimerFreezeInDebug,@object
	.size		Os_TimerFreezeInDebug,1
	.align		0
	.globl		Os_TimerFreezeInDebug
Os_TimerFreezeInDebug:
	.byte		1
	.section	.text_vle
#$$ld
.L5:
.L12454:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12448:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12424:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12422:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12418:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12416:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12385:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L12367:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12351:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L12323:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L12285:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_AlarmCfgTypes.h"
.L12282:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L12244:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ScheduleTableCfgTypes.h"
.L12213:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L12024:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L12006:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11998:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11886:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11348:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Os_LCfg.c"
.L11343:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_IsrCfgTypes.h"
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
	.uleb128	3
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
	.uleb128	9
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
	.uleb128	10
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	21
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\Os_LCfg.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info,,n
.L11342:
	.sleb128	2
	.byte		0x1
	.byte		0x1
	.4byte		.L11343
	.uleb128	107
	.uleb128	40
	.byte		"Os_ISRServicesDefault"
	.byte		0
	.4byte		.L11344
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11347:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	68
	.uleb128	28
	.byte		"Os_KernelStack_0"
	.byte		0
	.4byte		.L11349
	.sleb128	5
	.byte		0x3
	.4byte		Os_KernelStack_0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11354:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	80
	.uleb128	28
	.byte		"Os_KernelStack_1"
	.byte		0
	.4byte		.L11355
	.sleb128	5
	.byte		0x3
	.4byte		Os_KernelStack_1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11357:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	93
	.uleb128	35
	.byte		"Os_LockResources"
	.byte		0
	.4byte		.L11358
	.sleb128	5
	.byte		0x3
	.4byte		Os_LockResources
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11363:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	106
	.uleb128	23
	.byte		"Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2"
	.byte		0
	.4byte		.L11364
	.sleb128	5
	.byte		0x3
	.4byte		Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11365:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	108
	.uleb128	24
	.byte		"Os_KernelStackSize"
	.byte		0
	.4byte		.L11366
	.sleb128	5
	.byte		0x3
	.4byte		Os_KernelStackSize
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11367:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	110
	.uleb128	45
	.byte		"Os_KernelStack"
	.byte		0
	.4byte		.L11368
	.sleb128	5
	.byte		0x3
	.4byte		Os_KernelStack
	.section	.debug_info,,n
.L11372:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	116
	.uleb128	45
	.byte		"Os_KernelStackStart"
	.byte		0
	.4byte		.L11373
	.sleb128	5
	.byte		0x3
	.4byte		Os_KernelStackStart
	.section	.debug_info,,n
.L11375:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	122
	.uleb128	45
	.byte		"Os_KernelStackPtr_0"
	.byte		0
	.4byte		.L11370
	.sleb128	5
	.byte		0x3
	.4byte		Os_KernelStackPtr_0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11376:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	123
	.uleb128	45
	.byte		"Os_KernelStackPtr_1"
	.byte		0
	.4byte		.L11370
	.sleb128	5
	.byte		0x3
	.4byte		Os_KernelStackPtr_1
	.section	.debug_info,,n
.L11377:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	144
	.uleb128	29
	.byte		"Os_AppModeCount"
	.byte		0
	.4byte		.L11378
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppModeCount
	.section	.debug_info,,n
.L11380:
	.sleb128	4
	.4byte		.L11348
	.uleb128	172
	.uleb128	34
	.byte		"Os_MasterCoreApp_Proc"
	.byte		0
	.4byte		.L11381
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterCoreApp_Proc
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11386:
	.sleb128	4
	.4byte		.L11348
	.uleb128	184
	.uleb128	36
	.byte		"Os_MasterCoreApp_Counters"
	.byte		0
	.4byte		.L11387
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterCoreApp_Counters
	.section	.debug_info,,n
.L11391:
	.sleb128	4
	.4byte		.L11348
	.uleb128	189
	.uleb128	34
	.byte		"Os_MasterCoreApp_Alarms"
	.byte		0
	.4byte		.L11392
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterCoreApp_Alarms
	.section	.debug_info,,n
.L11396:
	.sleb128	4
	.4byte		.L11348
	.uleb128	195
	.uleb128	42
	.byte		"Os_MasterCoreApp_SchTbls"
	.byte		0
	.4byte		.L11397
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterCoreApp_SchTbls
	.section	.debug_info,,n
.L11401:
	.sleb128	4
	.4byte		.L11348
	.uleb128	202
	.uleb128	34
	.byte		"Os_SlaveCoreApp_Proc"
	.byte		0
	.4byte		.L11402
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveCoreApp_Proc
	.section	.debug_info,,n
.L11404:
	.sleb128	4
	.4byte		.L11348
	.uleb128	211
	.uleb128	36
	.byte		"Os_SlaveCoreApp_Counters"
	.byte		0
	.4byte		.L11405
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveCoreApp_Counters
	.section	.debug_info,,n
.L11407:
	.sleb128	4
	.4byte		.L11348
	.uleb128	216
	.uleb128	34
	.byte		"Os_SlaveCoreApp_Alarms"
	.byte		0
	.4byte		.L11408
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveCoreApp_Alarms
	.section	.debug_info,,n
.L11410:
	.sleb128	4
	.4byte		.L11348
	.uleb128	222
	.uleb128	42
	.byte		"Os_SlaveCoreApp_SchTbls"
	.byte		0
	.4byte		.L11411
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveCoreApp_SchTbls
	.section	.debug_info,,n
.L11413:
	.sleb128	4
	.4byte		.L11348
	.uleb128	238
	.uleb128	43
	.byte		"Os_Applications_Dyn"
	.byte		0
	.4byte		.L11414
	.sleb128	5
	.byte		0x3
	.4byte		Os_Applications_Dyn
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11418:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	248
	.uleb128	41
	.byte		"Os_Applications_Stat"
	.byte		0
	.4byte		.L11419
	.sleb128	5
	.byte		0x3
	.4byte		Os_Applications_Stat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11424:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	279
	.uleb128	36
	.byte		"Os_ApplicationRange"
	.byte		0
	.4byte		.L11425
	.sleb128	5
	.byte		0x3
	.4byte		Os_ApplicationRange
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11430:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	294
	.uleb128	44
	.byte		"Os_TrustedFunctions"
	.byte		0
	.4byte		.L11431
	.sleb128	5
	.byte		0x3
	.4byte		Os_TrustedFunctions
	.section	.debug_info,,n
.L11436:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	301
	.uleb128	43
	.byte		"Os_TrustedFunctionCount"
	.byte		0
	.4byte		.L11437
	.sleb128	5
	.byte		0x3
	.4byte		Os_TrustedFunctionCount
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11439:
	.sleb128	4
	.4byte		.L11348
	.uleb128	321
	.uleb128	45
	.byte		"Os_MasterBlinkerSettingsAccessRights"
	.byte		0
	.4byte		.L11440
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterBlinkerSettingsAccessRights
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11444:
	.sleb128	4
	.4byte		.L11348
	.uleb128	322
	.uleb128	45
	.byte		"Os_SlaveBlinkerSettingsAccessRights"
	.byte		0
	.4byte		.L11445
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveBlinkerSettingsAccessRights
	.section	.debug_info,,n
.L11447:
	.sleb128	4
	.4byte		.L11348
	.uleb128	332
	.uleb128	39
	.byte		"Os_ResourceDyns"
	.byte		0
	.4byte		.L11448
	.sleb128	5
	.byte		0x3
	.4byte		Os_ResourceDyns
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11452:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	342
	.uleb128	37
	.byte		"Os_ResourceStat"
	.byte		0
	.4byte		.L11453
	.sleb128	5
	.byte		0x3
	.4byte		Os_ResourceStat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11458:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	358
	.uleb128	38
	.byte		"Os_ResourceRange"
	.byte		0
	.4byte		.L11459
	.sleb128	5
	.byte		0x3
	.4byte		Os_ResourceRange
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11461:
	.sleb128	4
	.4byte		.L11348
	.uleb128	384
	.uleb128	34
	.byte		"OS_CAT2_ISR_LEVEL_P6_Core1_App0_Stack"
	.byte		0
	.4byte		.L11462
	.sleb128	5
	.byte		0x3
	.4byte		OS_CAT2_ISR_LEVEL_P6_Core1_App0_Stack
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11464:
	.sleb128	4
	.4byte		.L11348
	.uleb128	394
	.uleb128	34
	.byte		"OS_CAT2_ISR_LEVEL_P7_Core1_App0_Stack"
	.byte		0
	.4byte		.L11465
	.sleb128	5
	.byte		0x3
	.4byte		OS_CAT2_ISR_LEVEL_P7_Core1_App0_Stack
	.section	.debug_info,,n
.L11467:
	.sleb128	4
	.4byte		.L11348
	.uleb128	404
	.uleb128	34
	.byte		"Os_MasterBlinkerStack"
	.byte		0
	.4byte		.L11468
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterBlinkerStack
	.section	.debug_info,,n
.L11470:
	.sleb128	4
	.4byte		.L11348
	.uleb128	414
	.uleb128	34
	.byte		"OS_CAT2_ISR_LEVEL_P5_Core1_App0_Stack"
	.byte		0
	.4byte		.L11471
	.sleb128	5
	.byte		0x3
	.4byte		OS_CAT2_ISR_LEVEL_P5_Core1_App0_Stack
	.section	.debug_info,,n
.L11473:
	.sleb128	4
	.4byte		.L11348
	.uleb128	424
	.uleb128	34
	.byte		"Os_MasterControllerStack"
	.byte		0
	.4byte		.L11474
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterControllerStack
	.section	.debug_info,,n
.L11476:
	.sleb128	4
	.4byte		.L11348
	.uleb128	434
	.uleb128	34
	.byte		"Os_MasterFastBlinkerStack"
	.byte		0
	.4byte		.L11477
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterFastBlinkerStack
	.section	.debug_info,,n
.L11479:
	.sleb128	4
	.4byte		.L11348
	.uleb128	444
	.uleb128	34
	.byte		"Os_OsTask_Core0_20msStack"
	.byte		0
	.4byte		.L11480
	.sleb128	5
	.byte		0x3
	.4byte		Os_OsTask_Core0_20msStack
	.section	.debug_info,,n
.L11482:
	.sleb128	4
	.4byte		.L11348
	.uleb128	454
	.uleb128	34
	.byte		"Os_OsTask_Core1_10msStack"
	.byte		0
	.4byte		.L11483
	.sleb128	5
	.byte		0x3
	.4byte		Os_OsTask_Core1_10msStack
	.section	.debug_info,,n
.L11485:
	.sleb128	4
	.4byte		.L11348
	.uleb128	464
	.uleb128	34
	.byte		"Os_OsTask_Core1_StartUpStack"
	.byte		0
	.4byte		.L11486
	.sleb128	5
	.byte		0x3
	.4byte		Os_OsTask_Core1_StartUpStack
	.section	.debug_info,,n
.L11488:
	.sleb128	4
	.4byte		.L11348
	.uleb128	474
	.uleb128	34
	.byte		"Os_SlaveBlinkerStack"
	.byte		0
	.4byte		.L11489
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveBlinkerStack
	.section	.debug_info,,n
.L11491:
	.sleb128	4
	.4byte		.L11348
	.uleb128	484
	.uleb128	34
	.byte		"OS_CAT2_ISR_LEVEL_P5_Core1_App1_Stack"
	.byte		0
	.4byte		.L11492
	.sleb128	5
	.byte		0x3
	.4byte		OS_CAT2_ISR_LEVEL_P5_Core1_App1_Stack
	.section	.debug_info,,n
.L11494:
	.sleb128	4
	.4byte		.L11348
	.uleb128	494
	.uleb128	34
	.byte		"Os_SlaveControllerStack"
	.byte		0
	.4byte		.L11495
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveControllerStack
	.section	.debug_info,,n
.L11497:
	.sleb128	4
	.4byte		.L11348
	.uleb128	504
	.uleb128	34
	.byte		"Os_SlaveFastBlinkerStack"
	.byte		0
	.4byte		.L11498
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveFastBlinkerStack
	.section	.debug_info,,n
.L11500:
	.sleb128	4
	.4byte		.L11348
	.uleb128	522
	.uleb128	34
	.byte		"OS_CAT2_ISR_LEVEL_P6_Core1_App0_Context"
	.byte		0
	.4byte		.L11501
	.sleb128	5
	.byte		0x3
	.4byte		OS_CAT2_ISR_LEVEL_P6_Core1_App0_Context
	.section	.debug_info,,n
.L11503:
	.sleb128	4
	.4byte		.L11348
	.uleb128	532
	.uleb128	34
	.byte		"OS_CAT2_ISR_LEVEL_P7_Core1_App0_Context"
	.byte		0
	.4byte		.L11504
	.sleb128	5
	.byte		0x3
	.4byte		OS_CAT2_ISR_LEVEL_P7_Core1_App0_Context
	.section	.debug_info,,n
.L11506:
	.sleb128	4
	.4byte		.L11348
	.uleb128	542
	.uleb128	34
	.byte		"Os_MasterBlinkerContext"
	.byte		0
	.4byte		.L11507
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterBlinkerContext
	.section	.debug_info,,n
.L11509:
	.sleb128	4
	.4byte		.L11348
	.uleb128	552
	.uleb128	34
	.byte		"OS_CAT2_ISR_LEVEL_P5_Core1_App0_Context"
	.byte		0
	.4byte		.L11510
	.sleb128	5
	.byte		0x3
	.4byte		OS_CAT2_ISR_LEVEL_P5_Core1_App0_Context
	.section	.debug_info,,n
.L11512:
	.sleb128	4
	.4byte		.L11348
	.uleb128	562
	.uleb128	34
	.byte		"Os_MasterControllerContext"
	.byte		0
	.4byte		.L11513
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterControllerContext
	.section	.debug_info,,n
.L11515:
	.sleb128	4
	.4byte		.L11348
	.uleb128	572
	.uleb128	34
	.byte		"Os_MasterFastBlinkerContext"
	.byte		0
	.4byte		.L11516
	.sleb128	5
	.byte		0x3
	.4byte		Os_MasterFastBlinkerContext
	.section	.debug_info,,n
.L11518:
	.sleb128	4
	.4byte		.L11348
	.uleb128	582
	.uleb128	34
	.byte		"Os_OsTask_Core0_20msContext"
	.byte		0
	.4byte		.L11519
	.sleb128	5
	.byte		0x3
	.4byte		Os_OsTask_Core0_20msContext
	.section	.debug_info,,n
.L11521:
	.sleb128	4
	.4byte		.L11348
	.uleb128	592
	.uleb128	34
	.byte		"Os_OsTask_Core1_10msContext"
	.byte		0
	.4byte		.L11522
	.sleb128	5
	.byte		0x3
	.4byte		Os_OsTask_Core1_10msContext
	.section	.debug_info,,n
.L11524:
	.sleb128	4
	.4byte		.L11348
	.uleb128	602
	.uleb128	34
	.byte		"Os_OsTask_Core1_StartUpContext"
	.byte		0
	.4byte		.L11525
	.sleb128	5
	.byte		0x3
	.4byte		Os_OsTask_Core1_StartUpContext
	.section	.debug_info,,n
.L11527:
	.sleb128	4
	.4byte		.L11348
	.uleb128	612
	.uleb128	34
	.byte		"Os_SlaveBlinkerContext"
	.byte		0
	.4byte		.L11528
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveBlinkerContext
	.section	.debug_info,,n
.L11530:
	.sleb128	4
	.4byte		.L11348
	.uleb128	622
	.uleb128	34
	.byte		"OS_CAT2_ISR_LEVEL_P5_Core1_App1_Context"
	.byte		0
	.4byte		.L11531
	.sleb128	5
	.byte		0x3
	.4byte		OS_CAT2_ISR_LEVEL_P5_Core1_App1_Context
	.section	.debug_info,,n
.L11533:
	.sleb128	4
	.4byte		.L11348
	.uleb128	632
	.uleb128	34
	.byte		"Os_SlaveControllerContext"
	.byte		0
	.4byte		.L11534
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveControllerContext
	.section	.debug_info,,n
.L11536:
	.sleb128	4
	.4byte		.L11348
	.uleb128	642
	.uleb128	34
	.byte		"Os_SlaveFastBlinkerContext"
	.byte		0
	.4byte		.L11537
	.sleb128	5
	.byte		0x3
	.4byte		Os_SlaveFastBlinkerContext
	.section	.debug_info,,n
.L11539:
	.sleb128	4
	.4byte		.L11348
	.uleb128	663
	.uleb128	37
	.byte		"Os_ResourceStack_MasterBlinker"
	.byte		0
	.4byte		.L11540
	.sleb128	5
	.byte		0x3
	.4byte		Os_ResourceStack_MasterBlinker
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11544:
	.sleb128	4
	.4byte		.L11348
	.uleb128	664
	.uleb128	37
	.byte		"Os_ResourceStack_MasterController"
	.byte		0
	.4byte		.L11545
	.sleb128	5
	.byte		0x3
	.4byte		Os_ResourceStack_MasterController
	.section	.debug_info,,n
.L11547:
	.sleb128	4
	.4byte		.L11348
	.uleb128	665
	.uleb128	37
	.byte		"Os_ResourceStack_SlaveBlinker"
	.byte		0
	.4byte		.L11548
	.sleb128	5
	.byte		0x3
	.4byte		Os_ResourceStack_SlaveBlinker
	.section	.debug_info,,n
.L11550:
	.sleb128	4
	.4byte		.L11348
	.uleb128	666
	.uleb128	37
	.byte		"Os_ResourceStack_SlaveController"
	.byte		0
	.4byte		.L11551
	.sleb128	5
	.byte		0x3
	.4byte		Os_ResourceStack_SlaveController
	.section	.debug_info,,n
.L11553:
	.sleb128	4
	.4byte		.L11348
	.uleb128	676
	.uleb128	45
	.byte		"Os_AppAccessRights_Adc_Adcdig_EndGroupConvUnit0"
	.byte		0
	.4byte		.L11554
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_Adc_Adcdig_EndGroupConvUnit0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11556:
	.sleb128	4
	.4byte		.L11348
	.uleb128	677
	.uleb128	45
	.byte		"Os_AppAccessRights_Gpt_PIT_0_TIMER_7_ISR"
	.byte		0
	.4byte		.L11557
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_Gpt_PIT_0_TIMER_7_ISR
	.section	.debug_info,,n
.L11559:
	.sleb128	4
	.4byte		.L11348
	.uleb128	678
	.uleb128	45
	.byte		"Os_AppAccessRights_MasterBlinker"
	.byte		0
	.4byte		.L11560
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_MasterBlinker
	.section	.debug_info,,n
.L11562:
	.sleb128	4
	.4byte		.L11348
	.uleb128	679
	.uleb128	45
	.byte		"Os_AppAccessRights_MasterButton"
	.byte		0
	.4byte		.L11563
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_MasterButton
	.section	.debug_info,,n
.L11565:
	.sleb128	4
	.4byte		.L11348
	.uleb128	680
	.uleb128	45
	.byte		"Os_AppAccessRights_MasterController"
	.byte		0
	.4byte		.L11566
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_MasterController
	.section	.debug_info,,n
.L11568:
	.sleb128	4
	.4byte		.L11348
	.uleb128	681
	.uleb128	45
	.byte		"Os_AppAccessRights_MasterFastBlinker"
	.byte		0
	.4byte		.L11569
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_MasterFastBlinker
	.section	.debug_info,,n
.L11571:
	.sleb128	4
	.4byte		.L11348
	.uleb128	682
	.uleb128	45
	.byte		"Os_AppAccessRights_OsTask_Core0_20ms"
	.byte		0
	.4byte		.L11572
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_OsTask_Core0_20ms
	.section	.debug_info,,n
.L11574:
	.sleb128	4
	.4byte		.L11348
	.uleb128	683
	.uleb128	45
	.byte		"Os_AppAccessRights_OsTask_Core1_10ms"
	.byte		0
	.4byte		.L11575
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_OsTask_Core1_10ms
	.section	.debug_info,,n
.L11577:
	.sleb128	4
	.4byte		.L11348
	.uleb128	684
	.uleb128	45
	.byte		"Os_AppAccessRights_OsTask_Core1_StartUp"
	.byte		0
	.4byte		.L11578
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_OsTask_Core1_StartUp
	.section	.debug_info,,n
.L11580:
	.sleb128	4
	.4byte		.L11348
	.uleb128	685
	.uleb128	45
	.byte		"Os_AppAccessRights_SlaveBlinker"
	.byte		0
	.4byte		.L11581
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_SlaveBlinker
	.section	.debug_info,,n
.L11583:
	.sleb128	4
	.4byte		.L11348
	.uleb128	686
	.uleb128	45
	.byte		"Os_AppAccessRights_SlaveButton"
	.byte		0
	.4byte		.L11584
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_SlaveButton
	.section	.debug_info,,n
.L11586:
	.sleb128	4
	.4byte		.L11348
	.uleb128	687
	.uleb128	45
	.byte		"Os_AppAccessRights_SlaveController"
	.byte		0
	.4byte		.L11587
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_SlaveController
	.section	.debug_info,,n
.L11589:
	.sleb128	4
	.4byte		.L11348
	.uleb128	688
	.uleb128	45
	.byte		"Os_AppAccessRights_SlaveFastBlinker"
	.byte		0
	.4byte		.L11590
	.sleb128	5
	.byte		0x3
	.4byte		Os_AppAccessRights_SlaveFastBlinker
	.section	.debug_info,,n
.L11592:
	.sleb128	4
	.4byte		.L11348
	.uleb128	690
	.uleb128	45
	.byte		"Os_AutoStart_MasterController"
	.byte		0
	.4byte		.L11593
	.sleb128	5
	.byte		0x3
	.4byte		Os_AutoStart_MasterController
	.section	.debug_info,,n
.L11595:
	.sleb128	4
	.4byte		.L11348
	.uleb128	691
	.uleb128	45
	.byte		"Os_AutoStart_OsTask_Core1_StartUp"
	.byte		0
	.4byte		.L11596
	.sleb128	5
	.byte		0x3
	.4byte		Os_AutoStart_OsTask_Core1_StartUp
	.section	.debug_info,,n
.L11598:
	.sleb128	4
	.4byte		.L11348
	.uleb128	692
	.uleb128	45
	.byte		"Os_AutoStart_SlaveController"
	.byte		0
	.4byte		.L11599
	.sleb128	5
	.byte		0x3
	.4byte		Os_AutoStart_SlaveController
	.section	.debug_info,,n
.L11601:
	.sleb128	4
	.4byte		.L11348
	.uleb128	703
	.uleb128	35
	.byte		"Os_Proc_Dyn"
	.byte		0
	.4byte		.L11602
	.sleb128	5
	.byte		0x3
	.4byte		Os_Proc_Dyn
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11606:
	.sleb128	4
	.4byte		.L11348
	.uleb128	704
	.uleb128	49
	.byte		"Os_SchedulerQueueElements"
	.byte		0
	.4byte		.L11607
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchedulerQueueElements
	.section	.debug_info,,n
.L11611:
	.sleb128	4
	.4byte		.L11348
	.uleb128	714
	.uleb128	42
	.byte		"Os_Proc_Stack"
	.byte		0
	.4byte		.L11612
	.sleb128	5
	.byte		0x3
	.4byte		Os_Proc_Stack
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11617:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	795
	.uleb128	33
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11618
	.sleb128	5
	.byte		0x3
	.4byte		Os_Proc_Stat
	.section	.debug_info,,n
.L11623:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1094
	.uleb128	44
	.byte		"Os_SchedulerQueuesOn_0"
	.byte		0
	.4byte		.L11624
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchedulerQueuesOn_0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11628:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1096
	.uleb128	52
	.byte		"Os_IsrCurrent_0"
	.byte		0
	.4byte		.L11629
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrCurrent_0
	.section	.debug_info,,n
.L11632:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1107
	.uleb128	44
	.byte		"Os_SchedulerQueuesOn_1"
	.byte		0
	.4byte		.L11633
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchedulerQueuesOn_1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11635:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1109
	.uleb128	52
	.byte		"Os_IsrCurrent_1"
	.byte		0
	.4byte		.L11636
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrCurrent_1
	.section	.debug_info,,n
.L11638:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1120
	.uleb128	50
	.byte		"Os_SchedulerQueueStruct"
	.byte		0
	.4byte		.L11639
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchedulerQueueStruct
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11644:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1143
	.uleb128	28
	.byte		"Os_IsrCurrentDeepness"
	.byte		0
	.4byte		.L11645
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrCurrentDeepness
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11647:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1148
	.uleb128	76
	.byte		"Os_IsrCurrentIsr"
	.byte		0
	.4byte		.L11648
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrCurrentIsr
	.section	.debug_info,,n
.L11652:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1154
	.uleb128	38
	.byte		"Os_ProcRange"
	.byte		0
	.4byte		.L11653
	.sleb128	5
	.byte		0x3
	.4byte		Os_ProcRange
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11655:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1177
	.uleb128	37
	.byte		"Os_AlarmDyns"
	.byte		0
	.4byte		.L11656
	.sleb128	5
	.byte		0x3
	.4byte		Os_AlarmDyns
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11660:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1187
	.uleb128	44
	.byte		"Os_AlarmActions"
	.byte		0
	.4byte		.L11661
	.sleb128	5
	.byte		0x3
	.4byte		Os_AlarmActions
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11666:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1222
	.uleb128	46
	.byte		"Os_AlarmAppAccess_MasterBlinkerAlarm"
	.byte		0
	.4byte		.L11667
	.sleb128	5
	.byte		0x3
	.4byte		Os_AlarmAppAccess_MasterBlinkerAlarm
	.section	.debug_info,,n
.L11669:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1224
	.uleb128	46
	.byte		"Os_AlarmAppAccess_OsAlarm_10ms"
	.byte		0
	.4byte		.L11670
	.sleb128	5
	.byte		0x3
	.4byte		Os_AlarmAppAccess_OsAlarm_10ms
	.section	.debug_info,,n
.L11672:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1226
	.uleb128	46
	.byte		"Os_AlarmAppAccess_OsAlarm_20ms"
	.byte		0
	.4byte		.L11673
	.sleb128	5
	.byte		0x3
	.4byte		Os_AlarmAppAccess_OsAlarm_20ms
	.section	.debug_info,,n
.L11675:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1228
	.uleb128	46
	.byte		"Os_AlarmAppAccess_SlaveBlinkerAlarm"
	.byte		0
	.4byte		.L11676
	.sleb128	5
	.byte		0x3
	.4byte		Os_AlarmAppAccess_SlaveBlinkerAlarm
	.section	.debug_info,,n
.L11678:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1230
	.uleb128	41
	.byte		"Os_AlarmStatArray"
	.byte		0
	.4byte		.L11679
	.sleb128	5
	.byte		0x3
	.4byte		Os_AlarmStatArray
	.section	.debug_info,,n
.L11684:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1274
	.uleb128	50
	.byte		"Os_AlarmStat"
	.byte		0
	.4byte		.L11685
	.sleb128	5
	.byte		0x3
	.4byte		Os_AlarmStat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11687:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1276
	.uleb128	38
	.byte		"Os_AlarmRange"
	.byte		0
	.4byte		.L11688
	.sleb128	5
	.byte		0x3
	.4byte		Os_AlarmRange
	.section	.debug_info,,n
.L11690:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1300
	.uleb128	40
	.byte		"Os_CounterEPsOfMasterCounter100"
	.byte		0
	.4byte		.L11691
	.sleb128	5
	.byte		0x3
	.4byte		Os_CounterEPsOfMasterCounter100
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11695:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1301
	.uleb128	40
	.byte		"Os_CounterEPsOfSlaveCounter100"
	.byte		0
	.4byte		.L11696
	.sleb128	5
	.byte		0x3
	.4byte		Os_CounterEPsOfSlaveCounter100
	.section	.debug_info,,n
.L11698:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1303
	.uleb128	46
	.byte		"Os_CounterActionsOfMasterCounter100"
	.byte		0
	.4byte		.L11699
	.sleb128	5
	.byte		0x3
	.4byte		Os_CounterActionsOfMasterCounter100
	.section	.debug_info,,n
.L11703:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1304
	.uleb128	46
	.byte		"Os_CounterActionsOfSlaveCounter100"
	.byte		0
	.4byte		.L11704
	.sleb128	5
	.byte		0x3
	.4byte		Os_CounterActionsOfSlaveCounter100
	.section	.debug_info,,n
.L11706:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1306
	.uleb128	40
	.byte		"Os_CounterDyn"
	.byte		0
	.4byte		.L11707
	.sleb128	5
	.byte		0x3
	.4byte		Os_CounterDyn
	.section	.debug_info,,n
.L11711:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1316
	.uleb128	38
	.byte		"Os_CounterEPRange"
	.byte		0
	.4byte		.L11712
	.sleb128	5
	.byte		0x3
	.4byte		Os_CounterEPRange
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11714:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1322
	.uleb128	47
	.byte		"Os_CounterAccessStat"
	.byte		0
	.4byte		.L11715
	.sleb128	5
	.byte		0x3
	.4byte		Os_CounterAccessStat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11717:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1328
	.uleb128	38
	.byte		"Os_CounterStat"
	.byte		0
	.4byte		.L11718
	.sleb128	5
	.byte		0x3
	.4byte		Os_CounterStat
	.section	.debug_info,,n
.L11723:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1361
	.uleb128	38
	.byte		"Os_CounterRange"
	.byte		0
	.4byte		.L11724
	.sleb128	5
	.byte		0x3
	.4byte		Os_CounterRange
	.section	.debug_info,,n
.L11726:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1384
	.uleb128	37
	.byte		"Os_SchTblDyn"
	.byte		0
	.4byte		.L11727
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchTblDyn
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11731:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1394
	.uleb128	45
	.byte		"Os_SchTblAppAccessStat"
	.byte		0
	.4byte		.L11732
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchTblAppAccessStat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11734:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1403
	.uleb128	34
	.byte		"Os_SchTblEPTaskActStat"
	.byte		0
	.4byte		.L11735
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchTblEPTaskActStat
	.section	.debug_info,,n
.L11739:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1412
	.uleb128	46
	.byte		"Os_SchTblEPStat"
	.byte		0
	.4byte		.L11740
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchTblEPStat
	.section	.debug_info,,n
.L11745:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1433
	.uleb128	44
	.byte		"Os_SchTblStatArray"
	.byte		0
	.4byte		.L11746
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchTblStatArray
	.section	.debug_info,,n
.L11751:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1459
	.uleb128	54
	.byte		"Os_SchTblStat"
	.byte		0
	.4byte		.L11752
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchTblStat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11754:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1463
	.uleb128	38
	.byte		"Os_SchTblRange"
	.byte		0
	.4byte		.L11755
	.sleb128	5
	.byte		0x3
	.4byte		Os_SchTblRange
	.section	.debug_info,,n
.L11757:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1487
	.uleb128	45
	.byte		"Os_SpinlockAppAccessStat"
	.byte		0
	.4byte		.L11758
	.sleb128	5
	.byte		0x3
	.4byte		Os_SpinlockAppAccessStat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11760:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1507
	.uleb128	39
	.byte		"Os_Spinlock_Dyn"
	.byte		0
	.4byte		.L11761
	.sleb128	5
	.byte		0x3
	.4byte		Os_Spinlock_Dyn
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11765:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1517
	.uleb128	37
	.byte		"Os_SpinlockStat"
	.byte		0
	.4byte		.L11766
	.sleb128	5
	.byte		0x3
	.4byte		Os_SpinlockStat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11771:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1554
	.uleb128	34
	.byte		"Os_SpinlockNumber"
	.byte		0
	.4byte		.L11772
	.sleb128	5
	.byte		0x3
	.4byte		Os_SpinlockNumber
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11776:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1575
	.uleb128	37
	.byte		"Os_DispatcherElementsCore0"
	.byte		0
	.4byte		.L11777
	.sleb128	5
	.byte		0x3
	.4byte		Os_DispatcherElementsCore0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11781:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1577
	.uleb128	37
	.byte		"Os_DispatcherElementsCore1"
	.byte		0
	.4byte		.L11782
	.sleb128	5
	.byte		0x3
	.4byte		Os_DispatcherElementsCore1
	.section	.debug_info,,n
.L11784:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1587
	.uleb128	26
	.byte		"Os_DispatcherElementsSize"
	.byte		0
	.4byte		.L11785
	.sleb128	5
	.byte		0x3
	.4byte		Os_DispatcherElementsSize
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11787:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1611
	.uleb128	38
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11788
	.sleb128	5
	.byte		0x3
	.4byte		Os_Core_DynShared
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11792:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1621
	.uleb128	40
	.byte		"Os_Core_DynInitShared"
	.byte		0
	.4byte		.L11793
	.sleb128	5
	.byte		0x3
	.4byte		Os_Core_DynInitShared
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11797:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1651
	.uleb128	35
	.byte		"Os_Core_DynInit_0"
	.byte		0
	.4byte		.L11798
	.sleb128	5
	.byte		0x3
	.4byte		Os_Core_DynInit_0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11800:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1679
	.uleb128	35
	.byte		"Os_Core_DynInit_1"
	.byte		0
	.4byte		.L11798
	.sleb128	5
	.byte		0x3
	.4byte		Os_Core_DynInit_1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11801:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1707
	.uleb128	31
	.byte		"Os_Core_Dyn_0"
	.byte		0
	.4byte		.L11802
	.sleb128	5
	.byte		0x3
	.4byte		Os_Core_Dyn_0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11804:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1717
	.uleb128	31
	.byte		"Os_Core_Dyn_1"
	.byte		0
	.4byte		.L11802
	.sleb128	5
	.byte		0x3
	.4byte		Os_Core_Dyn_1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11805:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1729
	.uleb128	41
	.byte		"Os_PublicDataVarInit_0"
	.byte		0
	.4byte		.L11806
	.sleb128	5
	.byte		0x3
	.4byte		Os_PublicDataVarInit_0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11808:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1734
	.uleb128	41
	.byte		"Os_PublicDataVarInit_1"
	.byte		0
	.4byte		.L11806
	.sleb128	5
	.byte		0x3
	.4byte		Os_PublicDataVarInit_1
	.section	.debug_info,,n
.L11809:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1751
	.uleb128	37
	.byte		"Os_PublicData"
	.byte		0
	.4byte		.L11810
	.sleb128	5
	.byte		0x3
	.4byte		Os_PublicData
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11815:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1781
	.uleb128	36
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11816
	.sleb128	5
	.byte		0x3
	.4byte		Os_Core_Stat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11821:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1801
	.uleb128	40
	.byte		"Os_CoreLockAddresses"
	.byte		0
	.4byte		.L11822
	.sleb128	5
	.byte		0x3
	.4byte		Os_CoreLockAddresses
	.section	.debug_info,,n
.L11827:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1807
	.uleb128	33
	.byte		"Os_CoreLockAddressesCount"
	.byte		0
	.4byte		.L11828
	.sleb128	5
	.byte		0x3
	.4byte		Os_CoreLockAddressesCount
	.section	.debug_info,,n
.L11829:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1827
	.uleb128	44
	.byte		"Os_Timer"
	.byte		0
	.4byte		.L11830
	.sleb128	5
	.byte		0x3
	.4byte		Os_Timer
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11832:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1828
	.uleb128	44
	.byte		"Os_Timer2"
	.byte		0
	.4byte		.L11830
	.sleb128	5
	.byte		0x3
	.4byte		Os_Timer2
	.section	.debug_info,,n
.L11833:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1838
	.uleb128	39
	.byte		"Os_TimersListOnCore1"
	.byte		0
	.4byte		.L11834
	.sleb128	5
	.byte		0x3
	.4byte		Os_TimersListOnCore1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11838:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1843
	.uleb128	62
	.byte		"Os_CountersOfTimer"
	.byte		0
	.4byte		.L11839
	.sleb128	5
	.byte		0x3
	.4byte		Os_CountersOfTimer
	.section	.debug_info,,n
.L11843:
	.sleb128	4
	.4byte		.L11348
	.uleb128	1848
	.uleb128	62
	.byte		"Os_CountersOfTimer2"
	.byte		0
	.4byte		.L11844
	.sleb128	5
	.byte		0x3
	.4byte		Os_CountersOfTimer2
	.section	.debug_info,,n
.L11846:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1853
	.uleb128	43
	.byte		"Os_TimersListOnCores"
	.byte		0
	.4byte		.L11847
	.sleb128	5
	.byte		0x3
	.4byte		Os_TimersListOnCores
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11852:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1868
	.uleb128	36
	.byte		"Os_TimerConf"
	.byte		0
	.4byte		.L11853
	.sleb128	5
	.byte		0x3
	.4byte		Os_TimerConf
	.section	.debug_info,,n
.L11858:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1903
	.uleb128	60
	.byte		"Os_IsrCAT1PlatformConfig"
	.byte		0
	.4byte		.L11859
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrCAT1PlatformConfig
	.section	.debug_info,,n
.L11866:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1907
	.uleb128	38
	.byte		"Os_IsrCAT1PlatformConfigRange"
	.byte		0
	.4byte		.L11867
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrCAT1PlatformConfigRange
	.section	.debug_info,,n
.L11869:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1913
	.uleb128	61
	.byte		"Os_Isr_Platform_CrossCoreIsr"
	.byte		0
	.4byte		.L11870
	.sleb128	5
	.byte		0x3
	.4byte		Os_Isr_Platform_CrossCoreIsr
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11872:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1931
	.uleb128	44
	.byte		"Os_IsrPlatformConfig"
	.byte		0
	.4byte		.L11873
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrPlatformConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11875:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1943
	.uleb128	26
	.byte		"Os_IsrPlatformConfigSize"
	.byte		0
	.4byte		.L11366
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrPlatformConfigSize
	.section	.debug_info,,n
.L11876:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1946
	.uleb128	26
	.byte		"Os_IsrIvpr"
	.byte		0
	.4byte		.L11877
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrIvpr
	.section	.debug_info,,n
.L11879:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1952
	.uleb128	46
	.byte		"Os_TimerPlatformConf"
	.byte		0
	.4byte		.L11880
	.sleb128	5
	.byte		0x3
	.4byte		Os_TimerPlatformConf
	.section	.debug_info,,n
.L11885:
	.sleb128	3
	.byte		0x1
	.4byte		.L11348
	.uleb128	1962
	.uleb128	25
	.byte		"Os_TimerFreezeInDebug"
	.byte		0
	.4byte		.L11364
	.sleb128	5
	.byte		0x3
	.4byte		Os_TimerFreezeInDebug
	.section	.debug_info,,n
.L11820:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11887-.L2
	.uleb128	20
	.section	.debug_info,,n
.L781:
	.sleb128	6
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L782:
	.sleb128	6
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11890
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L783:
	.sleb128	6
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L784:
	.sleb128	6
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L785:
	.sleb128	6
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11900
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11887:
.L11799:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11905-.L2
	.uleb128	36
.L778:
	.sleb128	6
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	6
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11908
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L780:
	.sleb128	6
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11905:
.L11796:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11911-.L2
	.uleb128	20
.L773:
	.sleb128	6
	.byte		"Os_StartOsFunc"
	.byte		0
	.4byte		.L11912
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	6
	.byte		"Os_CoreState"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L775:
	.sleb128	6
	.byte		"Os_CoreStarted"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L776:
	.sleb128	6
	.byte		"Os_CoreAppMode"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L777:
	.sleb128	6
	.byte		"Os_CoreIdleMode"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11911:
.L11791:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11920-.L2
	.uleb128	152
.L771:
	.sleb128	6
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L772:
	.sleb128	6
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11920:
.L11803:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11925-.L2
	.uleb128	104
.L768:
	.sleb128	6
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11926
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L769:
	.sleb128	6
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11928
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L770:
	.sleb128	6
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11925:
.L11814:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11932-.L2
	.uleb128	8
.L766:
	.sleb128	6
	.byte		"Os_PublicDataNoInitRef"
	.byte		0
	.4byte		.L11933
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	6
	.byte		"Os_PublicDataVarInitRef"
	.byte		0
	.4byte		.L11936
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11932:
.L11807:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11938-.L2
	.uleb128	4
.L765:
	.sleb128	6
	.byte		"Os_ISRServices"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11938:
.L11924:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11940-.L2
	.uleb128	144
.L763:
	.sleb128	6
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11941
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L764:
	.sleb128	6
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11940:
.L11942:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11945-.L2
	.uleb128	120
.L760:
	.sleb128	6
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L761:
	.sleb128	6
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11948
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L762:
	.sleb128	6
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11945:
.L11951:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11952-.L2
	.uleb128	8
.L757:
	.sleb128	6
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11953
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L758:
	.sleb128	6
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L759:
	.sleb128	6
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11952:
.L11949:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11957-.L2
	.uleb128	104
.L732:
	.sleb128	6
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	6
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11958
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	6
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	6
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11395
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L736:
	.sleb128	6
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L737:
	.sleb128	6
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L738:
	.sleb128	6
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L739:
	.sleb128	6
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11963
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L740:
	.sleb128	6
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L741:
	.sleb128	6
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L742:
	.sleb128	6
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L743:
	.sleb128	6
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L744:
	.sleb128	6
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L745:
	.sleb128	6
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L746:
	.sleb128	6
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L747:
	.sleb128	6
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L748:
	.sleb128	6
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L749:
	.sleb128	6
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11979
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L750:
	.sleb128	6
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L751:
	.sleb128	6
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L752:
	.sleb128	6
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L753:
	.sleb128	6
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11979
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L754:
	.sleb128	6
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11385
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L755:
	.sleb128	6
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L756:
	.sleb128	6
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11957:
.L11947:
	.sleb128	5
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L11995-.L2
	.uleb128	8
.L730:
	.sleb128	6
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	6
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11995:
.L11909:
	.sleb128	5
	.4byte		.L11998
	.uleb128	69
	.uleb128	1
	.4byte		.L11999-.L2
	.uleb128	4
.L729:
	.sleb128	6
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11999:
.L11927:
	.sleb128	5
	.4byte		.L11998
	.uleb128	69
	.uleb128	1
	.4byte		.L12002-.L2
	.uleb128	48
.L721:
	.sleb128	6
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11371
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	6
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11371
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L723:
	.sleb128	6
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L724:
	.sleb128	6
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L12005
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L725:
	.sleb128	6
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L726:
	.sleb128	6
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L727:
	.sleb128	6
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11609
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L728:
	.sleb128	6
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11609
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L12002:
.L11643:
	.sleb128	5
	.4byte		.L12006
	.uleb128	32
	.uleb128	1
	.4byte		.L12007-.L2
	.uleb128	32
.L713:
	.sleb128	6
	.byte		"Os_ProcMaxTaskPrio"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	6
	.byte		"Os_ProcMaxCAT2Prio"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L715:
	.sleb128	6
	.byte		"Os_ProcMaxCAT1Prio"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L716:
	.sleb128	6
	.byte		"Os_IsrCAT0Prio"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L717:
	.sleb128	6
	.byte		"Os_IsrCAT1Prio"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L718:
	.sleb128	6
	.byte		"Os_IsrCAT2Prio"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L719:
	.sleb128	6
	.byte		"Os_SchedulerQueueCount"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L720:
	.sleb128	6
	.byte		"Os_SchedulerQueues"
	.byte		0
	.4byte		.L12009
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L12007:
.L11627:
	.sleb128	5
	.4byte		.L12006
	.uleb128	32
	.uleb128	1
	.4byte		.L12011-.L2
	.uleb128	12
.L710:
	.sleb128	6
	.byte		"Os_QueueElements"
	.byte		0
	.4byte		.L11384
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	6
	.byte		"Os_QueueHead"
	.byte		0
	.4byte		.L12012
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L712:
	.sleb128	6
	.byte		"Os_QueueTail"
	.byte		0
	.4byte		.L12012
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12011:
	.section	.debug_info,,n
.L11610:
	.sleb128	7
	.4byte		.L12006
	.uleb128	32
	.uleb128	1
	.4byte		.L12013-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L707:
	.sleb128	6
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	6
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L709:
	.sleb128	6
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12013:
.L11907:
	.sleb128	5
	.4byte		.L12006
	.uleb128	32
	.uleb128	1
	.4byte		.L12015-.L2
	.uleb128	28
.L700:
	.sleb128	6
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	6
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L12017
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L702:
	.sleb128	6
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11352
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L703:
	.sleb128	6
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11352
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L704:
	.sleb128	6
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11352
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L705:
	.sleb128	6
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L706:
	.sleb128	6
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L12015:
.L11929:
	.sleb128	5
	.4byte		.L12006
	.uleb128	32
	.uleb128	1
	.4byte		.L12018-.L2
	.uleb128	52
.L694:
	.sleb128	6
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	6
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L696:
	.sleb128	6
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11352
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L697:
	.sleb128	6
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L698:
	.sleb128	6
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L699:
	.sleb128	6
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12018:
.L11944:
	.sleb128	5
	.4byte		.L12006
	.uleb128	32
	.uleb128	1
	.4byte		.L12021-.L2
	.uleb128	20
.L689:
	.sleb128	6
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12022
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	6
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11352
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L691:
	.sleb128	6
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11352
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L692:
	.sleb128	6
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11351
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L693:
	.sleb128	6
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11351
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12021:
.L11346:
	.sleb128	5
	.4byte		.L12024
	.uleb128	612
	.uleb128	1
	.4byte		.L12025-.L2
	.uleb128	24
.L683:
	.sleb128	6
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	6
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L685:
	.sleb128	6
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L686:
	.sleb128	6
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L687:
	.sleb128	6
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L688:
	.sleb128	6
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12025:
.L11922:
	.sleb128	5
	.4byte		.L12024
	.uleb128	612
	.uleb128	1
	.4byte		.L12031-.L2
	.uleb128	8
.L681:
	.sleb128	6
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11352
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	6
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11352
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12031:
.L11780:
	.sleb128	7
	.4byte		.L12024
	.uleb128	612
	.uleb128	1
	.4byte		.L12032-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L676:
	.sleb128	6
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L12033
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L677:
	.sleb128	6
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L678:
	.sleb128	6
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L679:
	.sleb128	6
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L680:
	.sleb128	6
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L12038
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12032:
.L12039:
	.sleb128	7
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12040-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L671:
	.sleb128	6
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11352
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	6
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L673:
	.sleb128	6
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L12041
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L674:
	.sleb128	6
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L675:
	.sleb128	6
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L12049
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12040:
	.section	.debug_info,,n
.L12049:
	.sleb128	8
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12050-.L2
	.uleb128	24
.L623:
	.sleb128	6
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L12051
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	6
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L625:
	.sleb128	6
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	6
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L12057
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L627:
	.sleb128	6
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L12059
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	6
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L12061
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	6
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L12063
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L630:
	.sleb128	6
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L12065
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	6
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L12067
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	6
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L12069
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L633:
	.sleb128	6
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L12071
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	6
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L635:
	.sleb128	6
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L12075
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	6
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	6
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L12079
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L638:
	.sleb128	6
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L12081
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	6
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L12083
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L640:
	.sleb128	6
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L12085
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	6
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L12087
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	6
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L12089
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L643:
	.sleb128	6
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L12091
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	6
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L12093
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	6
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L12095
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L646:
	.sleb128	6
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L12097
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	6
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L12099
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L648:
	.sleb128	6
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L12101
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	6
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L12103
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L650:
	.sleb128	6
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L12105
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	6
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L12107
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	6
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L12109
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L653:
	.sleb128	6
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L12111
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	6
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L12113
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L655:
	.sleb128	6
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	6
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L12117
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L657:
	.sleb128	6
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L12119
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	6
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L12121
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	6
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L12123
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L660:
	.sleb128	6
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	6
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L12127
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	6
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L12129
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L663:
	.sleb128	6
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L12131
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	6
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L12133
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	6
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L12135
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L666:
	.sleb128	6
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L12137
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	6
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L12139
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L668:
	.sleb128	6
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L12141
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L669:
	.sleb128	6
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L12143
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L670:
	.sleb128	6
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L12145
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12050:
.L12146:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12147-.L2
	.uleb128	8
.L621:
	.sleb128	6
	.byte		"CoreID"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	6
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12147:
.L12144:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12148-.L2
	.uleb128	8
.L619:
	.sleb128	6
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L12149
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L620:
	.sleb128	6
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L12153
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12148:
.L12142:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12157-.L2
	.uleb128	8
.L617:
	.sleb128	6
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L618:
	.sleb128	6
	.byte		"Success"
	.byte		0
	.4byte		.L11992
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12157:
.L12140:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12158-.L2
	.uleb128	2
.L616:
	.sleb128	6
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12158:
.L12138:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12159-.L2
	.uleb128	2
.L615:
	.sleb128	6
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12159:
.L12136:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12160-.L2
	.uleb128	20
.L610:
	.sleb128	6
	.byte		"ProcId"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L611:
	.sleb128	6
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11361
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L612:
	.sleb128	6
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L12161
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L613:
	.sleb128	6
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11361
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L614:
	.sleb128	6
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L12161
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12160:
.L12134:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12162-.L2
	.uleb128	12
.L607:
	.sleb128	6
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L608:
	.sleb128	6
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11963
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L609:
	.sleb128	6
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L12163
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12162:
.L12132:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12165-.L2
	.uleb128	12
.L604:
	.sleb128	6
	.byte		"AppID"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L605:
	.sleb128	6
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L606:
	.sleb128	6
	.byte		"Object"
	.byte		0
	.4byte		.L11385
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12165:
.L12130:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12166-.L2
	.uleb128	12
.L601:
	.sleb128	6
	.byte		"AppID"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L602:
	.sleb128	6
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L603:
	.sleb128	6
	.byte		"Object"
	.byte		0
	.4byte		.L11385
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12166:
.L12096:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12167-.L2
	.uleb128	4
.L600:
	.sleb128	6
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11395
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12167:
.L12094:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12168-.L2
	.uleb128	12
.L597:
	.sleb128	6
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11395
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	6
	.byte		"Start"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L599:
	.sleb128	6
	.byte		"Cycle"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12168:
.L12092:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12169-.L2
	.uleb128	12
.L594:
	.sleb128	6
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11395
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L595:
	.sleb128	6
	.byte		"Increment"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L596:
	.sleb128	6
	.byte		"Cycle"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12169:
.L12090:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12170-.L2
	.uleb128	8
.L592:
	.sleb128	6
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11395
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L593:
	.sleb128	6
	.byte		"TickRef"
	.byte		0
	.4byte		.L11979
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12170:
.L12088:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12171-.L2
	.uleb128	8
.L590:
	.sleb128	6
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11395
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L591:
	.sleb128	6
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12171:
.L12128:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12172-.L2
	.uleb128	4
.L589:
	.sleb128	6
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12172:
.L12126:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12173-.L2
	.uleb128	8
.L587:
	.sleb128	6
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	6
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12173:
.L12124:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12174-.L2
	.uleb128	4
.L586:
	.sleb128	6
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12174:
.L12122:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12175-.L2
	.uleb128	8
.L584:
	.sleb128	6
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L585:
	.sleb128	6
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12175:
.L12120:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12176-.L2
	.uleb128	8
.L582:
	.sleb128	6
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L583:
	.sleb128	6
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12176:
.L12118:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12177-.L2
	.uleb128	4
.L581:
	.sleb128	6
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12177:
.L12116:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12178-.L2
	.uleb128	8
.L579:
	.sleb128	6
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L580:
	.sleb128	6
	.byte		"Offset"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12178:
.L12114:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12179-.L2
	.uleb128	8
.L577:
	.sleb128	6
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L578:
	.sleb128	6
	.byte		"Start"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12179:
.L12112:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12180-.L2
	.uleb128	12
.L574:
	.sleb128	6
	.byte		"CounterId"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L575:
	.sleb128	6
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11979
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L576:
	.sleb128	6
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11979
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12180:
.L12110:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12181-.L2
	.uleb128	12
.L571:
	.sleb128	6
	.byte		"CounterId"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L572:
	.sleb128	6
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11979
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L573:
	.sleb128	6
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L12182
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12181:
.L12108:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12186-.L2
	.uleb128	4
.L570:
	.sleb128	6
	.byte		"CounterId"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12186:
.L12104:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12187-.L2
	.uleb128	4
.L569:
	.sleb128	6
	.byte		"ISRId"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12187:
.L12100:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12188-.L2
	.uleb128	2
.L567:
	.sleb128	6
	.byte		"Application"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L568:
	.sleb128	6
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L12188:
.L12102:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12189-.L2
	.uleb128	1
.L566:
	.sleb128	6
	.byte		"Application"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12189:
.L12098:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12190-.L2
	.uleb128	8
.L564:
	.sleb128	6
	.byte		"Application"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L565:
	.sleb128	6
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12190:
.L12082:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12191-.L2
	.uleb128	8
.L563:
	.sleb128	6
	.byte		"EventMask"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12191:
.L12080:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12192-.L2
	.uleb128	24
.L560:
	.sleb128	6
	.byte		"TaskId"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L561:
	.sleb128	6
	.byte		"EventMask"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L562:
	.sleb128	6
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12192:
.L12078:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12193-.L2
	.uleb128	8
.L559:
	.sleb128	6
	.byte		"EventMask"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12193:
.L12076:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12194-.L2
	.uleb128	16
.L557:
	.sleb128	6
	.byte		"TaskId"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L558:
	.sleb128	6
	.byte		"EventMask"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12194:
.L12074:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12195-.L2
	.uleb128	8
.L555:
	.sleb128	6
	.byte		"TaskId"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L556:
	.sleb128	6
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12195:
.L12072:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12196-.L2
	.uleb128	4
.L554:
	.sleb128	6
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12196:
.L12070:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12197-.L2
	.uleb128	4
.L553:
	.sleb128	6
	.byte		"TaskId"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12197:
.L12068:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12198-.L2
	.uleb128	4
.L552:
	.sleb128	6
	.byte		"TaskId"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12198:
.L12086:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12199-.L2
	.uleb128	4
.L551:
	.sleb128	6
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11958
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12199:
.L12084:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12200-.L2
	.uleb128	4
.L550:
	.sleb128	6
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11958
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12200:
.L12106:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12201-.L2
	.uleb128	4
.L549:
	.sleb128	6
	.byte		"AppMode"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12201:
.L12066:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12202-.L2
	.uleb128	2
.L548:
	.sleb128	6
	.byte		"CoreID"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12202:
.L12060:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12203-.L2
	.uleb128	2
.L547:
	.sleb128	6
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12203:
.L12058:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12204-.L2
	.uleb128	1
.L546:
	.sleb128	6
	.byte		"Error"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12204:
.L12056:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12205-.L2
	.uleb128	8
.L544:
	.sleb128	6
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L12206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L545:
	.sleb128	6
	.byte		"Error"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12205:
.L12054:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12208-.L2
	.uleb128	1
.L543:
	.sleb128	6
	.byte		"Error"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12208:
.L12064:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12209-.L2
	.uleb128	8
.L541:
	.sleb128	6
	.byte		"CoreID"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L542:
	.sleb128	6
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12210
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12209:
.L12062:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12211-.L2
	.uleb128	8
.L539:
	.sleb128	6
	.byte		"CoreID"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L540:
	.sleb128	6
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12210
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12211:
.L12052:
	.sleb128	5
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12212-.L2
	.uleb128	4
.L538:
	.sleb128	6
	.byte		"AppMode"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12212:
.L12152:
	.sleb128	5
	.4byte		.L12213
	.uleb128	33
	.uleb128	14
	.4byte		.L12214-.L2
	.uleb128	24
.L531:
	.sleb128	6
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L12215
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L532:
	.sleb128	6
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L12219
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L533:
	.sleb128	6
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L12220
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L534:
	.sleb128	6
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L12221
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L535:
	.sleb128	6
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L12222
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L536:
	.sleb128	6
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L12224
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L537:
	.sleb128	6
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L12229
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12214:
.L12228:
	.sleb128	5
	.4byte		.L12213
	.uleb128	33
	.uleb128	14
	.4byte		.L12231-.L2
	.uleb128	4
.L527:
	.sleb128	6
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L12232
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L528:
	.sleb128	6
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L12234
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L12231:
.L12218:
	.sleb128	5
	.4byte		.L12213
	.uleb128	33
	.uleb128	14
	.4byte		.L12236-.L2
	.uleb128	6
.L524:
	.sleb128	6
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L12219
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L525:
	.sleb128	6
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L12219
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L526:
	.sleb128	6
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12236:
.L11435:
	.sleb128	7
	.4byte		.L12213
	.uleb128	33
	.uleb128	14
	.4byte		.L12237-.L2
	.byte		"OsTrustedFunctionStatStruct"
	.byte		0
	.uleb128	8
.L522:
	.sleb128	6
	.byte		"Os_TrustedFunction"
	.byte		0
	.4byte		.L12238
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L523:
	.sleb128	6
	.byte		"Os_TrustedFuncOwnerAppId"
	.byte		0
	.4byte		.L12243
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12237:
.L11750:
	.sleb128	7
	.4byte		.L12244
	.uleb128	62
	.uleb128	1
	.4byte		.L12245-.L2
	.byte		"Os_SchTblStatType_s"
	.byte		0
	.uleb128	40
.L512:
	.sleb128	6
	.byte		"Os_SchTblCounter"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L513:
	.sleb128	6
	.byte		"Os_SchTblSyncStrategy"
	.byte		0
	.4byte		.L12246
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L514:
	.sleb128	6
	.byte		"Os_SchTblRepeating"
	.byte		0
	.4byte		.L12249
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L515:
	.sleb128	6
	.byte		"Os_SchTblInitialEP"
	.byte		0
	.4byte		.L12252
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L516:
	.sleb128	6
	.byte		"Os_SchTblFinalEP"
	.byte		0
	.4byte		.L12252
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L517:
	.sleb128	6
	.byte		"Os_SchTblDuration"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L518:
	.sleb128	6
	.byte		"Os_SchTblRegistry"
	.byte		0
	.4byte		.L12255
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	6
	.byte		"Os_SchTblAppAccess"
	.byte		0
	.4byte		.L12257
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L520:
	.sleb128	6
	.byte		"Os_SchTblOwnerApp"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L521:
	.sleb128	6
	.byte		"Os_SchTblAutoStartStat"
	.byte		0
	.4byte		.L12260
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L12245:
.L12264:
	.sleb128	5
	.4byte		.L12244
	.uleb128	62
	.uleb128	1
	.4byte		.L12265-.L2
	.uleb128	12
.L509:
	.sleb128	6
	.byte		"Os_SchTblAutoStartValue"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	6
	.byte		"Os_SchTblAutoStartKind"
	.byte		0
	.4byte		.L12266
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L511:
	.sleb128	6
	.byte		"Os_SchTblAppModeAutoStart"
	.byte		0
	.4byte		.L12257
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12265:
.L11730:
	.sleb128	5
	.4byte		.L12244
	.uleb128	62
	.uleb128	1
	.4byte		.L12269-.L2
	.uleb128	16
.L505:
	.sleb128	6
	.byte		"Os_SchTblStatus"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L506:
	.sleb128	6
	.byte		"Os_SchTblNextEP"
	.byte		0
	.4byte		.L12253
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L507:
	.sleb128	6
	.byte		"Os_SchTblNextSchTblId"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L508:
	.sleb128	6
	.byte		"Os_SchTblNextSchTblBack"
	.byte		0
	.4byte		.L12270
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12269:
.L11744:
	.sleb128	5
	.4byte		.L12244
	.uleb128	62
	.uleb128	1
	.4byte		.L12272-.L2
	.uleb128	20
.L500:
	.sleb128	6
	.byte		"Os_SchTblEPDelay"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L501:
	.sleb128	6
	.byte		"Os_SchTblEPTaskActCount"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L502:
	.sleb128	6
	.byte		"Os_SchTblEPFirstTaskAct"
	.byte		0
	.4byte		.L12273
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L503:
	.sleb128	6
	.byte		"Os_SchTblEPEventSetCount"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L504:
	.sleb128	6
	.byte		"Os_SchTblEPFirstEventSet"
	.byte		0
	.4byte		.L12275
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12272:
.L12279:
	.sleb128	5
	.4byte		.L12244
	.uleb128	62
	.uleb128	1
	.4byte		.L12280-.L2
	.uleb128	16
.L498:
	.sleb128	6
	.byte		"Os_SchTblEventSetTaskId"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	6
	.byte		"Os_SchTblEventSetMask"
	.byte		0
	.4byte		.L12281
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12280:
.L11931:
	.sleb128	5
	.4byte		.L12282
	.uleb128	34
	.uleb128	14
	.4byte		.L12283-.L2
	.uleb128	2
.L497:
	.sleb128	6
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L12284
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12283:
.L11683:
	.sleb128	5
	.4byte		.L12285
	.uleb128	121
	.uleb128	1
	.4byte		.L12286-.L2
	.uleb128	24
.L491:
	.sleb128	6
	.byte		"Os_AlarmDyn"
	.byte		0
	.4byte		.L12287
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L492:
	.sleb128	6
	.byte		"Os_AlarmCounterStat"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L493:
	.sleb128	6
	.byte		"Os_AlarmAction"
	.byte		0
	.4byte		.L12289
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L494:
	.sleb128	6
	.byte		"Os_AlarmAutoStart"
	.byte		0
	.4byte		.L12291
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L495:
	.sleb128	6
	.byte		"Os_AlarmAppAccessRights"
	.byte		0
	.4byte		.L12257
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L496:
	.sleb128	6
	.byte		"Os_AlarmOwnerApp"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12286:
.L12295:
	.sleb128	5
	.4byte		.L12285
	.uleb128	121
	.uleb128	1
	.4byte		.L12296-.L2
	.uleb128	16
.L487:
	.sleb128	6
	.byte		"Os_AlarmTime"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L488:
	.sleb128	6
	.byte		"Os_AlarmCycle"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L489:
	.sleb128	6
	.byte		"Os_AlarmStartKind"
	.byte		0
	.4byte		.L12297
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L490:
	.sleb128	6
	.byte		"Os_AlarmAppModes"
	.byte		0
	.4byte		.L12257
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12296:
.L11665:
	.sleb128	5
	.4byte		.L12285
	.uleb128	96
	.uleb128	1
	.4byte		.L12300-.L2
	.uleb128	32
.L485:
	.sleb128	6
	.byte		"Os_AlarmActionKind"
	.byte		0
	.4byte		.L12301
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L486:
	.sleb128	6
	.byte		"Os_AlarmActionData"
	.byte		0
	.4byte		.L12304
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12300:
.L11659:
	.sleb128	5
	.4byte		.L12285
	.uleb128	96
	.uleb128	1
	.4byte		.L12307-.L2
	.uleb128	12
.L482:
	.sleb128	6
	.byte		"Os_AlarmState"
	.byte		0
	.4byte		.L12308
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L483:
	.sleb128	6
	.byte		"Os_AlarmCycle"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L484:
	.sleb128	6
	.byte		"Os_AlarmValue"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12307:
.L12306:
	.sleb128	5
	.4byte		.L12285
	.uleb128	37
	.uleb128	1
	.4byte		.L12310-.L2
	.uleb128	24
.L479:
	.sleb128	6
	.byte		"Os_AlarmActionSeEvent"
	.byte		0
	.4byte		.L12311
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L480:
	.sleb128	6
	.byte		"Os_AlarmActionActivateTask"
	.byte		0
	.4byte		.L12314
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L481:
	.sleb128	6
	.byte		"Os_AlarmActionIncrementCounter"
	.byte		0
	.4byte		.L12317
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12310:
.L12319:
	.sleb128	5
	.4byte		.L12285
	.uleb128	37
	.uleb128	1
	.4byte		.L12320-.L2
	.uleb128	4
.L478:
	.sleb128	6
	.byte		"Os_AlarmActionCounterId"
	.byte		0
	.4byte		.L11389
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12320:
.L12313:
	.sleb128	5
	.4byte		.L12285
	.uleb128	37
	.uleb128	1
	.4byte		.L12321-.L2
	.uleb128	16
.L476:
	.sleb128	6
	.byte		"Os_AlarmActionTaskId"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L477:
	.sleb128	6
	.byte		"Os_AlarmActionEventMask"
	.byte		0
	.4byte		.L12281
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12321:
.L12316:
	.sleb128	5
	.4byte		.L12285
	.uleb128	37
	.uleb128	1
	.4byte		.L12322-.L2
	.uleb128	4
.L475:
	.sleb128	6
	.byte		"Os_AlarmActionTaskId"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12322:
.L11622:
	.sleb128	7
	.4byte		.L12323
	.uleb128	80
	.uleb128	13
	.4byte		.L12324-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L457:
	.sleb128	6
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L458:
	.sleb128	6
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L12325
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L459:
	.sleb128	6
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L12326
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L460:
	.sleb128	6
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L12328
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L461:
	.sleb128	6
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L12330
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L462:
	.sleb128	6
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L12281
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L463:
	.sleb128	6
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L464:
	.sleb128	6
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L465:
	.sleb128	6
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L12333
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L466:
	.sleb128	6
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11370
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L467:
	.sleb128	6
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L468:
	.sleb128	6
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L12257
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L469:
	.sleb128	6
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L12335
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L470:
	.sleb128	6
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L12257
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L471:
	.sleb128	6
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12340
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L472:
	.sleb128	6
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12341
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L473:
	.sleb128	6
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12342
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L474:
	.sleb128	6
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L12324:
.L11616:
	.sleb128	7
	.4byte		.L12323
	.uleb128	80
	.uleb128	13
	.4byte		.L12343-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L455:
	.sleb128	6
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12344
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L456:
	.sleb128	6
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11370
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12343:
.L11605:
	.sleb128	5
	.4byte		.L12323
	.uleb128	80
	.uleb128	13
	.4byte		.L12346-.L2
	.uleb128	56
.L442:
	.sleb128	6
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L443:
	.sleb128	6
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12347
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L444:
	.sleb128	6
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L445:
	.sleb128	6
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L446:
	.sleb128	6
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L12334
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L447:
	.sleb128	6
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11958
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L448:
	.sleb128	6
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11361
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L449:
	.sleb128	6
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L450:
	.sleb128	6
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12349
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L451:
	.sleb128	6
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L452:
	.sleb128	6
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L12005
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L453:
	.sleb128	6
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11361
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L454:
	.sleb128	6
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12346:
.L11722:
	.sleb128	7
	.4byte		.L12351
	.uleb128	44
	.uleb128	14
	.4byte		.L12352-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L430:
	.sleb128	6
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L12353
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	6
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L432:
	.sleb128	6
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L433:
	.sleb128	6
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L434:
	.sleb128	6
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L435:
	.sleb128	6
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L12356
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L436:
	.sleb128	6
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L12358
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L437:
	.sleb128	6
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L12360
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L438:
	.sleb128	6
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L439:
	.sleb128	6
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L12325
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L440:
	.sleb128	6
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L12257
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L441:
	.sleb128	6
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12352:
.L11710:
	.sleb128	7
	.4byte		.L12351
	.uleb128	44
	.uleb128	14
	.4byte		.L12362-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L426:
	.sleb128	6
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L427:
	.sleb128	6
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L12359
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L428:
	.sleb128	6
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L12359
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L429:
	.sleb128	6
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L12361
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12362:
.L11694:
	.sleb128	7
	.4byte		.L12351
	.uleb128	44
	.uleb128	14
	.4byte		.L12363-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L422:
	.sleb128	6
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L423:
	.sleb128	6
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L12361
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L424:
	.sleb128	6
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L12361
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L425:
	.sleb128	6
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L12359
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12363:
.L11702:
	.sleb128	7
	.4byte		.L12351
	.uleb128	44
	.uleb128	14
	.4byte		.L12364-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L419:
	.sleb128	6
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L12365
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	6
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11385
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	6
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L12361
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12364:
.L11857:
	.sleb128	7
	.4byte		.L12367
	.uleb128	43
	.uleb128	1
	.4byte		.L12368-.L2
	.byte		"Os_TimerConfStruct"
	.byte		0
	.uleb128	28
.L412:
	.sleb128	6
	.byte		"Os_NumberOfCounters"
	.byte		0
	.4byte		.L11389
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	6
	.byte		"Os_Counters"
	.byte		0
	.4byte		.L12369
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	6
	.byte		"Os_TimerDyn"
	.byte		0
	.4byte		.L12371
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	6
	.byte		"Os_IsrPltConfig"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	6
	.byte		"Os_TimerPltConf"
	.byte		0
	.4byte		.L12373
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L417:
	.sleb128	6
	.byte		"Os_TimerMultiplicator"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L418:
	.sleb128	6
	.byte		"Os_TimerMaxTickCount"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L12368:
.L11851:
	.sleb128	7
	.4byte		.L12367
	.uleb128	43
	.uleb128	1
	.4byte		.L12375-.L2
	.byte		"Os_TimersListOnCoreStruct"
	.byte		0
	.uleb128	8
.L410:
	.sleb128	6
	.byte		"Os_TimersList"
	.byte		0
	.4byte		.L12376
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L411:
	.sleb128	6
	.byte		"Os_NumberOfTimers"
	.byte		0
	.4byte		.L11364
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12375:
.L11831:
	.sleb128	7
	.4byte		.L12367
	.uleb128	43
	.uleb128	1
	.4byte		.L12378-.L2
	.byte		"Os_TimerCounterDynStruct"
	.byte		0
	.uleb128	44
.L399:
	.sleb128	6
	.byte		"Os_TimerTickCount"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L400:
	.sleb128	6
	.byte		"Os_TimerRemainingTicks"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L401:
	.sleb128	6
	.byte		"Os_TimerConfiguredTicks"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L402:
	.sleb128	6
	.byte		"Os_TimerLastQueriedElapsedTicks"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L403:
	.sleb128	6
	.byte		"Os_TimerRemainingIncrementsCount"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L404:
	.sleb128	6
	.byte		"Os_TimerRemainderIncrements"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L405:
	.sleb128	6
	.byte		"Os_TimerJitterIncrementsCount"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L406:
	.sleb128	6
	.byte		"Os_TimerJitterOffsetIncrementsCount"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L407:
	.sleb128	6
	.byte		"Os_TimerRunning"
	.byte		0
	.4byte		.L12379
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L408:
	.sleb128	6
	.byte		"Os_TimerTicked"
	.byte		0
	.4byte		.L12379
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L409:
	.sleb128	6
	.byte		"Os_TimerExpired"
	.byte		0
	.4byte		.L12379
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L12378:
.L11770:
	.sleb128	7
	.4byte		.L12367
	.uleb128	43
	.uleb128	1
	.4byte		.L12381-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L394:
	.sleb128	6
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L395:
	.sleb128	6
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L396:
	.sleb128	6
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12382
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L397:
	.sleb128	6
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L12257
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L398:
	.sleb128	6
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L12229
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12381:
.L11764:
	.sleb128	5
	.4byte		.L12367
	.uleb128	43
	.uleb128	1
	.4byte		.L12384-.L2
	.uleb128	12
.L391:
	.sleb128	6
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L392:
	.sleb128	6
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12349
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L393:
	.sleb128	6
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12384:
.L11423:
	.sleb128	7
	.4byte		.L12385
	.uleb128	52
	.uleb128	1
	.4byte		.L12386-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L379:
	.sleb128	6
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12387
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	6
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12243
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L381:
	.sleb128	6
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L382:
	.sleb128	6
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12389
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L383:
	.sleb128	6
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12392
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L384:
	.sleb128	6
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12397
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L385:
	.sleb128	6
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12402
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L386:
	.sleb128	6
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12407
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L387:
	.sleb128	6
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12409
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L388:
	.sleb128	6
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12411
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L389:
	.sleb128	6
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12413
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L390:
	.sleb128	6
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L12325
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12386:
.L11417:
	.sleb128	5
	.4byte		.L12385
	.uleb128	52
	.uleb128	1
	.4byte		.L12415-.L2
	.uleb128	1
.L378:
	.sleb128	6
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12415:
.L11984:
	.sleb128	5
	.4byte		.L12416
	.uleb128	59
	.uleb128	14
	.4byte		.L12417-.L2
	.uleb128	12
.L375:
	.sleb128	6
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L376:
	.sleb128	6
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L377:
	.sleb128	6
	.byte		"mincycle"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12417:
.L11457:
	.sleb128	5
	.4byte		.L12418
	.uleb128	37
	.uleb128	1
	.4byte		.L12419-.L2
	.uleb128	12
.L372:
	.sleb128	6
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L373:
	.sleb128	6
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L12258
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L374:
	.sleb128	6
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12420
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12419:
.L11451:
	.sleb128	5
	.4byte		.L12418
	.uleb128	37
	.uleb128	1
	.4byte		.L12421-.L2
	.uleb128	4
.L371:
	.sleb128	6
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12421:
.L11429:
	.sleb128	5
	.4byte		.L12422
	.uleb128	50
	.uleb128	1
	.4byte		.L12423-.L2
	.uleb128	8
.L369:
	.sleb128	6
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11385
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L370:
	.sleb128	6
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11385
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12423:
.L11884:
	.sleb128	5
	.4byte		.L12424
	.uleb128	205
	.uleb128	7
	.4byte		.L12425-.L2
	.uleb128	2
.L361:
	.sleb128	6
	.byte		"Os_TimerChannelId"
	.byte		0
	.4byte		.L12221
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12425:
.L11865:
	.sleb128	5
	.4byte		.L12424
	.uleb128	205
	.uleb128	7
	.4byte		.L12426-.L2
	.uleb128	8
.L359:
	.sleb128	6
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L360:
	.sleb128	6
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12427
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12426:
	.section	.debug_info,,n
.L11997:
	.sleb128	9
	.4byte		.L11886
	.uleb128	174
	.uleb128	1
	.4byte		.L12429-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	10
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	10
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	10
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	10
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	10
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	10
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	10
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	10
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	10
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	10
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	10
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	10
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	10
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	10
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	10
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	10
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	10
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	10
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	10
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	10
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	10
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	10
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	10
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	10
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	10
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	10
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	10
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L12429:
.L11956:
	.sleb128	9
	.4byte		.L11886
	.uleb128	86
	.uleb128	1
	.4byte		.L12430-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	10
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	10
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	10
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	10
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	10
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	10
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	10
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	10
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	10
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	10
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	10
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	10
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	10
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	10
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	10
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	10
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	10
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	10
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	10
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	10
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	10
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	10
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	10
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	10
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	10
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	10
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	10
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	10
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	10
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	10
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	10
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	10
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	10
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	10
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	10
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	10
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	10
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	10
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	10
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	10
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	10
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	10
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	10
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	10
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	10
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	10
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	10
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	10
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	10
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	10
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	10
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	10
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	10
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	10
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	10
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	10
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	10
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	10
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	10
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L12430:
.L12004:
	.sleb128	9
	.4byte		.L11998
	.uleb128	69
	.uleb128	1
	.4byte		.L12431-.L2
	.uleb128	4
	.sleb128	10
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12431:
.L12023:
	.sleb128	9
	.4byte		.L12006
	.uleb128	32
	.uleb128	1
	.4byte		.L12432-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	10
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	10
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	10
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	10
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	10
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	10
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	10
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	10
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	10
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	10
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	10
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	10
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L12432:
.L12034:
	.sleb128	9
	.4byte		.L12024
	.uleb128	612
	.uleb128	1
	.4byte		.L12433-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L12433:
.L12042:
	.sleb128	9
	.4byte		.L12024
	.uleb128	60
	.uleb128	1
	.4byte		.L12434-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12434:
	.section	.debug_info,,n
.L12164:
	.sleb128	11
	.4byte		.L12213
	.uleb128	33
	.uleb128	14
	.4byte		.L12435-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	10
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12435:
.L12268:
	.sleb128	9
	.4byte		.L12244
	.uleb128	62
	.uleb128	1
	.4byte		.L12436-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_ABSOLUTE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_RELATIVE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OS_SYNCHRON"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12436:
.L12251:
	.sleb128	9
	.4byte		.L12244
	.uleb128	54
	.uleb128	1
	.4byte		.L12437-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_SINGLESHOT"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_REPEATING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12437:
.L12248:
	.sleb128	9
	.4byte		.L12244
	.uleb128	45
	.uleb128	1
	.4byte		.L12438-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_NONE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_IMPLICIT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OS_EXPLICIT"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12438:
.L12299:
	.sleb128	9
	.4byte		.L12285
	.uleb128	121
	.uleb128	1
	.4byte		.L12439-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_ALARM_RELATIVE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_ALARM_ABSOLUTE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12439:
.L12309:
	.sleb128	9
	.4byte		.L12285
	.uleb128	96
	.uleb128	1
	.4byte		.L12440-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_ALARM_OFF"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_ALARM_SET"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12440:
.L12303:
	.sleb128	9
	.4byte		.L12285
	.uleb128	37
	.uleb128	1
	.4byte		.L12441-.L2
	.uleb128	4
	.sleb128	10
	.byte		"Os_AlarmAction_ActivateTask"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"Os_AlarmAction_IncrementCounter"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"Os_AlarmAction_SetEvent"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12441:
.L12348:
	.sleb128	9
	.4byte		.L12323
	.uleb128	80
	.uleb128	13
	.4byte		.L12442-.L2
	.uleb128	4
	.sleb128	10
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12442:
.L12332:
	.sleb128	9
	.4byte		.L12323
	.uleb128	61
	.uleb128	1
	.4byte		.L12443-.L2
	.uleb128	4
	.sleb128	10
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12443:
.L12366:
	.sleb128	11
	.4byte		.L12351
	.uleb128	44
	.uleb128	14
	.4byte		.L12444-.L2
	.byte		"Os_CounterActionOwnerType_e"
	.byte		0
	.uleb128	4
	.sleb128	10
	.byte		"OS_COUNTERACTION_OWNER_INVALID"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_COUNTERACTION_ALARM"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OS_COUNTERACTION_SCHTBL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12444:
.L12355:
	.sleb128	11
	.4byte		.L12351
	.uleb128	36
	.uleb128	14
	.4byte		.L12445-.L2
	.byte		"Os_CounterKindType_e"
	.byte		0
	.uleb128	4
	.sleb128	10
	.byte		"OS_HARDWARE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_SOFTWARE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12445:
.L11994:
	.sleb128	9
	.4byte		.L12367
	.uleb128	43
	.uleb128	1
	.4byte		.L12446-.L2
	.uleb128	4
	.sleb128	10
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12446:
.L12391:
	.sleb128	9
	.4byte		.L12385
	.uleb128	52
	.uleb128	1
	.4byte		.L12447-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12447:
.L11990:
	.sleb128	9
	.4byte		.L12448
	.uleb128	40
	.uleb128	1
	.4byte		.L12449-.L2
	.uleb128	4
	.sleb128	10
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12449:
.L11971:
	.sleb128	9
	.4byte		.L12416
	.uleb128	47
	.uleb128	1
	.4byte		.L12450-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L12450:
.L11978:
	.sleb128	9
	.4byte		.L12418
	.uleb128	37
	.uleb128	1
	.4byte		.L12451-.L2
	.uleb128	4
	.sleb128	10
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L12451:
.L12380:
	.sleb128	9
	.4byte		.L12422
	.uleb128	50
	.uleb128	1
	.4byte		.L12452-.L2
	.uleb128	4
	.sleb128	10
	.byte		"Os_false"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"Os_true"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12452:
.L12207:
	.sleb128	9
	.4byte		.L12422
	.uleb128	42
	.uleb128	13
	.4byte		.L12453-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12453:
.L11919:
	.sleb128	9
	.4byte		.L12454
	.uleb128	83
	.uleb128	14
	.4byte		.L12455-.L2
	.uleb128	4
	.sleb128	10
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12455:
	.section	.debug_info,,n
.L11345:
	.sleb128	12
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11346
	.section	.debug_info,,n
.L11344:
	.sleb128	13
	.4byte		.L11345
	.section	.debug_info,,n
.L11353:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11352:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L11353
.L11351:
	.sleb128	12
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11352
	.section	.debug_info,,n
.L11349:
	.sleb128	15
	.4byte		.L11350-.L2
	.4byte		.L11351
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	511
	.sleb128	0
.L11350:
.L11355:
	.sleb128	15
	.4byte		.L11356-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	511
	.sleb128	0
.L11356:
.L11362:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11361:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L11362
.L11360:
	.sleb128	12
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11361
.L11358:
	.sleb128	15
	.4byte		.L11359-.L2
	.4byte		.L11360
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L11359:
.L11364:
	.sleb128	13
	.4byte		.L11361
.L11366:
	.sleb128	13
	.4byte		.L11352
	.section	.debug_info,,n
.L11371:
	.sleb128	17
	.4byte		.L11351
.L11370:
	.sleb128	13
	.4byte		.L11371
.L11368:
	.sleb128	15
	.4byte		.L11369-.L2
	.4byte		.L11370
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11369:
.L11373:
	.sleb128	15
	.4byte		.L11374-.L2
	.4byte		.L11370
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11374:
.L11379:
	.sleb128	12
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11352
.L11378:
	.sleb128	13
	.4byte		.L11379
.L11385:
	.sleb128	12
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11352
.L11384:
	.sleb128	12
	.byte		"ProcType"
	.byte		0
	.4byte		.L11385
.L11383:
	.sleb128	13
	.4byte		.L11384
.L11381:
	.sleb128	15
	.4byte		.L11382-.L2
	.4byte		.L11383
	.sleb128	16
	.uleb128	8
	.sleb128	0
.L11382:
.L11390:
	.sleb128	12
	.byte		"CounterType"
	.byte		0
	.4byte		.L11352
.L11389:
	.sleb128	13
	.4byte		.L11390
.L11387:
	.sleb128	15
	.4byte		.L11388-.L2
	.4byte		.L11389
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11388:
.L11395:
	.sleb128	12
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11385
.L11394:
	.sleb128	13
	.4byte		.L11395
.L11392:
	.sleb128	15
	.4byte		.L11393-.L2
	.4byte		.L11394
	.sleb128	16
	.uleb128	2
	.sleb128	0
.L11393:
.L11400:
	.sleb128	12
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11352
.L11399:
	.sleb128	13
	.4byte		.L11400
.L11397:
	.sleb128	15
	.4byte		.L11398-.L2
	.4byte		.L11399
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11398:
.L11402:
	.sleb128	15
	.4byte		.L11403-.L2
	.4byte		.L11383
	.sleb128	16
	.uleb128	5
	.sleb128	0
.L11403:
.L11405:
	.sleb128	15
	.4byte		.L11406-.L2
	.4byte		.L11389
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11406:
.L11408:
	.sleb128	15
	.4byte		.L11409-.L2
	.4byte		.L11394
	.sleb128	16
	.uleb128	2
	.sleb128	0
.L11409:
.L11411:
	.sleb128	15
	.4byte		.L11412-.L2
	.4byte		.L11399
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11412:
.L11416:
	.sleb128	12
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11417
.L11414:
	.sleb128	15
	.4byte		.L11415-.L2
	.4byte		.L11416
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11415:
.L11422:
	.sleb128	12
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11423
.L11421:
	.sleb128	13
	.4byte		.L11422
.L11419:
	.sleb128	15
	.4byte		.L11420-.L2
	.4byte		.L11421
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11420:
.L11428:
	.sleb128	12
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11429
.L11427:
	.sleb128	13
	.4byte		.L11428
.L11425:
	.sleb128	15
	.4byte		.L11426-.L2
	.4byte		.L11427
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11426:
.L11434:
	.sleb128	12
	.byte		"OsTrustedFunctionStatType"
	.byte		0
	.4byte		.L11435
.L11433:
	.sleb128	13
	.4byte		.L11434
.L11431:
	.sleb128	15
	.4byte		.L11432-.L2
	.4byte		.L11433
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11432:
.L11438:
	.sleb128	12
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11352
.L11437:
	.sleb128	13
	.4byte		.L11438
.L11443:
	.sleb128	12
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11352
.L11442:
	.sleb128	13
	.4byte		.L11443
.L11440:
	.sleb128	15
	.4byte		.L11441-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11441:
.L11445:
	.sleb128	15
	.4byte		.L11446-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11446:
.L11450:
	.sleb128	12
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11451
.L11448:
	.sleb128	15
	.4byte		.L11449-.L2
	.4byte		.L11450
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11449:
.L11456:
	.sleb128	12
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11457
.L11455:
	.sleb128	13
	.4byte		.L11456
.L11453:
	.sleb128	15
	.4byte		.L11454-.L2
	.4byte		.L11455
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11454:
.L11459:
	.sleb128	15
	.4byte		.L11460-.L2
	.4byte		.L11427
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11460:
.L11462:
	.sleb128	15
	.4byte		.L11463-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	63
	.sleb128	0
.L11463:
.L11465:
	.sleb128	15
	.4byte		.L11466-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	63
	.sleb128	0
.L11466:
.L11468:
	.sleb128	15
	.4byte		.L11469-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	127
	.sleb128	0
.L11469:
.L11471:
	.sleb128	15
	.4byte		.L11472-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	127
	.sleb128	0
.L11472:
.L11474:
	.sleb128	15
	.4byte		.L11475-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	127
	.sleb128	0
.L11475:
.L11477:
	.sleb128	15
	.4byte		.L11478-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	99
	.sleb128	0
.L11478:
.L11480:
	.sleb128	15
	.4byte		.L11481-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	127
	.sleb128	0
.L11481:
.L11483:
	.sleb128	15
	.4byte		.L11484-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	639
	.sleb128	0
.L11484:
.L11486:
	.sleb128	15
	.4byte		.L11487-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	127
	.sleb128	0
.L11487:
.L11489:
	.sleb128	15
	.4byte		.L11490-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	127
	.sleb128	0
.L11490:
.L11492:
	.sleb128	15
	.4byte		.L11493-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	127
	.sleb128	0
.L11493:
.L11495:
	.sleb128	15
	.4byte		.L11496-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	127
	.sleb128	0
.L11496:
.L11498:
	.sleb128	15
	.4byte		.L11499-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	99
	.sleb128	0
.L11499:
.L11501:
	.sleb128	15
	.4byte		.L11502-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11502:
.L11504:
	.sleb128	15
	.4byte		.L11505-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11505:
.L11507:
	.sleb128	15
	.4byte		.L11508-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11508:
.L11510:
	.sleb128	15
	.4byte		.L11511-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11511:
.L11513:
	.sleb128	15
	.4byte		.L11514-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11514:
.L11516:
	.sleb128	15
	.4byte		.L11517-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11517:
.L11519:
	.sleb128	15
	.4byte		.L11520-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11520:
.L11522:
	.sleb128	15
	.4byte		.L11523-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11523:
.L11525:
	.sleb128	15
	.4byte		.L11526-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11526:
.L11528:
	.sleb128	15
	.4byte		.L11529-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11529:
.L11531:
	.sleb128	15
	.4byte		.L11532-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11532:
.L11534:
	.sleb128	15
	.4byte		.L11535-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11535:
.L11537:
	.sleb128	15
	.4byte		.L11538-.L2
	.4byte		.L11351
	.sleb128	16
	.uleb128	73
	.sleb128	0
.L11538:
.L11543:
	.sleb128	17
	.4byte		.L11455
.L11542:
	.sleb128	12
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11543
.L11540:
	.sleb128	15
	.4byte		.L11541-.L2
	.4byte		.L11542
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11541:
.L11545:
	.sleb128	15
	.4byte		.L11546-.L2
	.4byte		.L11542
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11546:
.L11548:
	.sleb128	15
	.4byte		.L11549-.L2
	.4byte		.L11542
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11549:
.L11551:
	.sleb128	15
	.4byte		.L11552-.L2
	.4byte		.L11542
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11552:
.L11554:
	.sleb128	15
	.4byte		.L11555-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11555:
.L11557:
	.sleb128	15
	.4byte		.L11558-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11558:
.L11560:
	.sleb128	15
	.4byte		.L11561-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11561:
.L11563:
	.sleb128	15
	.4byte		.L11564-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11564:
.L11566:
	.sleb128	15
	.4byte		.L11567-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11567:
.L11569:
	.sleb128	15
	.4byte		.L11570-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11570:
.L11572:
	.sleb128	15
	.4byte		.L11573-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11573:
.L11575:
	.sleb128	15
	.4byte		.L11576-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11576:
.L11578:
	.sleb128	15
	.4byte		.L11579-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11579:
.L11581:
	.sleb128	15
	.4byte		.L11582-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11582:
.L11584:
	.sleb128	15
	.4byte		.L11585-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11585:
.L11587:
	.sleb128	15
	.4byte		.L11588-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11588:
.L11590:
	.sleb128	15
	.4byte		.L11591-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11591:
.L11593:
	.sleb128	15
	.4byte		.L11594-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11594:
.L11596:
	.sleb128	15
	.4byte		.L11597-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11597:
.L11599:
	.sleb128	15
	.4byte		.L11600-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11600:
.L11604:
	.sleb128	12
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11605
.L11602:
	.sleb128	15
	.4byte		.L11603-.L2
	.4byte		.L11604
	.sleb128	16
	.uleb128	12
	.sleb128	0
.L11603:
.L11609:
	.sleb128	12
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11610
.L11607:
	.sleb128	15
	.4byte		.L11608-.L2
	.4byte		.L11609
	.sleb128	16
	.uleb128	12
	.sleb128	0
.L11608:
.L11615:
	.sleb128	12
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11616
.L11614:
	.sleb128	13
	.4byte		.L11615
.L11612:
	.sleb128	15
	.4byte		.L11613-.L2
	.4byte		.L11614
	.sleb128	16
	.uleb128	12
	.sleb128	0
.L11613:
.L11621:
	.sleb128	12
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11622
.L11620:
	.sleb128	13
	.4byte		.L11621
.L11618:
	.sleb128	15
	.4byte		.L11619-.L2
	.4byte		.L11620
	.sleb128	16
	.uleb128	12
	.sleb128	0
.L11619:
.L11626:
	.sleb128	12
	.byte		"Os_SchedulerQueueType"
	.byte		0
	.4byte		.L11627
.L11624:
	.sleb128	15
	.4byte		.L11625-.L2
	.4byte		.L11626
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L11625:
.L11631:
	.sleb128	17
	.4byte		.L11620
.L11629:
	.sleb128	15
	.4byte		.L11630-.L2
	.4byte		.L11631
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11630:
.L11633:
	.sleb128	15
	.4byte		.L11634-.L2
	.4byte		.L11626
	.sleb128	16
	.uleb128	10
	.sleb128	0
.L11634:
.L11636:
	.sleb128	15
	.4byte		.L11637-.L2
	.4byte		.L11631
	.sleb128	16
	.uleb128	4
	.sleb128	0
.L11637:
.L11642:
	.sleb128	12
	.byte		"Os_SchedulerQueueStructureType"
	.byte		0
	.4byte		.L11643
.L11641:
	.sleb128	13
	.4byte		.L11642
.L11639:
	.sleb128	15
	.4byte		.L11640-.L2
	.4byte		.L11641
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11640:
.L11645:
	.sleb128	15
	.4byte		.L11646-.L2
	.4byte		.L11383
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11646:
.L11651:
	.sleb128	17
	.4byte		.L11631
.L11650:
	.sleb128	13
	.4byte		.L11651
.L11648:
	.sleb128	15
	.4byte		.L11649-.L2
	.4byte		.L11650
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11649:
.L11653:
	.sleb128	15
	.4byte		.L11654-.L2
	.4byte		.L11427
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11654:
.L11658:
	.sleb128	12
	.byte		"Os_AlarmDynType"
	.byte		0
	.4byte		.L11659
.L11656:
	.sleb128	15
	.4byte		.L11657-.L2
	.4byte		.L11658
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L11657:
.L11664:
	.sleb128	12
	.byte		"Os_AlarmActionType"
	.byte		0
	.4byte		.L11665
.L11663:
	.sleb128	13
	.4byte		.L11664
.L11661:
	.sleb128	15
	.4byte		.L11662-.L2
	.4byte		.L11663
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L11662:
.L11667:
	.sleb128	15
	.4byte		.L11668-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11668:
.L11670:
	.sleb128	15
	.4byte		.L11671-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11671:
.L11673:
	.sleb128	15
	.4byte		.L11674-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11674:
.L11676:
	.sleb128	15
	.4byte		.L11677-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11677:
.L11682:
	.sleb128	12
	.byte		"Os_AlarmStatType"
	.byte		0
	.4byte		.L11683
.L11681:
	.sleb128	13
	.4byte		.L11682
.L11679:
	.sleb128	15
	.4byte		.L11680-.L2
	.4byte		.L11681
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L11680:
.L11686:
	.sleb128	17
	.4byte		.L11681
.L11685:
	.sleb128	13
	.4byte		.L11686
.L11688:
	.sleb128	15
	.4byte		.L11689-.L2
	.4byte		.L11427
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11689:
.L11693:
	.sleb128	12
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L11694
.L11691:
	.sleb128	15
	.4byte		.L11692-.L2
	.4byte		.L11693
	.sleb128	16
	.uleb128	5
	.sleb128	0
.L11692:
.L11696:
	.sleb128	15
	.4byte		.L11697-.L2
	.4byte		.L11693
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L11697:
.L11701:
	.sleb128	12
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L11702
.L11699:
	.sleb128	15
	.4byte		.L11700-.L2
	.4byte		.L11701
	.sleb128	16
	.uleb128	5
	.sleb128	0
.L11700:
.L11704:
	.sleb128	15
	.4byte		.L11705-.L2
	.4byte		.L11701
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L11705:
.L11709:
	.sleb128	12
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L11710
.L11707:
	.sleb128	15
	.4byte		.L11708-.L2
	.4byte		.L11709
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11708:
.L11712:
	.sleb128	15
	.4byte		.L11713-.L2
	.4byte		.L11427
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11713:
.L11715:
	.sleb128	15
	.4byte		.L11716-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11716:
.L11721:
	.sleb128	12
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11722
.L11720:
	.sleb128	13
	.4byte		.L11721
.L11718:
	.sleb128	15
	.4byte		.L11719-.L2
	.4byte		.L11720
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11719:
.L11724:
	.sleb128	15
	.4byte		.L11725-.L2
	.4byte		.L11427
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11725:
.L11729:
	.sleb128	12
	.byte		"Os_SchTblDynType"
	.byte		0
	.4byte		.L11730
.L11727:
	.sleb128	15
	.4byte		.L11728-.L2
	.4byte		.L11729
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11728:
.L11732:
	.sleb128	15
	.4byte		.L11733-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11733:
.L11738:
	.sleb128	12
	.byte		"TaskType"
	.byte		0
	.4byte		.L11384
.L11737:
	.sleb128	13
	.4byte		.L11738
.L11735:
	.sleb128	15
	.4byte		.L11736-.L2
	.4byte		.L11737
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11736:
.L11743:
	.sleb128	12
	.byte		"Os_SchTblEPStatType"
	.byte		0
	.4byte		.L11744
.L11742:
	.sleb128	13
	.4byte		.L11743
.L11740:
	.sleb128	15
	.4byte		.L11741-.L2
	.4byte		.L11742
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11741:
.L11749:
	.sleb128	12
	.byte		"Os_SchTblStatType"
	.byte		0
	.4byte		.L11750
.L11748:
	.sleb128	13
	.4byte		.L11749
.L11746:
	.sleb128	15
	.4byte		.L11747-.L2
	.4byte		.L11748
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11747:
.L11753:
	.sleb128	17
	.4byte		.L11748
.L11752:
	.sleb128	13
	.4byte		.L11753
.L11755:
	.sleb128	15
	.4byte		.L11756-.L2
	.4byte		.L11427
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11756:
.L11758:
	.sleb128	15
	.4byte		.L11759-.L2
	.4byte		.L11442
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L11759:
.L11763:
	.sleb128	12
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11764
.L11761:
	.sleb128	15
	.4byte		.L11762-.L2
	.4byte		.L11763
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L11762:
.L11769:
	.sleb128	12
	.byte		"Os_SpinlockStatType"
	.byte		0
	.4byte		.L11770
.L11768:
	.sleb128	13
	.4byte		.L11769
.L11766:
	.sleb128	15
	.4byte		.L11767-.L2
	.4byte		.L11768
	.sleb128	16
	.uleb128	4
	.sleb128	0
.L11767:
.L11775:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11774:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L11775
.L11773:
	.sleb128	12
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11774
.L11772:
	.sleb128	13
	.4byte		.L11773
.L11779:
	.sleb128	12
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11780
.L11777:
	.sleb128	15
	.4byte		.L11778-.L2
	.4byte		.L11779
	.sleb128	16
	.uleb128	2
	.sleb128	0
.L11778:
.L11782:
	.sleb128	15
	.4byte		.L11783-.L2
	.4byte		.L11779
	.sleb128	16
	.uleb128	8
	.sleb128	0
.L11783:
.L11785:
	.sleb128	15
	.4byte		.L11786-.L2
	.4byte		.L11366
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11786:
.L11790:
	.sleb128	12
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11791
.L11788:
	.sleb128	15
	.4byte		.L11789-.L2
	.4byte		.L11790
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11789:
.L11795:
	.sleb128	12
	.byte		"Os_Core_DynInitSharedType"
	.byte		0
	.4byte		.L11796
.L11793:
	.sleb128	15
	.4byte		.L11794-.L2
	.4byte		.L11795
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11794:
.L11798:
	.sleb128	12
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11799
.L11802:
	.sleb128	12
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11803
.L11806:
	.sleb128	12
	.byte		"Os_PublicData_VarInitType"
	.byte		0
	.4byte		.L11807
.L11813:
	.sleb128	12
	.byte		"Os_PublicDataType"
	.byte		0
	.4byte		.L11814
.L11812:
	.sleb128	13
	.4byte		.L11813
.L11810:
	.sleb128	15
	.4byte		.L11811-.L2
	.4byte		.L11812
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11811:
.L11819:
	.sleb128	12
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11820
.L11818:
	.sleb128	13
	.4byte		.L11819
.L11816:
	.sleb128	15
	.4byte		.L11817-.L2
	.4byte		.L11818
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11817:
.L11826:
	.sleb128	12
	.byte		"uintptr"
	.byte		0
	.4byte		.L11352
.L11825:
	.sleb128	12
	.byte		"Os_MemoryAddressType"
	.byte		0
	.4byte		.L11826
.L11824:
	.sleb128	13
	.4byte		.L11825
.L11822:
	.sleb128	15
	.4byte		.L11823-.L2
	.4byte		.L11824
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11823:
.L11828:
	.sleb128	13
	.4byte		.L11385
.L11830:
	.sleb128	12
	.byte		"Os_TimerCounterDynType"
	.byte		0
	.4byte		.L11831
.L11837:
	.sleb128	12
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11352
.L11836:
	.sleb128	13
	.4byte		.L11837
.L11834:
	.sleb128	15
	.4byte		.L11835-.L2
	.4byte		.L11836
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11835:
.L11842:
	.sleb128	17
	.4byte		.L11720
.L11841:
	.sleb128	13
	.4byte		.L11842
.L11839:
	.sleb128	15
	.4byte		.L11840-.L2
	.4byte		.L11841
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11840:
.L11844:
	.sleb128	15
	.4byte		.L11845-.L2
	.4byte		.L11841
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11845:
.L11850:
	.sleb128	12
	.byte		"Os_TimersListOnCoreType"
	.byte		0
	.4byte		.L11851
.L11849:
	.sleb128	13
	.4byte		.L11850
.L11847:
	.sleb128	15
	.4byte		.L11848-.L2
	.4byte		.L11849
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11848:
.L11856:
	.sleb128	12
	.byte		"Os_TimerConfType"
	.byte		0
	.4byte		.L11857
.L11855:
	.sleb128	13
	.4byte		.L11856
.L11853:
	.sleb128	15
	.4byte		.L11854-.L2
	.4byte		.L11855
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11854:
.L11864:
	.sleb128	12
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11865
.L11863:
	.sleb128	13
	.4byte		.L11864
.L11862:
	.sleb128	17
	.4byte		.L11863
.L11861:
	.sleb128	13
	.4byte		.L11862
.L11859:
	.sleb128	15
	.4byte		.L11860-.L2
	.4byte		.L11861
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L11860:
.L11867:
	.sleb128	15
	.4byte		.L11868-.L2
	.4byte		.L11427
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11868:
.L11870:
	.sleb128	15
	.4byte		.L11871-.L2
	.4byte		.L11861
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11871:
.L11873:
	.sleb128	15
	.4byte		.L11874-.L2
	.4byte		.L11863
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L11874:
.L11877:
	.sleb128	15
	.4byte		.L11878-.L2
	.4byte		.L11366
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11878:
.L11883:
	.sleb128	12
	.byte		"Os_TimerPlatformConfigType"
	.byte		0
	.4byte		.L11884
.L11882:
	.sleb128	13
	.4byte		.L11883
.L11880:
	.sleb128	15
	.4byte		.L11881-.L2
	.4byte		.L11882
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L11881:
.L11889:
	.sleb128	17
	.4byte		.L11798
.L11888:
	.sleb128	13
	.4byte		.L11889
.L11891:
	.sleb128	17
	.4byte		.L11802
.L11890:
	.sleb128	13
	.4byte		.L11891
.L11893:
	.sleb128	17
	.4byte		.L11779
.L11892:
	.sleb128	13
	.4byte		.L11893
	.section	.debug_info,,n
.L11897:
	.sleb128	18
	.4byte		.L11898-.L2
	.byte		0x1
.L11899:
	.sleb128	13
	.4byte		.L11631
	.section	.debug_info,,n
	.sleb128	19
	.4byte		.L11899
	.sleb128	0
.L11898:
.L11896:
	.sleb128	17
	.4byte		.L11897
.L11895:
	.sleb128	12
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11896
.L11894:
	.sleb128	13
	.4byte		.L11895
	.section	.debug_info,,n
.L11903:
	.sleb128	20
	.4byte		.L11904-.L2
	.4byte		.L11371
	.byte		0x1
	.sleb128	19
	.4byte		.L11631
	.sleb128	0
.L11904:
.L11902:
	.sleb128	17
	.4byte		.L11903
.L11901:
	.sleb128	12
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11902
.L11900:
	.sleb128	13
	.4byte		.L11901
.L11906:
	.sleb128	12
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11907
.L11908:
	.sleb128	12
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11909
.L11910:
	.sleb128	17
	.4byte		.L11421
.L11914:
	.sleb128	18
	.4byte		.L11915-.L2
	.byte		0x1
	.sleb128	19
	.4byte		.L11378
	.sleb128	0
.L11915:
.L11913:
	.sleb128	17
	.4byte		.L11914
.L11912:
	.sleb128	12
	.byte		"Os_StartOsFuncType"
	.byte		0
	.4byte		.L11913
.L11916:
	.sleb128	12
	.byte		"Os_CoreStateType"
	.byte		0
	.4byte		.L11352
.L11917:
	.sleb128	12
	.byte		"Os_CoreStartedType"
	.byte		0
	.4byte		.L11352
.L11918:
	.sleb128	12
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11919
.L11921:
	.sleb128	12
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11922
.L11923:
	.sleb128	12
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11924
.L11926:
	.sleb128	12
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11927
.L11928:
	.sleb128	12
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11929
.L11930:
	.sleb128	12
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11931
.L11935:
	.sleb128	13
	.4byte		.L11923
.L11934:
	.sleb128	17
	.4byte		.L11935
.L11933:
	.sleb128	13
	.4byte		.L11934
.L11937:
	.sleb128	17
	.4byte		.L11806
.L11936:
	.sleb128	13
	.4byte		.L11937
.L11939:
	.sleb128	17
	.4byte		.L11344
.L11941:
	.sleb128	12
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11942
.L11943:
	.sleb128	12
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11944
.L11946:
	.sleb128	12
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11947
.L11948:
	.sleb128	12
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11949
.L11950:
	.sleb128	12
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11951
.L11953:
	.sleb128	12
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11361
.L11954:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11361
.L11955:
	.sleb128	12
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11956
.L11958:
	.sleb128	12
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11352
.L11961:
	.sleb128	14
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11960:
	.sleb128	12
	.byte		"uint64"
	.byte		0
	.4byte		.L11961
.L11959:
	.sleb128	12
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11960
.L11962:
	.sleb128	12
	.byte		"TickType"
	.byte		0
	.4byte		.L11352
	.section	.debug_info,,n
.L11965:
	.sleb128	21
	.byte		"void"
	.byte		0
	.byte		0x0
.L11964:
	.sleb128	17
	.4byte		.L11965
.L11963:
	.sleb128	12
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11964
.L11966:
	.sleb128	12
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11361
.L11969:
	.sleb128	12
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11361
.L11968:
	.sleb128	17
	.4byte		.L11969
.L11967:
	.sleb128	12
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11968
.L11970:
	.sleb128	12
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11971
.L11972:
	.sleb128	12
	.byte		"RestartType"
	.byte		0
	.4byte		.L11361
.L11974:
	.sleb128	17
	.4byte		.L11959
.L11973:
	.sleb128	12
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11974
.L11977:
	.sleb128	12
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11978
.L11976:
	.sleb128	17
	.4byte		.L11977
.L11975:
	.sleb128	12
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11976
.L11980:
	.sleb128	17
	.4byte		.L11962
.L11979:
	.sleb128	12
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11980
.L11983:
	.sleb128	12
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11984
.L11982:
	.sleb128	17
	.4byte		.L11983
.L11981:
	.sleb128	12
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11982
.L11986:
	.sleb128	17
	.4byte		.L11738
.L11985:
	.sleb128	12
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11986
.L11989:
	.sleb128	12
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11990
.L11988:
	.sleb128	17
	.4byte		.L11989
.L11987:
	.sleb128	12
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11988
.L11993:
	.sleb128	12
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11994
.L11992:
	.sleb128	17
	.4byte		.L11993
.L11991:
	.sleb128	12
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11992
.L11996:
	.sleb128	12
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11997
.L12001:
	.sleb128	13
	.4byte		.L11622
.L12000:
	.sleb128	17
	.4byte		.L12001
.L12003:
	.sleb128	12
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L12004
.L12005:
	.sleb128	12
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11352
.L12008:
	.sleb128	13
	.4byte		.L12005
.L12010:
	.sleb128	17
	.4byte		.L11626
.L12009:
	.sleb128	13
	.4byte		.L12010
.L12012:
	.sleb128	17
	.4byte		.L11609
.L12014:
	.sleb128	17
	.4byte		.L11610
.L12016:
	.sleb128	12
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11352
.L12017:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L11362
.L12019:
	.sleb128	15
	.4byte		.L12020-.L2
	.4byte		.L11352
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L12020:
.L12022:
	.sleb128	12
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12023
.L12029:
	.sleb128	18
	.4byte		.L12030-.L2
	.byte		0x1
	.sleb128	0
.L12030:
.L12028:
	.sleb128	17
	.4byte		.L12029
.L12027:
	.sleb128	12
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12028
.L12026:
	.sleb128	13
	.4byte		.L12027
.L12033:
	.sleb128	12
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L12034
.L12035:
	.sleb128	12
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11774
.L12036:
	.sleb128	12
	.byte		"ISRType"
	.byte		0
	.4byte		.L11384
.L12038:
	.sleb128	12
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L12039
.L12037:
	.sleb128	17
	.4byte		.L12038
.L12041:
	.sleb128	12
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L12042
.L12045:
	.sleb128	18
	.4byte		.L12046-.L2
	.byte		0x1
.L12047:
	.sleb128	17
	.4byte		.L12039
	.sleb128	19
	.4byte		.L12047
.L12048:
	.sleb128	13
	.4byte		.L12000
	.sleb128	19
	.4byte		.L12048
	.sleb128	0
.L12046:
.L12044:
	.sleb128	17
	.4byte		.L12045
.L12043:
	.sleb128	12
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L12044
.L12051:
	.sleb128	12
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L12052
.L12053:
	.sleb128	12
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L12054
.L12055:
	.sleb128	12
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L12056
.L12057:
	.sleb128	12
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L12058
.L12059:
	.sleb128	12
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L12060
.L12061:
	.sleb128	12
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L12062
.L12063:
	.sleb128	12
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L12064
.L12065:
	.sleb128	12
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L12066
.L12067:
	.sleb128	12
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L12068
.L12069:
	.sleb128	12
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L12070
.L12071:
	.sleb128	12
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L12072
.L12073:
	.sleb128	12
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L12074
.L12075:
	.sleb128	12
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L12076
.L12077:
	.sleb128	12
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L12078
.L12079:
	.sleb128	12
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L12080
.L12081:
	.sleb128	12
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L12082
.L12083:
	.sleb128	12
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L12084
.L12085:
	.sleb128	12
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L12086
.L12087:
	.sleb128	12
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L12088
.L12089:
	.sleb128	12
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L12090
.L12091:
	.sleb128	12
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L12092
.L12093:
	.sleb128	12
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L12094
.L12095:
	.sleb128	12
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L12096
.L12097:
	.sleb128	12
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L12098
.L12099:
	.sleb128	12
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L12100
.L12101:
	.sleb128	12
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L12102
.L12103:
	.sleb128	12
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L12104
.L12105:
	.sleb128	12
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L12106
.L12107:
	.sleb128	12
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L12108
.L12109:
	.sleb128	12
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L12110
.L12111:
	.sleb128	12
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L12112
.L12113:
	.sleb128	12
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L12114
.L12115:
	.sleb128	12
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L12116
.L12117:
	.sleb128	12
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L12118
.L12119:
	.sleb128	12
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L12120
.L12121:
	.sleb128	12
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L12122
.L12123:
	.sleb128	12
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L12124
.L12125:
	.sleb128	12
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L12126
.L12127:
	.sleb128	12
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L12128
.L12129:
	.sleb128	12
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L12130
.L12131:
	.sleb128	12
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L12132
.L12133:
	.sleb128	12
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L12134
.L12135:
	.sleb128	12
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L12136
.L12137:
	.sleb128	12
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L12138
.L12139:
	.sleb128	12
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L12140
.L12141:
	.sleb128	12
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L12142
.L12143:
	.sleb128	12
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L12144
.L12145:
	.sleb128	12
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L12146
.L12151:
	.sleb128	12
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L12152
.L12150:
	.sleb128	13
	.4byte		.L12151
.L12149:
	.sleb128	17
	.4byte		.L12150
.L12155:
	.sleb128	15
	.4byte		.L12156-.L2
	.4byte		.L11964
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L12156:
.L12154:
	.sleb128	12
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L12155
.L12153:
	.sleb128	17
	.4byte		.L12154
.L12161:
	.sleb128	17
	.4byte		.L11361
.L12163:
	.sleb128	12
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L12164
.L12184:
	.sleb128	18
	.4byte		.L12185-.L2
	.byte		0x1
	.sleb128	19
	.4byte		.L12047
	.sleb128	0
.L12185:
.L12183:
	.sleb128	17
	.4byte		.L12184
.L12182:
	.sleb128	12
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L12183
.L12206:
	.sleb128	12
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L12207
.L12210:
	.sleb128	17
	.4byte		.L11954
.L12217:
	.sleb128	12
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L12218
.L12216:
	.sleb128	17
	.4byte		.L12217
.L12215:
	.sleb128	13
	.4byte		.L12216
.L12219:
	.sleb128	12
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11774
.L12220:
	.sleb128	13
	.4byte		.L11964
.L12221:
	.sleb128	13
	.4byte		.L11774
.L12223:
	.sleb128	12
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11361
.L12222:
	.sleb128	13
	.4byte		.L12223
.L12227:
	.sleb128	12
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L12228
.L12226:
	.sleb128	13
	.4byte		.L12227
.L12225:
	.sleb128	17
	.4byte		.L12226
.L12224:
	.sleb128	13
	.4byte		.L12225
.L12230:
	.sleb128	17
	.4byte		.L11360
.L12229:
	.sleb128	13
	.4byte		.L12230
.L12233:
	.sleb128	12
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11774
.L12232:
	.sleb128	13
	.4byte		.L12233
.L12235:
	.sleb128	12
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11774
.L12234:
	.sleb128	13
	.4byte		.L12235
.L12241:
	.sleb128	18
	.4byte		.L12242-.L2
	.byte		0x1
	.sleb128	19
	.4byte		.L11438
	.sleb128	19
	.4byte		.L11963
	.sleb128	0
.L12242:
.L12240:
	.sleb128	17
	.4byte		.L12241
.L12239:
	.sleb128	12
	.byte		"Os_TrustedFunctionType"
	.byte		0
	.4byte		.L12240
.L12238:
	.sleb128	13
	.4byte		.L12239
.L12243:
	.sleb128	13
	.4byte		.L11966
.L12247:
	.sleb128	12
	.byte		"Os_SchTblSyncStrategyType"
	.byte		0
	.4byte		.L12248
.L12246:
	.sleb128	13
	.4byte		.L12247
.L12250:
	.sleb128	12
	.byte		"Os_SchTblRepeatingType"
	.byte		0
	.4byte		.L12251
.L12249:
	.sleb128	13
	.4byte		.L12250
.L12253:
	.sleb128	17
	.4byte		.L11742
.L12252:
	.sleb128	13
	.4byte		.L12253
.L12254:
	.sleb128	13
	.4byte		.L11962
.L12256:
	.sleb128	17
	.4byte		.L11729
.L12255:
	.sleb128	13
	.4byte		.L12256
.L12258:
	.sleb128	17
	.4byte		.L11442
.L12257:
	.sleb128	13
	.4byte		.L12258
.L12259:
	.sleb128	13
	.4byte		.L11910
.L12263:
	.sleb128	12
	.byte		"Os_SchTblAutoStartStatType"
	.byte		0
	.4byte		.L12264
.L12262:
	.sleb128	13
	.4byte		.L12263
.L12261:
	.sleb128	17
	.4byte		.L12262
.L12260:
	.sleb128	13
	.4byte		.L12261
.L12267:
	.sleb128	12
	.byte		"Os_SchTblAutoStartKindType"
	.byte		0
	.4byte		.L12268
.L12266:
	.sleb128	13
	.4byte		.L12267
.L12271:
	.sleb128	13
	.4byte		.L11750
.L12270:
	.sleb128	17
	.4byte		.L12271
.L12274:
	.sleb128	17
	.4byte		.L11737
.L12273:
	.sleb128	13
	.4byte		.L12274
.L12278:
	.sleb128	12
	.byte		"Os_SchTblActionEventSetStatType"
	.byte		0
	.4byte		.L12279
.L12277:
	.sleb128	13
	.4byte		.L12278
.L12276:
	.sleb128	17
	.4byte		.L12277
.L12275:
	.sleb128	13
	.4byte		.L12276
.L12281:
	.sleb128	13
	.4byte		.L11959
.L12284:
	.sleb128	12
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11774
.L12288:
	.sleb128	17
	.4byte		.L11658
.L12287:
	.sleb128	13
	.4byte		.L12288
.L12290:
	.sleb128	17
	.4byte		.L11663
.L12289:
	.sleb128	13
	.4byte		.L12290
.L12294:
	.sleb128	12
	.byte		"Os_AlarmAutoStartType"
	.byte		0
	.4byte		.L12295
.L12293:
	.sleb128	13
	.4byte		.L12294
.L12292:
	.sleb128	17
	.4byte		.L12293
.L12291:
	.sleb128	13
	.4byte		.L12292
.L12298:
	.sleb128	12
	.byte		"Os_AlarmStartKindType"
	.byte		0
	.4byte		.L12299
.L12297:
	.sleb128	13
	.4byte		.L12298
.L12302:
	.sleb128	12
	.byte		"Os_AlarmActionKindType"
	.byte		0
	.4byte		.L12303
.L12301:
	.sleb128	13
	.4byte		.L12302
.L12305:
	.sleb128	12
	.byte		"Os_AlarmActionDataType"
	.byte		0
	.4byte		.L12306
.L12304:
	.sleb128	13
	.4byte		.L12305
.L12308:
	.sleb128	12
	.byte		"Os_AlarmStateType"
	.byte		0
	.4byte		.L12309
.L12312:
	.sleb128	12
	.byte		"Os_AlarmActionSeEventType"
	.byte		0
	.4byte		.L12313
.L12311:
	.sleb128	13
	.4byte		.L12312
.L12315:
	.sleb128	12
	.byte		"Os_AlarmActionActivateTaskType"
	.byte		0
	.4byte		.L12316
.L12314:
	.sleb128	13
	.4byte		.L12315
.L12318:
	.sleb128	12
	.byte		"Os_AlarmActionIncrementCounterType"
	.byte		0
	.4byte		.L12319
.L12317:
	.sleb128	13
	.4byte		.L12318
.L12325:
	.sleb128	13
	.4byte		.L12035
.L12327:
	.sleb128	17
	.4byte		.L11604
.L12326:
	.sleb128	13
	.4byte		.L12327
.L12329:
	.sleb128	17
	.4byte		.L11614
.L12328:
	.sleb128	13
	.4byte		.L12329
.L12331:
	.sleb128	12
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L12332
.L12330:
	.sleb128	13
	.4byte		.L12331
.L12334:
	.sleb128	12
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11352
.L12333:
	.sleb128	13
	.4byte		.L12334
.L12338:
	.sleb128	18
	.4byte		.L12339-.L2
	.byte		0x1
	.sleb128	0
.L12339:
.L12337:
	.sleb128	17
	.4byte		.L12338
.L12336:
	.sleb128	12
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L12337
.L12335:
	.sleb128	13
	.4byte		.L12336
.L12340:
	.sleb128	13
	.4byte		.L11958
.L12341:
	.sleb128	17
	.4byte		.L11542
.L12342:
	.sleb128	13
	.4byte		.L12014
.L12345:
	.sleb128	12
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11352
.L12344:
	.sleb128	13
	.4byte		.L12345
.L12347:
	.sleb128	12
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12348
.L12350:
	.sleb128	13
	.4byte		.L11770
.L12349:
	.sleb128	17
	.4byte		.L12350
.L12354:
	.sleb128	12
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L12355
.L12353:
	.sleb128	13
	.4byte		.L12354
.L12357:
	.sleb128	17
	.4byte		.L11709
.L12356:
	.sleb128	13
	.4byte		.L12357
.L12359:
	.sleb128	17
	.4byte		.L11693
.L12358:
	.sleb128	13
	.4byte		.L12359
.L12361:
	.sleb128	17
	.4byte		.L11701
.L12360:
	.sleb128	13
	.4byte		.L12361
.L12365:
	.sleb128	12
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L12366
.L12370:
	.sleb128	17
	.4byte		.L11841
.L12369:
	.sleb128	13
	.4byte		.L12370
.L12372:
	.sleb128	17
	.4byte		.L11830
.L12371:
	.sleb128	13
	.4byte		.L12372
.L12374:
	.sleb128	17
	.4byte		.L11882
.L12373:
	.sleb128	13
	.4byte		.L12374
.L12377:
	.sleb128	17
	.4byte		.L11836
.L12376:
	.sleb128	13
	.4byte		.L12377
.L12379:
	.sleb128	12
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L12380
.L12383:
	.sleb128	17
	.4byte		.L11763
.L12382:
	.sleb128	13
	.4byte		.L12383
.L12388:
	.sleb128	17
	.4byte		.L11416
.L12387:
	.sleb128	13
	.4byte		.L12388
.L12390:
	.sleb128	12
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12391
.L12389:
	.sleb128	13
	.4byte		.L12390
.L12395:
	.sleb128	18
	.4byte		.L12396-.L2
	.byte		0x1
	.sleb128	19
	.4byte		.L11954
	.sleb128	0
.L12396:
.L12394:
	.sleb128	17
	.4byte		.L12395
.L12393:
	.sleb128	12
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12394
.L12392:
	.sleb128	13
	.4byte		.L12393
.L12400:
	.sleb128	18
	.4byte		.L12401-.L2
	.byte		0x1
	.sleb128	0
.L12401:
.L12399:
	.sleb128	17
	.4byte		.L12400
.L12398:
	.sleb128	12
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12399
.L12397:
	.sleb128	13
	.4byte		.L12398
.L12405:
	.sleb128	18
	.4byte		.L12406-.L2
	.byte		0x1
	.sleb128	19
	.4byte		.L11954
	.sleb128	0
.L12406:
.L12404:
	.sleb128	17
	.4byte		.L12405
.L12403:
	.sleb128	12
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12404
.L12402:
	.sleb128	13
	.4byte		.L12403
.L12408:
	.sleb128	17
	.4byte		.L11383
.L12407:
	.sleb128	13
	.4byte		.L12408
.L12410:
	.sleb128	17
	.4byte		.L11389
.L12409:
	.sleb128	13
	.4byte		.L12410
.L12412:
	.sleb128	17
	.4byte		.L11394
.L12411:
	.sleb128	13
	.4byte		.L12412
.L12414:
	.sleb128	17
	.4byte		.L11399
.L12413:
	.sleb128	13
	.4byte		.L12414
.L12420:
	.sleb128	17
	.4byte		.L11450
.L12428:
	.sleb128	12
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11774
.L12427:
	.sleb128	13
	.4byte		.L12428
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_LCfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_LCfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_LCfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_LCfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_LCfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_LCfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\Os_LCfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
