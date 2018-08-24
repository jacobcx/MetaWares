#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Gpt.c"
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
# FUNC(void, GPT_CODE) Gpt_GetVersionInfo
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L538:
	.section	.invalid_TEXT,,c
#$$ld
.L534:
	.0byte		.L532
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt.c"
        .d2line         882,22
#$$ld
.L541:

#$$bf	Gpt_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Gpt_GetVersionInfo
	.d2_cfa_start __cie
Gpt_GetVersionInfo:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versioninfo=r4 versioninfo=r3
	.d2prologue_end
# (
#     P2VAR(Std_VersionInfoType, AUTOMATIC, GPT_APPL_DATA) versioninfo
# )
# {
# #if (GPT_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == versioninfo)
#     {
#         (void)Det_ReportError\
#         (\
#             (uint16)GPT_MODULE_ID,\
#             (uint8)GPT_INSTANCE_ID,\
#             (uint8)GPT_GETVERSIONINFO_ID,\
#             (uint8)GPT_E_PARAM_POINTER\
#         );
#     }
#     else
# #endif
#     {
#         versioninfo->vendorID         = (uint16)GPT_VENDOR_ID;
	.d2line		901
.Llo2:
	diab.li		r3,43
.Llo3:
	sth		r3,0(r4)		# versioninfo=r4
#         versioninfo->moduleID         = (uint16)GPT_MODULE_ID;
	.d2line		902
	diab.li		r3,100
	sth		r3,2(r4)		# versioninfo=r4
#         versioninfo->sw_major_version = (uint8)GPT_SW_MAJOR_VERSION;
	.d2line		903
	diab.li		r3,1
	stb		r3,4(r4)		# versioninfo=r4
#         versioninfo->sw_minor_version = (uint8)GPT_SW_MINOR_VERSION;
	.d2line		904
	diab.li		r3,0
	stb		r3,5(r4)		# versioninfo=r4
#         versioninfo->sw_patch_version = (uint8)GPT_SW_PATCH_VERSION;
	.d2line		905
	diab.li		r3,2
	stb		r3,6(r4)		# versioninfo=r4
#     }
# }
	.d2line		907
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L542:
	.type		Gpt_GetVersionInfo,@function
	.size		Gpt_GetVersionInfo,.-Gpt_GetVersionInfo
# Number of nodes = 28

# Allocations for Gpt_GetVersionInfo
#	?a4		versioninfo
# FUNC(void, GPT_CODE) Gpt_Init(P2CONST(Gpt_ConfigType, AUTOMATIC, GPT_APPL_CONST) configPtr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         938,22
#$$ld
.L551:

#$$bf	Gpt_Init,interprocedural,rasave,nostackparams
	.globl		Gpt_Init
	.d2_cfa_start __cie
Gpt_Init:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# configPtr=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# configPtr=r0 configPtr=r3
	.d2prologue_end
# {
#     VAR(Gpt_ChannelType, AUTOMATIC) channel;
# 
# #if (GPT_VALIDATE_GLOBAL_CALL == STD_ON)
#     /*Validate the calling context*/
#     if((Std_ReturnType)E_OK == Gpt_ValidateGlobalCall(GPT_INIT_ID))
#     {
# #endif
# #if (GPT_VALIDATE_PARAM  == STD_ON)
#         /*Validate configuration pointer parameter.*/
#         if((Std_ReturnType)E_OK == Gpt_ValidateParamPtrInit(configPtr))
#         {
# #endif
# 
# #if (GPT_PRECOMPILE_SUPPORT == STD_ON)
#             Gpt_pConfig = &Gpt_InitConfigPC;
#             (void)configPtr;
# #else
#             Gpt_pConfig = configPtr;
	.d2line		957
.Llo6:
	lis		r3,Gpt_pConfig@ha
.Llo7:
	e_add16i		r3,r3,Gpt_pConfig@l
	stw		r0,0(r3)		# configPtr=r0
# #endif
# 
#             /*Initialize for each channel the runtime status informations.*/
#             for (channel = 0U; channel < (Gpt_ChannelType)Gpt_pConfig->Gpt_uChannelCount; channel++)
	.d2line		961
	diab.li		r31,0		# channel=r31
.L416:
.Llo8:
	rlwinm		r5,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lbz		r0,0(r3)		# configPtr=r0
.Llo9:
	se_cmp		r5,r0		# configPtr=r0
	bc		0,0,.L418	# ge
#             {
# #if (GPT_ENABLE_DISABLE_NOTIFICATION_API == STD_ON)
#                 /*Disable notification*/
#                 Gpt_aChannelInfo[channel].bNotificationEnabled = (boolean)FALSE;
	.d2line		965
.Llo10:
	diab.li		r4,0
	lis		r3,(Gpt_aChannelInfo+4)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+4)@l
	rlwinm		r5,r31,3,21,28		# channel=r31
	stbux		r4,r3,r5
# #endif
# 
# #if ((GPT_WAKEUP_FUNCTIONALITY_API == STD_ON) && (GPT_REPORT_WAKEUP_SOURCE == STD_ON))
#                 /*Disable wakeup*/
#                 Gpt_aChannelInfo[channel].bWakeupEnabled = (boolean)FALSE;
	.d2line		970
	lis		r3,(Gpt_aChannelInfo+5)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+5)@l
	stbux		r4,r3,r5
#                 /*Clear wakeup generation status*/
#                 Gpt_aChannelInfo[channel].bWakeupGenerated = (boolean)FALSE;
	.d2line		972
	lis		r3,(Gpt_aChannelInfo+6)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+6)@l
	stbux		r4,r3,r5
# #endif
# 
#                 /* Initialize the running information of the channel*/
#                 Gpt_aChannelInfo[channel].eChannelStatus = GPT_STATUS_INITIALIZED;
	.d2line		976
	diab.li		r0,1		# configPtr=r0
.Llo11:
	lis		r3,Gpt_aChannelInfo@ha
	e_add16i		r3,r3,Gpt_aChannelInfo@l
	stwx		r0,r3,r5		# configPtr=r0
#                 Gpt_aStopTime[channel] = 0U;
	.d2line		977
	lis		r3,Gpt_aStopTime@ha
	e_add16i		r3,r3,Gpt_aStopTime@l
	rlwinm		r5,r31,2,22,29		# channel=r31
	stwx		r4,r3,r5
# 
#                 /*Initialize hardware timer channel.*/
#                 Gpt_Ipw_Init(&((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig));
	.d2line		980
	rlwinm		r5,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r0,r5,5,0,26		# configPtr=r0
	se_slwi		r5,2
	subf		r5,r5,r0		# configPtr=r0
	se_add		r3,r5
	se_addi		r3,20
	bl		Gpt_Ipw_Init
#             }
	.d2line		981
.Llo12:
	diab.addi		r5,r31,1		# channel=r31
	se_addi		r31,1		# channel=r31 channel=r31
	b		.L416
.L418:
# 
#             /*Set the driver to normal mode*/
#             Gpt_eMode = GPT_MODE_NORMAL;
	.d2line		984
.Llo13:
	diab.li		r3,0
	lis		r4,Gpt_eMode@ha
	e_add16i		r4,r4,Gpt_eMode@l
	stw		r3,0(r4)
# #if (GPT_VALIDATE_PARAM  == STD_ON)
#         }
# #endif
# #if (GPT_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif
#     return;
# }
	.d2line		992
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# configPtr=r0
	mtspr		lr,r0		# configPtr=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L552:
	.type		Gpt_Init,@function
	.size		Gpt_Init,.-Gpt_Init
# Number of nodes = 88

# Allocations for Gpt_Init
#	?a4		configPtr
#	?a5		$$93
#	?a6		channel
# FUNC(void, GPT_CODE) Gpt_DeInit(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1013,22
#$$ld
.L566:

#$$bf	Gpt_DeInit,interprocedural,rasave,nostackparams
	.globl		Gpt_DeInit
	.d2_cfa_start __cie
Gpt_DeInit:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Gpt_ChannelType, AUTOMATIC) channel;
# #if (GPT_VALIDATE_STATE  == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC) allChannelStatus = (Std_ReturnType)E_OK;
# #endif
# 
# #if (GPT_VALIDATE_GLOBAL_CALL == STD_ON)
#     /*Validate if the calling context is valid*/
#     if((Std_ReturnType)E_OK == Gpt_ValidateGlobalCall(GPT_DEINIT_ID))
#     {
# #endif
# 
# #if (GPT_VALIDATE_STATE  == STD_ON)
#         /* Initialize for each channel the runtime status informations.*/
#         for (channel = 0U; channel < (Gpt_ChannelType)Gpt_pConfig->Gpt_uChannelCount; channel++)
#         {
#             /*Check if the channel is not running.*/
#             if((Std_ReturnType)E_NOT_OK == Gpt_ValidateChannelStatus(GPT_DEINIT_ID,channel))
#             {
#                 allChannelStatus = (Std_ReturnType)E_NOT_OK;
#                 break;
#             }
#         }
#         if((Std_ReturnType)E_OK == allChannelStatus)
#         {
# #endif
#             for (channel = 0U; channel < (Gpt_ChannelType)Gpt_pConfig->Gpt_uChannelCount; channel++)
	.d2line		1040
	diab.li		r31,0		# channel=r31
.L422:
.Llo14:
	rlwinm		r0,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lbz		r3,0(r3)
	se_cmp		r0,r3
	bc		0,0,.L424	# ge
#             {
# #if (GPT_ENABLE_DISABLE_NOTIFICATION_API == STD_ON)
#                 /*Disable notification*/
#                 Gpt_aChannelInfo[channel].bNotificationEnabled = (boolean)FALSE;
	.d2line		1044
	diab.li		r30,0
	lis		r3,(Gpt_aChannelInfo+4)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+4)@l
	rlwinm		r0,r31,3,21,28		# channel=r31
	stbux		r30,r3,r0
# #endif
# 
# #if ((GPT_WAKEUP_FUNCTIONALITY_API == STD_ON) && (GPT_REPORT_WAKEUP_SOURCE == STD_ON))
#                 /*Disable wakeup*/
#                 Gpt_aChannelInfo[channel].bWakeupEnabled = (boolean)FALSE;
	.d2line		1049
	lis		r3,(Gpt_aChannelInfo+5)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+5)@l
	stbux		r30,r3,r0
#                 /*Clear wakeup generation status*/
#                 Gpt_aChannelInfo[channel].bWakeupGenerated = (boolean)FALSE;
	.d2line		1051
	lis		r3,(Gpt_aChannelInfo+6)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+6)@l
	stbx		r30,r3,r0
# #endif
#                 SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_00();
	.d2line		1053
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_00
#                 {
#                     /* De initialize the running information of the channel*/
#                     Gpt_aChannelInfo[channel].eChannelStatus = GPT_STATUS_UNINITIALIZED;
	.d2line		1056
	lis		r3,Gpt_aChannelInfo@ha
	e_add16i		r3,r3,Gpt_aChannelInfo@l
	rlwinm		r0,r31,3,21,28		# channel=r31
	stwx		r30,r3,r0
#                 }
#                 SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_00();
	.d2line		1058
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_00
#                 Gpt_aStopTime[channel] = 0U;
	.d2line		1059
	lis		r3,Gpt_aStopTime@ha
	e_add16i		r3,r3,Gpt_aStopTime@l
	rlwinm		r0,r31,2,22,29		# channel=r31
	stwx		r30,r3,r0
# 
#                 /*Initialize hardware timer channel.*/
#                 Gpt_Ipw_DeInit
	.d2line		1062
	rlwinm		r0,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r3
	se_add		r4,r0
	diab.addi		r3,r4,20
	bl		Gpt_Ipw_DeInit
#                 (
#                     &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)
#                 );
#             }
	.d2line		1066
	diab.addi		r0,r31,1		# channel=r31
	se_addi		r31,1		# channel=r31 channel=r31
	b		.L422
.L424:
# 
#             /* Writing NULL to configuration pointer is mandatory because that variable
#             is used to test the initialization of the driver */
#             Gpt_pConfig = NULL_PTR;
	.d2line		1070
.Llo15:
	diab.li		r3,0
	lis		r4,Gpt_pConfig@ha
	e_add16i		r4,r4,Gpt_pConfig@l
	stw		r3,0(r4)
# 
# #if (GPT_VALIDATE_STATE  == STD_ON)
#         }
# #endif
# 
# #if (GPT_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif
#     return;
# }
	.d2line		1080
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L567:
	.type		Gpt_DeInit,@function
	.size		Gpt_DeInit,.-Gpt_DeInit
# Number of nodes = 89

# Allocations for Gpt_DeInit
#	?a4		$$94
#	?a5		channel
# FUNC(Gpt_ValueType, GPT_CODE) Gpt_GetTimeElapsed(VAR(Gpt_ChannelType, AUTOMATIC) channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1112,31
#$$ld
.L573:

#$$bf	Gpt_GetTimeElapsed,interprocedural,rasave,nostackparams
	.globl		Gpt_GetTimeElapsed
	.d2_cfa_start __cie
Gpt_GetTimeElapsed:
.Llo16:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo24:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# returnValue=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# channel=r31 channel=r3
	.d2prologue_end
# {
#     VAR(Gpt_HwChannelInfoType, AUTOMATIC) returnHwChannelInfo;
#     VAR(Gpt_ValueType, AUTOMATIC) returnValue = (Gpt_ValueType)0;
	.d2line		1115
.Llo17:
	diab.li		r0,0		# returnValue=r0
# 
#     returnHwChannelInfo.bChannelRollover =(boolean)FALSE;
	.d2line		1117
.Llo18:
	stb		r0,8(r1)		# returnValue=r0
#     returnHwChannelInfo.uTargetTime =(Gpt_ValueType)0;
	.d2line		1118
	stw		r0,12(r1)		# returnValue=r0
# 
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Gpt_ValidateChannelCall(GPT_TIMEELAPSED_ID,channel))
#     {
# #endif
#         /*Gpt_Ipw_GetTimeElapsed() shall be called first, because the occurred ISRs can change
#         the logical channel state between the checking of logical channel state and timestamp
#         retrieval*/
#         /** @violates @ref GPT_C_REF_6  pointer to local variable used as function parameter*/
#         returnValue = Gpt_Ipw_GetTimeElapsed((&((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)), &returnHwChannelInfo);
	.d2line		1128
	rlwinm		r0,r31,0,24,31		# returnValue=r0 channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r4,r0,5,0,26		# returnValue=r0
	se_slwi		r0,2		# returnValue=r0 returnValue=r0
	subf		r0,r0,r4		# returnValue=r0 returnValue=r0
	se_add		r3,r0		# returnValue=r0
	se_addi		r3,20
	diab.addi		r4,r1,8
	bl		Gpt_Ipw_GetTimeElapsed
.Llo25:
	mr		r3,r3		# returnValue=r3 returnValue=r3
# 
#         /*Check the channel status*/
#         switch(Gpt_aChannelInfo[channel].eChannelStatus)
	.d2line		1131
.Llo26:
	lis		r4,Gpt_aChannelInfo@ha
	e_add16i		r4,r4,Gpt_aChannelInfo@l
	rlwinm		r0,r31,3,21,28		# returnValue=r0 channel=r31
	lwzx		r6,r4,r0
	se_cmpi		r6,1
	bc		1,2,.L431	# eq
	se_cmpi		r6,2
	bc		1,2,.L432	# eq
	se_cmpi		r6,3
	bc		1,2,.L433	# eq
	se_cmpi		r6,4
	bc		1,2,.L428	# eq
	b		.L430
.L428:
#         {
#             case GPT_STATUS_RUNNING:
#             {
#                 /*Check if channel counter has already rollover*/
#                 if (((boolean)TRUE == returnHwChannelInfo.bChannelRollover) && \
	.d2line		1136
	lbz		r0,8(r1)		# returnValue=r0
	se_cmpi		r0,1		# returnValue=r0
	bc		0,2,.L430	# ne
	rlwinm		r31,r31,0,24,31		# channel=r31 channel=r31
	lis		r4,Gpt_pConfig@ha
	lwz		r4,Gpt_pConfig@l(r4)
	lwz		r0,4(r4)		# returnValue=r0
	rlwinm		r4,r31,5,0,26		# channel=r31
	se_slwi		r31,2		# channel=r31 channel=r31
	subf		r31,r31,r4		# channel=r31 channel=r31
	se_add		r31,r0		# channel=r31 channel=r31 returnValue=r0
	lwz		r0,16(r31)		# returnValue=r0 channel=r31
	se_cmpi		r0,1		# returnValue=r0
	bc		0,2,.L430	# ne
#                     (GPT_CH_MODE_ONESHOT == (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_eChannelMode)
#                    )
#                 {
#                     /*The timer has already expired.The hardware timer status is not yet
#                     synchronised with the logical timer status*/
#                     returnValue = returnHwChannelInfo.uTargetTime;
	.d2line		1142
.Llo19:
	lwz		r3,12(r1)
	mr		r3,r3		# returnValue=r3 returnValue=r3
	b		.L430
.L431:
#                 }
#             }
#             break;
#             case GPT_STATUS_INITIALIZED:
#             {
#                 returnValue = (Gpt_ValueType)0;
	.d2line		1148
.Llo20:
	diab.li		r3,0		# returnValue=r3
	b		.L430
.L432:
#             }
#             break;
#             case GPT_STATUS_STOPPED:
#             {
#                 /*Return elapsed time at the when the channel was stopped*/
#                 returnValue = Gpt_aStopTime[channel];
	.d2line		1154
.Llo21:
	lis		r3,Gpt_aStopTime@ha
	e_add16i		r3,r3,Gpt_aStopTime@l
.Llo22:
	rlwinm		r31,r31,2,22,29		# channel=r31 channel=r31
	se_add		r3,r31		# channel=r31
	lwzx		r3,r0,r3		# returnValue=r0
	mr		r3,r3		# returnValue=r3 returnValue=r3
	b		.L430
.L433:
#             }
#             break;
#             case GPT_STATUS_EXPIRED:
#             {
#                 returnValue = returnHwChannelInfo.uTargetTime;
	.d2line		1159
	lwz		r3,12(r1)
	mr		r3,r3		# returnValue=r3 returnValue=r3
.L430:
#             }
#             break;
#             default:
#                 /*Only the above four channel states are allowed when this function is called*/
#                 break;
#         }
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     }
# #endif
# 
#     return (returnValue);
	.d2line		1170
.Llo23:
	mr		r3,r3		# returnValue=r3 returnValue=r3
# }
	.d2line		1171
	.d2epilogue_begin
.Llo27:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# returnValue=r0
	mtspr		lr,r0		# returnValue=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L574:
	.type		Gpt_GetTimeElapsed,@function
	.size		Gpt_GetTimeElapsed,.-Gpt_GetTimeElapsed
# Number of nodes = 95

# Allocations for Gpt_GetTimeElapsed
#	?a4		channel
#	?a5		$$96
#	?a6		$$95
#	SP,8		returnHwChannelInfo
#	?a7		returnValue
# FUNC(Gpt_ValueType, GPT_CODE) Gpt_GetTimeRemaining(VAR(Gpt_ChannelType, AUTOMATIC) channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1201,31
#$$ld
.L587:

#$$bf	Gpt_GetTimeRemaining,interprocedural,rasave,nostackparams
	.globl		Gpt_GetTimeRemaining
	.d2_cfa_start __cie
Gpt_GetTimeRemaining:
.Llo28:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo36:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# returnValue=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# channel=r31 channel=r3
	.d2prologue_end
# {
#     VAR(Gpt_HwChannelInfoType, AUTOMATIC) returnHwChannelInfo;
#     VAR(Gpt_ValueType, AUTOMATIC) returnValue = (Gpt_ValueType)0;
	.d2line		1204
.Llo29:
	diab.li		r0,0		# returnValue=r0
# 
#     returnHwChannelInfo.bChannelRollover =(boolean)FALSE;
	.d2line		1206
.Llo30:
	stb		r0,8(r1)		# returnValue=r0
#     returnHwChannelInfo.uTargetTime =(Gpt_ValueType)0;
	.d2line		1207
	stw		r0,12(r1)		# returnValue=r0
# 
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Gpt_ValidateChannelCall(GPT_TIMEREMAINING_ID,channel))
#     {
# #endif
# 
#         /* Calculate the remaining time from the elapsed time*/
#         /* Gpt_Ipw_GetTimeElapsed() shall be called first, because the occurred ISRs can
#         change the logical channel state between the checking of logical channel state
#         and timestamps retrieval*/
#         /** @violates @ref GPT_C_REF_6 pointer to local variable used as function parameter*/
#         returnValue = Gpt_Ipw_GetTimeElapsed((&((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)), &returnHwChannelInfo);
	.d2line		1219
	rlwinm		r0,r31,0,24,31		# returnValue=r0 channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r4,r0,5,0,26		# returnValue=r0
	se_slwi		r0,2		# returnValue=r0 returnValue=r0
	subf		r0,r0,r4		# returnValue=r0 returnValue=r0
	se_add		r3,r0		# returnValue=r0
	se_addi		r3,20
	diab.addi		r4,r1,8
	bl		Gpt_Ipw_GetTimeElapsed
.Llo37:
	mr		r3,r3		# returnValue=r3 returnValue=r3
# 
#         /*Check the channel status*/
#         switch(Gpt_aChannelInfo[channel].eChannelStatus)
	.d2line		1222
.Llo38:
	lis		r4,Gpt_aChannelInfo@ha
	e_add16i		r4,r4,Gpt_aChannelInfo@l
	rlwinm		r0,r31,3,21,28		# returnValue=r0 channel=r31
	lwzx		r6,r4,r0
	se_cmpi		r6,1
	bc		1,2,.L445	# eq
	se_cmpi		r6,2
	bc		1,2,.L446	# eq
	se_cmpi		r6,3
	bc		1,2,.L447	# eq
	se_cmpi		r6,4
	bc		1,2,.L441	# eq
	b		.L444
.L441:
#         {
#             case GPT_STATUS_RUNNING:
#             {
#                 /*Check if channel counter has already roll-over*/
#                 if(((boolean)TRUE == returnHwChannelInfo.bChannelRollover) && \
	.d2line		1227
	lbz		r0,8(r1)		# returnValue=r0
	se_cmpi		r0,1		# returnValue=r0
	bc		0,2,.L442	# ne
	rlwinm		r31,r31,0,24,31		# channel=r31 channel=r31
	lis		r4,Gpt_pConfig@ha
	lwz		r4,Gpt_pConfig@l(r4)
	lwz		r0,4(r4)		# returnValue=r0
	rlwinm		r4,r31,5,0,26		# channel=r31
	se_slwi		r31,2		# channel=r31 channel=r31
	subf		r31,r31,r4		# channel=r31 channel=r31
	se_add		r31,r0		# channel=r31 channel=r31 returnValue=r0
	lwz		r0,16(r31)		# returnValue=r0 channel=r31
	se_cmpi		r0,1		# returnValue=r0
	bc		0,2,.L442	# ne
#                    (GPT_CH_MODE_ONESHOT == (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_eChannelMode)
#                   )
#                 {
#                     /*The timer has already expired.The hardware timer status is not yet
#                     synchronised with the logical timer status*/
#                     returnValue = (Gpt_ValueType)0;
	.d2line		1233
.Llo31:
	diab.li		r3,0		# returnValue=r3
	b		.L444
.L442:
#                 }
#                 else
#                 {
#                     /*Calculate remaining time from elapsed time*/
#                     returnValue = returnHwChannelInfo.uTargetTime - returnValue;
	.d2line		1238
.Llo32:
	lwz		r0,12(r1)		# returnValue=r0
	subf		r3,r3,r0		# returnValue=r3 returnValue=r3 returnValue=r0
	mr		r0,r3		# returnValue=r0 returnValue=r3
	b		.L444
.L445:
#                 }
#             }
#             break;
#             case GPT_STATUS_INITIALIZED:
#             {
#                 returnValue = (Gpt_ValueType)0;
	.d2line		1244
	diab.li		r3,0		# returnValue=r3
	b		.L444
.L446:
#             }
#             break;
#             case GPT_STATUS_STOPPED:
#             {
#                 returnValue = returnHwChannelInfo.uTargetTime-Gpt_aStopTime[channel];
	.d2line		1249
.Llo33:
	lwz		r0,12(r1)		# returnValue=r0
	lis		r3,Gpt_aStopTime@ha
	e_add16i		r3,r3,Gpt_aStopTime@l
.Llo34:
	rlwinm		r31,r31,2,22,29		# channel=r31 channel=r31
	se_add		r3,r31		# channel=r31
	lwzx		r3,r0,r3		# returnValue=r0
	subf		r3,r3,r0		# returnValue=r0
	mr		r3,r3		# returnValue=r3 returnValue=r3
	b		.L444
.L447:
#             }
#             break;
#             case GPT_STATUS_EXPIRED:
#             {
#                 returnValue = (Gpt_ValueType)0;
	.d2line		1254
	diab.li		r3,0		# returnValue=r3
.L444:
#             }
#             break;
#             default:
#                 /*Only the above four channel states are allowed when this function is called*/
#                 break;
#         }
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     }
# #endif
# 
#     return(returnValue);
	.d2line		1265
.Llo35:
	mr		r3,r3		# returnValue=r3 returnValue=r3
# }
	.d2line		1266
	.d2epilogue_begin
.Llo39:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# returnValue=r0
	mtspr		lr,r0		# returnValue=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L588:
	.type		Gpt_GetTimeRemaining,@function
	.size		Gpt_GetTimeRemaining,.-Gpt_GetTimeRemaining
# Number of nodes = 103

# Allocations for Gpt_GetTimeRemaining
#	?a4		channel
#	?a5		$$98
#	?a6		$$97
#	SP,8		returnHwChannelInfo
#	?a7		returnValue
# FUNC(void, GPT_CODE) Gpt_StartTimer
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1299,22
#$$ld
.L596:

#$$bf	Gpt_StartTimer,interprocedural,rasave,nostackparams
	.globl		Gpt_StartTimer
	.d2_cfa_start __cie
Gpt_StartTimer:
.Llo40:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# channel=r31 channel=r3
	mr		r30,r4		# value=r30 value=r4
	.d2prologue_end
# (
#     VAR(Gpt_ChannelType,    AUTOMATIC) channel,
#     VAR(Gpt_ValueType,      AUTOMATIC) value
# )
# {
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Gpt_ValidateChannelCall(GPT_STARTTIMER_ID,channel))
#     {
# #endif
# #if (GPT_VALIDATE_STATE == STD_ON)
#         if ((Std_ReturnType)E_OK == Gpt_ValidateChannelStatus(GPT_STARTTIMER_ID,channel))
#         {
# #endif
# #if (GPT_VALIDATE_PARAM  == STD_ON)
#             if ((Std_ReturnType)E_OK == Gpt_ValidateParamValue(GPT_STARTTIMER_ID,channel,value))
#             {
# #endif
#                 /*Enable hardware interrupts for the one-shot mode to set the status of  channel*/
#                 if (GPT_CH_MODE_ONESHOT == (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_eChannelMode)
	.d2line		1318
	rlwinm		r0,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
.Llo41:
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r4,r0,5,0,26
.Llo44:
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	lwz		r0,16(r3)
	se_cmpi		r0,1
	bc		0,2,.L456	# ne
#                 {
#                     Gpt_Ipw_EnableInterrupt
	.d2line		1320
.Llo42:
	rlwinm		r0,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	se_addi		r3,20
	bl		Gpt_Ipw_EnableInterrupt
.L456:
#                     (
#                         &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)
#                     );
#                 }
# 
#                 /* Call low level start timer */
#                 Gpt_Ipw_StartTimer
	.d2line		1327
	rlwinm		r0,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	se_addi		r3,20
	mr		r4,r30		# value=r4 value=r30
	bl		Gpt_Ipw_StartTimer
#                 (
#                     &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig),value
#                 );
# 
#                 /* Change GPT channel status.Channel status change shall be made before to start
#                 the hardware in order to not change the channel status from EXPIRED to RUNNING*/
#                 SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_01();
	.d2line		1334
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_01
#                 {
#                     Gpt_aChannelInfo[channel].eChannelStatus = GPT_STATUS_RUNNING;
	.d2line		1336
	diab.li		r0,4
	lis		r3,Gpt_aChannelInfo@ha
	e_add16i		r3,r3,Gpt_aChannelInfo@l
	rlwinm		r31,r31,3,21,28		# channel=r31 channel=r31
.Llo43:
	stwx		r0,r3,r31
#                 }
#                 SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_01();
	.d2line		1338
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_01
# 
# #if (GPT_VALIDATE_PARAM  == STD_ON)
#             }
# #endif
# #if (GPT_VALIDATE_STATE == STD_ON)
#         }
# #endif
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     }
# #endif
#     return;
# }
	.d2line		1350
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo45:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L597:
	.type		Gpt_StartTimer,@function
	.size		Gpt_StartTimer,.-Gpt_StartTimer
# Number of nodes = 58

# Allocations for Gpt_StartTimer
#	?a4		channel
#	?a5		value
#	?a6		$$101
#	?a7		$$100
#	?a8		$$99
# FUNC(void, GPT_CODE) Gpt_StopTimer(VAR(Gpt_ChannelType, AUTOMATIC) channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1370,22
#$$ld
.L603:

#$$bf	Gpt_StopTimer,interprocedural,rasave,nostackparams
	.globl		Gpt_StopTimer
	.d2_cfa_start __cie
Gpt_StopTimer:
.Llo46:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# channel=r31 channel=r3
	.d2prologue_end
# {
#     VAR(Gpt_HwChannelInfoType, AUTOMATIC) returnHwChannelInfo;
#     VAR(Gpt_ValueType, AUTOMATIC) uElapsedTime;
# 
#     returnHwChannelInfo.bChannelRollover =(boolean)FALSE;
	.d2line		1375
.Llo47:
	diab.li		r0,0
.Llo48:
	stb		r0,8(r1)
#     returnHwChannelInfo.uTargetTime =(Gpt_ValueType)0;
	.d2line		1376
	stw		r0,12(r1)
# 
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Gpt_ValidateChannelCall(GPT_STOPTIMER_ID,channel))
#     {
# #endif
#         /*Gpt_Ipw_GetTimeElapsed() shall be called first, because the occurred ISRs can change
#         the logical channel state between the checking of logical channel state and timestamps
#         retrieval*/
#         /* Get the elapsed  time  for later use by other API calls*/
# 
#         /** @violates @ref GPT_C_REF_6 pointer to local variable used as function parameter*/
#         uElapsedTime = Gpt_Ipw_GetTimeElapsed((&((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)), &returnHwChannelInfo);
	.d2line		1388
	rlwinm		r0,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	se_addi		r3,20
	diab.addi		r4,r1,8
	bl		Gpt_Ipw_GetTimeElapsed
.Llo54:
	mr		r30,r3		# uElapsedTime=r30 uElapsedTime=r3
# 
#         /*Check the logical cchannel status*/
#         if (GPT_STATUS_RUNNING == Gpt_aChannelInfo[channel].eChannelStatus)
	.d2line		1391
	lis		r3,Gpt_aChannelInfo@ha
.Llo55:
	e_add16i		r3,r3,Gpt_aChannelInfo@l
	rlwinm		r0,r31,3,21,28		# channel=r31
	lwzx		r0,r3,r0
	se_cmpi		r0,4
	bc		0,2,.L458	# ne
#         {
#             /* Call low level stop timer */
#             Gpt_Ipw_StopTimer(&((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig));
	.d2line		1394
.Llo56:
	rlwinm		r0,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	se_addi		r3,20
	bl		Gpt_Ipw_StopTimer
#             
#             SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_02();
	.d2line		1396
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_02
#             {
#                 if (((boolean)TRUE == returnHwChannelInfo.bChannelRollover) && \
	.d2line		1398
	lbz		r0,8(r1)
	se_cmpi		r0,1
	bc		0,2,.L460	# ne
	rlwinm		r0,r31,0,24,31		# channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	lwz		r0,16(r3)
	se_cmpi		r0,1
	bc		0,2,.L460	# ne
#                     (GPT_CH_MODE_ONESHOT == (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_eChannelMode)
#                 )
#                 {
#                     /*This action could be executed only when the function is called during a critical
#                     section implemented by disabling all interrupts*/
#                     /*Set channel status to EXPIRED*/
#                     Gpt_aChannelInfo[channel].eChannelStatus = GPT_STATUS_EXPIRED;
	.d2line		1405
.Llo49:
	diab.li		r0,3
	lis		r3,Gpt_aChannelInfo@ha
	e_add16i		r3,r3,Gpt_aChannelInfo@l
.Llo50:
	rlwinm		r31,r31,3,21,28		# channel=r31 channel=r31
.Llo51:
	stwx		r0,r3,r31
	b		.L461
.L460:
#                 }
#                 else
#                 {
#                     /* Store the stopping time for later use by other API calls*/
#                     Gpt_aStopTime[channel] = uElapsedTime;
	.d2line		1410
.Llo52:
	lis		r3,Gpt_aStopTime@ha
	e_add16i		r3,r3,Gpt_aStopTime@l
	rlwinm		r0,r31,2,22,29		# channel=r31
	se_add		r0,r3
	stwx		r30,r0,r0		# uElapsedTime=r30
#     
#                     /* Set GPT channel status to stopped*/
#                     Gpt_aChannelInfo[channel].eChannelStatus = GPT_STATUS_STOPPED;
	.d2line		1413
	diab.li		r0,2
	lis		r3,Gpt_aChannelInfo@ha
	e_add16i		r3,r3,Gpt_aChannelInfo@l
	rlwinm		r31,r31,3,21,28		# channel=r31 channel=r31
.Llo53:
	stwx		r0,r3,r31
.L461:
#                 }
#             }
#             SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_02();           
	.d2line		1416
.Llo57:
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_02
.L458:
#         }
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     }
# #endif
#     return;
# }
	.d2line		1422
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L604:
	.type		Gpt_StopTimer,@function
	.size		Gpt_StopTimer,.-Gpt_StopTimer
# Number of nodes = 110

# Allocations for Gpt_StopTimer
#	?a4		channel
#	?a5		$$104
#	?a6		$$103
#	?a7		$$102
#	SP,8		returnHwChannelInfo
#	?a8		uElapsedTime
# FUNC(void, GPT_CODE) Gpt_EnableNotification(VAR(Gpt_ChannelType, AUTOMATIC) channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1443,22
#$$ld
.L612:

#$$bf	Gpt_EnableNotification,interprocedural,rasave,nostackparams
	.globl		Gpt_EnableNotification
	.d2_cfa_start __cie
Gpt_EnableNotification:
.Llo58:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# channel=r5 channel=r3
	.d2prologue_end
# {
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Gpt_ValidateChannelCall(GPT_ENABLENOTIFICATION_ID,channel))
#     {
# #endif
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         if ((Std_ReturnType)E_OK == Gpt_ValidateChannelNotification(GPT_ENABLENOTIFICATION_ID,channel))
#         {
# #endif
#             /* Set the enable notification attribute */
#             Gpt_aChannelInfo[channel].bNotificationEnabled = (boolean)TRUE;
	.d2line		1454
.Llo59:
	diab.li		r0,1
.Llo60:
	lis		r3,(Gpt_aChannelInfo+4)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+4)@l
	rlwinm		r4,r5,3,21,28		# channel=r5
	stbx		r0,r3,r4
# 
#             if (GPT_MODE_NORMAL == Gpt_eMode)
	.d2line		1456
	lis		r3,Gpt_eMode@ha
	lwz		r0,Gpt_eMode@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L465	# ne
#             {
#                 /*Enable hardware interrupts*/
#                 Gpt_Ipw_EnableInterrupt(&((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig));
	.d2line		1459
	rlwinm		r5,r5,0,24,31		# channel=r5 channel=r5
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r0,r5,5,0,26		# channel=r5
	se_slwi		r5,2		# channel=r5 channel=r5
	subf		r5,r5,r0		# channel=r5 channel=r5
	se_add		r3,r5		# channel=r5
	se_addi		r3,20
	bl		Gpt_Ipw_EnableInterrupt
.L465:
#             }
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         }
# #endif
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     }
# #endif
# 
#     return;
# }
	.d2line		1469
	.d2epilogue_begin
.Llo61:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L613:
	.type		Gpt_EnableNotification,@function
	.size		Gpt_EnableNotification,.-Gpt_EnableNotification
# Number of nodes = 29

# Allocations for Gpt_EnableNotification
#	?a4		channel
#	?a5		$$105
# FUNC(void, GPT_CODE) Gpt_DisableNotification(VAR(Gpt_ChannelType, AUTOMATIC) channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1492,22
#$$ld
.L618:

#$$bf	Gpt_DisableNotification,interprocedural,rasave,nostackparams
	.globl		Gpt_DisableNotification
	.d2_cfa_start __cie
Gpt_DisableNotification:
.Llo62:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# channel=r5 channel=r3
	.d2prologue_end
# {
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Gpt_ValidateChannelCall(GPT_DISABLENOTIFICATION_ID,channel))
#     {
# #endif
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         if ((Std_ReturnType)E_OK == Gpt_ValidateChannelNotification(GPT_DISABLENOTIFICATION_ID,channel))
#         {
# #endif
#             /* Set the enable notification attribute */
#             Gpt_aChannelInfo[channel].bNotificationEnabled = (boolean)FALSE;
	.d2line		1503
.Llo63:
	diab.li		r0,0
.Llo64:
	lis		r3,(Gpt_aChannelInfo+4)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+4)@l
	rlwinm		r4,r5,3,21,28		# channel=r5
	stbx		r0,r3,r4
# 
#             /* Disable hardware interrupts if the channel is not running in the ONE-SHUT mode.
#             This is needed because the channel state is updated by ISR for ONE-SHOT mode */
#             if ((GPT_MODE_NORMAL == Gpt_eMode) && \
	.d2line		1507
	lis		r3,Gpt_eMode@ha
	lwz		r0,Gpt_eMode@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L468	# ne
	rlwinm		r4,r5,0,24,31		# channel=r5
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r0,4(r3)
	rlwinm		r3,r4,5,0,26
	se_slwi		r4,2
	subf		r4,r4,r3
	se_add		r4,r0
	lwz		r0,16(r4)
	se_cmpi		r0,0
	bc		1,2,.L470	# eq
	lis		r3,Gpt_aChannelInfo@ha
	e_add16i		r3,r3,Gpt_aChannelInfo@l
	rlwinm		r4,r5,3,21,28		# channel=r5
	lwzx		r0,r3,r4
	se_cmpi		r0,4
	bc		1,2,.L468	# eq
.L470:
#                 ((GPT_CH_MODE_CONTINUOUS == (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_eChannelMode) \
#                  || (GPT_STATUS_RUNNING != Gpt_aChannelInfo[channel].eChannelStatus)
#                 )
#                )
#             {
#                 /*Disable hardware interrupts*/
#                 Gpt_Ipw_DisableInterrupt
	.d2line		1514
	rlwinm		r5,r5,0,24,31		# channel=r5 channel=r5
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r0,r5,5,0,26		# channel=r5
	se_slwi		r5,2		# channel=r5 channel=r5
	subf		r5,r5,r0		# channel=r5 channel=r5
	se_add		r3,r5		# channel=r5
	se_addi		r3,20
	bl		Gpt_Ipw_DisableInterrupt
.L468:
#                 (
#                     &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)
#                 );
#             }
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         }
# #endif
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     }
# #endif
#     return;
# }
	.d2line		1526
	.d2epilogue_begin
.Llo65:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L619:
	.type		Gpt_DisableNotification,@function
	.size		Gpt_DisableNotification,.-Gpt_DisableNotification
# Number of nodes = 53

# Allocations for Gpt_DisableNotification
#	?a4		channel
#	?a5		$$107
#	?a6		$$106
# FUNC(void, GPT_CODE) Gpt_SetMode(VAR(Gpt_ModeType, AUTOMATIC) eMode)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1548,22
#$$ld
.L624:

#$$bf	Gpt_SetMode,interprocedural,rasave,nostackparams
	.globl		Gpt_SetMode
	.d2_cfa_start __cie
Gpt_SetMode:
.Llo66:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo104:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# uElapsedTime=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# eMode=r3 eMode=r3
	.d2prologue_end
# {
# #if (GPT_REPORT_WAKEUP_SOURCE == STD_OFF)
#     (void)eMode;
# #endif
# 
# #if (GPT_REPORT_WAKEUP_SOURCE == STD_ON)
#     VAR(Gpt_HwChannelInfoType, AUTOMATIC) returnHwChannelInfo;
#     VAR(Gpt_ValueType, AUTOMATIC) uElapsedTime = 0U;
	.d2line		1556
	diab.li		r0,0		# uElapsedTime=r0
#     VAR(Gpt_ChannelType, AUTOMATIC) channel;
# 
#     returnHwChannelInfo.bChannelRollover =(boolean)FALSE;
	.d2line		1559
	stb		r0,8(r1)		# uElapsedTime=r0
#     returnHwChannelInfo.uTargetTime =(Gpt_ValueType)0;
	.d2line		1560
	stw		r0,12(r1)		# uElapsedTime=r0
#     
# #if (GPT_VALIDATE_GLOBAL_CALL == STD_ON)
#     /*Validate the driver calling context*/
#     if((Std_ReturnType)E_OK == Gpt_ValidateGlobalCall(GPT_SETMODE_ID))
#     {
# #endif
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         if((Std_ReturnType)E_OK == Gpt_ValidateParamMode(eMode))
#         {
# #endif
#             /*Implements the behaviour for the sleep mode*/
#             if(GPT_MODE_SLEEP == eMode)
	.d2line		1572
	se_cmpi		r3,1		# eMode=r3
	bc		0,2,.L474	# ne
#             {
#                 for (channel = 0U; channel < (Gpt_ChannelType)Gpt_pConfig->Gpt_uChannelCount; channel++)
	.d2line		1574
.Llo105:
	diab.li		r30,0		# channel=r30
.L475:
.Llo67:
	rlwinm		r0,r30,0,24,31		# uElapsedTime=r0 channel=r30
.Llo106:
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo68:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lbz		r3,0(r3)		# eMode=r3 eMode=r3
	se_cmp		r0,r3		# uElapsedTime=r0 eMode=r3
	bc		0,0,.L477	# ge
#                 {
#                     /* Check for wakeup enabled channel*/
#                     if ((boolean)TRUE == Gpt_aChannelInfo[channel].bWakeupEnabled)
	.d2line		1577
.Llo69:
	lis		r3,(Gpt_aChannelInfo+5)@ha		# eMode=r3
.Llo70:
	e_add16i		r3,r3,(Gpt_aChannelInfo+5)@l		# eMode=r3 eMode=r3
	rlwinm		r0,r30,3,21,28		# uElapsedTime=r0 channel=r30
.Llo107:
	lbzx		r0,r3,r0		# uElapsedTime=r0 eMode=r3
	se_cmpi		r0,1		# uElapsedTime=r0
	bc		0,2,.L478	# ne
#                     {
#                         /*Enable hardware interrupts*/
#                         Gpt_Ipw_EnableInterrupt
	.d2line		1580
.Llo71:
	rlwinm		r0,r30,0,24,31		# uElapsedTime=r0 channel=r30
.Llo108:
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo72:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	rlwinm		r4,r0,5,0,26		# uElapsedTime=r0
	se_slwi		r0,2		# uElapsedTime=r0 uElapsedTime=r0
	subf		r0,r0,r4		# uElapsedTime=r0 uElapsedTime=r0
	se_add		r3,r0		# eMode=r3 eMode=r3 uElapsedTime=r0
	se_addi		r3,20		# eMode=r3 eMode=r3
.Llo73:
	bl		Gpt_Ipw_EnableInterrupt
.Llo109:
	b		.L479
.L478:
#                         (
#                             &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)
#                         );
#                     }
#                     /* Disable interrupts and stop the channel*/
#                     else
#                     {
#                         /*Disable hardware interrupts*/
#                         Gpt_Ipw_DisableInterrupt
	.d2line		1589
	rlwinm		r0,r30,0,24,31		# uElapsedTime=r0 channel=r30
.Llo110:
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo74:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	rlwinm		r4,r0,5,0,26		# uElapsedTime=r0
	se_slwi		r0,2		# uElapsedTime=r0 uElapsedTime=r0
	subf		r0,r0,r4		# uElapsedTime=r0 uElapsedTime=r0
	se_add		r3,r0		# eMode=r3 eMode=r3 uElapsedTime=r0
	se_addi		r3,20		# eMode=r3 eMode=r3
.Llo75:
	bl		Gpt_Ipw_DisableInterrupt
#                         (
#                             (&((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig))
#                         );
# 
#                         /*Gpt_Ipw_GetTimeElapsed() shall be called first, because the occurred ISRs
#                         can change the logical channel state between the checking of logical channel
#                         state and timestamp retrieval*/
#                         /* Get the elapsed  time  for later use by other API calls*/
# 
#                         /** @violates @ref GPT_C_REF_6  pointer to local variable used
#                         as function parameter*/
#                         uElapsedTime = Gpt_Ipw_GetTimeElapsed((&((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)), &returnHwChannelInfo);
	.d2line		1601
.Llo111:
	rlwinm		r0,r30,0,24,31		# uElapsedTime=r0 channel=r30
.Llo112:
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo76:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	rlwinm		r4,r0,5,0,26		# uElapsedTime=r0
	se_slwi		r0,2		# uElapsedTime=r0 uElapsedTime=r0
	subf		r0,r0,r4		# uElapsedTime=r0 uElapsedTime=r0
	se_add		r3,r0		# eMode=r3 eMode=r3 uElapsedTime=r0
	se_addi		r3,20		# eMode=r3 eMode=r3
.Llo77:
	diab.addi		r4,r1,8
	bl		Gpt_Ipw_GetTimeElapsed
.Llo113:
	mr		r31,r3		# uElapsedTime=r31 uElapsedTime=r3
# 
#                         /*Stop  the running timer*/
#                         if (GPT_STATUS_RUNNING == Gpt_aChannelInfo[channel].eChannelStatus)
	.d2line		1604
.Llo114:
	lis		r3,Gpt_aChannelInfo@ha		# eMode=r3
.Llo78:
	e_add16i		r3,r3,Gpt_aChannelInfo@l		# eMode=r3 eMode=r3
	rlwinm		r0,r30,3,21,28		# uElapsedTime=r0 channel=r30
.Llo115:
	lwzx		r0,r3,r0		# uElapsedTime=r0 eMode=r3
	se_cmpi		r0,4		# uElapsedTime=r0
	bc		0,2,.L479	# ne
#                         {
#                             SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_03();
	.d2line		1606
.Llo79:
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_03
#                             {
#                                 if (((boolean)TRUE == returnHwChannelInfo.bChannelRollover) && \
	.d2line		1608
.Llo116:
	lbz		r0,8(r1)		# uElapsedTime=r0
	se_cmpi		r0,1		# uElapsedTime=r0
	bc		0,2,.L481	# ne
	rlwinm		r0,r30,0,24,31		# uElapsedTime=r0 channel=r30
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo80:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	rlwinm		r4,r0,5,0,26		# uElapsedTime=r0
	se_slwi		r0,2		# uElapsedTime=r0 uElapsedTime=r0
	subf		r0,r0,r4		# uElapsedTime=r0 uElapsedTime=r0
	se_add		r3,r0		# eMode=r3 eMode=r3 uElapsedTime=r0
	lwz		r0,16(r3)		# uElapsedTime=r0 eMode=r3
	se_cmpi		r0,1		# uElapsedTime=r0
	bc		0,2,.L481	# ne
#                                     (GPT_CH_MODE_ONESHOT == (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_eChannelMode)
#                                 )
#                                 {
#                                     /*This action could be executed only when the function is called
#                                     during a critical section implemented by disabling all interrupts*/
#                                     /*Set the channel status to EXPIRED*/
#                                     Gpt_aChannelInfo[channel].eChannelStatus = GPT_STATUS_EXPIRED;
	.d2line		1615
.Llo81:
	diab.li		r0,3		# uElapsedTime=r0
	lis		r3,Gpt_aChannelInfo@ha		# eMode=r3
.Llo82:
	e_add16i		r3,r3,Gpt_aChannelInfo@l		# eMode=r3 eMode=r3
	rlwinm		r4,r30,3,21,28		# channel=r30
	stwx		r0,r3,r4		# eMode=r3 uElapsedTime=r0
	b		.L482
.L481:
#                                 }
#                                 else
#                                 {
#                                     /* Store the stopping time for later use by other API calls*/
#                                     Gpt_aStopTime[channel] = uElapsedTime;
	.d2line		1620
.Llo83:
	lis		r3,Gpt_aStopTime@ha		# eMode=r3
.Llo84:
	e_add16i		r3,r3,Gpt_aStopTime@l		# eMode=r3 eMode=r3
	rlwinm		r0,r30,2,22,29		# uElapsedTime=r0 channel=r30
	se_add		r0,r3		# uElapsedTime=r0 uElapsedTime=r0 eMode=r3
	stwx		r31,r0,r0		# uElapsedTime=r0 uElapsedTime=r31
#                                     /* Set the channel status to STOPPED*/
#                                     Gpt_aChannelInfo[channel].eChannelStatus = GPT_STATUS_STOPPED;
	.d2line		1622
	diab.li		r0,2		# uElapsedTime=r0
	lis		r3,Gpt_aChannelInfo@ha		# eMode=r3
	e_add16i		r3,r3,Gpt_aChannelInfo@l		# eMode=r3 eMode=r3
	rlwinm		r4,r30,3,21,28		# channel=r30
	stwx		r0,r3,r4		# eMode=r3 uElapsedTime=r0
.L482:
#                                 }
#                             }
#                             SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_03();
	.d2line		1625
.Llo85:
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_03
#                             /* Call low level stop timer */
#                             Gpt_Ipw_StopTimer
	.d2line		1627
	rlwinm		r0,r30,0,24,31		# uElapsedTime=r0 channel=r30
.Llo117:
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo86:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	rlwinm		r4,r0,5,0,26		# uElapsedTime=r0
	se_slwi		r0,2		# uElapsedTime=r0 uElapsedTime=r0
	subf		r0,r0,r4		# uElapsedTime=r0 uElapsedTime=r0
	se_add		r3,r0		# eMode=r3 eMode=r3 uElapsedTime=r0
	se_addi		r3,20		# eMode=r3 eMode=r3
.Llo87:
	bl		Gpt_Ipw_StopTimer
.L479:
#                             (
#                                 &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)
#                             );
#                         }
#                     }
#                 }
	.d2line		1633
.Llo118:
	diab.addi		r0,r30,1		# uElapsedTime=r0 channel=r30
.Llo119:
	se_addi		r30,1		# channel=r30 channel=r30
	b		.L475
.L477:
#                 
# 
#                 /*Set the driver mode to sleep */
#                 Gpt_eMode = GPT_MODE_SLEEP;
	.d2line		1637
.Llo120:
	diab.li		r0,1		# uElapsedTime=r0
.Llo121:
	lis		r3,Gpt_eMode@ha		# eMode=r3
.Llo88:
	e_add16i		r3,r3,Gpt_eMode@l		# eMode=r3 eMode=r3
	stw		r0,0(r3)		# eMode=r3 uElapsedTime=r0
	b		.L473
.L474:
#             }
#             else if (GPT_MODE_NORMAL == eMode)
	.d2line		1639
.Llo122:
	se_cmpi		r3,0		# eMode=r3
	bc		0,2,.L473	# ne
#             {
#                                 /*Implements the behavior for normal mode*/
#                 for (channel = 0U; channel < (Gpt_ChannelType)Gpt_pConfig->Gpt_uChannelCount; channel++)
	.d2line		1642
.Llo89:
	diab.li		r31,0		# channel=r31
.L485:
.Llo132:
	rlwinm		r0,r31,0,24,31		# uElapsedTime=r0 channel=r31
.Llo123:
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo90:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lbz		r3,0(r3)		# eMode=r3 eMode=r3
	se_cmp		r0,r3		# uElapsedTime=r0 eMode=r3
	bc		0,0,.L487	# ge
#                 {
# #if (GPT_ENABLE_DISABLE_NOTIFICATION_API == STD_ON)
#                     if ((boolean)TRUE == Gpt_aChannelInfo[channel].bNotificationEnabled)
	.d2line		1645
.Llo91:
	lis		r3,(Gpt_aChannelInfo+4)@ha		# eMode=r3
.Llo92:
	e_add16i		r3,r3,(Gpt_aChannelInfo+4)@l		# eMode=r3 eMode=r3
	rlwinm		r0,r31,3,21,28		# uElapsedTime=r0 channel=r31
.Llo124:
	lbzx		r0,r3,r0		# uElapsedTime=r0 eMode=r3
	se_cmpi		r0,1		# uElapsedTime=r0
	bc		0,2,.L488	# ne
#                     {
#                         /*Enable hardware interrupts*/
#                         Gpt_Ipw_EnableInterrupt
	.d2line		1648
.Llo93:
	rlwinm		r0,r31,0,24,31		# uElapsedTime=r0 channel=r31
.Llo125:
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo94:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	rlwinm		r4,r0,5,0,26		# uElapsedTime=r0
	se_slwi		r0,2		# uElapsedTime=r0 uElapsedTime=r0
	subf		r0,r0,r4		# uElapsedTime=r0 uElapsedTime=r0
	se_add		r3,r0		# eMode=r3 eMode=r3 uElapsedTime=r0
	se_addi		r3,20		# eMode=r3 eMode=r3
.Llo95:
	bl		Gpt_Ipw_EnableInterrupt
.Llo126:
	b		.L489
.L488:
#                         (
#                             &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)
#                         );
#                     }
#                     else
#                     {
# #endif
#                         /* Disable hardware interrupts if the channel is not running in the ONE-SHUT mode.
#                         This is needed because the channel state is updated by ISR for ONE-SHOT mode */
#                         if((GPT_STATUS_RUNNING != Gpt_aChannelInfo[channel].eChannelStatus) || \
	.d2line		1658
	lis		r3,Gpt_aChannelInfo@ha		# eMode=r3
.Llo96:
	e_add16i		r3,r3,Gpt_aChannelInfo@l		# eMode=r3 eMode=r3
	rlwinm		r0,r31,3,21,28		# uElapsedTime=r0 channel=r31
.Llo127:
	lwzx		r0,r3,r0		# uElapsedTime=r0 eMode=r3
	se_cmpi		r0,4		# uElapsedTime=r0
	bc		0,2,.L492	# ne
.Llo97:
	rlwinm		r0,r31,0,24,31		# uElapsedTime=r0 channel=r31
.Llo128:
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo98:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	rlwinm		r4,r0,5,0,26		# uElapsedTime=r0
	se_slwi		r0,2		# uElapsedTime=r0 uElapsedTime=r0
	subf		r0,r0,r4		# uElapsedTime=r0 uElapsedTime=r0
	se_add		r3,r0		# eMode=r3 eMode=r3 uElapsedTime=r0
	lwz		r0,16(r3)		# uElapsedTime=r0 eMode=r3
	se_cmpi		r0,0		# uElapsedTime=r0
	bc		0,2,.L489	# ne
.L492:
#                            (GPT_CH_MODE_CONTINUOUS == (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_eChannelMode)
#                           )
#                         {
#                             /*Disable hardware interrupts*/
#                             Gpt_Ipw_DisableInterrupt
	.d2line		1663
.Llo99:
	rlwinm		r0,r31,0,24,31		# uElapsedTime=r0 channel=r31
.Llo129:
	lis		r3,Gpt_pConfig@ha		# eMode=r3
.Llo100:
	lwz		r3,Gpt_pConfig@l(r3)		# eMode=r3 eMode=r3
	lwz		r4,4(r3)		# eMode=r3
	rlwinm		r3,r0,5,0,26		# eMode=r3 uElapsedTime=r0
	se_slwi		r0,2		# uElapsedTime=r0 uElapsedTime=r0
	subf		r0,r0,r3		# uElapsedTime=r0 uElapsedTime=r0 eMode=r3
	se_add		r4,r0		# uElapsedTime=r0
	diab.addi		r3,r4,20		# eMode=r3
.Llo101:
	bl		Gpt_Ipw_DisableInterrupt
.L489:
#                             (
#                                 &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)
#                             );
#                         }
# #if (GPT_ENABLE_DISABLE_NOTIFICATION_API == STD_ON)
#                     }
# #endif
#                 }                
	.d2line		1671
.Llo130:
	diab.addi		r0,r31,1		# uElapsedTime=r0 channel=r31
	se_addi		r31,1		# channel=r31 channel=r31
	b		.L485
.L487:
# 
#                 /*Set the driver mode to normal mode*/
#                 Gpt_eMode = GPT_MODE_NORMAL;
	.d2line		1674
	diab.li		r0,0		# uElapsedTime=r0
.Llo131:
	lis		r3,Gpt_eMode@ha		# eMode=r3
.Llo102:
	e_add16i		r3,r3,Gpt_eMode@l		# eMode=r3 eMode=r3
	stw		r0,0(r3)		# eMode=r3 uElapsedTime=r0
.L473:
#             }
#             else
#             {
#                 /* This else clause is required due to MISRA rules */
#             }
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         }
# #endif
# 
# #if (GPT_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif
# 
# #endif /*GPT_REPORT_WAKEUP_SOURCE*/
#     return;
# }
	.d2line		1690
	.d2epilogue_begin
.Llo103:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# uElapsedTime=r0
	mtspr		lr,r0		# uElapsedTime=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L625:
	.type		Gpt_SetMode,@function
	.size		Gpt_SetMode,.-Gpt_SetMode
# Number of nodes = 259

# Allocations for Gpt_SetMode
#	?a4		eMode
#	?a5		$$115
#	?a6		$$114
#	?a7		$$113
#	?a8		$$112
#	?a9		$$111
#	?a10		$$110
#	?a11		$$109
#	?a12		$$108
#	SP,8		returnHwChannelInfo
#	?a13		uElapsedTime
#	?a14		channel
# FUNC(void, GPT_CODE) Gpt_DisableWakeup(VAR(Gpt_ChannelType, AUTOMATIC) channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1712,22
#$$ld
.L637:

#$$bf	Gpt_DisableWakeup,interprocedural,rasave,nostackparams
	.globl		Gpt_DisableWakeup
	.d2_cfa_start __cie
Gpt_DisableWakeup:
.Llo133:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# channel=r5 channel=r3
	.d2prologue_end
# {
# 
# #if (GPT_REPORT_WAKEUP_SOURCE == STD_OFF)
#     (void)channel;
# #endif
# 
# #if (GPT_REPORT_WAKEUP_SOURCE == STD_ON)
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Gpt_ValidateChannelCall(GPT_DISABLEWAKEUP_ID,channel))
#     {
# #endif
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         if((Std_ReturnType)E_OK == Gpt_ValidateChannelWakeup(GPT_DISABLEWAKEUP_ID,channel))
#         {
# #endif
#             /* Set the enable wakeup attribute */
#             Gpt_aChannelInfo[channel].bWakeupEnabled = (boolean)FALSE;
	.d2line		1729
.Llo134:
	diab.li		r0,0
.Llo135:
	lis		r3,(Gpt_aChannelInfo+5)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+5)@l
	rlwinm		r4,r5,3,21,28		# channel=r5
	stbx		r0,r3,r4
# 
#             /* Disable hardware interrupts if the channel is not running in the ONE-SHUT mode.
#             This is needed because the channel state is updated by ISR for ONE-SHOT mode */
#             if ((GPT_MODE_SLEEP == Gpt_eMode) && \
	.d2line		1733
	lis		r3,Gpt_eMode@ha
	lwz		r0,Gpt_eMode@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L506	# ne
	rlwinm		r4,r5,0,24,31		# channel=r5
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r0,4(r3)
	rlwinm		r3,r4,5,0,26
	se_slwi		r4,2
	subf		r4,r4,r3
	se_add		r4,r0
	lwz		r0,16(r4)
	se_cmpi		r0,0
	bc		1,2,.L508	# eq
	lis		r3,Gpt_aChannelInfo@ha
	e_add16i		r3,r3,Gpt_aChannelInfo@l
	rlwinm		r4,r5,3,21,28		# channel=r5
	lwzx		r0,r3,r4
	se_cmpi		r0,4
	bc		1,2,.L506	# eq
.L508:
#                 ((GPT_CH_MODE_CONTINUOUS == (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_eChannelMode)
#                  || (GPT_STATUS_RUNNING != Gpt_aChannelInfo[channel].eChannelStatus)
#                 )
#                )
#             {
#                 /*Disable hardware interrupts*/
#                 Gpt_Ipw_DisableInterrupt
	.d2line		1740
	rlwinm		r5,r5,0,24,31		# channel=r5 channel=r5
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r0,r5,5,0,26		# channel=r5
	se_slwi		r5,2		# channel=r5 channel=r5
	subf		r5,r5,r0		# channel=r5 channel=r5
	se_add		r3,r5		# channel=r5
	se_addi		r3,20
	bl		Gpt_Ipw_DisableInterrupt
.L506:
#                 (
#                     &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)
#                 );
#             }
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         }
# #endif
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     }
# #endif
# #endif /*GPT_REPORT_WAKEUP_SOURCE*/
#     return;
# }
	.d2line		1753
	.d2epilogue_begin
.Llo136:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L638:
	.type		Gpt_DisableWakeup,@function
	.size		Gpt_DisableWakeup,.-Gpt_DisableWakeup
# Number of nodes = 53

# Allocations for Gpt_DisableWakeup
#	?a4		channel
#	?a5		$$117
#	?a6		$$116
# FUNC(void, GPT_CODE) Gpt_EnableWakeup(VAR(Gpt_ChannelType, AUTOMATIC) channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1775,22
#$$ld
.L643:

#$$bf	Gpt_EnableWakeup,interprocedural,rasave,nostackparams
	.globl		Gpt_EnableWakeup
	.d2_cfa_start __cie
Gpt_EnableWakeup:
.Llo137:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# channel=r5 channel=r3
	.d2prologue_end
# {
# #if (GPT_REPORT_WAKEUP_SOURCE == STD_OFF)
#     (void)channel;
# #endif
# 
# #if (GPT_REPORT_WAKEUP_SOURCE == STD_ON)
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Gpt_ValidateChannelCall(GPT_ENABLEWAKEUP_ID,channel))
#     {
# #endif
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         if((Std_ReturnType)E_OK == Gpt_ValidateChannelWakeup(GPT_ENABLEWAKEUP_ID,channel))
#         {
# #endif
#             /* Functionality implementation */
#             /* Set the enable wakeup attribute */
#             Gpt_aChannelInfo[channel].bWakeupEnabled = (boolean)TRUE;
	.d2line		1792
.Llo138:
	diab.li		r0,1
.Llo139:
	lis		r3,(Gpt_aChannelInfo+5)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+5)@l
	rlwinm		r4,r5,3,21,28		# channel=r5
	stbx		r0,r3,r4
# 
#             if (GPT_MODE_SLEEP == Gpt_eMode)
	.d2line		1794
	lis		r3,Gpt_eMode@ha
	lwz		r0,Gpt_eMode@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L511	# ne
#             {
#                 /*Enable hardware interrupts*/
#                 Gpt_Ipw_EnableInterrupt
	.d2line		1797
	rlwinm		r5,r5,0,24,31		# channel=r5 channel=r5
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r0,r5,5,0,26		# channel=r5
	se_slwi		r5,2		# channel=r5 channel=r5
	subf		r5,r5,r0		# channel=r5 channel=r5
	se_add		r3,r5		# channel=r5
	se_addi		r3,20
	bl		Gpt_Ipw_EnableInterrupt
.L511:
#                 (
#                     &((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig)
#                 );
#             }
# #if (GPT_VALIDATE_PARAM == STD_ON)
#         }
# #endif
# #if (GPT_VALIDATE_CHANNEL_CALL == STD_ON)
#     }
# #endif
# #endif /*GPT_REPORT_WAKEUP_SOURCE*/
#     return;
# }
	.d2line		1810
	.d2epilogue_begin
.Llo140:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L644:
	.type		Gpt_EnableWakeup,@function
	.size		Gpt_EnableWakeup,.-Gpt_EnableWakeup
# Number of nodes = 29

# Allocations for Gpt_EnableWakeup
#	?a4		channel
#	?a5		$$118
# FUNC(void, GPT_CODE) Gpt_CheckWakeup(VAR(EcuM_WakeupSourceType, AUTOMATIC) wakeupSource)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1831,22
#$$ld
.L649:

#$$bf	Gpt_CheckWakeup,interprocedural,rasave,nostackparams
	.globl		Gpt_CheckWakeup
	.d2_cfa_start __cie
Gpt_CheckWakeup:
.Llo141:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# wakeupSource=r0 wakeupSource=r3
	.d2prologue_end
# {
# #if (GPT_REPORT_WAKEUP_SOURCE == STD_OFF)
#     (void) wakeupSource;
# #endif
# 
# #if (GPT_REPORT_WAKEUP_SOURCE == STD_ON)
#     VAR(Gpt_ChannelType, AUTOMATIC) channel;
# 
# #if (GPT_VALIDATE_GLOBAL_CALL == STD_ON)
#     /*Validate the driver calling context*/
#     if((Std_ReturnType)E_OK == Gpt_ValidateGlobalCall(GPT_CHECKWAKEUP_ID))
#     {
# #endif
#         for (channel = 0U; channel < (Gpt_ChannelType)Gpt_pConfig->Gpt_uChannelCount; channel++)
	.d2line		1845
	diab.li		r3,0		# channel=r3
.L515:
.Llo142:
	rlwinm		r5,r3,0,24,31		# channel=r3
.Llo143:
	lis		r4,Gpt_pConfig@ha
	lwz		r4,Gpt_pConfig@l(r4)
	lbz		r4,0(r4)
	se_cmp		r5,r4
	bc		0,0,.L514	# ge
#         {
#             if (((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_uWakeupSource == wakeupSource) && \
	.d2line		1847
	rlwinm		r5,r3,0,24,31		# channel=r3
	lis		r4,Gpt_pConfig@ha
	lwz		r4,Gpt_pConfig@l(r4)
	lwz		r4,4(r4)
	rlwinm		r6,r5,5,0,26
	se_slwi		r5,2
	subf		r5,r5,r6
	se_add		r4,r5
	lwz		r4,8(r4)
	se_cmpl		r4,r0		# wakeupSource=r0
	bc		0,2,.L518	# ne
	lis		r4,(Gpt_aChannelInfo+6)@ha
	e_add16i		r4,r4,(Gpt_aChannelInfo+6)@l
	rlwinm		r5,r3,3,21,28		# channel=r3
	lbzx		r4,r4,r5
	se_cmpi		r4,1
	bc		0,2,.L518	# ne
#                 ((boolean)TRUE == Gpt_aChannelInfo[channel].bWakeupGenerated)
#                )
#             {
#                 /*Reset the wakeup flag */
#                 Gpt_aChannelInfo[channel].bWakeupGenerated = (boolean)FALSE;
	.d2line		1852
.Llo147:
	diab.li		r5,0
	lis		r4,(Gpt_aChannelInfo+6)@ha
	e_add16i		r4,r4,(Gpt_aChannelInfo+6)@l
.Llo148:
	rlwinm		r3,r3,3,21,28		# channel=r3 channel=r3
.Llo149:
	stbx		r5,r4,r3
# 
#                 /* Calling EcuM_SetWakeupEvent and exit*/
#                 EcuM_SetWakeupEvent(wakeupSource);
	.d2line		1855
	mr		r3,r0		# wakeupSource=r3 wakeupSource=r0
	bl		EcuM_SetWakeupEvent
.Llo144:
	b		.L514
.L518:
# 
#                 break;
#             }
#         } /*for*/
	.d2line		1859
.Llo145:
	diab.addi		r5,r3,1		# channel=r3
	se_addi		r3,1		# channel=r3 channel=r3
	b		.L515
.L514:
# #if (GPT_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif
# #endif /* GPT_REPORT_WAKEUP_SOURCE */
#     return;
# }
	.d2line		1865
	.d2epilogue_begin
.Llo146:
	lwz		r0,20(r1)		# wakeupSource=r0
	mtspr		lr,r0		# wakeupSource=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L650:
	.type		Gpt_CheckWakeup,@function
	.size		Gpt_CheckWakeup,.-Gpt_CheckWakeup
# Number of nodes = 56

# Allocations for Gpt_CheckWakeup
#	?a4		wakeupSource
#	?a5		$$119
#	?a6		channel
# FUNC(void, GPT_CODE) Gpt_ProcessCommonInterrupt(VAR(uint8, AUTOMATIC) u8MapTableIndex)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1880,22
#$$ld
.L658:

#$$bf	Gpt_ProcessCommonInterrupt,interprocedural,rasave,nostackparams
	.globl		Gpt_ProcessCommonInterrupt
	.d2_cfa_start __cie
Gpt_ProcessCommonInterrupt:
.Llo150:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# u8MapTableIndex=r4 u8MapTableIndex=r3
	.d2prologue_end
# {
#     VAR(Gpt_ChannelType, AUTOMATIC) channel;
# 
#     if (Gpt_pConfig != NULL_PTR)
	.d2line		1884
	lis		r3,Gpt_pConfig@ha
.Llo151:
	lwz		r0,Gpt_pConfig@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L523	# eq
#     {
#         /* Extract the logical channel from the hardware to logic map table */
#         channel = Gpt_pConfig->Gpt_aHw2LogicChannelMap[u8MapTableIndex];
	.d2line		1887
	lis		r3,Gpt_pConfig@ha
	lwz		r0,Gpt_pConfig@l(r3)
.Llo152:
	rlwinm		r4,r4,0,24,31		# u8MapTableIndex=r4 u8MapTableIndex=r4
	se_add		r4,r0		# u8MapTableIndex=r4 u8MapTableIndex=r4
	lbz		r31,8(r4)		# channel=r31 u8MapTableIndex=r4
.Llo158:
	mr		r31,r31		# channel=r31 channel=r31
# 
#         /*Stop the timer for one-shot mode*/
#         if (GPT_CH_MODE_ONESHOT == (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_eChannelMode)
	.d2line		1890
	rlwinm		r4,r31,0,24,31		# u8MapTableIndex=r4 channel=r31
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r0,4(r3)
	rlwinm		r3,r4,5,0,26		# u8MapTableIndex=r4
	se_slwi		r4,2		# u8MapTableIndex=r4 u8MapTableIndex=r4
	subf		r4,r4,r3		# u8MapTableIndex=r4 u8MapTableIndex=r4
	se_add		r4,r0		# u8MapTableIndex=r4 u8MapTableIndex=r4
	lwz		r0,16(r4)		# u8MapTableIndex=r4
	se_cmpi		r0,1
	bc		0,2,.L525	# ne
#         {
#             /*Stop channel*/
#             Gpt_Ipw_StopTimer(&((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_HwChannelConfig));
	.d2line		1893
.Llo153:
	rlwinm		r4,r31,0,24,31		# u8MapTableIndex=r4 channel=r31
.Llo154:
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r0,r4,5,0,26		# u8MapTableIndex=r4
	se_slwi		r4,2		# u8MapTableIndex=r4 u8MapTableIndex=r4
	subf		r4,r4,r0		# u8MapTableIndex=r4 u8MapTableIndex=r4
	se_add		r3,r4		# u8MapTableIndex=r4
	se_addi		r3,20
	bl		Gpt_Ipw_StopTimer
#             SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_04();
	.d2line		1894
.Llo155:
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_04
#             {
#                 /* Change the channel status to expired */
#                 Gpt_aChannelInfo[channel].eChannelStatus = GPT_STATUS_EXPIRED;
	.d2line		1897
	diab.li		r0,3
	lis		r3,Gpt_aChannelInfo@ha
	e_add16i		r3,r3,Gpt_aChannelInfo@l
	rlwinm		r4,r31,3,21,28		# u8MapTableIndex=r4 channel=r31
	stwx		r0,r3,r4
#             }
#             SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_04();
	.d2line		1899
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_04
.L525:
#         }
# #if (GPT_ENABLE_DISABLE_NOTIFICATION_API == STD_ON)
#         if ((GPT_MODE_NORMAL == Gpt_eMode) && ((boolean)TRUE == Gpt_aChannelInfo[channel].bNotificationEnabled))
	.d2line		1902
	lis		r3,Gpt_eMode@ha
	lwz		r0,Gpt_eMode@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L526	# ne
	lis		r3,(Gpt_aChannelInfo+4)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+4)@l
	rlwinm		r4,r31,3,21,28		# u8MapTableIndex=r4 channel=r31
	lbzx		r0,r3,r4
	se_cmpi		r0,1
	bc		0,2,.L526	# ne
#         {
#             (*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_pfNotification();
	.d2line		1904
	rlwinm		r4,r31,0,24,31		# u8MapTableIndex=r4 channel=r31
.Llo156:
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r0,4(r3)
	rlwinm		r3,r4,5,0,26		# u8MapTableIndex=r4
	se_slwi		r4,2		# u8MapTableIndex=r4 u8MapTableIndex=r4
	subf		r4,r4,r3		# u8MapTableIndex=r4 u8MapTableIndex=r4
	se_add		r4,r0		# u8MapTableIndex=r4 u8MapTableIndex=r4
	lwz		r0,4(r4)		# u8MapTableIndex=r4
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L526:
#         }
# #endif
# 
# #if (GPT_WAKEUP_FUNCTIONALITY_API == STD_ON)
# #if (GPT_REPORT_WAKEUP_SOURCE == STD_ON)
#         if ((GPT_MODE_SLEEP == Gpt_eMode) && ((boolean)TRUE == Gpt_aChannelInfo[channel].bWakeupEnabled))
	.d2line		1910
.Llo157:
	lis		r3,Gpt_eMode@ha
	lwz		r0,Gpt_eMode@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L523	# ne
	lis		r3,(Gpt_aChannelInfo+5)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+5)@l
	rlwinm		r4,r31,3,21,28		# u8MapTableIndex=r4 channel=r31
	lbzx		r0,r3,r4
	se_cmpi		r0,1
	bc		0,2,.L523	# ne
#         {
#             Gpt_aChannelInfo[channel].bWakeupGenerated =(boolean)TRUE;
	.d2line		1912
	diab.li		r0,1
	lis		r3,(Gpt_aChannelInfo+6)@ha
	e_add16i		r3,r3,(Gpt_aChannelInfo+6)@l
	rlwinm		r4,r31,3,21,28		# u8MapTableIndex=r4 channel=r31
	stbx		r0,r3,r4
#             EcuM_CheckWakeup((*(Gpt_pConfig->Gpt_pChannelConfig))[channel].Gpt_uWakeupSource);
	.d2line		1913
	rlwinm		r31,r31,0,24,31		# channel=r31 channel=r31
	lis		r3,Gpt_pConfig@ha
	lwz		r3,Gpt_pConfig@l(r3)
	lwz		r3,4(r3)
	rlwinm		r0,r31,5,0,26		# channel=r31
	se_slwi		r31,2		# channel=r31 channel=r31
	subf		r31,r31,r0		# channel=r31 channel=r31
	se_add		r3,r31		# channel=r31
	lwz		r3,8(r3)
	bl		EcuM_CheckWakeup
.L523:
#         }
# #endif
# #endif
#     }
#     return;
# }
	.d2line		1919
	.d2epilogue_begin
.Llo159:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L659:
	.type		Gpt_ProcessCommonInterrupt,@function
	.size		Gpt_ProcessCommonInterrupt,.-Gpt_ProcessCommonInterrupt
# Number of nodes = 127

# Allocations for Gpt_ProcessCommonInterrupt
#	?a4		u8MapTableIndex
#	?a5		$$123
#	?a6		$$122
#	?a7		$$121
#	?a8		$$120
#	?a9		channel

# Allocations for module
	.section	.mcal_data,,d
	.0byte		.L664
	.section	.mcal_data,,d
	.type		Gpt_eMode,@object
	.size		Gpt_eMode,4
	.align		2
Gpt_eMode:
	.long		0
	.section	.mcal_data,,d
	.type		Gpt_pConfig,@object
	.size		Gpt_pConfig,4
	.align		2
Gpt_pConfig:
	.long		0
	.section	.mcal_bss,,b
	.0byte		.L668
	.section	.mcal_bss,,b
	.type		Gpt_aChannelInfo,@object
	.size		Gpt_aChannelInfo,16
	.align		2
Gpt_aChannelInfo:
	.space		16
	.section	.mcal_bss,,b
	.type		Gpt_aStopTime,@object
	.size		Gpt_aStopTime,8
	.align		2
Gpt_aStopTime:
	.space		8
	.section	.text_vle
#$$ld
.L5:
.L705:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L702:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L681:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Gpt.h"
.L665:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L535:
.L543:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt.c"
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	15
	.byte		0x0
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
	.uleb128	53
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
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L532:
	.4byte		.L533-.L531
.L531:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L537-.L532
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L534
	.4byte		.L535
	.4byte		.L538
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L544:
	.sleb128	2
	.4byte		.L540-.L532
	.byte		"Gpt_GetVersionInfo"
	.byte		0
	.4byte		.L543
	.uleb128	882
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L541
	.4byte		.L542
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L543
	.uleb128	882
	.uleb128	22
	.byte		"versioninfo"
	.byte		0
	.4byte		.L545
	.4byte		.L548
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L540:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L553:
	.sleb128	2
	.4byte		.L550-.L532
	.byte		"Gpt_Init"
	.byte		0
	.4byte		.L543
	.uleb128	938
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L551
	.4byte		.L552
	.sleb128	3
	.4byte		.L543
	.uleb128	938
	.uleb128	22
	.byte		"configPtr"
	.byte		0
	.4byte		.L554
	.4byte		.L558
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L559:
	.sleb128	4
	.4byte		.L543
	.uleb128	940
	.uleb128	37
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L563
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L550:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L568:
	.sleb128	2
	.4byte		.L565-.L532
	.byte		"Gpt_DeInit"
	.byte		0
	.4byte		.L543
	.uleb128	1013
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L566
	.4byte		.L567
.L569:
	.sleb128	4
	.4byte		.L543
	.uleb128	1015
	.uleb128	37
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L570
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L565:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L578:
	.sleb128	5
	.4byte		.L572-.L532
	.byte		"Gpt_GetTimeElapsed"
	.byte		0
	.4byte		.L543
	.uleb128	1112
	.uleb128	31
	.4byte		.L575
	.byte		0x1
	.byte		0x1
	.4byte		.L573
	.4byte		.L574
	.sleb128	3
	.4byte		.L543
	.uleb128	1112
	.uleb128	31
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L579
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L580:
	.sleb128	6
	.4byte		.L543
	.uleb128	1114
	.uleb128	43
	.byte		"returnHwChannelInfo"
	.byte		0
	.4byte		.L581
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L583:
	.sleb128	4
	.4byte		.L543
	.uleb128	1115
	.uleb128	35
	.byte		"returnValue"
	.byte		0
	.4byte		.L575
	.4byte		.L584
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L572:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L589:
	.sleb128	5
	.4byte		.L586-.L532
	.byte		"Gpt_GetTimeRemaining"
	.byte		0
	.4byte		.L543
	.uleb128	1201
	.uleb128	31
	.4byte		.L575
	.byte		0x1
	.byte		0x1
	.4byte		.L587
	.4byte		.L588
	.sleb128	3
	.4byte		.L543
	.uleb128	1201
	.uleb128	31
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L590
.L591:
	.sleb128	6
	.4byte		.L543
	.uleb128	1203
	.uleb128	43
	.byte		"returnHwChannelInfo"
	.byte		0
	.4byte		.L581
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L592:
	.sleb128	4
	.4byte		.L543
	.uleb128	1204
	.uleb128	35
	.byte		"returnValue"
	.byte		0
	.4byte		.L575
	.4byte		.L593
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L586:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L598:
	.sleb128	2
	.4byte		.L595-.L532
	.byte		"Gpt_StartTimer"
	.byte		0
	.4byte		.L543
	.uleb128	1299
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L596
	.4byte		.L597
	.sleb128	3
	.4byte		.L543
	.uleb128	1299
	.uleb128	22
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L599
	.sleb128	3
	.4byte		.L543
	.uleb128	1299
	.uleb128	22
	.byte		"value"
	.byte		0
	.4byte		.L575
	.4byte		.L600
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L595:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L605:
	.sleb128	2
	.4byte		.L602-.L532
	.byte		"Gpt_StopTimer"
	.byte		0
	.4byte		.L543
	.uleb128	1370
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L603
	.4byte		.L604
	.sleb128	3
	.4byte		.L543
	.uleb128	1370
	.uleb128	22
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L606
.L607:
	.sleb128	6
	.4byte		.L543
	.uleb128	1372
	.uleb128	43
	.byte		"returnHwChannelInfo"
	.byte		0
	.4byte		.L581
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L608:
	.sleb128	4
	.4byte		.L543
	.uleb128	1373
	.uleb128	35
	.byte		"uElapsedTime"
	.byte		0
	.4byte		.L575
	.4byte		.L609
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L602:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L614:
	.sleb128	2
	.4byte		.L611-.L532
	.byte		"Gpt_EnableNotification"
	.byte		0
	.4byte		.L543
	.uleb128	1443
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L612
	.4byte		.L613
	.sleb128	3
	.4byte		.L543
	.uleb128	1443
	.uleb128	22
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L615
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L611:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L620:
	.sleb128	2
	.4byte		.L617-.L532
	.byte		"Gpt_DisableNotification"
	.byte		0
	.4byte		.L543
	.uleb128	1492
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L618
	.4byte		.L619
	.sleb128	3
	.4byte		.L543
	.uleb128	1492
	.uleb128	22
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L621
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L617:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L626:
	.sleb128	2
	.4byte		.L623-.L532
	.byte		"Gpt_SetMode"
	.byte		0
	.4byte		.L543
	.uleb128	1548
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L624
	.4byte		.L625
	.sleb128	3
	.4byte		.L543
	.uleb128	1548
	.uleb128	22
	.byte		"eMode"
	.byte		0
	.4byte		.L627
	.4byte		.L629
.L630:
	.sleb128	6
	.4byte		.L543
	.uleb128	1555
	.uleb128	43
	.byte		"returnHwChannelInfo"
	.byte		0
	.4byte		.L581
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L631:
	.sleb128	4
	.4byte		.L543
	.uleb128	1556
	.uleb128	35
	.byte		"uElapsedTime"
	.byte		0
	.4byte		.L575
	.4byte		.L632
.L633:
	.sleb128	4
	.4byte		.L543
	.uleb128	1557
	.uleb128	37
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L634
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L623:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L639:
	.sleb128	2
	.4byte		.L636-.L532
	.byte		"Gpt_DisableWakeup"
	.byte		0
	.4byte		.L543
	.uleb128	1712
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L637
	.4byte		.L638
	.sleb128	3
	.4byte		.L543
	.uleb128	1712
	.uleb128	22
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L640
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L636:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L645:
	.sleb128	2
	.4byte		.L642-.L532
	.byte		"Gpt_EnableWakeup"
	.byte		0
	.4byte		.L543
	.uleb128	1775
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L643
	.4byte		.L644
	.sleb128	3
	.4byte		.L543
	.uleb128	1775
	.uleb128	22
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L646
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L642:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L651:
	.sleb128	2
	.4byte		.L648-.L532
	.byte		"Gpt_CheckWakeup"
	.byte		0
	.4byte		.L543
	.uleb128	1831
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L649
	.4byte		.L650
	.sleb128	3
	.4byte		.L543
	.uleb128	1831
	.uleb128	22
	.byte		"wakeupSource"
	.byte		0
	.4byte		.L652
	.4byte		.L653
.L654:
	.sleb128	4
	.4byte		.L543
	.uleb128	1838
	.uleb128	37
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L655
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L648:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L660:
	.sleb128	2
	.4byte		.L657-.L532
	.byte		"Gpt_ProcessCommonInterrupt"
	.byte		0
	.4byte		.L543
	.uleb128	1880
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L658
	.4byte		.L659
	.sleb128	3
	.4byte		.L543
	.uleb128	1880
	.uleb128	22
	.byte		"u8MapTableIndex"
	.byte		0
	.4byte		.L561
	.4byte		.L661
.L662:
	.sleb128	4
	.4byte		.L543
	.uleb128	1882
	.uleb128	37
	.byte		"channel"
	.byte		0
	.4byte		.L560
	.4byte		.L663
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L657:
	.section	.debug_info,,n
.L664:
	.sleb128	6
	.4byte		.L665
	.uleb128	255
	.uleb128	43
	.byte		"Gpt_eMode"
	.byte		0
	.4byte		.L666
	.sleb128	5
	.byte		0x3
	.4byte		Gpt_eMode
	.section	.debug_info,,n
	.section	.debug_info,,n
.L667:
	.sleb128	6
	.4byte		.L665
	.uleb128	260
	.uleb128	59
	.byte		"Gpt_pConfig"
	.byte		0
	.4byte		.L554
	.sleb128	5
	.byte		0x3
	.4byte		Gpt_pConfig
	.section	.debug_info,,n
.L668:
	.sleb128	6
	.4byte		.L665
	.uleb128	275
	.uleb128	42
	.byte		"Gpt_aChannelInfo"
	.byte		0
	.4byte		.L669
	.sleb128	5
	.byte		0x3
	.4byte		Gpt_aChannelInfo
	.section	.debug_info,,n
	.section	.debug_info,,n
.L673:
	.sleb128	6
	.4byte		.L665
	.uleb128	281
	.uleb128	44
	.byte		"Gpt_aStopTime"
	.byte		0
	.4byte		.L674
	.sleb128	5
	.byte		0x3
	.4byte		Gpt_aStopTime
	.section	.debug_info,,n
.L672:
	.sleb128	7
	.4byte		.L665
	.uleb128	200
	.uleb128	1
	.4byte		.L677-.L2
	.uleb128	8
	.section	.debug_info,,n
.L410:
	.sleb128	8
	.byte		"eChannelStatus"
	.byte		0
	.4byte		.L678
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L411:
	.sleb128	8
	.byte		"bNotificationEnabled"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L412:
	.sleb128	8
	.byte		"bWakeupEnabled"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L413:
	.sleb128	8
	.byte		"bWakeupGenerated"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L677:
.L582:
	.sleb128	7
	.4byte		.L681
	.uleb128	336
	.uleb128	1
	.4byte		.L682-.L2
	.uleb128	8
.L408:
	.sleb128	8
	.byte		"bChannelRollover"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L409:
	.sleb128	8
	.byte		"uTargetTime"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L682:
.L557:
	.sleb128	7
	.4byte		.L681
	.uleb128	336
	.uleb128	1
	.4byte		.L683-.L2
	.uleb128	144
.L405:
	.sleb128	8
	.byte		"Gpt_uChannelCount"
	.byte		0
	.4byte		.L684
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L406:
	.sleb128	8
	.byte		"Gpt_pChannelConfig"
	.byte		0
	.4byte		.L685
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L407:
	.sleb128	8
	.byte		"Gpt_aHw2LogicChannelMap"
	.byte		0
	.4byte		.L691
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L683:
.L690:
	.sleb128	7
	.4byte		.L681
	.uleb128	336
	.uleb128	1
	.4byte		.L693-.L2
	.uleb128	28
.L399:
	.sleb128	8
	.byte		"Gpt_bEnableWakeup"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L400:
	.sleb128	8
	.byte		"Gpt_pfNotification"
	.byte		0
	.4byte		.L694
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L401:
	.sleb128	8
	.byte		"Gpt_uWakeupSource"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L402:
	.sleb128	8
	.byte		"Gpt_uChannelTickValueMax"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L403:
	.sleb128	8
	.byte		"Gpt_eChannelMode"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L404:
	.sleb128	8
	.byte		"Gpt_HwChannelConfig"
	.byte		0
	.4byte		.L700
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L693:
.L701:
	.sleb128	7
	.4byte		.L702
	.uleb128	34
	.uleb128	14
	.4byte		.L703-.L2
	.uleb128	5
.L394:
	.sleb128	8
	.byte		"Gpt_u8HwChannel"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L395:
	.sleb128	8
	.byte		"Gpt_u8HwModule"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L396:
	.sleb128	8
	.byte		"Gpt_bFreezeEnable"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L397:
	.sleb128	8
	.byte		"Gpt_uPrescaler"
	.byte		0
	.4byte		.L704
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L398:
	.sleb128	8
	.byte		"Gpt_uStmClockSource"
	.byte		0
	.4byte		.L704
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L703:
.L547:
	.sleb128	7
	.4byte		.L705
	.uleb128	4144
	.uleb128	5
	.4byte		.L706-.L2
	.uleb128	8
.L220:
	.sleb128	8
	.byte		"vendorID"
	.byte		0
	.4byte		.L707
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L221:
	.sleb128	8
	.byte		"moduleID"
	.byte		0
	.4byte		.L707
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L222:
	.sleb128	8
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L223:
	.sleb128	8
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L224:
	.sleb128	8
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L706:
	.section	.debug_info,,n
.L679:
	.sleb128	9
	.4byte		.L665
	.uleb128	200
	.uleb128	1
	.4byte		.L709-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"GPT_STATUS_UNINITIALIZED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"GPT_STATUS_INITIALIZED"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"GPT_STATUS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"GPT_STATUS_EXPIRED"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"GPT_STATUS_RUNNING"
	.byte		0
	.sleb128	4
	.sleb128	0
.L709:
.L699:
	.sleb128	9
	.4byte		.L681
	.uleb128	336
	.uleb128	1
	.4byte		.L710-.L2
	.uleb128	4
	.sleb128	10
	.byte		"GPT_CH_MODE_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"GPT_CH_MODE_ONESHOT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L710:
.L628:
	.sleb128	9
	.4byte		.L681
	.uleb128	325
	.uleb128	1
	.4byte		.L711-.L2
	.uleb128	4
	.sleb128	10
	.byte		"GPT_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"GPT_MODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	0
.L711:
	.section	.debug_info,,n
.L546:
	.sleb128	11
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L547
	.section	.debug_info,,n
.L545:
	.sleb128	12
	.4byte		.L546
.L556:
	.sleb128	11
	.byte		"Gpt_ConfigType"
	.byte		0
	.4byte		.L557
	.section	.debug_info,,n
.L555:
	.sleb128	13
	.4byte		.L556
.L554:
	.sleb128	12
	.4byte		.L555
	.section	.debug_info,,n
.L562:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L561:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L562
.L560:
	.sleb128	11
	.byte		"Gpt_ChannelType"
	.byte		0
	.4byte		.L561
.L577:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L576:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L577
.L575:
	.sleb128	11
	.byte		"Gpt_ValueType"
	.byte		0
	.4byte		.L576
.L581:
	.sleb128	11
	.byte		"Gpt_HwChannelInfoType"
	.byte		0
	.4byte		.L582
.L627:
	.sleb128	11
	.byte		"Gpt_ModeType"
	.byte		0
	.4byte		.L628
.L652:
	.sleb128	11
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L576
	.section	.debug_info,,n
.L666:
	.sleb128	15
	.4byte		.L627
.L671:
	.sleb128	11
	.byte		"Gpt_ChannelInfoType"
	.byte		0
	.4byte		.L672
	.section	.debug_info,,n
.L669:
	.sleb128	16
	.4byte		.L670-.L2
	.4byte		.L671
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	1
	.sleb128	0
.L670:
.L676:
	.sleb128	15
	.4byte		.L575
.L674:
	.sleb128	16
	.4byte		.L675-.L2
	.4byte		.L676
	.sleb128	17
	.uleb128	1
	.sleb128	0
.L675:
.L678:
	.sleb128	11
	.byte		"Gpt_ChannelStatusType"
	.byte		0
	.4byte		.L679
.L680:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L562
.L684:
	.sleb128	13
	.4byte		.L560
.L689:
	.sleb128	11
	.byte		"Gpt_ChannelConfigType"
	.byte		0
	.4byte		.L690
.L688:
	.sleb128	13
	.4byte		.L689
.L686:
	.sleb128	16
	.4byte		.L687-.L2
	.4byte		.L688
	.section	.debug_info,,n
	.sleb128	18
	.sleb128	0
.L687:
.L685:
	.sleb128	12
	.4byte		.L686
.L691:
	.sleb128	16
	.4byte		.L692-.L2
	.4byte		.L684
	.sleb128	17
	.uleb128	135
	.sleb128	0
.L692:
	.section	.debug_info,,n
.L696:
	.sleb128	19
	.4byte		.L697-.L2
	.byte		0x1
	.sleb128	0
.L697:
.L695:
	.sleb128	12
	.4byte		.L696
.L694:
	.sleb128	11
	.byte		"Gpt_NotificationType"
	.byte		0
	.4byte		.L695
.L698:
	.sleb128	11
	.byte		"Gpt_ChannelModeType"
	.byte		0
	.4byte		.L699
.L700:
	.sleb128	11
	.byte		"Gpt_HwChannelConfigType"
	.byte		0
	.4byte		.L701
.L704:
	.sleb128	11
	.byte		"Gpt_PrescalerType"
	.byte		0
	.4byte		.L561
.L708:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L707:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L708
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L537:
	.sleb128	0
.L533:

	.section	.debug_loc,,n
	.align	0
.L548:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locend
.L558:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locend
.L563:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo13),31
	.d2locend
.L570:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),31
	.d2locend
.L579:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),31
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),31
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locend
.L584:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L590:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),31
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),31
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),31
	.d2locend
.L593:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locend
.L599:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),31
	.d2locend
.L600:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo44),4
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo45),30
	.d2locend
.L606:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),31
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),31
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),31
	.d2locend
.L609:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),30
	.d2locend
.L615:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),5
	.d2locend
.L621:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),3
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),5
	.d2locend
.L629:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),3
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),3
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locend
.L632:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),0
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo69),0
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo71),0
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),0
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),0
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),0
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo78),3
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo79),0
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo85),31
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),0
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),31
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),0
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo91),0
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo93),0
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),0
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo97),0
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo99),0
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo103),0
	.d2locend
.L634:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo122),30
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo103),31
	.d2locend
.L640:
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),3
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),5
	.d2locend
.L646:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),3
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),5
	.d2locend
.L653:
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),3
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),0
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),0
	.d2locend
.L655:
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo147),3
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locend
.L661:
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),3
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),4
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),4
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),4
	.d2locend
.L663:
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Gpt_ProcessCommonInterrupt"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "EcuM_CheckWakeup","Gpt_Ipw_StopTimer","SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_04","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_04"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Gpt_CheckWakeup"
	.wrcm.nstrlist "calls", "EcuM_SetWakeupEvent"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Gpt_EnableWakeup"
	.wrcm.nstrlist "calls", "Gpt_Ipw_EnableInterrupt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Gpt_DisableWakeup"
	.wrcm.nstrlist "calls", "Gpt_Ipw_DisableInterrupt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Gpt_SetMode"
	.wrcm.nstrlist "calls", "Gpt_Ipw_DisableInterrupt","Gpt_Ipw_EnableInterrupt","Gpt_Ipw_GetTimeElapsed","Gpt_Ipw_StopTimer","SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_03","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_03"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Gpt_DisableNotification"
	.wrcm.nstrlist "calls", "Gpt_Ipw_DisableInterrupt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Gpt_EnableNotification"
	.wrcm.nstrlist "calls", "Gpt_Ipw_EnableInterrupt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Gpt_StopTimer"
	.wrcm.nstrlist "calls", "Gpt_Ipw_GetTimeElapsed","Gpt_Ipw_StopTimer","SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_02","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_02"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Gpt_StartTimer"
	.wrcm.nstrlist "calls", "Gpt_Ipw_EnableInterrupt","Gpt_Ipw_StartTimer","SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_01","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_01"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Gpt_GetTimeRemaining"
	.wrcm.nstrlist "calls", "Gpt_Ipw_GetTimeElapsed"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Gpt_GetTimeElapsed"
	.wrcm.nstrlist "calls", "Gpt_Ipw_GetTimeElapsed"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Gpt_DeInit"
	.wrcm.nstrlist "calls", "Gpt_Ipw_DeInit","SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_00","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_00"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Gpt_Init"
	.wrcm.nstrlist "calls", "Gpt_Ipw_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Gpt_GetVersionInfo"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Gpt\ssc\make\..\..\generator\integration_package\src\Gpt.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
