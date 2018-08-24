#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Lin.c"
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
# FUNC(void, LIN_CODE) Lin_Init(P2CONST(Lin_ConfigType, AUTOMATIC, LIN_APPL_CONST) Config)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L551:
	.section	.invalid_TEXT,,c
#$$ld
.L547:
	.0byte		.L545
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin.c"
        .d2line         445,22
#$$ld
.L554:

#$$bf	Lin_Init,interprocedural,rasave,nostackparams
	.globl		Lin_Init
	.d2_cfa_start __cie
Lin_Init:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# Config=r0
	.d2_cfa_offset    108,-1
	mr.		r0,r3		# Config=?a4 Config=r3
	.d2prologue_end
# {
#     VAR(uint8,AUTOMATIC) u8Lin_ChLoop;
#     VAR(uint8,AUTOMATIC) u8Lin_Hw_ChLoop;
#     VAR(uint8,AUTOMATIC) u8Length;
# 
#     /* Check whether the LIN driver is in LIN_UNINIT state */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#     if (LIN_UNINIT != Lin_u8LinDrvStatus)
#     {
#         /* LIN driver has been already initialized */
#         (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                               (uint8)0, \
#                               (uint8)LIN_INIT_ID, \
#                               (uint8)LIN_E_STATE_TRANSITION \
#                              );
#     }
#     else
#     {
#         /* Do nothing */
#     }
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
# 
# #if (LIN_PRECOMPILE_SUPPORT != STD_ON)
#     /* Check Config for not being a null pointer */
#     if (NULL_PTR == Config)
	.d2line		470
	bc		1,2,.L434	# eq
#     {
#     #if (LIN_DEV_ERROR_DETECT == STD_ON)
#         /* Invalid pointer */
#         (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                               (uint8)0, \
#                               (uint8)LIN_INIT_ID, \
#                               (uint8)LIN_E_INVALID_POINTER \
#                              );
#     #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#     }
#     else
#     {
#         Lin_pcConfigPtr = Config;
	.d2line		483
.Llo2:
	lis		r3,Lin_pcConfigPtr@ha		# u8Lin_Hw_ChLoop=r3
.Llo3:
	e_add16i		r3,r3,Lin_pcConfigPtr@l		# u8Lin_Hw_ChLoop=r3 u8Lin_Hw_ChLoop=r3
	stw		r0,0(r3)		# u8Lin_Hw_ChLoop=r3 Config=r0
# #else /* LIN_PRECOMPILE_SUPPORT == STD_ON */
#     if( NULL_PTR != Config )
#     {
#     #if (LIN_DEV_ERROR_DETECT == STD_ON)
#         /* Invalid pointer */
#         (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                               (uint8)0, \
#                               (uint8)LIN_INIT_ID, \
#                               (uint8)LIN_E_INVALID_POINTER \
#                              );
#     #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#     }
#     else
#     {
#          Lin_pcConfigPtr = &Lin_Config_PC;
#  
# #endif /* LIN_PRECOMPILE_SUPPORT */
# 
#         for(u8Lin_Hw_ChLoop=(uint8)0U;u8Lin_Hw_ChLoop<LIN_HW_MAX_AVAILABLE_MODULES;u8Lin_Hw_ChLoop++)
	.d2line		502
	diab.li		r3,0		# u8Lin_Hw_ChLoop=r3
.L437:
.Llo4:
	rlwinm		r5,r3,0,24,31		# u8Lin_Hw_ChLoop=r3
	se_cmpli	r5,6
	bc		0,0,.L439	# ge
#         {
#             Lin_as8ChannelHardwareMap[u8Lin_Hw_ChLoop]= -1;
	.d2line		504
	diab.li		r0,-1		# Config=r0
.Llo5:
	lis		r4,Lin_as8ChannelHardwareMap@ha
	e_add16i		r4,r4,Lin_as8ChannelHardwareMap@l
	rlwinm		r5,r3,0,24,31		# u8Lin_Hw_ChLoop=r3
	stbx		r0,r4,r5		# Config=r0
#         }
	.d2line		505
	diab.addi		r5,r3,1		# u8Lin_Hw_ChLoop=r3
	se_addi		r3,1		# u8Lin_Hw_ChLoop=r3 u8Lin_Hw_ChLoop=r3
	b		.L437
.L439:
#          for(u8Lin_ChLoop=(uint8)0U; u8Lin_ChLoop < Lin_pcConfigPtr->u8Lin_MaxHWChannels; u8Lin_ChLoop++)
	.d2line		506
.Llo6:
	diab.li		r31,0		# u8Lin_ChLoop=r31
.L440:
.Llo19:
	rlwinm		r5,r31,0,24,31		# u8Lin_ChLoop=r31
	lis		r3,Lin_pcConfigPtr@ha		# u8Lin_Hw_ChLoop=r3
.Llo20:
	lwz		r3,Lin_pcConfigPtr@l(r3)		# u8Lin_Hw_ChLoop=r3 u8Lin_Hw_ChLoop=r3
	lbz		r0,0(r3)		# Config=r0 u8Lin_Hw_ChLoop=r3
.Llo7:
	se_cmp		r5,r0		# Config=r0
	bc		0,0,.L442	# ge
#          {
#             for(u8Length=(uint8)0U;u8Length<LIN_MAX_DATA_LENGTH;u8Length++)
	.d2line		508
.Llo8:
	diab.li		r3,0		# u8Length=r3
.L443:
.Llo22:
	rlwinm		r5,r3,0,24,31		# u8Length=r3
	se_cmpli	r5,8
	bc		0,0,.L445	# ge
#             {
#                 Lin_au8SduBuffAddress[u8Lin_ChLoop][u8Length]= (uint8)0;
	.d2line		510
	diab.li		r0,0		# Config=r0
.Llo9:
	lis		r4,Lin_au8SduBuffAddress@ha
	e_add16i		r4,r4,Lin_au8SduBuffAddress@l
	rlwinm		r5,r31,3,21,28		# u8Lin_ChLoop=r31
	se_add		r4,r5
	rlwinm		r5,r3,0,24,31		# u8Length=r3
	stbx		r0,r4,r5		# Config=r0
#             }
	.d2line		511
	diab.addi		r5,r3,1		# u8Length=r3
	se_addi		r3,1		# u8Length=r3 u8Length=r3
	b		.L443
.L445:
#             Lin_pChannelConfigPtr[u8Lin_ChLoop] = Lin_pcConfigPtr->pLin_Channel[u8Lin_ChLoop];
	.d2line		512
.Llo10:
	lis		r3,Lin_pcConfigPtr@ha		# u8Length=r3
.Llo23:
	lwz		r3,Lin_pcConfigPtr@l(r3)		# u8Length=r3 u8Length=r3
	rlwinm		r5,r31,2,22,29		# u8Lin_ChLoop=r31
	se_add		r3,r5		# u8Length=r3 u8Length=r3
	lwz		r0,4(r3)		# Config=r0 u8Length=r3
.Llo11:
	lis		r3,Lin_pChannelConfigPtr@ha		# u8Length=r3
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l		# u8Length=r3 u8Length=r3
	stwx		r0,r3,r5		# u8Length=r3 Config=r0
#             Lin_Ipw_InitChannel(u8Lin_ChLoop);
	.d2line		513
	rlwinm		r3,r31,0,24,31		# u8Length=r3 u8Lin_ChLoop=r31
.Llo24:
	bl		Lin_Ipw_InitChannel
#             /* Set LIN channel state machine to LIN_CH_OPERATIONAL */
#             Lin_au8LinChStatus[u8Lin_ChLoop] = LIN_CH_OPERATIONAL;
	.d2line		515
.Llo12:
	diab.li		r0,3		# Config=r0
.Llo13:
	lis		r3,Lin_au8LinChStatus@ha		# u8Length=r3
.Llo25:
	e_add16i		r3,r3,Lin_au8LinChStatus@l		# u8Length=r3 u8Length=r3
	rlwinm		r5,r31,0,24,31		# u8Lin_ChLoop=r31
	stbux		r0,r3,r5		# u8Length=r3 Config=r0
#             /* Set LIN channel frame operation status to LIN_CH_READY_STATE */
#             Lin_au8LinChFrameStatus[u8Lin_ChLoop] = LIN_CH_READY_STATE;
	.d2line		517
	diab.li		r0,5		# Config=r0
	lis		r3,Lin_au8LinChFrameStatus@ha		# u8Length=r3
	e_add16i		r3,r3,Lin_au8LinChFrameStatus@l		# u8Length=r3 u8Length=r3
	stbux		r0,r3,r5		# u8Length=r3 Config=r0
#             /* Header status flag */
#             Lin_au8LinChHeaderStatus[u8Lin_ChLoop] = (uint8)FALSE;
	.d2line		519
	diab.li		r0,0		# Config=r0
	lis		r3,Lin_au8LinChHeaderStatus@ha		# u8Length=r3
	e_add16i		r3,r3,Lin_au8LinChHeaderStatus@l		# u8Length=r3 u8Length=r3
	stbux		r0,r3,r5		# u8Length=r3 Config=r0
#             /* Reset header command type */
#             Lin_au8TransmitHeaderCommand[u8Lin_ChLoop] = LIN_TX_NO_COMMAND;
	.d2line		521
	diab.li		r4,4
	lis		r3,Lin_au8TransmitHeaderCommand@ha		# u8Length=r3
	e_add16i		r3,r3,Lin_au8TransmitHeaderCommand@l		# u8Length=r3 u8Length=r3
	stbux		r4,r3,r5		# u8Length=r3
#             /* Reset error status global flag */
#             Lin_au8LinChFrameErrorStatus[u8Lin_ChLoop] = LIN_NO_ERROR;
	.d2line		523
	lis		r3,Lin_au8LinChFrameErrorStatus@ha		# u8Length=r3
	e_add16i		r3,r3,Lin_au8LinChFrameErrorStatus@l		# u8Length=r3 u8Length=r3
	stbux		r0,r3,r5		# u8Length=r3 Config=r0
#             /* Map configured hardware channel to logical channel */
#              Lin_as8ChannelHardwareMap[Lin_pChannelConfigPtr[u8Lin_ChLoop]->u8LinChannelID] = (sint8)Lin_pChannelConfigPtr[u8Lin_ChLoop]->u8LinHwChannel;
	.d2line		525
	lis		r4,Lin_pChannelConfigPtr@ha
	e_add16i		r4,r4,Lin_pChannelConfigPtr@l
	rlwinm		r5,r31,2,22,29		# u8Lin_ChLoop=r31
	lwzux		r3,r4,r5		# u8Length=r3
	lbz		r0,1(r3)		# Config=r0 u8Length=r3
	lis		r3,Lin_as8ChannelHardwareMap@ha		# u8Length=r3
	e_add16i		r3,r3,Lin_as8ChannelHardwareMap@l		# u8Length=r3 u8Length=r3
	lis		r4,Lin_pChannelConfigPtr@ha
	e_add16i		r4,r4,Lin_pChannelConfigPtr@l
	lwzx		r4,r4,r5
	lbz		r4,0(r4)
	stbx		r0,r3,r4		# u8Length=r3 Config=r0
#          }
	.d2line		526
	diab.addi		r3,r31,1		# u8Length=r3 u8Lin_ChLoop=r31
.Llo26:
	se_addi		r31,1		# u8Lin_ChLoop=r31 u8Lin_ChLoop=r31
	b		.L440
.L442:
#         /* Update LIN driver status to LIN_INIT */
#         Lin_u8LinDrvStatus = LIN_INIT;
	.d2line		528
.Llo14:
	diab.li		r0,2		# Config=r0
.Llo15:
	lis		r3,Lin_u8LinDrvStatus@ha		# u8Lin_Hw_ChLoop=r3
.Llo21:
	e_add16i		r3,r3,Lin_u8LinDrvStatus@l		# u8Lin_Hw_ChLoop=r3 u8Lin_Hw_ChLoop=r3
	stb		r0,0(r3)		# u8Lin_Hw_ChLoop=r3 Config=r0
.L434:
#     }
#     return; /* Exit function with no return */
# }
	.d2line		531
	.d2epilogue_begin
.Llo16:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo17:
	lwz		r0,36(r1)		# Config=r0
	mtspr		lr,r0		# Config=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo18:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L555:
	.type		Lin_Init,@function
	.size		Lin_Init,.-Lin_Init
# Number of nodes = 151

# Allocations for Lin_Init
#	?a4		Config
#	?a5		u8Lin_ChLoop
#	?a6		u8Lin_Hw_ChLoop
#	?a7		u8Length
# FUNC(Std_ReturnType, LIN_CODE) Lin_CheckWakeup(VAR(uint8, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         561,32
#$$ld
.L573:

#$$bf	Lin_CheckWakeup,interprocedural,rasave,nostackparams
	.globl		Lin_CheckWakeup
	.d2_cfa_start __cie
Lin_CheckWakeup:
.Llo27:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo35:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# u8TempReturn=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) u8TempReturn = (uint8)E_NOT_OK;
	.d2line		563
	diab.li		r0,1		# u8TempReturn=r0
# 
#     /* Check whether the LIN driver is in LIN_INIT state */
#     if (LIN_INIT != Lin_u8LinDrvStatus)
	.d2line		566
.Llo36:
	lis		r3,Lin_u8LinDrvStatus@ha
.Llo28:
	lbz		r0,Lin_u8LinDrvStatus@l(r3)		# u8TempReturn=r0
.Llo37:
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		1,2,.L454	# eq
#     {
#         /* LIN driver has not been initialized yet */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#         /* Report error to development error tracer */
#         (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                               (uint8)0, \
#                               (uint8)LIN_CHECKWAKEUP_ID, \
#                               (uint8)LIN_E_UNINIT \
#                              );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#         u8TempReturn = (uint8)E_NOT_OK;
	.d2line		577
.Llo29:
	diab.li		r30,1		# u8TempReturn=r30
.Llo38:
	b		.L455
.L454:
#     }
#     else
#     {
#         /* Check for invalid channel */
#          if (Channel >= Lin_pcConfigPtr->u8Lin_MaxHWChannels)
	.d2line		582
.Llo39:
	rlwinm		r0,r31,0,24,31		# u8TempReturn=r0 Channel=r31
.Llo40:
	lis		r3,Lin_pcConfigPtr@ha
	lwz		r3,Lin_pcConfigPtr@l(r3)
	lbz		r3,0(r3)
	se_cmp		r0,r3		# u8TempReturn=r0
	bc		1,0,.L456	# lt
#          {
#             /* Invalid channel */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#             /* Report error to development error tracer */
#             (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                   (uint8)0, \
#                                   (uint8)LIN_CHECKWAKEUP_ID, \
#                                   (uint8)LIN_E_INVALID_CHANNEL \
#                                  );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#             u8TempReturn = (uint8)E_NOT_OK;
	.d2line		593
.Llo41:
	diab.li		r30,1		# u8TempReturn=r30
.Llo42:
	b		.L455
.L456:
#         }
#         else
#         {
#             u8TempReturn = (uint8)E_OK;
	.d2line		597
.Llo43:
	diab.li		r30,0		# u8TempReturn=r30
# 
#             /* The addressed LIN channel is initialized */
#             /* chInSleep = 0U;*/
#             /* Check if the addressed LIN channel is in */
#             /* LIN_CH_SLEEP_STATE state */
#             if (LIN_CH_SLEEP_STATE == Lin_au8LinChStatus[Channel])
	.d2line		603
.Llo44:
	lis		r3,Lin_au8LinChStatus@ha
	e_add16i		r3,r3,Lin_au8LinChStatus@l
	rlwinm		r0,r31,0,24,31		# u8TempReturn=r0 Channel=r31
	se_add		r0,r3		# u8TempReturn=r0 u8TempReturn=r0
	lbzx		r0,r0,r0		# u8TempReturn=r0 u8TempReturn=r0
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		0,2,.L458	# ne
#             {
#                 /* Lin channel is in LIN_CH_SLEEP_STATE state */
# 
#                 /* Check if Lin channel has detected a wake-up */
#                 if ((uint8)TRUE == Lin_Ipw_CheckWakeup(Channel))
	.d2line		608
	rlwinm		r3,r31,0,24,31		# Channel=r31
	bl		Lin_Ipw_CheckWakeup
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L455	# ne
#                 {
#                      /* Indicates a valid timer wakeup event to ECU State Manager */
#                      EcuM_SetWakeupEvent(Lin_pChannelConfigPtr[Channel]->LinChannelEcuMWakeupSource);
	.d2line		611
.Llo30:
	lis		r3,Lin_pChannelConfigPtr@ha
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
.Llo31:
	rlwinm		r31,r31,2,22,29		# Channel=r31 Channel=r31
.Llo32:
	lwzx		r3,r3,r31
	lwz		r3,12(r3)
	bl		EcuM_SetWakeupEvent
	b		.L455
.L458:
#                  }
#             }
#             else
#             {
#  #if (LIN_DEV_ERROR_DETECT == STD_ON)
#                 /* LIN channel is not in sleep mode */
#                 /* Report error to development error tracer */
#                 (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                       (uint8)0, \
#                                       (uint8)LIN_CHECKWAKEUP_ID, \
#                                       (uint8)LIN_E_STATE_TRANSITION \
#                                      );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#                   u8TempReturn = (uint8)E_NOT_OK;
	.d2line		625
.Llo33:
	diab.li		r30,1		# u8TempReturn=r30
.L455:
#              }
#         }
#     }
#     return u8TempReturn;
	.d2line		629
.Llo34:
	rlwinm		r3,r30,0,24,31		# u8TempReturn=r30
# }
	.d2line		630
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo45:
	lwz		r0,36(r1)		# u8TempReturn=r0
	mtspr		lr,r0		# u8TempReturn=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L574:
	.type		Lin_CheckWakeup,@function
	.size		Lin_CheckWakeup,.-Lin_CheckWakeup
# Number of nodes = 61

# Allocations for Lin_CheckWakeup
#	?a4		Channel
#	?a5		u8TempReturn
# FUNC(Lin_StatusType, LIN_CODE) Lin_GetStatus(VAR(uint8, AUTOMATIC) Channel, P2P2VAR(uint8, AUTOMATIC, LIN_APPL_DATA) Lin_SduPtr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         677,32
#$$ld
.L582:

#$$bf	Lin_GetStatus,interprocedural,rasave,nostackparams
	.globl		Lin_GetStatus
	.d2_cfa_start __cie
Lin_GetStatus:
.Llo46:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Channel=r3 Channel=r3
	mr		r4,r4		# Lin_SduPtr=r4 Lin_SduPtr=r4
	.d2prologue_end
# {
#     VAR(Lin_StatusType, AUTOMATIC) u8tempReturn = LIN_NOT_OK;
	.d2line		679
	diab.li		r5,0		# u8tempReturn=r5
# 
#     VAR(uint8, LIN_VAR) u8Lin_ChannelState;
# 
#     /* Check whether the LIN driver is in LIN_INIT state */
#     if(LIN_INIT != Lin_u8LinDrvStatus)
	.d2line		684
.Llo49:
	lis		r6,Lin_u8LinDrvStatus@ha
	lbz		r0,Lin_u8LinDrvStatus@l(r6)
	se_cmpi		r0,2
	bc		1,2,.L466	# eq
#     {
#         /* LIN driver has not been initialized yet */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#         /* Report error to development error tracer */
#         (void)Det_ReportError((uint16)LIN_MODULE_ID,(uint8)0,(uint8)LIN_GETSTATUS_ID,(uint8)LIN_E_UNINIT);
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#         u8tempReturn = LIN_NOT_OK;
	.d2line		691
	diab.li		r5,0		# u8tempReturn=r5
	b		.L467
.L466:
#     }
#     else
#     {
#         /* Check for invalid channel */
#          if (Channel >= Lin_pcConfigPtr->u8Lin_MaxHWChannels)
	.d2line		696
	rlwinm		r0,r3,0,24,31		# Channel=r3
	lis		r6,Lin_pcConfigPtr@ha
	lwz		r6,Lin_pcConfigPtr@l(r6)
	lbz		r6,0(r6)
	se_cmp		r0,r6
	bc		1,0,.L468	# lt
#          {
#             /* Invalid channel */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#             /* Report error to development error tracer */
#             (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                   (uint8)0, \
#                                   (uint8)LIN_GETSTATUS_ID, \
#                                   (uint8)LIN_E_INVALID_CHANNEL \
#                                  );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#             u8tempReturn = LIN_NOT_OK;
	.d2line		707
	diab.li		r5,0		# u8tempReturn=r5
	b		.L467
.L468:
#         }
#         else
#         {
#             /* Check PduInfoPtr for not being a null pointer */
#             if(NULL_PTR == Lin_SduPtr)
	.d2line		712
	se_cmpi		r4,0		# Lin_SduPtr=r4
	bc		0,2,.L470	# ne
#             {
#                 /* Invalid pointer */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#                 /* Report error to development error tracer */
#                 (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                       (uint8)0, \
#                                       (uint8)LIN_GETSTATUS_ID, \
#                                       (uint8)LIN_E_PARAM_POINTER \
#                                      );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#                 u8tempReturn = LIN_NOT_OK;
	.d2line		723
	diab.li		r5,0		# u8tempReturn=r5
	b		.L467
.L470:
#             }
#             else
#             {
#                 u8Lin_ChannelState = Lin_au8LinChStatus[Channel];
	.d2line		727
	lis		r6,Lin_au8LinChStatus@ha		# u8Lin_ChannelState=r6
.Llo51:
	e_add16i		r6,r6,Lin_au8LinChStatus@l		# u8Lin_ChannelState=r6 u8Lin_ChannelState=r6
	rlwinm		r0,r3,0,24,31		# Channel=r3
	se_add		r0,r6		# u8Lin_ChannelState=r6
	lbzx		r6,r0,r0		# u8Lin_ChannelState=r6
	mr		r6,r6		# u8Lin_ChannelState=r6 u8Lin_ChannelState=r6
#                 /* LIN channel state */
#                  switch(u8Lin_ChannelState)
	.d2line		729
	rlwinm		r6,r6,0,24,31		# u8Lin_ChannelState=r6 u8Lin_ChannelState=r6
	se_cmpi		r6,2		# u8Lin_ChannelState=r6
	bc		1,2,.L472	# eq
	se_cmpi		r6,3		# u8Lin_ChannelState=r6
	bc		1,2,.L474	# eq
.Llo52:
	b		.L467
.L472:
#                 {
#                     case LIN_CH_SLEEP_STATE:
#                         u8tempReturn = LIN_CH_SLEEP;
	.d2line		732
.Llo53:
	diab.li		r5,10		# u8tempReturn=r5
	b		.L467
.L474:
#                         break;
#                       case LIN_CH_OPERATIONAL:
#                         /* LIN Channel frame state */
#                         /* Initialize the pointer to return with */
#                         /* the address of the data receive buffer */
#                         *Lin_SduPtr = Lin_au8SduBuffAddress[Channel];
	.d2line		738
.Llo54:
	lis		r5,Lin_au8SduBuffAddress@ha		# u8tempReturn=r5
	e_add16i		r0,r5,Lin_au8SduBuffAddress@l		# u8tempReturn=r5
	rlwinm		r6,r3,3,21,28		# u8Lin_ChannelState=r6 Channel=r3
.Llo55:
	se_add		r0,r6		# u8Lin_ChannelState=r6
	stw		r0,0(r4)		# Lin_SduPtr=r4
#                         u8tempReturn = Lin_Ipw_HardwareGetStatus(Channel, Lin_au8SduBuffAddress[Channel]);
	.d2line		739
	mr		r4,r0
.Llo48:
	rlwinm		r3,r3,0,24,31		# Channel=r3 Channel=r3
.Llo47:
	bl		Lin_Ipw_HardwareGetStatus
.Llo56:
	mr		r5,r3		# u8tempReturn=r5 u8tempReturn=r3
.L467:
#                         break;
#                     default :
#                         break;
#                 }
# 
#             }
#         }
# 
#     }
#     return u8tempReturn;
	.d2line		749
	rlwinm		r3,r5,0,24,31		# Channel=r3 u8tempReturn=r5
# }
	.d2line		750
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo50:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L583:
	.type		Lin_GetStatus,@function
	.size		Lin_GetStatus,.-Lin_GetStatus
# Number of nodes = 70

# Allocations for Lin_GetStatus
#	?a4		Channel
#	?a5		Lin_SduPtr
#	?a6		u8tempReturn
#	?a7		u8Lin_ChannelState
# FUNC(Std_ReturnType, LIN_CODE) Lin_GoToSleep(VAR(uint8, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         785,32
#$$ld
.L596:

#$$bf	Lin_GoToSleep,interprocedural,rasave,nostackparams
	.globl		Lin_GoToSleep
	.d2_cfa_start __cie
Lin_GoToSleep:
.Llo57:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo61:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8TempReturn=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Channel=r4 Channel=r3
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) u8TempReturn = (uint8)E_NOT_OK;
	.d2line		787
	diab.li		r0,1		# u8TempReturn=r0
# 
#     /* Check whether the LIN driver is in LIN_INIT state */
#     if (LIN_INIT != Lin_u8LinDrvStatus)
	.d2line		790
.Llo62:
	lis		r3,Lin_u8LinDrvStatus@ha
.Llo58:
	lbz		r0,Lin_u8LinDrvStatus@l(r3)		# u8TempReturn=r0
.Llo63:
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		1,2,.L483	# eq
#     {
#         /* LIN driver has not been initialized yet */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#         /* Report error to development error tracer */
#         (void)Det_ReportError((uint16)LIN_MODULE_ID,(uint8)0,(uint8)LIN_GOTOSLEEP_ID,(uint8)LIN_E_UNINIT);
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#         u8TempReturn = (uint8)E_NOT_OK;
	.d2line		797
.Llo59:
	diab.li		r3,1		# u8TempReturn=r3
.Llo64:
	b		.L484
.L483:
#     }
#     else
#     {
#         /* Check for invalid channel */
#          if (Channel >= Lin_pcConfigPtr->u8Lin_MaxHWChannels)
	.d2line		802
.Llo65:
	rlwinm		r0,r4,0,24,31		# u8TempReturn=r0 Channel=r4
.Llo66:
	lis		r3,Lin_pcConfigPtr@ha
	lwz		r3,Lin_pcConfigPtr@l(r3)
	lbz		r3,0(r3)
	se_cmp		r0,r3		# u8TempReturn=r0
	bc		1,0,.L485	# lt
#          {
#             /* Invalid channel */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#             /* Report error to development error tracer */
#             (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                   (uint8)0, \
#                                   (uint8)LIN_GOTOSLEEP_ID, \
#                                   (uint8)LIN_E_INVALID_CHANNEL \
#                                  );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#             u8TempReturn = (uint8)E_NOT_OK;
	.d2line		813
.Llo67:
	diab.li		r3,1		# u8TempReturn=r3
.Llo68:
	b		.L484
.L485:
#         }
#         else
#         {
#             /* Check whether the LIN channel is in LIN_CH_SLEEP_STATE state */
#             if(LIN_CH_SLEEP_STATE == Lin_au8LinChStatus[Channel])
	.d2line		818
.Llo69:
	lis		r3,Lin_au8LinChStatus@ha
	e_add16i		r3,r3,Lin_au8LinChStatus@l
	rlwinm		r0,r4,0,24,31		# u8TempReturn=r0 Channel=r4
.Llo70:
	se_add		r0,r3		# u8TempReturn=r0 u8TempReturn=r0
	lbzx		r0,r0,r0		# u8TempReturn=r0 u8TempReturn=r0
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		0,2,.L487	# ne
#             {
#                  /* LIN channel is in sleep mode */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#                 /* Report error to development error tracer */
#                 (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                       (uint8)0, \
#                                       (uint8)LIN_GOTOSLEEP_ID, \
#                                       (uint8)LIN_E_STATE_TRANSITION \
#                                      );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#                 u8TempReturn = (uint8)E_NOT_OK;
	.d2line		829
.Llo71:
	diab.li		r3,1		# u8TempReturn=r3
.Llo72:
	b		.L484
.L487:
#              }
#             else
#             {
#                 if((uint8)E_NOT_OK == Lin_Ipw_GoToSleep(Channel))
	.d2line		833
.Llo73:
	rlwinm		r3,r4,0,24,31		# u8TempReturn=r3 Channel=r4
	bl		Lin_Ipw_GoToSleep
.Llo60:
	rlwinm		r3,r3,0,24,31		# u8TempReturn=r3 u8TempReturn=r3
	se_cmpi		r3,1		# u8TempReturn=r3
#                 {
#                      /* Report Production error */
#                     #if (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#                     if ((uint32)STD_ON == Lin_pcConfigPtr->Lin_E_TimeoutCfg.state)
#                     {
#                         Dem_ReportErrorStatus((Dem_EventIdType)Lin_pcConfigPtr->Lin_E_TimeoutCfg.id, \
#                                                DEM_EVENT_STATUS_FAILED \
#                                              );
#                     }
#                     #endif  /* (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */
#                      u8TempReturn = (uint8)E_NOT_OK;
	.d2line		844
	diab.li		r3,1		# u8TempReturn=r3
	isel		r3,r3,r31,2		# u8TempReturn=r3 u8TempReturn=r3 u8TempReturn=r31
.L489:
#                 }
#                 else
#                 {
#                       u8TempReturn = (uint8)E_OK;
	.d2line		848
	diab.li		r0,0		# u8TempReturn=r0
	isel		r3,r3,r0,2		# u8TempReturn=r3 u8TempReturn=r3 u8TempReturn=r0
.L484:
#                 }
#             }
#         }
#     }
#     return u8TempReturn;
	.d2line		853
	rlwinm		r3,r3,0,24,31		# u8TempReturn=r3 u8TempReturn=r3
# }
	.d2line		854
	.d2epilogue_begin
.Llo74:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8TempReturn=r0
	mtspr		lr,r0		# u8TempReturn=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L597:
	.type		Lin_GoToSleep,@function
	.size		Lin_GoToSleep,.-Lin_GoToSleep
# Number of nodes = 51

# Allocations for Lin_GoToSleep
#	?a4		Channel
#	?a5		u8TempReturn
# FUNC(Std_ReturnType, LIN_CODE) Lin_GoToSleepInternal(VAR(uint8, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         883,32
#$$ld
.L604:

#$$bf	Lin_GoToSleepInternal,interprocedural,rasave,nostackparams
	.globl		Lin_GoToSleepInternal
	.d2_cfa_start __cie
Lin_GoToSleepInternal:
.Llo75:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo81:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8TempReturn=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) u8TempReturn = (uint8)E_NOT_OK;
	.d2line		885
	diab.li		r0,1		# u8TempReturn=r0
# 
#     /* Check whether the LIN driver is in LIN_INIT state */
#     if (LIN_INIT != Lin_u8LinDrvStatus)
	.d2line		888
.Llo82:
	lis		r3,Lin_u8LinDrvStatus@ha
.Llo76:
	lbz		r0,Lin_u8LinDrvStatus@l(r3)		# u8TempReturn=r0
.Llo83:
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		1,2,.L497	# eq
#     {
#         /* LIN driver has not been initialized yet */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#         /* Report error to development error tracer */
#         (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                               (uint8)0, \
#                               (uint8)LIN_GOTOSLEEPINTERNAL_ID, \
#                               (uint8)LIN_E_UNINIT \
#                              );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#         u8TempReturn = (uint8)E_NOT_OK;
	.d2line		899
.Llo77:
	diab.li		r3,1		# u8TempReturn=r3
.Llo84:
	b		.L498
.L497:
#     }
#     else
#     {
#         /* Check for invalid channel */
#          if (Channel >= Lin_pcConfigPtr->u8Lin_MaxHWChannels)
	.d2line		904
.Llo85:
	rlwinm		r0,r31,0,24,31		# u8TempReturn=r0 Channel=r31
.Llo86:
	lis		r3,Lin_pcConfigPtr@ha
	lwz		r3,Lin_pcConfigPtr@l(r3)
	lbz		r3,0(r3)
	se_cmp		r0,r3		# u8TempReturn=r0
	bc		1,0,.L499	# lt
#          {
#             /* Invalid channel */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#             /* Report error to development error tracer */
#             (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                   (uint8)0, \
#                                   (uint8)LIN_GOTOSLEEPINTERNAL_ID, \
#                                   (uint8)LIN_E_INVALID_CHANNEL \
#                                  );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#             u8TempReturn =  (uint8)E_NOT_OK;
	.d2line		915
.Llo87:
	diab.li		r3,1		# u8TempReturn=r3
.Llo88:
	b		.L498
.L499:
#         }
#         else
#         {
#             /* Check whether the LIN channel is in LIN_CH_SLEEP_STATE state */
#             if (LIN_CH_SLEEP_STATE == Lin_au8LinChStatus[Channel])
	.d2line		920
.Llo89:
	lis		r3,Lin_au8LinChStatus@ha
	e_add16i		r3,r3,Lin_au8LinChStatus@l
	rlwinm		r0,r31,0,24,31		# u8TempReturn=r0 Channel=r31
.Llo90:
	se_add		r0,r3		# u8TempReturn=r0 u8TempReturn=r0
	lbzx		r0,r0,r0		# u8TempReturn=r0 u8TempReturn=r0
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		0,2,.L501	# ne
#             {
#                  /* LIN channel is in sleep mode */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#                 /* Report error to development error tracer */
#                 (void)Det_ReportError((uint16) LIN_MODULE_ID, \
#                                       (uint8) 0, \
#                                       (uint8) LIN_GOTOSLEEPINTERNAL_ID, \
#                                       (uint8) LIN_E_STATE_TRANSITION \
#                                      );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#                 u8TempReturn = (uint8)E_NOT_OK;
	.d2line		931
.Llo91:
	diab.li		r3,1		# u8TempReturn=r3
.Llo92:
	b		.L498
.L501:
#              }
#             else
#             {
#                 /* Call LLD function */
#                 if((uint8)E_NOT_OK == Lin_Ipw_GoToSleepInternal(Channel))
	.d2line		936
.Llo93:
	rlwinm		r3,r31,0,24,31		# Channel=r31
	bl		Lin_Ipw_GoToSleepInternal
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L503	# ne
#                 {
#                      /* Report Production error */
#                     #if (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#                     if ((uint32)STD_ON == Lin_pcConfigPtr->Lin_E_TimeoutCfg.state)
#                     {
#                         Dem_ReportErrorStatus((Dem_EventIdType)Lin_pcConfigPtr->Lin_E_TimeoutCfg.id, \
#                                                DEM_EVENT_STATUS_FAILED \
#                                              );
#                     }
#                     #endif  /* (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */
#  
#                     u8TempReturn = (uint8)E_NOT_OK;
	.d2line		948
	diab.li		r3,1		# u8TempReturn=r3
.Llo94:
	b		.L498
.L503:
#                 }
#                 else
#                 {
#                       /* Update LIN channel status to LIN_CH_SLEEP_STATE */
#                     Lin_au8LinChStatus[Channel] = LIN_CH_SLEEP_STATE;
	.d2line		953
.Llo78:
	diab.li		r0,2		# u8TempReturn=r0
.Llo95:
	lis		r3,Lin_au8LinChStatus@ha		# u8TempReturn=r3
	e_add16i		r3,r3,Lin_au8LinChStatus@l		# u8TempReturn=r3 u8TempReturn=r3
.Llo79:
	rlwinm		r31,r31,0,24,31		# Channel=r31 Channel=r31
.Llo80:
	stbux		r0,r3,r31		# u8TempReturn=r3 u8TempReturn=r0
#                     /* Update LIN channel frame operation status to LIN_CH_NOT_READY_STATE */
#                     Lin_au8LinChFrameStatus[Channel] = LIN_CH_NOT_READY_STATE;
	.d2line		955
	diab.li		r0,4		# u8TempReturn=r0
	lis		r3,Lin_au8LinChFrameStatus@ha		# u8TempReturn=r3
	e_add16i		r3,r3,Lin_au8LinChFrameStatus@l		# u8TempReturn=r3 u8TempReturn=r3
	stbux		r0,r3,r31		# u8TempReturn=r3 u8TempReturn=r0
#                     u8TempReturn = (uint8)E_OK;
	.d2line		956
	diab.li		r3,0		# u8TempReturn=r3
.L498:
#                 }
#             }
#         }
#     }
#     return u8TempReturn;
	.d2line		961
.Llo96:
	rlwinm		r3,r3,0,24,31		# u8TempReturn=r3 u8TempReturn=r3
# }
	.d2line		962
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8TempReturn=r0
	mtspr		lr,r0		# u8TempReturn=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L605:
	.type		Lin_GoToSleepInternal,@function
	.size		Lin_GoToSleepInternal,.-Lin_GoToSleepInternal
# Number of nodes = 67

# Allocations for Lin_GoToSleepInternal
#	?a4		Channel
#	?a5		u8TempReturn
# FUNC(Std_ReturnType, LIN_CODE) Lin_SendFrame(VAR(uint8, AUTOMATIC) Channel, P2CONST(Lin_PduType, AUTOMATIC, LIN_APPL_CONST) PduInfoPtr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         996,32
#$$ld
.L612:

#$$bf	Lin_SendFrame,interprocedural,rasave,nostackparams
	.globl		Lin_SendFrame
	.d2_cfa_start __cie
Lin_SendFrame:
.Llo97:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo108:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# u8TempReturn=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	mr		r30,r4		# PduInfoPtr=r30 PduInfoPtr=r4
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) u8TempReturn = (uint8)E_NOT_OK;
	.d2line		998
	diab.li		r0,1		# u8TempReturn=r0
# 
#     /* Check whether the LIN driver is in LIN_INIT state */
#     if (LIN_INIT != Lin_u8LinDrvStatus)
	.d2line		1001
.Llo109:
	lis		r3,Lin_u8LinDrvStatus@ha
.Llo98:
	lbz		r0,Lin_u8LinDrvStatus@l(r3)		# u8TempReturn=r0
.Llo110:
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		1,2,.L511	# eq
#     {
#         /* LIN driver has not been initialized yet */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#         /* Report error to development error tracer */
#         (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                               (uint8)0, \
#                               (uint8)LIN_SENDFRAME_ID, \
#                               (uint8)LIN_E_UNINIT \
#                              );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#         u8TempReturn = (uint8)E_NOT_OK;
	.d2line		1012
.Llo99:
	diab.li		r3,1		# u8TempReturn=r3
.Llo105:
	b		.L512
.L511:
#     }
#     else
#     {
#         /* Check for invalid channel */
#          if (Channel >= Lin_pcConfigPtr->u8Lin_MaxHWChannels)
	.d2line		1017
.Llo111:
	rlwinm		r4,r31,0,24,31		# Channel=r31
	lis		r3,Lin_pcConfigPtr@ha
	lwz		r3,Lin_pcConfigPtr@l(r3)
	lbz		r0,0(r3)		# u8TempReturn=r0
.Llo112:
	se_cmp		r4,r0		# u8TempReturn=r0
	bc		1,0,.L513	# lt
#          {
#             /* Invalid channel */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#             /* Report error to development error tracer */
#             (void)Det_ReportError((uint16)LIN_MODULE_ID,(uint8)0,(uint8)LIN_SENDFRAME_ID, (uint8)LIN_E_INVALID_CHANNEL);
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#             u8TempReturn = (uint8)E_NOT_OK;
	.d2line		1024
.Llo113:
	diab.li		r3,1		# u8TempReturn=r3
.Llo114:
	b		.L512
.L513:
#         }
#         else
#         {
#             /* Check PduInfoPtr for not being a null pointer */
#             if(NULL_PTR == PduInfoPtr)
	.d2line		1029
.Llo115:
	se_cmpi		r30,0		# PduInfoPtr=r30
	bc		0,2,.L515	# ne
#             {
#                 /* Invalid pointer */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#                 /* Report error to development error tracer */
#                 (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                       (uint8)0, \
#                                       (uint8)LIN_SENDFRAME_ID, \
#                                       (uint8)LIN_E_PARAM_POINTER \
#                                      );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#                 u8TempReturn = (uint8)E_NOT_OK;
	.d2line		1040
	diab.li		r3,1		# u8TempReturn=r3
.Llo116:
	b		.L512
.L515:
#             }
#             else
#             {
#                 /* Check whether the LIN channel is in LIN_CH_SLEEP_STATE state */
#                 if (LIN_CH_SLEEP_STATE == Lin_au8LinChStatus[Channel])
	.d2line		1045
.Llo117:
	lis		r3,Lin_au8LinChStatus@ha
	e_add16i		r3,r3,Lin_au8LinChStatus@l
	rlwinm		r4,r31,0,24,31		# Channel=r31
	se_add		r3,r4
	lbzx		r0,r0,r3		# u8TempReturn=r0 u8TempReturn=r0
.Llo118:
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		0,2,.L517	# ne
#                 {
#                     /* LIN channel is in sleep mode */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#                     /* Report error to development error tracer */
#                     (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                           (uint8)0, \
#                                           (uint8)LIN_SENDFRAME_ID, \
#                                           (uint8)LIN_E_STATE_TRANSITION \
#                                          );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#                     u8TempReturn = (uint8)E_NOT_OK;
	.d2line		1056
.Llo119:
	diab.li		r3,1		# u8TempReturn=r3
.Llo120:
	b		.L512
.L517:
#                 }
#                 else
#                 {
#                     /* Lin Master Device will send the header first */
#                     if((uint8)E_NOT_OK == Lin_Ipw_SendHeader(Channel,PduInfoPtr))
	.d2line		1061
.Llo121:
	rlwinm		r3,r31,0,24,31		# Channel=r31
	mr		r4,r30		# PduInfoPtr=r4 PduInfoPtr=r30
	bl		Lin_Ipw_SendHeader
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L519	# ne
#                     {
#                      /* Report Production error */
#                     #if (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#                     if ((uint32)STD_ON == Lin_pcConfigPtr->Lin_E_TimeoutCfg.state)
#                     {
#                         Dem_ReportErrorStatus((Dem_EventIdType)Lin_pcConfigPtr->Lin_E_TimeoutCfg.id, \
#                                                DEM_EVENT_STATUS_FAILED \
#                                              );
#                     }
#                     #endif  /* (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */
#  
#                         u8TempReturn = (uint8)E_NOT_OK;
	.d2line		1073
	diab.li		r3,1		# u8TempReturn=r3
.Llo122:
	b		.L512
.L519:
#                     }
#                     else
#                     {
#                           /* Set header status to TRUE if master wants to send the response frame */
#                         if (LIN_MASTER_RESPONSE == PduInfoPtr->Drc)
	.d2line		1078
.Llo123:
	lbz		r0,2(r30)		# u8TempReturn=r0 PduInfoPtr=r30
.Llo124:
	se_cmpi		r0,0		# u8TempReturn=r0
	bc		0,2,.L521	# ne
#                         {
#                             Lin_au8LinChHeaderStatus[Channel]= (uint8)TRUE;
	.d2line		1080
.Llo125:
	diab.li		r0,1		# u8TempReturn=r0
.Llo126:
	lis		r3,Lin_au8LinChHeaderStatus@ha
	e_add16i		r3,r3,Lin_au8LinChHeaderStatus@l
	rlwinm		r4,r31,0,24,31		# PduInfoPtr=r4 Channel=r31
	stbux		r0,r3,r4		# u8TempReturn=r0
.L521:
#                         }
# 
#                         /* Lin_SendHeader() function should be called first */
#                         if ((uint8)FALSE != Lin_au8LinChHeaderStatus[Channel])
	.d2line		1084
.Llo127:
	lis		r3,Lin_au8LinChHeaderStatus@ha
	e_add16i		r3,r3,Lin_au8LinChHeaderStatus@l
	rlwinm		r4,r31,0,24,31		# PduInfoPtr=r4 Channel=r31
	se_add		r3,r4		# PduInfoPtr=r4
	lbzx		r0,r0,r3		# u8TempReturn=r0 u8TempReturn=r0
.Llo128:
	se_cmpi		r0,0		# u8TempReturn=r0
	bc		1,2,.L522	# eq
#                         {
#                             Lin_au8LinChHeaderStatus[Channel] = (uint8)FALSE;
	.d2line		1086
.Llo100:
	diab.li		r0,0		# u8TempReturn=r0
.Llo129:
	lis		r3,Lin_au8LinChHeaderStatus@ha		# u8TempReturn=r3
	e_add16i		r3,r3,Lin_au8LinChHeaderStatus@l		# u8TempReturn=r3 u8TempReturn=r3
.Llo101:
	rlwinm		r31,r31,0,24,31		# Channel=r31 Channel=r31
.Llo102:
	stbux		r0,r3,r31		# u8TempReturn=r3 u8TempReturn=r0
#                             Lin_Ipw_SendResponse(Channel,PduInfoPtr);
	.d2line		1087
	mr		r3,r31		# Channel=r3
	mr		r4,r30		# PduInfoPtr=r4 PduInfoPtr=r30
	bl		Lin_Ipw_SendResponse
#                             u8TempReturn = (uint8)E_OK;
	.d2line		1088
.Llo130:
	diab.li		r3,0		# u8TempReturn=r3
.Llo131:
	b		.L512
.L522:
#                         }
#                         else
#                         {
#                             u8TempReturn = (uint8)E_OK;
	.d2line		1092
.Llo103:
	diab.li		r3,0		# u8TempReturn=r3
.L512:
#                         }
#                     }
#                 }
#             }
#         }
#     }
#     return u8TempReturn;
	.d2line		1099
.Llo104:
	rlwinm		r3,r3,0,24,31		# u8TempReturn=r3 u8TempReturn=r3
# 
# }
	.d2line		1101
	.d2epilogue_begin
.Llo106:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8TempReturn=r0
	mtspr		lr,r0		# u8TempReturn=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo107:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L613:
	.type		Lin_SendFrame,@function
	.size		Lin_SendFrame,.-Lin_SendFrame
# Number of nodes = 103

# Allocations for Lin_SendFrame
#	?a4		Channel
#	?a5		PduInfoPtr
#	?a6		u8TempReturn
# FUNC(Std_ReturnType, LIN_CODE) Lin_Wakeup(VAR(uint8, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1128,32
#$$ld
.L625:

#$$bf	Lin_Wakeup,interprocedural,rasave,nostackparams
	.globl		Lin_Wakeup
	.d2_cfa_start __cie
Lin_Wakeup:
.Llo132:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo136:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8TempReturn=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) u8TempReturn = (uint8)E_NOT_OK;
	.d2line		1130
	diab.li		r0,1		# u8TempReturn=r0
# 
#     /* Check whether the LIN driver is in LIN_INIT state */
#     if (LIN_INIT != Lin_u8LinDrvStatus)
	.d2line		1133
.Llo137:
	lis		r3,Lin_u8LinDrvStatus@ha
.Llo133:
	lbz		r0,Lin_u8LinDrvStatus@l(r3)		# u8TempReturn=r0
.Llo138:
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		1,2,.L533	# eq
#     {
#         /* LIN driver has not been initialized yet */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#         /* Report error to development error tracer */
#         (void)Det_ReportError((uint16)LIN_MODULE_ID,(uint8)0,(uint8)LIN_WAKEUP_ID,(uint8)LIN_E_UNINIT);
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#         u8TempReturn = (uint8)E_NOT_OK;
	.d2line		1140
.Llo134:
	diab.li		r3,1		# u8TempReturn=r3
.Llo139:
	b		.L534
.L533:
#     }
#     else
#     {
#         /* Check for invalid channel */
#          if (Channel >= Lin_pcConfigPtr->u8Lin_MaxHWChannels)
	.d2line		1145
.Llo140:
	rlwinm		r0,r31,0,24,31		# u8TempReturn=r0 Channel=r31
.Llo141:
	lis		r3,Lin_pcConfigPtr@ha
	lwz		r3,Lin_pcConfigPtr@l(r3)
	lbz		r3,0(r3)
	se_cmp		r0,r3		# u8TempReturn=r0
	bc		1,0,.L535	# lt
#          {
#             /* Invalid channel */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#             /* Report error to development error tracer */
#             (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                   (uint8)0, \
#                                   (uint8)LIN_WAKEUP_ID, \
#                                   (uint8)LIN_E_INVALID_CHANNEL \
#                                  );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#             u8TempReturn = (uint8)E_NOT_OK;
	.d2line		1156
.Llo142:
	diab.li		r3,1		# u8TempReturn=r3
.Llo143:
	b		.L534
.L535:
#         }
#         else
#         {
#             /* Check whether the LIN channel is in LIN_CH_SLEEP_STATE state */
#             if (LIN_CH_SLEEP_STATE != Lin_au8LinChStatus[Channel])
	.d2line		1161
.Llo144:
	lis		r3,Lin_au8LinChStatus@ha
	e_add16i		r3,r3,Lin_au8LinChStatus@l
	rlwinm		r0,r31,0,24,31		# u8TempReturn=r0 Channel=r31
.Llo145:
	se_add		r0,r3		# u8TempReturn=r0 u8TempReturn=r0
	lbzx		r0,r0,r0		# u8TempReturn=r0 u8TempReturn=r0
	se_cmpi		r0,2		# u8TempReturn=r0
	bc		1,2,.L537	# eq
#             {
#                 /* LIN channel is not in sleep mode */
# #if (LIN_DEV_ERROR_DETECT == STD_ON)
#                 /* Report error to development error tracer */
#                 (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                                       (uint8)0, \
#                                       (uint8)LIN_WAKEUP_ID, \
#                                       (uint8)LIN_E_STATE_TRANSITION \
#                                      );
# #endif /* (LIN_DEV_ERROR_DETECT == STD_ON) */
#                 u8TempReturn = (uint8)E_NOT_OK;
	.d2line		1172
.Llo146:
	diab.li		r3,1		# u8TempReturn=r3
.Llo147:
	b		.L534
.L537:
#             }
#             else
#             {
#                 /* Call LLD function */
#                 Lin_Ipw_WakeUp(Channel);
	.d2line		1177
.Llo148:
	rlwinm		r3,r31,0,24,31		# u8TempReturn=r3 Channel=r31
	bl		Lin_Ipw_WakeUp
#                 /* Update LIN channel status to LIN_CH_OPERATIONAL */
#                 Lin_au8LinChStatus[Channel] = LIN_CH_OPERATIONAL;
	.d2line		1179
	diab.li		r0,3		# u8TempReturn=r0
.Llo149:
	lis		r3,Lin_au8LinChStatus@ha		# u8TempReturn=r3
	e_add16i		r3,r3,Lin_au8LinChStatus@l		# u8TempReturn=r3 u8TempReturn=r3
	rlwinm		r31,r31,0,24,31		# Channel=r31 Channel=r31
.Llo135:
	stbux		r0,r3,r31		# u8TempReturn=r3 u8TempReturn=r0
#                 /* Update LIN channel frame operation status to LIN_CH_READY_STATE */
#                 Lin_au8LinChFrameStatus[Channel] = LIN_CH_READY_STATE;
	.d2line		1181
	diab.li		r0,5		# u8TempReturn=r0
	lis		r3,Lin_au8LinChFrameStatus@ha		# u8TempReturn=r3
	e_add16i		r3,r3,Lin_au8LinChFrameStatus@l		# u8TempReturn=r3 u8TempReturn=r3
	stbux		r0,r3,r31		# u8TempReturn=r3 u8TempReturn=r0
#                 u8TempReturn = (uint8)E_OK;
	.d2line		1182
	diab.li		r3,0		# u8TempReturn=r3
.L534:
#             }
#         }
#     }
#     return u8TempReturn;
	.d2line		1186
.Llo150:
	rlwinm		r3,r3,0,24,31		# u8TempReturn=r3 u8TempReturn=r3
# }
	.d2line		1187
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8TempReturn=r0
	mtspr		lr,r0		# u8TempReturn=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L626:
	.type		Lin_Wakeup,@function
	.size		Lin_Wakeup,.-Lin_Wakeup
# Number of nodes = 60

# Allocations for Lin_Wakeup
#	?a4		Channel
#	?a5		u8TempReturn
# FUNC(void, LIN_CODE) Lin_GetVersionInfo (P2VAR(Std_VersionInfoType, AUTOMATIC,LIN_APPL_DATA) versioninfo)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1226,22
#$$ld
.L633:

#$$bf	Lin_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Lin_GetVersionInfo
	.d2_cfa_start __cie
Lin_GetVersionInfo:
.Llo151:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versioninfo=r4 versioninfo=r3
	.d2prologue_end
# {
# #if( LIN_DEV_ERROR_DETECT == STD_ON )
#     if( NULL_PTR == versioninfo )
#     {
#         (void)Det_ReportError((uint16)LIN_MODULE_ID, \
#                               (uint8)0, \
#                               (uint8)LIN_GETVERSIONINFO_ID, \
#                               (uint8) LIN_E_PARAM_POINTER \
#                              );
#     }
#     else
#     {
# #endif /* LIN_DEV_ERROR_DETECT == STD_ON */
#         (versioninfo)->vendorID = (uint16) LIN_VENDOR_ID;
	.d2line		1240
.Llo152:
	diab.li		r3,43
.Llo153:
	sth		r3,0(r4)		# versioninfo=r4
#         (versioninfo)->moduleID = (uint8) LIN_MODULE_ID;
	.d2line		1241
	diab.li		r3,82
	sth		r3,2(r4)		# versioninfo=r4
#         (versioninfo)->sw_major_version = (uint8) LIN_SW_MAJOR_VERSION;
	.d2line		1242
	diab.li		r3,1
	stb		r3,4(r4)		# versioninfo=r4
#         (versioninfo)->sw_minor_version = (uint8) LIN_SW_MINOR_VERSION;
	.d2line		1243
	diab.li		r3,0
	stb		r3,5(r4)		# versioninfo=r4
#         (versioninfo)->sw_patch_version = (uint8) LIN_SW_PATCH_VERSION;
	.d2line		1244
	diab.li		r3,2
	stb		r3,6(r4)		# versioninfo=r4
# #if( LIN_DEV_ERROR_DETECT == STD_ON )
#     }
# #endif /* LIN_DEV_ERROR_DETECT == STD_ON */
# }
	.d2line		1248
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo154:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L634:
	.type		Lin_GetVersionInfo,@function
	.size		Lin_GetVersionInfo,.-Lin_GetVersionInfo
# Number of nodes = 28

# Allocations for Lin_GetVersionInfo
#	?a4		versioninfo

# Allocations for module
	.section	.mcal_data,,d
	.0byte		.L640
	.section	.mcal_data,,d
	.type		Lin_pcConfigPtr,@object
	.size		Lin_pcConfigPtr,4
	.align		2
	.globl		Lin_pcConfigPtr
Lin_pcConfigPtr:
	.long		0
	.section	.mcal_bss,,b
	.0byte		.L642
	.section	.mcal_bss,,b
	.type		Lin_pChannelConfigPtr,@object
	.size		Lin_pChannelConfigPtr,4
	.align		2
	.globl		Lin_pChannelConfigPtr
Lin_pChannelConfigPtr:
	.space		4
	.section	.mcal_data,,d
	.0byte		.L649
	.section	.mcal_data,,d
	.type		Lin_u8LinDrvStatus,@object
	.size		Lin_u8LinDrvStatus,1
	.align		0
Lin_u8LinDrvStatus:
	.byte		1
	.section	.mcal_bss,,b
	.0byte		.L650
	.section	.mcal_bss,,b
	.type		Lin_au8LinChStatus,@object
	.size		Lin_au8LinChStatus,1
	.align		2
	.globl		Lin_au8LinChStatus
Lin_au8LinChStatus:
	.space		1
	.section	.mcal_bss,,b
	.type		Lin_au8LinChFrameStatus,@object
	.size		Lin_au8LinChFrameStatus,1
	.align		2
	.globl		Lin_au8LinChFrameStatus
Lin_au8LinChFrameStatus:
	.space		1
	.section	.mcal_bss,,b
	.type		Lin_au8LinChHeaderStatus,@object
	.size		Lin_au8LinChHeaderStatus,1
	.align		2
Lin_au8LinChHeaderStatus:
	.space		1
	.section	.mcal_bss,,b
	.type		Lin_au8LinChFrameErrorStatus,@object
	.size		Lin_au8LinChFrameErrorStatus,1
	.align		2
	.globl		Lin_au8LinChFrameErrorStatus
Lin_au8LinChFrameErrorStatus:
	.space		1
	.section	.mcal_bss,,b
	.type		Lin_as8ChannelHardwareMap,@object
	.size		Lin_as8ChannelHardwareMap,6
	.align		2
	.globl		Lin_as8ChannelHardwareMap
Lin_as8ChannelHardwareMap:
	.space		6
	.section	.mcal_bss,,b
	.type		Lin_au8TransmitHeaderCommand,@object
	.size		Lin_au8TransmitHeaderCommand,1
	.align		2
	.globl		Lin_au8TransmitHeaderCommand
Lin_au8TransmitHeaderCommand:
	.space		1
	.section	.mcal_bss,,b
	.type		Lin_au8SduBuffAddress,@object
	.size		Lin_au8SduBuffAddress,8
	.align		0
Lin_au8SduBuffAddress:
	.space		8
	.section	.text_vle
#$$ld
.L5:
.L691:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L674:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L641:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L548:
.L556:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	38
	.byte		0x0
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
	.uleb128	14
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin.c"
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
.L545:
	.4byte		.L546-.L544
.L544:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L550-.L545
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L547
	.4byte		.L548
	.4byte		.L551
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L557:
	.sleb128	2
	.4byte		.L553-.L545
	.byte		"Lin_Init"
	.byte		0
	.4byte		.L556
	.uleb128	445
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L554
	.4byte		.L555
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L556
	.uleb128	445
	.uleb128	22
	.byte		"Config"
	.byte		0
	.4byte		.L558
	.4byte		.L562
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L563:
	.sleb128	4
	.4byte		.L556
	.uleb128	447
	.uleb128	26
	.byte		"u8Lin_ChLoop"
	.byte		0
	.4byte		.L564
	.4byte		.L566
.L567:
	.sleb128	4
	.4byte		.L556
	.uleb128	448
	.uleb128	26
	.byte		"u8Lin_Hw_ChLoop"
	.byte		0
	.4byte		.L564
	.4byte		.L568
.L569:
	.sleb128	4
	.4byte		.L556
	.uleb128	449
	.uleb128	26
	.byte		"u8Length"
	.byte		0
	.4byte		.L564
	.4byte		.L570
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L553:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L576:
	.sleb128	5
	.4byte		.L572-.L545
	.byte		"Lin_CheckWakeup"
	.byte		0
	.4byte		.L556
	.uleb128	561
	.uleb128	32
	.4byte		.L575
	.byte		0x1
	.byte		0x1
	.4byte		.L573
	.4byte		.L574
	.sleb128	3
	.4byte		.L556
	.uleb128	561
	.uleb128	32
	.byte		"Channel"
	.byte		0
	.4byte		.L564
	.4byte		.L577
.L578:
	.sleb128	4
	.4byte		.L556
	.uleb128	563
	.uleb128	36
	.byte		"u8TempReturn"
	.byte		0
	.4byte		.L575
	.4byte		.L579
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L572:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L585:
	.sleb128	5
	.4byte		.L581-.L545
	.byte		"Lin_GetStatus"
	.byte		0
	.4byte		.L556
	.uleb128	677
	.uleb128	32
	.4byte		.L584
	.byte		0x1
	.byte		0x1
	.4byte		.L582
	.4byte		.L583
	.sleb128	3
	.4byte		.L556
	.uleb128	677
	.uleb128	32
	.byte		"Channel"
	.byte		0
	.4byte		.L564
	.4byte		.L586
	.sleb128	3
	.4byte		.L556
	.uleb128	677
	.uleb128	32
	.byte		"Lin_SduPtr"
	.byte		0
	.4byte		.L587
	.4byte		.L589
.L590:
	.sleb128	4
	.4byte		.L556
	.uleb128	679
	.uleb128	36
	.byte		"u8tempReturn"
	.byte		0
	.4byte		.L584
	.4byte		.L591
.L592:
	.sleb128	4
	.4byte		.L556
	.uleb128	681
	.uleb128	25
	.byte		"u8Lin_ChannelState"
	.byte		0
	.4byte		.L564
	.4byte		.L593
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L581:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L598:
	.sleb128	5
	.4byte		.L595-.L545
	.byte		"Lin_GoToSleep"
	.byte		0
	.4byte		.L556
	.uleb128	785
	.uleb128	32
	.4byte		.L575
	.byte		0x1
	.byte		0x1
	.4byte		.L596
	.4byte		.L597
	.sleb128	3
	.4byte		.L556
	.uleb128	785
	.uleb128	32
	.byte		"Channel"
	.byte		0
	.4byte		.L564
	.4byte		.L599
.L600:
	.sleb128	4
	.4byte		.L556
	.uleb128	787
	.uleb128	36
	.byte		"u8TempReturn"
	.byte		0
	.4byte		.L575
	.4byte		.L601
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L595:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L606:
	.sleb128	5
	.4byte		.L603-.L545
	.byte		"Lin_GoToSleepInternal"
	.byte		0
	.4byte		.L556
	.uleb128	883
	.uleb128	32
	.4byte		.L575
	.byte		0x1
	.byte		0x1
	.4byte		.L604
	.4byte		.L605
	.sleb128	3
	.4byte		.L556
	.uleb128	883
	.uleb128	32
	.byte		"Channel"
	.byte		0
	.4byte		.L564
	.4byte		.L607
.L608:
	.sleb128	4
	.4byte		.L556
	.uleb128	885
	.uleb128	36
	.byte		"u8TempReturn"
	.byte		0
	.4byte		.L575
	.4byte		.L609
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L603:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L614:
	.sleb128	5
	.4byte		.L611-.L545
	.byte		"Lin_SendFrame"
	.byte		0
	.4byte		.L556
	.uleb128	996
	.uleb128	32
	.4byte		.L575
	.byte		0x1
	.byte		0x1
	.4byte		.L612
	.4byte		.L613
	.sleb128	3
	.4byte		.L556
	.uleb128	996
	.uleb128	32
	.byte		"Channel"
	.byte		0
	.4byte		.L564
	.4byte		.L615
	.sleb128	3
	.4byte		.L556
	.uleb128	996
	.uleb128	32
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L616
	.4byte		.L620
.L621:
	.sleb128	4
	.4byte		.L556
	.uleb128	998
	.uleb128	36
	.byte		"u8TempReturn"
	.byte		0
	.4byte		.L575
	.4byte		.L622
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L611:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L627:
	.sleb128	5
	.4byte		.L624-.L545
	.byte		"Lin_Wakeup"
	.byte		0
	.4byte		.L556
	.uleb128	1128
	.uleb128	32
	.4byte		.L575
	.byte		0x1
	.byte		0x1
	.4byte		.L625
	.4byte		.L626
	.sleb128	3
	.4byte		.L556
	.uleb128	1128
	.uleb128	32
	.byte		"Channel"
	.byte		0
	.4byte		.L564
	.4byte		.L628
.L629:
	.sleb128	4
	.4byte		.L556
	.uleb128	1130
	.uleb128	36
	.byte		"u8TempReturn"
	.byte		0
	.4byte		.L575
	.4byte		.L630
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L624:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L635:
	.sleb128	2
	.4byte		.L632-.L545
	.byte		"Lin_GetVersionInfo"
	.byte		0
	.4byte		.L556
	.uleb128	1226
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L633
	.4byte		.L634
	.sleb128	3
	.4byte		.L556
	.uleb128	1226
	.uleb128	22
	.byte		"versioninfo"
	.byte		0
	.4byte		.L636
	.4byte		.L639
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L632:
	.section	.debug_info,,n
.L640:
	.sleb128	6
	.byte		0x1
	.4byte		.L641
	.uleb128	241
	.uleb128	48
	.byte		"Lin_pcConfigPtr"
	.byte		0
	.4byte		.L558
	.sleb128	5
	.byte		0x3
	.4byte		Lin_pcConfigPtr
	.section	.debug_info,,n
	.section	.debug_info,,n
.L642:
	.sleb128	6
	.byte		0x1
	.4byte		.L641
	.uleb128	270
	.uleb128	55
	.byte		"Lin_pChannelConfigPtr"
	.byte		0
	.4byte		.L643
	.sleb128	5
	.byte		0x3
	.4byte		Lin_pChannelConfigPtr
	.section	.debug_info,,n
	.section	.debug_info,,n
.L649:
	.sleb128	7
	.4byte		.L641
	.uleb128	303
	.uleb128	26
	.byte		"Lin_u8LinDrvStatus"
	.byte		0
	.4byte		.L564
	.sleb128	5
	.byte		0x3
	.4byte		Lin_u8LinDrvStatus
	.section	.debug_info,,n
	.section	.debug_info,,n
.L650:
	.sleb128	6
	.byte		0x1
	.4byte		.L641
	.uleb128	334
	.uleb128	28
	.byte		"Lin_au8LinChStatus"
	.byte		0
	.4byte		.L651
	.sleb128	5
	.byte		0x3
	.4byte		Lin_au8LinChStatus
	.section	.debug_info,,n
	.section	.debug_info,,n
.L654:
	.sleb128	6
	.byte		0x1
	.4byte		.L641
	.uleb128	340
	.uleb128	28
	.byte		"Lin_au8LinChFrameStatus"
	.byte		0
	.4byte		.L655
	.sleb128	5
	.byte		0x3
	.4byte		Lin_au8LinChFrameStatus
	.section	.debug_info,,n
.L657:
	.sleb128	7
	.4byte		.L641
	.uleb128	351
	.uleb128	35
	.byte		"Lin_au8LinChHeaderStatus"
	.byte		0
	.4byte		.L658
	.sleb128	5
	.byte		0x3
	.4byte		Lin_au8LinChHeaderStatus
	.section	.debug_info,,n
.L660:
	.sleb128	6
	.byte		0x1
	.4byte		.L641
	.uleb128	357
	.uleb128	28
	.byte		"Lin_au8LinChFrameErrorStatus"
	.byte		0
	.4byte		.L661
	.sleb128	5
	.byte		0x3
	.4byte		Lin_au8LinChFrameErrorStatus
	.section	.debug_info,,n
.L663:
	.sleb128	6
	.byte		0x1
	.4byte		.L641
	.uleb128	363
	.uleb128	19
	.byte		"Lin_as8ChannelHardwareMap"
	.byte		0
	.4byte		.L664
	.sleb128	5
	.byte		0x3
	.4byte		Lin_as8ChannelHardwareMap
	.section	.debug_info,,n
.L668:
	.sleb128	6
	.byte		0x1
	.4byte		.L641
	.uleb128	369
	.uleb128	20
	.byte		"Lin_au8TransmitHeaderCommand"
	.byte		0
	.4byte		.L669
	.sleb128	5
	.byte		0x3
	.4byte		Lin_au8TransmitHeaderCommand
	.section	.debug_info,,n
.L671:
	.sleb128	7
	.4byte		.L641
	.uleb128	380
	.uleb128	28
	.byte		"Lin_au8SduBuffAddress"
	.byte		0
	.4byte		.L672
	.sleb128	5
	.byte		0x3
	.4byte		Lin_au8SduBuffAddress
	.section	.debug_info,,n
.L561:
	.sleb128	8
	.4byte		.L674
	.uleb128	59
	.uleb128	13
	.4byte		.L675-.L2
	.uleb128	8
	.section	.debug_info,,n
.L432:
	.sleb128	9
	.byte		"u8Lin_MaxHWChannels"
	.byte		0
	.4byte		.L676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L433:
	.sleb128	9
	.byte		"pLin_Channel"
	.byte		0
	.4byte		.L677
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L675:
.L648:
	.sleb128	8
	.4byte		.L674
	.uleb128	59
	.uleb128	13
	.4byte		.L680-.L2
	.uleb128	20
.L426:
	.sleb128	9
	.byte		"u8LinChannelID"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L427:
	.sleb128	9
	.byte		"u8LinHwChannel"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L428:
	.sleb128	9
	.byte		"u32Lin_BaudRate_RegValue"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L429:
	.sleb128	9
	.byte		"u16LinChannelWakeupSupport"
	.byte		0
	.4byte		.L683
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L430:
	.sleb128	9
	.byte		"LinChannelEcuMWakeupSource"
	.byte		0
	.4byte		.L685
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L431:
	.sleb128	9
	.byte		"u8LinChannelBreakLength"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L680:
.L619:
	.sleb128	8
	.4byte		.L674
	.uleb128	59
	.uleb128	13
	.4byte		.L686-.L2
	.uleb128	8
.L421:
	.sleb128	9
	.byte		"Pid"
	.byte		0
	.4byte		.L687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L422:
	.sleb128	9
	.byte		"Cs"
	.byte		0
	.4byte		.L688
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L423:
	.sleb128	9
	.byte		"Drc"
	.byte		0
	.4byte		.L689
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L424:
	.sleb128	9
	.byte		"Dl"
	.byte		0
	.4byte		.L690
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L425:
	.sleb128	9
	.byte		"SduPtr"
	.byte		0
	.4byte		.L588
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L686:
.L638:
	.sleb128	8
	.4byte		.L691
	.uleb128	8045
	.uleb128	5
	.4byte		.L692-.L2
	.uleb128	8
.L243:
	.sleb128	9
	.byte		"vendorID"
	.byte		0
	.4byte		.L683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L244:
	.sleb128	9
	.byte		"moduleID"
	.byte		0
	.4byte		.L683
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L245:
	.sleb128	9
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L246:
	.sleb128	9
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L247:
	.sleb128	9
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L692:
	.section	.debug_info,,n
.L560:
	.sleb128	10
	.byte		"Lin_ConfigType"
	.byte		0
	.4byte		.L561
	.section	.debug_info,,n
.L559:
	.sleb128	11
	.4byte		.L560
	.section	.debug_info,,n
.L558:
	.sleb128	12
	.4byte		.L559
	.section	.debug_info,,n
.L565:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L564:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L565
.L575:
	.sleb128	10
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L564
.L584:
	.sleb128	10
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L564
.L588:
	.sleb128	12
	.4byte		.L564
.L587:
	.sleb128	12
	.4byte		.L588
.L618:
	.sleb128	10
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L619
.L617:
	.sleb128	11
	.4byte		.L618
.L616:
	.sleb128	12
	.4byte		.L617
.L637:
	.sleb128	10
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L638
.L636:
	.sleb128	12
	.4byte		.L637
.L647:
	.sleb128	10
	.byte		"Lin_ChannelConfigType"
	.byte		0
	.4byte		.L648
.L646:
	.sleb128	11
	.4byte		.L647
.L645:
	.sleb128	12
	.4byte		.L646
	.section	.debug_info,,n
.L643:
	.sleb128	14
	.4byte		.L644-.L2
	.4byte		.L645
	.section	.debug_info,,n
	.sleb128	15
	.uleb128	0
	.sleb128	0
.L644:
	.section	.debug_info,,n
.L653:
	.sleb128	16
	.4byte		.L564
.L651:
	.sleb128	14
	.4byte		.L652-.L2
	.4byte		.L653
	.sleb128	15
	.uleb128	0
	.sleb128	0
.L652:
.L655:
	.sleb128	14
	.4byte		.L656-.L2
	.4byte		.L653
	.sleb128	15
	.uleb128	0
	.sleb128	0
.L656:
.L658:
	.sleb128	14
	.4byte		.L659-.L2
	.4byte		.L653
	.sleb128	15
	.uleb128	0
	.sleb128	0
.L659:
.L661:
	.sleb128	14
	.4byte		.L662-.L2
	.4byte		.L653
	.sleb128	15
	.uleb128	0
	.sleb128	0
.L662:
.L667:
	.sleb128	13
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L666:
	.sleb128	10
	.byte		"sint8"
	.byte		0
	.4byte		.L667
.L664:
	.sleb128	14
	.4byte		.L665-.L2
	.4byte		.L666
	.sleb128	15
	.uleb128	5
	.sleb128	0
.L665:
.L669:
	.sleb128	14
	.4byte		.L670-.L2
	.4byte		.L564
	.sleb128	15
	.uleb128	0
	.sleb128	0
.L670:
.L672:
	.sleb128	14
	.4byte		.L673-.L2
	.4byte		.L564
	.sleb128	15
	.uleb128	0
	.sleb128	15
	.uleb128	7
	.sleb128	0
.L673:
.L676:
	.sleb128	11
	.4byte		.L564
.L679:
	.sleb128	11
	.4byte		.L645
.L677:
	.sleb128	14
	.4byte		.L678-.L2
	.4byte		.L679
	.sleb128	15
	.uleb128	0
	.sleb128	0
.L678:
.L682:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L681:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L682
.L684:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L683:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L684
.L685:
	.sleb128	10
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L681
.L687:
	.sleb128	10
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L564
.L688:
	.sleb128	10
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L564
.L689:
	.sleb128	10
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L564
.L690:
	.sleb128	10
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L564
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L550:
	.sleb128	0
.L546:

	.section	.debug_loc,,n
	.align	0
.L562:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locend
.L566:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo16),31
	.d2locend
.L568:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo16),3
	.d2locend
.L570:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L577:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),31
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),31
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),31
	.d2locend
.L579:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo29),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),30
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),30
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),30
	.d2locend
.L586:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locend
.L589:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo48),4
	.d2locend
.L591:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),5
	.d2locend
.L593:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),6
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),6
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),6
	.d2locend
.L599:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),4
	.d2locend
.L601:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo59),0
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),0
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),0
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo74),3
	.d2locend
.L607:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),31
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),31
	.d2locend
.L609:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),0
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),0
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),0
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo78),3
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),0
	.d2locend
.L615:
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),3
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),31
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),31
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),31
	.d2locend
.L620:
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo99),4
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo104),30
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),4
	.d2locend
.L622:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),0
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo99),0
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo111),3
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),0
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),3
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),3
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),0
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),3
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),0
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),0
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo100),0
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo106),3
	.d2locend
.L628:
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),3
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),31
	.d2locend
.L630:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),0
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),0
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),3
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),0
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),3
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),0
	.d2locend
.L639:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),3
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Lin_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Lin_Wakeup"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Lin_Ipw_WakeUp"
	.wrcm.end
	.wrcm.nelem "Lin_SendFrame"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Lin_Ipw_SendHeader","Lin_Ipw_SendResponse"
	.wrcm.end
	.wrcm.nelem "Lin_GoToSleepInternal"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Lin_Ipw_GoToSleepInternal"
	.wrcm.end
	.wrcm.nelem "Lin_GoToSleep"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Lin_Ipw_GoToSleep"
	.wrcm.end
	.wrcm.nelem "Lin_GetStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Ipw_HardwareGetStatus"
	.wrcm.end
	.wrcm.nelem "Lin_CheckWakeup"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "EcuM_SetWakeupEvent","Lin_Ipw_CheckWakeup"
	.wrcm.end
	.wrcm.nelem "Lin_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Lin_Ipw_InitChannel"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Lin\ssc\make\..\..\generator\integration_package\src\Lin.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
