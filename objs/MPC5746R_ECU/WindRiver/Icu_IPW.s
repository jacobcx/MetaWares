#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Icu_IPW.c"
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
# FUNC (void, ICU_CODE) Icu_Ipw_Init
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L525:
	.section	.invalid_TEXT,,c
#$$ld
.L521:
	.0byte		.L519
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_IPW.c"
        .d2line         262,23
#$$ld
.L528:

#$$bf	Icu_Ipw_Init,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_Init
	.d2_cfa_start __cie
Icu_Ipw_Init:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pIpConfig=r31 pIpConfig=r3
	.d2prologue_end
# (
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     /* eMIOS Channel Configuration */
#     if (NULL_PTR != pIpConfig->peMiosIpConfig)
	.d2line		268
	lwz		r0,0(r31)		# pIpConfig=r31
	se_cmpi		r0,0
	bc		1,2,.L460	# eq
#     {
#         Icu_eMios_Init(pIpConfig->peMiosIpConfig);
	.d2line		270
.Llo2:
	lwz		r3,0(r31)		# pIpConfig=r31
.Llo3:
	bl		Icu_eMios_Init
.L460:
#     }
#     /* External Interrupt Channel Configuration */
#     if (NULL_PTR != pIpConfig->pSiul2IpConfig)
	.d2line		273
	lwz		r0,4(r31)		# pIpConfig=r31
	se_cmpi		r0,0
	bc		1,2,.L459	# eq
#     {
#         Icu_Siul2_Init(pIpConfig->pSiul2IpConfig);
	.d2line		275
	lwz		r3,4(r31)		# pIpConfig=r31
	bl		Icu_Siul2_Init
.L459:
#     }
# } 
	.d2line		277
	.d2epilogue_begin
.Llo4:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo5:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L529:
	.type		Icu_Ipw_Init,@function
	.size		Icu_Ipw_Init,.-Icu_Ipw_Init
# Number of nodes = 22

# Allocations for Icu_Ipw_Init
#	?a4		pIpConfig
# FUNC (void, ICU_CODE) Icu_Ipw_DeInit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         291,23
#$$ld
.L540:

#$$bf	Icu_Ipw_DeInit,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_DeInit
	.d2_cfa_start __cie
Icu_Ipw_DeInit:
.Llo7:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pIpConfig=r31 pIpConfig=r3
	.d2prologue_end
# (
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     /* eMIOS Channel Configuration */
#     if (NULL_PTR != pIpConfig->peMiosIpConfig)
	.d2line		297
	lwz		r0,0(r31)		# pIpConfig=r31
	se_cmpi		r0,0
	bc		1,2,.L465	# eq
#     {
#         Icu_eMios_DeInit(pIpConfig->peMiosIpConfig);
	.d2line		299
.Llo8:
	lwz		r3,0(r31)		# pIpConfig=r31
.Llo9:
	bl		Icu_eMios_DeInit
.L465:
#     }
#     /* External Interrupt Channel Configuration */
#     if (NULL_PTR != pIpConfig->pSiul2IpConfig)
	.d2line		302
	lwz		r0,4(r31)		# pIpConfig=r31
	se_cmpi		r0,0
	bc		1,2,.L464	# eq
#     {
#         Icu_Siul2_DeInit(pIpConfig->pSiul2IpConfig);
	.d2line		304
	lwz		r3,4(r31)		# pIpConfig=r31
	bl		Icu_Siul2_DeInit
.L464:
#     }
# }
	.d2line		306
	.d2epilogue_begin
.Llo10:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo11:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo12:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L541:
	.type		Icu_Ipw_DeInit,@function
	.size		Icu_Ipw_DeInit,.-Icu_Ipw_DeInit
# Number of nodes = 22

# Allocations for Icu_Ipw_DeInit
#	?a4		pIpConfig
# FUNC (void, ICU_CODE) Icu_Ipw_SetSleepMode
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         320,23
#$$ld
.L546:

#$$bf	Icu_Ipw_SetSleepMode,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_SetSleepMode
	.d2_cfa_start __cie
Icu_Ipw_SetSleepMode:
.Llo13:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                           AUTOMATIC) nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     P2CONST(Icu_Siul2_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) pSiul2IpChConfig;
#     P2CONST(Icu_Siul2_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  pSiul2ChannelConfig;
# 
#     if (ICU_EMIOS_CHANNEL == (*pIpConfig->pIpChannelsConfig)[nChannelNumber].nChannelIp)
	.d2line		334
	lwz		r5,8(r4)		# pIpConfig=r4
	rlwinm		r0,r3,1,15,30		# nChannelNumber=r3
	lbzx		r0,r5,r0
	se_cmpi		r0,0
	bc		0,2,.L470	# ne
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		336
.Llo14:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo15:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo16:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		337
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo19:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#         peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		338
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r0,4(r4)		# peMiosIpChConfig=r4
	rlwinm		r4,r3,4,0,27		# peMiosIpChConfig=r4 u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
	se_add		r0,r3		# u8IdxChConfig=r3
.Llo29:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
#         nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		339
.Llo26:
	lbz		r3,0(r3)		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
# 
#         Icu_eMios_SetSleepMode((Icu_eMios_ChannelType)ICU_EMIOS_CHANNELS(nHardwareChannel));
	.d2line		341
.Llo22:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo23:
	rlwinm		r3,r3,0,24,31		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	bl		Icu_eMios_SetSleepMode
.Llo28:
	b		.L469
.L470:
#     }
#     else
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		345
.Llo20:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo17:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo18:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         pSiul2IpChConfig = pIpConfig->pSiul2IpConfig;
	.d2line		346
	lwz		r4,4(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo21:
	mr		r4,r4		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
#         pSiul2ChannelConfig = &(*pSiul2IpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		347
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
	rlwinm		r0,r3,3,0,28		# u8IdxChConfig=r3
	se_slwi		r3,1		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 pSiul2IpChConfig=r4
.Llo27:
	mr		r4,r3		# pSiul2ChannelConfig=r4 pSiul2ChannelConfig=r3
#         nHardwareChannel = (Icu_ChannelType)pSiul2ChannelConfig->nHwChannel;
	.d2line		348
.Llo30:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 pSiul2ChannelConfig=r4
.Llo24:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
# 
#         Icu_Siul2_SetSleepMode((Icu_Siul2_ChannelType)ICU_IRQ_CHANNELS(nHardwareChannel));
	.d2line		350
	diab.addi		r3,r3,192		# nHardwareChannel=r3 nHardwareChannel=r3
	rlwinm		r3,r3,0,24,31		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo25:
	bl		Icu_Siul2_SetSleepMode
.L469:
#     }
# }
	.d2line		352
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L547:
	.type		Icu_Ipw_SetSleepMode,@function
	.size		Icu_Ipw_SetSleepMode,.-Icu_Ipw_SetSleepMode
# Number of nodes = 98

# Allocations for Icu_Ipw_SetSleepMode
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$122
#	?a7		$$121
#	?a8		nHardwareChannel
#	?a9		u8IdxChConfig
#	?a10		peMiosIpChConfig
#	?a11		peMiosChannelConfig
#	?a12		pSiul2IpChConfig
#	?a13		pSiul2ChannelConfig
# FUNC (void, ICU_CODE) Icu_Ipw_SetNormalMode
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         364,23
#$$ld
.L586:

#$$bf	Icu_Ipw_SetNormalMode,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_SetNormalMode
	.d2_cfa_start __cie
Icu_Ipw_SetNormalMode:
.Llo31:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                           AUTOMATIC) nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     P2CONST(Icu_Siul2_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) pSiul2IpChConfig;
#     P2CONST(Icu_Siul2_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  pSiul2ChannelConfig;
# 
#     if (ICU_EMIOS_CHANNEL == (*pIpConfig->pIpChannelsConfig)[nChannelNumber].nChannelIp)
	.d2line		378
	lwz		r5,8(r4)		# pIpConfig=r4
	rlwinm		r0,r3,1,15,30		# nChannelNumber=r3
	lbzx		r0,r5,r0
	se_cmpi		r0,0
	bc		0,2,.L475	# ne
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		380
.Llo32:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo33:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo34:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		381
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo37:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#         peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		382
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r0,4(r4)		# peMiosIpChConfig=r4
	rlwinm		r4,r3,4,0,27		# peMiosIpChConfig=r4 u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
	se_add		r0,r3		# u8IdxChConfig=r3
.Llo47:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
#         nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		383
.Llo44:
	lbz		r3,0(r3)		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
# 
#         Icu_eMios_SetNormalMode((Icu_eMios_ChannelType)ICU_EMIOS_CHANNELS(nHardwareChannel));
	.d2line		385
.Llo40:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo41:
	rlwinm		r3,r3,0,24,31		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	bl		Icu_eMios_SetNormalMode
.Llo46:
	b		.L474
.L475:
#     }
#     else
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		389
.Llo38:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo35:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo36:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         pSiul2IpChConfig = pIpConfig->pSiul2IpConfig;
	.d2line		390
	lwz		r4,4(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo39:
	mr		r4,r4		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
#         pSiul2ChannelConfig = &(*pSiul2IpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		391
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
	rlwinm		r0,r3,3,0,28		# u8IdxChConfig=r3
	se_slwi		r3,1		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 pSiul2IpChConfig=r4
.Llo45:
	mr		r4,r3		# pSiul2ChannelConfig=r4 pSiul2ChannelConfig=r3
#         nHardwareChannel = (Icu_ChannelType)pSiul2ChannelConfig->nHwChannel;
	.d2line		392
.Llo48:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 pSiul2ChannelConfig=r4
.Llo42:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
#         
#         Icu_Siul2_SetNormalMode((Icu_Siul2_ChannelType)ICU_IRQ_CHANNELS(nHardwareChannel));
	.d2line		394
	diab.addi		r3,r3,192		# nHardwareChannel=r3 nHardwareChannel=r3
	rlwinm		r3,r3,0,24,31		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo43:
	bl		Icu_Siul2_SetNormalMode
.L474:
#     }
# }
	.d2line		396
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L587:
	.type		Icu_Ipw_SetNormalMode,@function
	.size		Icu_Ipw_SetNormalMode,.-Icu_Ipw_SetNormalMode
# Number of nodes = 98

# Allocations for Icu_Ipw_SetNormalMode
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$124
#	?a7		$$123
#	?a8		nHardwareChannel
#	?a9		u8IdxChConfig
#	?a10		peMiosIpChConfig
#	?a11		peMiosChannelConfig
#	?a12		pSiul2IpChConfig
#	?a13		pSiul2ChannelConfig
# FUNC (void, ICU_CODE) Icu_Ipw_SetActivationCondition
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         410,23
#$$ld
.L605:

#$$bf	Icu_Ipw_SetActivationCondition,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_SetActivationCondition
	.d2_cfa_start __cie
Icu_Ipw_SetActivationCondition:
.Llo49:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# Activation=r4 Activation=r4
	mr		r6,r6		# pIpConfig=r6 pIpConfig=r6
	.d2prologue_end
# (   
#     VAR(Icu_ChannelType,            AUTOMATIC) nChannelNumber,
#     VAR(Icu_ActivationType,         AUTOMATIC) Activation,
#     VAR(Icu_MeasurementModeType,    AUTOMATIC) Mode,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     P2CONST(Icu_Siul2_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) pSiul2IpChConfig;
#     P2CONST(Icu_Siul2_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  pSiul2ChannelConfig;
# 
#     (void) Mode;
# 
#     /* eMIOS Channel Configuration */
#     if (ICU_EMIOS_CHANNEL == (*pIpConfig->pIpChannelsConfig)[nChannelNumber].nChannelIp)
	.d2line		429
	lwz		r5,8(r6)		# pIpConfig=r6
	rlwinm		r0,r3,1,15,30		# nChannelNumber=r3
	lbzx		r0,r5,r0
	se_cmpi		r0,0
	bc		0,2,.L480	# ne
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		431
.Llo50:
	lwz		r0,8(r6)		# pIpConfig=r6
.Llo51:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo52:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		432
	lwz		r5,0(r6)		# peMiosIpChConfig=r5 pIpConfig=r6
.Llo67:
	mr		r5,r5		# peMiosIpChConfig=r5 peMiosIpChConfig=r5
#         peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		433
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r0,4(r5)		# peMiosIpChConfig=r5
	rlwinm		r5,r3,4,0,27		# peMiosIpChConfig=r5 u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r5		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r5
	se_add		r0,r3		# u8IdxChConfig=r3
.Llo68:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
#         nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		434
.Llo65:
	lbz		r3,0(r3)		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
# 
#         Icu_eMios_SetActivationCondition
	.d2line		436
.Llo62:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo63:
	rlwinm		r3,r3,0,24,31		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo55:
	mr		r4,r4		# Activation=r4 Activation=r4
.Llo56:
	bl		Icu_eMios_SetActivationCondition
.Llo59:
	b		.L479
.L480:
#         (
#             (Icu_eMios_ChannelType)ICU_EMIOS_CHANNELS(nHardwareChannel),
#             (Icu_eMios_ActivationType)Activation
#         );
#     }
#     /* External Interrupt Channel Configuration */
#     else
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		445
.Llo60:
	lwz		r0,8(r6)		# pIpConfig=r6
.Llo53:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo54:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         pSiul2IpChConfig = pIpConfig->pSiul2IpConfig;
	.d2line		446
	lwz		r5,4(r6)		# pSiul2ChannelConfig=r5 pIpConfig=r6
.Llo69:
	mr		r5,r5		# pSiul2IpChConfig=r5 pSiul2IpChConfig=r5
#         pSiul2ChannelConfig = &(*pSiul2IpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		447
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r5,4(r5)		# pSiul2IpChConfig=r5 pSiul2IpChConfig=r5
	rlwinm		r0,r3,3,0,28		# u8IdxChConfig=r3
	se_slwi		r3,1		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r5		# u8IdxChConfig=r3 u8IdxChConfig=r3 pSiul2IpChConfig=r5
.Llo66:
	mr		r5,r3		# pSiul2ChannelConfig=r5 pSiul2ChannelConfig=r3
#         nHardwareChannel = (Icu_ChannelType)pSiul2ChannelConfig->nHwChannel;
	.d2line		448
.Llo70:
	lbz		r3,0(r5)		# u8IdxChConfig=r3 pSiul2ChannelConfig=r5
.Llo64:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
#         
#         Icu_Siul2_SetActivationCondition
	.d2line		450
	diab.addi		r3,r3,192		# nHardwareChannel=r3 nHardwareChannel=r3
	rlwinm		r3,r3,0,24,31		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo57:
	mr		r4,r4		# Activation=r4 Activation=r4
.Llo58:
	bl		Icu_Siul2_SetActivationCondition
.L479:
#         (
#             (Icu_Siul2_ChannelType)ICU_IRQ_CHANNELS(nHardwareChannel),
#             (Icu_Siul2_ActivationType)Activation
#         );
#     }
# }
	.d2line		456
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
.L606:
	.type		Icu_Ipw_SetActivationCondition,@function
	.size		Icu_Ipw_SetActivationCondition,.-Icu_Ipw_SetActivationCondition
# Number of nodes = 102

# Allocations for Icu_Ipw_SetActivationCondition
#	?a4		nChannelNumber
#	?a5		Activation
#	not allocated	Mode
#	?a6		pIpConfig
#	?a7		$$126
#	?a8		$$125
#	?a9		nHardwareChannel
#	?a10		u8IdxChConfig
#	?a11		peMiosIpChConfig
#	?a12		peMiosChannelConfig
#	?a13		pSiul2IpChConfig
#	?a14		pSiul2ChannelConfig
# FUNC (Icu_InputStateType, ICU_CODE) Icu_Ipw_GetInputState
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         471,37
#$$ld
.L629:

#$$bf	Icu_Ipw_GetInputState,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_GetInputState
	.d2_cfa_start __cie
Icu_Ipw_GetInputState:
.Llo71:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC) nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     P2CONST(Icu_Siul2_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) pSiul2IpChConfig;
#     P2CONST(Icu_Siul2_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  pSiul2ChannelConfig;
# 
#     VAR(Icu_InputStateType,             AUTOMATIC) tempReturn = ICU_IDLE;
	.d2line		485
	diab.li		r31,1		# tempReturn=r31
# 
#     if (ICU_EMIOS_CHANNEL == (*pIpConfig->pIpChannelsConfig)[nChannelNumber].nChannelIp)
	.d2line		487
	lwz		r5,8(r4)		# pIpConfig=r4
	rlwinm		r0,r3,1,15,30		# nChannelNumber=r3
	lbzx		r0,r5,r0
	se_cmpi		r0,0
	bc		0,2,.L485	# ne
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		489
.Llo72:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo73:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo74:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		490
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo77:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#         peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		491
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r0,4(r4)		# peMiosIpChConfig=r4
	rlwinm		r4,r3,4,0,27		# peMiosIpChConfig=r4 u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
	se_add		r0,r3		# u8IdxChConfig=r3
.Llo89:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
#         nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		492
.Llo86:
	lbz		r3,0(r3)		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
# 
#         if (Icu_eMios_GetInputState((Icu_eMios_ChannelType)ICU_EMIOS_CHANNELS(nHardwareChannel)))
	.d2line		494
.Llo80:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo81:
	rlwinm		r3,r3,0,24,31		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	bl		Icu_eMios_GetInputState
.Llo88:
	e_andi.		r3,r3,255		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	bc		1,2,.L487	# eq
#         {
#             tempReturn = ICU_ACTIVE;
	.d2line		496
	diab.li		r31,0		# tempReturn=r31
	b		.L487
.L485:
#         }
#     }
#     else
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		501
.Llo78:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo75:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo76:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         pSiul2IpChConfig = pIpConfig->pSiul2IpConfig;
	.d2line		502
	lwz		r4,4(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo79:
	mr		r4,r4		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
#         pSiul2ChannelConfig = &(*pSiul2IpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		503
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
	rlwinm		r0,r3,3,0,28		# u8IdxChConfig=r3
	se_slwi		r3,1		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 pSiul2IpChConfig=r4
.Llo87:
	mr		r4,r3		# pSiul2ChannelConfig=r4 pSiul2ChannelConfig=r3
#         nHardwareChannel = (Icu_ChannelType)pSiul2ChannelConfig->nHwChannel;
	.d2line		504
.Llo90:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 pSiul2ChannelConfig=r4
.Llo82:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
# 
#         if (Icu_Siul2_GetInputState((Icu_Siul2_ChannelType)ICU_IRQ_CHANNELS(nHardwareChannel)))
	.d2line		506
	diab.addi		r3,r3,192		# nHardwareChannel=r3 nHardwareChannel=r3
	rlwinm		r3,r3,0,24,31		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo83:
	bl		Icu_Siul2_GetInputState
.Llo84:
	e_andi.		r3,r3,255		# nHardwareChannel=r3 nHardwareChannel=r3
#         {
#             tempReturn = ICU_ACTIVE;
	.d2line		508
.Llo85:
	diab.li		r0,0
	isel		r31,r31,r0,2		# tempReturn=r31 tempReturn=r31
.L487:
#         }
#     }
#     
#     return (tempReturn);
	.d2line		512
	mr		r3,r31		# tempReturn=r3 tempReturn=r31
# }
	.d2line		513
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo91:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L630:
	.type		Icu_Ipw_GetInputState,@function
	.size		Icu_Ipw_GetInputState,.-Icu_Ipw_GetInputState
# Number of nodes = 115

# Allocations for Icu_Ipw_GetInputState
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$128
#	?a7		$$127
#	?a8		nHardwareChannel
#	?a9		u8IdxChConfig
#	?a10		peMiosIpChConfig
#	?a11		peMiosChannelConfig
#	?a12		pSiul2IpChConfig
#	?a13		pSiul2ChannelConfig
#	?a14		tempReturn
# FUNC (void, ICU_CODE) Icu_Ipw_EnableEdgeDetection
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         525,23
#$$ld
.L652:

#$$bf	Icu_Ipw_EnableEdgeDetection,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_EnableEdgeDetection
	.d2_cfa_start __cie
Icu_Ipw_EnableEdgeDetection:
.Llo92:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     P2CONST(Icu_Siul2_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) pSiul2IpChConfig;
#     P2CONST(Icu_Siul2_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  pSiul2ChannelConfig;
# 
# 
#     if (ICU_EMIOS_CHANNEL == (*pIpConfig->pIpChannelsConfig)[nChannelNumber].nChannelIp)
	.d2line		540
	lwz		r5,8(r4)		# pIpConfig=r4
	rlwinm		r0,r3,1,15,30		# nChannelNumber=r3
	lbzx		r0,r5,r0
	se_cmpi		r0,0
	bc		0,2,.L492	# ne
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		542
.Llo93:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo94:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo95:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		543
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo98:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#         peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		544
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r0,4(r4)		# peMiosIpChConfig=r4
	rlwinm		r4,r3,4,0,27		# peMiosIpChConfig=r4 u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
	se_add		r0,r3		# u8IdxChConfig=r3
.Llo108:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
#         nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		545
.Llo105:
	lbz		r3,0(r3)		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
# 
#         Icu_eMios_EnableEdgeDetection((Icu_eMios_ChannelType)ICU_EMIOS_CHANNELS(nHardwareChannel));
	.d2line		547
.Llo101:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo102:
	rlwinm		r3,r3,0,24,31		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	bl		Icu_eMios_EnableEdgeDetection
.Llo107:
	b		.L491
.L492:
#     }
#     else
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		551
.Llo99:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo96:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo97:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         pSiul2IpChConfig = pIpConfig->pSiul2IpConfig;
	.d2line		552
	lwz		r4,4(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo100:
	mr		r4,r4		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
#         pSiul2ChannelConfig = &(*pSiul2IpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		553
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
	rlwinm		r0,r3,3,0,28		# u8IdxChConfig=r3
	se_slwi		r3,1		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 pSiul2IpChConfig=r4
.Llo106:
	mr		r4,r3		# pSiul2ChannelConfig=r4 pSiul2ChannelConfig=r3
#         nHardwareChannel = (Icu_ChannelType)pSiul2ChannelConfig->nHwChannel;
	.d2line		554
.Llo109:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 pSiul2ChannelConfig=r4
.Llo103:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
# 
#         Icu_Siul2_EnableEdgeDetection((Icu_Siul2_ChannelType)ICU_IRQ_CHANNELS(nHardwareChannel));
	.d2line		556
	diab.addi		r3,r3,192		# nHardwareChannel=r3 nHardwareChannel=r3
	rlwinm		r3,r3,0,24,31		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo104:
	bl		Icu_Siul2_EnableEdgeDetection
.L491:
#     }
# }
	.d2line		558
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L653:
	.type		Icu_Ipw_EnableEdgeDetection,@function
	.size		Icu_Ipw_EnableEdgeDetection,.-Icu_Ipw_EnableEdgeDetection
# Number of nodes = 98

# Allocations for Icu_Ipw_EnableEdgeDetection
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$130
#	?a7		$$129
#	?a8		nHardwareChannel
#	?a9		u8IdxChConfig
#	?a10		peMiosIpChConfig
#	?a11		peMiosChannelConfig
#	?a12		pSiul2IpChConfig
#	?a13		pSiul2ChannelConfig
# FUNC (void, ICU_CODE) Icu_Ipw_DisableEdgeDetection
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         572,23
#$$ld
.L671:

#$$bf	Icu_Ipw_DisableEdgeDetection,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_DisableEdgeDetection
	.d2_cfa_start __cie
Icu_Ipw_DisableEdgeDetection:
.Llo110:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     P2CONST(Icu_Siul2_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) pSiul2IpChConfig;
#     P2CONST(Icu_Siul2_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  pSiul2ChannelConfig;
# 
#     if (ICU_EMIOS_CHANNEL == (*pIpConfig->pIpChannelsConfig)[nChannelNumber].nChannelIp)
	.d2line		586
	lwz		r5,8(r4)		# pIpConfig=r4
	rlwinm		r0,r3,1,15,30		# nChannelNumber=r3
	lbzx		r0,r5,r0
	se_cmpi		r0,0
	bc		0,2,.L497	# ne
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		588
.Llo111:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo112:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo113:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		589
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo116:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#         peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		590
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r0,4(r4)		# peMiosIpChConfig=r4
	rlwinm		r4,r3,4,0,27		# peMiosIpChConfig=r4 u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
	se_add		r0,r3		# u8IdxChConfig=r3
.Llo126:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
#         nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		591
.Llo123:
	lbz		r3,0(r3)		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
# 
#         Icu_eMios_DisableEdgeDetection((Icu_eMios_ChannelType)ICU_EMIOS_CHANNELS(nHardwareChannel));
	.d2line		593
.Llo119:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo120:
	rlwinm		r3,r3,0,24,31		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	bl		Icu_eMios_DisableEdgeDetection
.Llo125:
	b		.L496
.L497:
#     }
#     else
#     {
#         u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		597
.Llo117:
	lwz		r0,8(r4)		# pIpConfig=r4
.Llo114:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo115:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#         pSiul2IpChConfig = pIpConfig->pSiul2IpConfig;
	.d2line		598
	lwz		r4,4(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo118:
	mr		r4,r4		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
#         pSiul2ChannelConfig = &(*pSiul2IpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		599
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# pSiul2IpChConfig=r4 pSiul2IpChConfig=r4
	rlwinm		r0,r3,3,0,28		# u8IdxChConfig=r3
	se_slwi		r3,1		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 pSiul2IpChConfig=r4
.Llo124:
	mr		r4,r3		# pSiul2ChannelConfig=r4 pSiul2ChannelConfig=r3
#         nHardwareChannel = (Icu_ChannelType)pSiul2ChannelConfig->nHwChannel;
	.d2line		600
.Llo127:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 pSiul2ChannelConfig=r4
.Llo121:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
# 
#         Icu_Siul2_DisableEdgeDetection((Icu_Siul2_ChannelType)ICU_IRQ_CHANNELS(nHardwareChannel));
	.d2line		602
	diab.addi		r3,r3,192		# nHardwareChannel=r3 nHardwareChannel=r3
	rlwinm		r3,r3,0,24,31		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo122:
	bl		Icu_Siul2_DisableEdgeDetection
.L496:
#     }
# }
	.d2line		604
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L672:
	.type		Icu_Ipw_DisableEdgeDetection,@function
	.size		Icu_Ipw_DisableEdgeDetection,.-Icu_Ipw_DisableEdgeDetection
# Number of nodes = 98

# Allocations for Icu_Ipw_DisableEdgeDetection
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$132
#	?a7		$$131
#	?a8		nHardwareChannel
#	?a9		u8IdxChConfig
#	?a10		peMiosIpChConfig
#	?a11		peMiosChannelConfig
#	?a12		pSiul2IpChConfig
#	?a13		pSiul2ChannelConfig
# FUNC (void, ICU_CODE) Icu_Ipw_StartSignalMeasurement
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         619,23
#$$ld
.L690:

#$$bf	Icu_Ipw_StartSignalMeasurement,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_StartSignalMeasurement
	.d2_cfa_start __cie
Icu_Ipw_StartSignalMeasurement:
.Llo128:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# StartEdge=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	mr.		r0,r5		# StartEdge=?a6 StartEdge=r5
	mr		r5,r6		# MeasProperty=r5 MeasProperty=r6
.Llo133:
	mr		r6,r7		# bDmaSupport=r6 bDmaSupport=r7
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                  AUTOMATIC) nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig,
#     VAR(Icu_ActivationType,                 AUTOMATIC) StartEdge,
#     VAR(Icu_SignalMeasurementPropertyType,  AUTOMATIC) MeasProperty,
#     VAR(boolean,                            AUTOMATIC) bDmaSupport
# )
# {
#     VAR(Icu_eMios_ActivationType,       AUTOMATIC)                 Activation = EMIOS_RISING_EDGE;
	.d2line		628
.Llo137:
	diab.li		r7,1		# Activation=r7
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
#     VAR(boolean, AUTOMATIC) bWithoutInterrupt = (boolean)FALSE;
	.d2line		633
.Llo140:
	diab.li		r7,0		# bWithoutInterrupt=r7
# 
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		635
	lwz		r7,8(r4)		# bWithoutInterrupt=r7 pIpConfig=r4
	.d2line		646
.Llo149:
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r7		# nChannelNumber=r3 nChannelNumber=r3 bWithoutInterrupt=r7
	lbz		r7,1(r3)		# bWithoutInterrupt=r7 nChannelNumber=r3
.Llo147:
	mr		r7,r7		# u8IdxChConfig=r7 u8IdxChConfig=r7
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		636
	lwz		r3,0(r4)		# nChannelNumber=r3 pIpConfig=r4
.Llo129:
	mr		r3,r3		# peMiosIpChConfig=r3 peMiosIpChConfig=r3
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		637
	rlwinm		r4,r7,0,24,31		# pIpConfig=r4 u8IdxChConfig=r7
	lwz		r7,4(r3)		# u8IdxChConfig=r7 peMiosIpChConfig=r3
	rlwinm		r3,r4,4,0,27		# peMiosIpChConfig=r3 pIpConfig=r4
	se_slwi		r4,2		# pIpConfig=r4 pIpConfig=r4
	subf		r4,r4,r3		# pIpConfig=r4 pIpConfig=r4 peMiosIpChConfig=r3
	se_add		r4,r7		# pIpConfig=r4 pIpConfig=r4 u8IdxChConfig=r7
.Llo130:
	mr		r7,r4		# peMiosChannelConfig=r7 peMiosChannelConfig=r4
# 
#     /*Get eMios Hardware Channel */
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		640
.Llo148:
	lbz		r3,0(r7)		# peMiosIpChConfig=r3 peMiosChannelConfig=r7
.Llo145:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
#     
#     bWithoutInterrupt = (boolean)peMiosChannelConfig->bSignalMeasure_WithoutInterrupt;
	.d2line		642
	lbz		r7,9(r7)		# peMiosChannelConfig=r7 peMiosChannelConfig=r7
.Llo150:
	mr		r7,r7		# bWithoutInterrupt=r7 bWithoutInterrupt=r7
#     /* Set Default Start Edge, signal can be start measured either by falling edge or
#     rising edge */
# 
#     if (ICU_FALLING_EDGE == StartEdge)
	.d2line		646
	bc		0,2,.L502	# ne
#     {
#         Activation = EMIOS_FALLING_EDGE;
	.d2line		648
.Llo134:
	diab.li		r4,0		# Activation=r4
.Llo143:
	b		.L503
.L502:
#     }
#     else if (ICU_RISING_EDGE == StartEdge)
	.d2line		650
.Llo144:
	se_cmpi		r0,1		# StartEdge=r0
#     {
#         Activation = EMIOS_RISING_EDGE;
	.d2line		652
	diab.li		r4,1		# pIpConfig=r4
.Llo131:
	isel		r4,r4,r8,2		# Activation=r4 pIpConfig=r4 Activation=r8
.L504:
#     }
#     else
#     {
#         Activation = EMIOS_BOTH_EDGES;
	.d2line		656
.Llo132:
	diab.li		r0,2		# StartEdge=r0
.Llo135:
	isel		r4,r4,r0,2		# Activation=r4 Activation=r4 StartEdge=r0
.L503:
#     }
# 
#     /* Start Signal Measurement */
#     Icu_eMios_StartSignalMeasurement
	.d2line		660
.Llo136:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo146:
	rlwinm		r3,r3,0,24,31		# peMiosIpChConfig=r3 peMiosIpChConfig=r3
.Llo141:
	rlwinm		r6,r6,0,24,31		# bDmaSupport=r6 bDmaSupport=r6
.Llo142:
	rlwinm		r7,r7,0,24,31		# bWithoutInterrupt=r7 bWithoutInterrupt=r7
.Llo151:
	mr		r4,r4		# Activation=r4 Activation=r4
.Llo138:
	mr		r5,r5		# MeasProperty=r5 MeasProperty=r5
.Llo139:
	bl		Icu_eMios_StartSignalMeasurement
#     (
#         (Icu_eMios_ChannelType)ICU_EMIOS_CHANNELS(nHardwareChannel),
#         (Icu_eMios_ActivationType)Activation,
#         (Icu_eMios_SignalMeasurementPropertyType)MeasProperty,
#         (boolean)bDmaSupport,
#         (boolean)bWithoutInterrupt
#     );
# }
	.d2line		668
	.d2epilogue_begin
	lwz		r0,20(r1)		# StartEdge=r0
	mtspr		lr,r0		# StartEdge=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L691:
	.type		Icu_Ipw_StartSignalMeasurement,@function
	.size		Icu_Ipw_StartSignalMeasurement,.-Icu_Ipw_StartSignalMeasurement
# Number of nodes = 79

# Allocations for Icu_Ipw_StartSignalMeasurement
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		StartEdge
#	?a7		MeasProperty
#	?a8		bDmaSupport
#	?a9		$$133
#	?a10		Activation
#	?a11		nHardwareChannel
#	?a12		u8IdxChConfig
#	?a13		peMiosIpChConfig
#	?a14		peMiosChannelConfig
#	?a15		bWithoutInterrupt
# FUNC (void, ICU_CODE) Icu_Ipw_StopSignalMeasurement
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         672,23
#$$ld
.L717:

#$$bf	Icu_Ipw_StopSignalMeasurement,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_StopSignalMeasurement
	.d2_cfa_start __cie
Icu_Ipw_StopSignalMeasurement:
.Llo152:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     /*Get eMios Hardware Channel */
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		684
	lwz		r0,8(r4)		# pIpConfig=r4
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo153:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		685
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo154:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		686
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
	rlwinm		r0,r3,4,0,27		# u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
.Llo157:
	mr		r4,r3		# peMiosChannelConfig=r4 peMiosChannelConfig=r3
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		687
.Llo159:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 peMiosChannelConfig=r4
#     
#     Icu_eMios_StopSignalMeasurement((Icu_eMios_ChannelType)nHardwareChannel);
	.d2line		689
.Llo155:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo156:
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
.Llo158:
	bl		Icu_eMios_StopSignalMeasurement
# }
	.d2line		690
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L718:
	.type		Icu_Ipw_StopSignalMeasurement,@function
	.size		Icu_Ipw_StopSignalMeasurement,.-Icu_Ipw_StopSignalMeasurement
# Number of nodes = 40

# Allocations for Icu_Ipw_StopSignalMeasurement
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$134
#	?a7		nHardwareChannel
#	?a8		u8IdxChConfig
#	?a9		peMiosIpChConfig
#	?a10		peMiosChannelConfig
# FUNC(void, ICU_CODE) Icu_Ipw_StartTimestamp
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         771,22
#$$ld
.L732:

#$$bf	Icu_Ipw_StartTimestamp,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_StartTimestamp
	.d2_cfa_start __cie
Icu_Ipw_StartTimestamp:
.Llo160:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# u8IdxChConfig=r0
.Llo170:
	stw		r0,20(r1)		# u8IdxChConfig=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# nChannelNumber=r0 nChannelNumber=r3
.Llo171:
	mr		r3,r4		# pIpConfig=r3 pIpConfig=r4
.Llo161:
	mr		r4,r5		# bDmaSupport=r4 bDmaSupport=r5
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig,
#     VAR(boolean,                              AUTOMATIC)      bDmaSupport
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     /*Get eMios Hardware Channel */
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		784
.Llo164:
	lwz		r5,8(r3)		# peMiosChannelConfig=r5 pIpConfig=r3
.Llo162:
	rlwinm		r0,r0,1,15,30		# nChannelNumber=r0 nChannelNumber=r0
	se_add		r5,r0		# peMiosChannelConfig=r5 peMiosChannelConfig=r5 nChannelNumber=r0
	lbz		r0,1(r5)		# nChannelNumber=r0 peMiosChannelConfig=r5
.Llo163:
	mr		r0,r0		# u8IdxChConfig=r0 u8IdxChConfig=r0
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		785
	lwz		r5,0(r3)		# peMiosChannelConfig=r5 pIpConfig=r3
.Llo173:
	mr		r5,r5		# peMiosIpChConfig=r5 peMiosIpChConfig=r5
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		786
	rlwinm		r3,r0,0,24,31		# pIpConfig=r3 u8IdxChConfig=r0
	lwz		r5,4(r5)		# peMiosIpChConfig=r5 peMiosIpChConfig=r5
	rlwinm		r0,r3,4,0,27		# u8IdxChConfig=r0 pIpConfig=r3
	se_slwi		r3,2		# pIpConfig=r3 pIpConfig=r3
	subf		r3,r3,r0		# pIpConfig=r3 pIpConfig=r3 u8IdxChConfig=r0
	se_add		r3,r5		# pIpConfig=r3 pIpConfig=r3 peMiosIpChConfig=r5
.Llo165:
	mr		r5,r3		# peMiosChannelConfig=r5 peMiosChannelConfig=r3
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		787
.Llo174:
	lbz		r3,0(r5)		# pIpConfig=r3 peMiosChannelConfig=r5
#     
#     Icu_eMios_StartTimestamp((Icu_eMios_ChannelType)nHardwareChannel, (boolean)bDmaSupport);
	.d2line		789
.Llo169:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo166:
	rlwinm		r3,r3,0,24,31		# pIpConfig=r3 pIpConfig=r3
.Llo167:
	rlwinm		r4,r4,0,24,31		# bDmaSupport=r4 bDmaSupport=r4
.Llo168:
	bl		Icu_eMios_StartTimestamp
# }
	.d2line		790
	.d2epilogue_begin
.Llo172:
	lwz		r0,20(r1)		# u8IdxChConfig=r0
	mtspr		lr,r0		# u8IdxChConfig=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L733:
	.type		Icu_Ipw_StartTimestamp,@function
	.size		Icu_Ipw_StartTimestamp,.-Icu_Ipw_StartTimestamp
# Number of nodes = 43

# Allocations for Icu_Ipw_StartTimestamp
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		bDmaSupport
#	?a7		$$135
#	?a8		nHardwareChannel
#	?a9		u8IdxChConfig
#	?a10		peMiosIpChConfig
#	?a11		peMiosChannelConfig
# FUNC(void, ICU_CODE) Icu_Ipw_StopTimestamp
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         792,22
#$$ld
.L748:

#$$bf	Icu_Ipw_StopTimestamp,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_StopTimestamp
	.d2_cfa_start __cie
Icu_Ipw_StopTimestamp:
.Llo175:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     /*Get eMios Hardware Channel */
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		804
	lwz		r0,8(r4)		# pIpConfig=r4
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo176:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		805
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo177:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		806
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
	rlwinm		r0,r3,4,0,27		# u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
.Llo180:
	mr		r4,r3		# peMiosChannelConfig=r4 peMiosChannelConfig=r3
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		807
.Llo182:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 peMiosChannelConfig=r4
# 
#     Icu_eMios_StopTimestamp((Icu_eMios_ChannelType)nHardwareChannel);
	.d2line		809
.Llo178:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo179:
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
.Llo181:
	bl		Icu_eMios_StopTimestamp
# }
	.d2line		810
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L749:
	.type		Icu_Ipw_StopTimestamp,@function
	.size		Icu_Ipw_StopTimestamp,.-Icu_Ipw_StopTimestamp
# Number of nodes = 40

# Allocations for Icu_Ipw_StopTimestamp
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$136
#	?a7		nHardwareChannel
#	?a8		u8IdxChConfig
#	?a9		peMiosIpChConfig
#	?a10		peMiosChannelConfig
# FUNC(void, ICU_CODE) Icu_Ipw_ResetEdgeCount
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         814,22
#$$ld
.L763:

#$$bf	Icu_Ipw_ResetEdgeCount,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_ResetEdgeCount
	.d2_cfa_start __cie
Icu_Ipw_ResetEdgeCount:
.Llo183:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     /*Get eMios Hardware Channel */
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		826
	lwz		r0,8(r4)		# pIpConfig=r4
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo184:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		827
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo185:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		828
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
	rlwinm		r0,r3,4,0,27		# u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
.Llo188:
	mr		r4,r3		# peMiosChannelConfig=r4 peMiosChannelConfig=r3
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		829
.Llo190:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 peMiosChannelConfig=r4
# 
#     Icu_eMios_ResetEdgeCount((Icu_eMios_ChannelType)nHardwareChannel);
	.d2line		831
.Llo186:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo187:
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
.Llo189:
	bl		Icu_eMios_ResetEdgeCount
# }
	.d2line		832
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L764:
	.type		Icu_Ipw_ResetEdgeCount,@function
	.size		Icu_Ipw_ResetEdgeCount,.-Icu_Ipw_ResetEdgeCount
# Number of nodes = 40

# Allocations for Icu_Ipw_ResetEdgeCount
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$137
#	?a7		nHardwareChannel
#	?a8		u8IdxChConfig
#	?a9		peMiosIpChConfig
#	?a10		peMiosChannelConfig
# FUNC(void, ICU_CODE) Icu_Ipw_EnableEdgeCount
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         834,22
#$$ld
.L778:

#$$bf	Icu_Ipw_EnableEdgeCount,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_EnableEdgeCount
	.d2_cfa_start __cie
Icu_Ipw_EnableEdgeCount:
.Llo191:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig    
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     /*Get eMios Hardware Channel */
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		846
	lwz		r0,8(r4)		# pIpConfig=r4
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo192:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		847
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo193:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		848
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
	rlwinm		r0,r3,4,0,27		# u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
.Llo196:
	mr		r4,r3		# peMiosChannelConfig=r4 peMiosChannelConfig=r3
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		849
.Llo198:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 peMiosChannelConfig=r4
# 
#     Icu_eMios_EnableEdgeCount((Icu_eMios_ChannelType)nHardwareChannel);
	.d2line		851
.Llo194:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo195:
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
.Llo197:
	bl		Icu_eMios_EnableEdgeCount
# }
	.d2line		852
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L779:
	.type		Icu_Ipw_EnableEdgeCount,@function
	.size		Icu_Ipw_EnableEdgeCount,.-Icu_Ipw_EnableEdgeCount
# Number of nodes = 40

# Allocations for Icu_Ipw_EnableEdgeCount
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$138
#	?a7		nHardwareChannel
#	?a8		u8IdxChConfig
#	?a9		peMiosIpChConfig
#	?a10		peMiosChannelConfig
# FUNC(void, ICU_CODE) Icu_Ipw_DisableEdgeCount
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         854,22
#$$ld
.L793:

#$$bf	Icu_Ipw_DisableEdgeCount,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_DisableEdgeCount
	.d2_cfa_start __cie
Icu_Ipw_DisableEdgeCount:
.Llo199:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig    
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     /*Get eMios Hardware Channel */
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		866
	lwz		r0,8(r4)		# pIpConfig=r4
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo200:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		867
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo201:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		868
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
	rlwinm		r0,r3,4,0,27		# u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
.Llo204:
	mr		r4,r3		# peMiosChannelConfig=r4 peMiosChannelConfig=r3
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		869
.Llo206:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 peMiosChannelConfig=r4
# 
#     Icu_eMios_DisableEdgeCount((Icu_eMios_ChannelType)nHardwareChannel);
	.d2line		871
.Llo202:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo203:
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
.Llo205:
	bl		Icu_eMios_DisableEdgeCount
# }
	.d2line		872
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L794:
	.type		Icu_Ipw_DisableEdgeCount,@function
	.size		Icu_Ipw_DisableEdgeCount,.-Icu_Ipw_DisableEdgeCount
# Number of nodes = 40

# Allocations for Icu_Ipw_DisableEdgeCount
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$139
#	?a7		nHardwareChannel
#	?a8		u8IdxChConfig
#	?a9		peMiosIpChConfig
#	?a10		peMiosChannelConfig
# FUNC(Icu_EdgeNumberType, ICU_CODE) Icu_Ipw_GetEdgeNumbers
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         874,36
#$$ld
.L808:

#$$bf	Icu_Ipw_GetEdgeNumbers,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_GetEdgeNumbers
	.d2_cfa_start __cie
Icu_Ipw_GetEdgeNumbers:
.Llo207:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig    
# )
# {
#     VAR(Icu_EdgeNumberType,             AUTOMATIC)                 EdgeNumber;
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     /*Get eMios Hardware Channel */
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		887
	lwz		r0,8(r4)		# pIpConfig=r4
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo208:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		888
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo209:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		889
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
	rlwinm		r0,r3,4,0,27		# u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
.Llo214:
	mr		r4,r3		# peMiosChannelConfig=r4 peMiosChannelConfig=r3
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		890
.Llo216:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 peMiosChannelConfig=r4
# 
#     EdgeNumber = Icu_eMios_GetEdgeNumbers((Icu_eMios_ChannelType)nHardwareChannel);
	.d2line		892
.Llo212:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo213:
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
.Llo215:
	bl		Icu_eMios_GetEdgeNumbers
#     return (EdgeNumber);
	.d2line		893
.Llo210:
	mr		r4,r3		# EdgeNumber=r4 EdgeNumber=r3
# }
	.d2line		894
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo211:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L809:
	.type		Icu_Ipw_GetEdgeNumbers,@function
	.size		Icu_Ipw_GetEdgeNumbers,.-Icu_Ipw_GetEdgeNumbers
# Number of nodes = 44

# Allocations for Icu_Ipw_GetEdgeNumbers
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$140
#	?a7		EdgeNumber
#	?a8		nHardwareChannel
#	?a9		u8IdxChConfig
#	?a10		peMiosIpChConfig
#	?a11		peMiosChannelConfig
# FUNC(boolean, ICU_CODE) Icu_Ipw_Get_Overflow
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         902,25
#$$ld
.L829:

#$$bf	Icu_Ipw_Get_Overflow,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_Get_Overflow
	.d2_cfa_start __cie
Icu_Ipw_Get_Overflow:
.Llo217:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(boolean,                        AUTOMATIC)                 bGetOverflow;
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     /*Get eMios Hardware Channel */
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		915
	lwz		r0,8(r4)		# pIpConfig=r4
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo218:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		916
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo219:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		917
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
	rlwinm		r0,r3,4,0,27		# u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
.Llo224:
	mr		r4,r3		# peMiosChannelConfig=r4 peMiosChannelConfig=r3
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		918
.Llo226:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 peMiosChannelConfig=r4
# 
#     bGetOverflow = (boolean)Icu_eMios_GetOverflow((Icu_eMios_ChannelType)nHardwareChannel);
	.d2line		920
.Llo222:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo223:
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
.Llo225:
	bl		Icu_eMios_GetOverflow
#     return bGetOverflow;
	.d2line		921
.Llo220:
	rlwinm		r3,r3,0,24,31		# bGetOverflow=r3 bGetOverflow=r3
# }
	.d2line		922
	.d2epilogue_begin
.Llo221:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L830:
	.type		Icu_Ipw_Get_Overflow,@function
	.size		Icu_Ipw_Get_Overflow,.-Icu_Ipw_Get_Overflow
# Number of nodes = 44

# Allocations for Icu_Ipw_Get_Overflow
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$141
#	?a7		bGetOverflow
#	?a8		nHardwareChannel
#	?a9		u8IdxChConfig
#	?a10		peMiosIpChConfig
#	?a11		peMiosChannelConfig
# FUNC(void, ICU_CODE) Icu_Ipw_GetPulseWidth
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1013,22
#$$ld
.L846:

#$$bf	Icu_Ipw_GetPulseWidth,interprocedural,rasave,nostackparams
	.globl		Icu_Ipw_GetPulseWidth
	.d2_cfa_start __cie
Icu_Ipw_GetPulseWidth:
.Llo227:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR(Icu_ChannelType,                      AUTOMATIC)      nChannelNumber,
#     CONSTP2CONST(Icu_IpConfigType, AUTOMATIC, ICU_APPL_CONST) pIpConfig
# )
# {
#     VAR(Icu_ChannelType,                AUTOMATIC)                 nHardwareChannel;
#     VAR(uint8,                          AUTOMATIC)                 u8IdxChConfig;
#     P2CONST(Icu_eMios_IpConfigType,     AUTOMATIC, ICU_APPL_CONST) peMiosIpChConfig;
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST)  peMiosChannelConfig;
# 
#     /*Get eMios Hardware Channel */
#     u8IdxChConfig = (*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig;
	.d2line		1025
	lwz		r0,8(r4)		# pIpConfig=r4
	rlwinm		r3,r3,1,15,30		# nChannelNumber=r3 nChannelNumber=r3
	se_add		r3,r0		# nChannelNumber=r3 nChannelNumber=r3
	lbz		r3,1(r3)		# nChannelNumber=r3 nChannelNumber=r3
.Llo228:
	mr		r3,r3		# u8IdxChConfig=r3 u8IdxChConfig=r3
#     peMiosIpChConfig = pIpConfig->peMiosIpConfig;
	.d2line		1026
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo229:
	mr		r4,r4		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
#     peMiosChannelConfig = &(*peMiosIpChConfig->pChannelsConfig)[u8IdxChConfig];
	.d2line		1027
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
	lwz		r4,4(r4)		# peMiosIpChConfig=r4 peMiosIpChConfig=r4
	rlwinm		r0,r3,4,0,27		# u8IdxChConfig=r3
	se_slwi		r3,2		# u8IdxChConfig=r3 u8IdxChConfig=r3
	subf		r3,r3,r0		# u8IdxChConfig=r3 u8IdxChConfig=r3
	se_add		r3,r4		# u8IdxChConfig=r3 u8IdxChConfig=r3 peMiosIpChConfig=r4
.Llo232:
	mr		r4,r3		# peMiosChannelConfig=r4 peMiosChannelConfig=r3
#     nHardwareChannel = (Icu_ChannelType)peMiosChannelConfig->nHwChannel;
	.d2line		1028
.Llo234:
	lbz		r3,0(r4)		# u8IdxChConfig=r3 peMiosChannelConfig=r4
# 
#     Icu_eMios_GetPulseWidth((Icu_eMios_ChannelType)nHardwareChannel);
	.d2line		1030
.Llo230:
	mr		r3,r3		# nHardwareChannel=r3 nHardwareChannel=r3
.Llo231:
	rlwinm		r3,r3,0,24,31		# u8IdxChConfig=r3 u8IdxChConfig=r3
.Llo233:
	bl		Icu_eMios_GetPulseWidth
# }
	.d2line		1031
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L847:
	.type		Icu_Ipw_GetPulseWidth,@function
	.size		Icu_Ipw_GetPulseWidth,.-Icu_Ipw_GetPulseWidth
# Number of nodes = 40

# Allocations for Icu_Ipw_GetPulseWidth
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		$$142
#	?a7		nHardwareChannel
#	?a8		u8IdxChConfig
#	?a9		peMiosIpChConfig
#	?a10		peMiosChannelConfig

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L896:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Icu_Types.h"
.L894:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Icu_eMios.h"
.L859:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Icu_eMios_Types.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L522:
.L530:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_IPW.c"
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
	.uleb128	6
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_IPW.c"
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
.L519:
	.4byte		.L520-.L518
.L518:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L524-.L519
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_IPW.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L521
	.4byte		.L522
	.4byte		.L525
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L531:
	.sleb128	2
	.4byte		.L527-.L519
	.byte		"Icu_Ipw_Init"
	.byte		0
	.4byte		.L530
	.uleb128	262
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L528
	.4byte		.L529
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L530
	.uleb128	262
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L537
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L527:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L542:
	.sleb128	2
	.4byte		.L539-.L519
	.byte		"Icu_Ipw_DeInit"
	.byte		0
	.4byte		.L530
	.uleb128	291
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L540
	.4byte		.L541
	.sleb128	3
	.4byte		.L530
	.uleb128	291
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L543
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L539:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L548:
	.sleb128	2
	.4byte		.L545-.L519
	.byte		"Icu_Ipw_SetSleepMode"
	.byte		0
	.4byte		.L530
	.uleb128	320
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L546
	.4byte		.L547
	.sleb128	3
	.4byte		.L530
	.uleb128	320
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L552
	.sleb128	3
	.4byte		.L530
	.uleb128	320
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L553
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L554:
	.sleb128	4
	.4byte		.L530
	.uleb128	326
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L555
.L556:
	.sleb128	4
	.4byte		.L530
	.uleb128	327
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L559
.L560:
	.sleb128	4
	.4byte		.L530
	.uleb128	328
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L565
.L566:
	.sleb128	4
	.4byte		.L530
	.uleb128	329
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L571
.L572:
	.sleb128	4
	.4byte		.L530
	.uleb128	331
	.uleb128	68
	.byte		"pSiul2IpChConfig"
	.byte		0
	.4byte		.L573
	.4byte		.L577
.L578:
	.sleb128	4
	.4byte		.L530
	.uleb128	332
	.uleb128	68
	.byte		"pSiul2ChannelConfig"
	.byte		0
	.4byte		.L579
	.4byte		.L583
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L545:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L588:
	.sleb128	2
	.4byte		.L585-.L519
	.byte		"Icu_Ipw_SetNormalMode"
	.byte		0
	.4byte		.L530
	.uleb128	364
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L586
	.4byte		.L587
	.sleb128	3
	.4byte		.L530
	.uleb128	364
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L589
	.sleb128	3
	.4byte		.L530
	.uleb128	364
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L590
.L591:
	.sleb128	4
	.4byte		.L530
	.uleb128	370
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L592
.L593:
	.sleb128	4
	.4byte		.L530
	.uleb128	371
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L594
.L595:
	.sleb128	4
	.4byte		.L530
	.uleb128	372
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L596
.L597:
	.sleb128	4
	.4byte		.L530
	.uleb128	373
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L598
.L599:
	.sleb128	4
	.4byte		.L530
	.uleb128	375
	.uleb128	68
	.byte		"pSiul2IpChConfig"
	.byte		0
	.4byte		.L573
	.4byte		.L600
.L601:
	.sleb128	4
	.4byte		.L530
	.uleb128	376
	.uleb128	68
	.byte		"pSiul2ChannelConfig"
	.byte		0
	.4byte		.L579
	.4byte		.L602
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L585:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L607:
	.sleb128	2
	.4byte		.L604-.L519
	.byte		"Icu_Ipw_SetActivationCondition"
	.byte		0
	.4byte		.L530
	.uleb128	410
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L605
	.4byte		.L606
	.sleb128	3
	.4byte		.L530
	.uleb128	410
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L608
	.sleb128	3
	.4byte		.L530
	.uleb128	410
	.uleb128	23
	.byte		"Activation"
	.byte		0
	.4byte		.L609
	.4byte		.L611
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	5
	.4byte		.L530
	.uleb128	410
	.uleb128	23
	.byte		"Mode"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	3
	.4byte		.L530
	.uleb128	410
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L614
.L615:
	.sleb128	4
	.4byte		.L530
	.uleb128	418
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L616
.L617:
	.sleb128	4
	.4byte		.L530
	.uleb128	419
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L618
.L619:
	.sleb128	4
	.4byte		.L530
	.uleb128	420
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L620
.L621:
	.sleb128	4
	.4byte		.L530
	.uleb128	421
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L622
.L623:
	.sleb128	4
	.4byte		.L530
	.uleb128	423
	.uleb128	68
	.byte		"pSiul2IpChConfig"
	.byte		0
	.4byte		.L573
	.4byte		.L624
.L625:
	.sleb128	4
	.4byte		.L530
	.uleb128	424
	.uleb128	68
	.byte		"pSiul2ChannelConfig"
	.byte		0
	.4byte		.L579
	.4byte		.L626
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L604:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L633:
	.sleb128	6
	.4byte		.L628-.L519
	.byte		"Icu_Ipw_GetInputState"
	.byte		0
	.4byte		.L530
	.uleb128	471
	.uleb128	37
	.4byte		.L631
	.byte		0x1
	.byte		0x1
	.4byte		.L629
	.4byte		.L630
	.sleb128	3
	.4byte		.L530
	.uleb128	471
	.uleb128	37
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L634
	.sleb128	3
	.4byte		.L530
	.uleb128	471
	.uleb128	37
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L635
.L636:
	.sleb128	4
	.4byte		.L530
	.uleb128	477
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L637
.L638:
	.sleb128	4
	.4byte		.L530
	.uleb128	478
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L639
.L640:
	.sleb128	4
	.4byte		.L530
	.uleb128	479
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L641
.L642:
	.sleb128	4
	.4byte		.L530
	.uleb128	480
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L643
.L644:
	.sleb128	4
	.4byte		.L530
	.uleb128	482
	.uleb128	68
	.byte		"pSiul2IpChConfig"
	.byte		0
	.4byte		.L573
	.4byte		.L645
.L646:
	.sleb128	4
	.4byte		.L530
	.uleb128	483
	.uleb128	68
	.byte		"pSiul2ChannelConfig"
	.byte		0
	.4byte		.L579
	.4byte		.L647
.L648:
	.sleb128	4
	.4byte		.L530
	.uleb128	485
	.uleb128	52
	.byte		"tempReturn"
	.byte		0
	.4byte		.L631
	.4byte		.L649
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L628:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L654:
	.sleb128	2
	.4byte		.L651-.L519
	.byte		"Icu_Ipw_EnableEdgeDetection"
	.byte		0
	.4byte		.L530
	.uleb128	525
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L652
	.4byte		.L653
	.sleb128	3
	.4byte		.L530
	.uleb128	525
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L655
	.sleb128	3
	.4byte		.L530
	.uleb128	525
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L656
.L657:
	.sleb128	4
	.4byte		.L530
	.uleb128	531
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L658
.L659:
	.sleb128	4
	.4byte		.L530
	.uleb128	532
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L660
.L661:
	.sleb128	4
	.4byte		.L530
	.uleb128	533
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L662
.L663:
	.sleb128	4
	.4byte		.L530
	.uleb128	534
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L664
.L665:
	.sleb128	4
	.4byte		.L530
	.uleb128	536
	.uleb128	68
	.byte		"pSiul2IpChConfig"
	.byte		0
	.4byte		.L573
	.4byte		.L666
.L667:
	.sleb128	4
	.4byte		.L530
	.uleb128	537
	.uleb128	68
	.byte		"pSiul2ChannelConfig"
	.byte		0
	.4byte		.L579
	.4byte		.L668
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L651:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L673:
	.sleb128	2
	.4byte		.L670-.L519
	.byte		"Icu_Ipw_DisableEdgeDetection"
	.byte		0
	.4byte		.L530
	.uleb128	572
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L671
	.4byte		.L672
	.sleb128	3
	.4byte		.L530
	.uleb128	572
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L674
	.sleb128	3
	.4byte		.L530
	.uleb128	572
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L675
.L676:
	.sleb128	4
	.4byte		.L530
	.uleb128	578
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L677
.L678:
	.sleb128	4
	.4byte		.L530
	.uleb128	579
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L679
.L680:
	.sleb128	4
	.4byte		.L530
	.uleb128	580
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L681
.L682:
	.sleb128	4
	.4byte		.L530
	.uleb128	581
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L683
.L684:
	.sleb128	4
	.4byte		.L530
	.uleb128	583
	.uleb128	68
	.byte		"pSiul2IpChConfig"
	.byte		0
	.4byte		.L573
	.4byte		.L685
.L686:
	.sleb128	4
	.4byte		.L530
	.uleb128	584
	.uleb128	68
	.byte		"pSiul2ChannelConfig"
	.byte		0
	.4byte		.L579
	.4byte		.L687
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L670:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L692:
	.sleb128	2
	.4byte		.L689-.L519
	.byte		"Icu_Ipw_StartSignalMeasurement"
	.byte		0
	.4byte		.L530
	.uleb128	619
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L690
	.4byte		.L691
	.sleb128	3
	.4byte		.L530
	.uleb128	619
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L693
	.sleb128	3
	.4byte		.L530
	.uleb128	619
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L694
	.sleb128	3
	.4byte		.L530
	.uleb128	619
	.uleb128	23
	.byte		"StartEdge"
	.byte		0
	.4byte		.L609
	.4byte		.L695
	.sleb128	3
	.4byte		.L530
	.uleb128	619
	.uleb128	23
	.byte		"MeasProperty"
	.byte		0
	.4byte		.L696
	.4byte		.L698
	.sleb128	3
	.4byte		.L530
	.uleb128	619
	.uleb128	23
	.byte		"bDmaSupport"
	.byte		0
	.4byte		.L699
	.4byte		.L700
.L701:
	.sleb128	4
	.4byte		.L530
	.uleb128	628
	.uleb128	68
	.byte		"Activation"
	.byte		0
	.4byte		.L702
	.4byte		.L704
.L705:
	.sleb128	4
	.4byte		.L530
	.uleb128	629
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L706
.L707:
	.sleb128	4
	.4byte		.L530
	.uleb128	630
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L708
.L709:
	.sleb128	4
	.4byte		.L530
	.uleb128	631
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L710
.L711:
	.sleb128	4
	.4byte		.L530
	.uleb128	632
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L712
.L713:
	.sleb128	4
	.4byte		.L530
	.uleb128	633
	.uleb128	29
	.byte		"bWithoutInterrupt"
	.byte		0
	.4byte		.L699
	.4byte		.L714
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L689:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L719:
	.sleb128	2
	.4byte		.L716-.L519
	.byte		"Icu_Ipw_StopSignalMeasurement"
	.byte		0
	.4byte		.L530
	.uleb128	672
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L717
	.4byte		.L718
	.sleb128	3
	.4byte		.L530
	.uleb128	672
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L720
	.sleb128	3
	.4byte		.L530
	.uleb128	672
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L721
.L722:
	.sleb128	4
	.4byte		.L530
	.uleb128	678
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L723
.L724:
	.sleb128	4
	.4byte		.L530
	.uleb128	679
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L725
.L726:
	.sleb128	4
	.4byte		.L530
	.uleb128	680
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L727
.L728:
	.sleb128	4
	.4byte		.L530
	.uleb128	681
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L729
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L716:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L734:
	.sleb128	2
	.4byte		.L731-.L519
	.byte		"Icu_Ipw_StartTimestamp"
	.byte		0
	.4byte		.L530
	.uleb128	771
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L732
	.4byte		.L733
	.sleb128	3
	.4byte		.L530
	.uleb128	771
	.uleb128	22
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L735
	.sleb128	3
	.4byte		.L530
	.uleb128	771
	.uleb128	22
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L736
	.sleb128	3
	.4byte		.L530
	.uleb128	771
	.uleb128	22
	.byte		"bDmaSupport"
	.byte		0
	.4byte		.L699
	.4byte		.L737
.L738:
	.sleb128	4
	.4byte		.L530
	.uleb128	778
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L739
.L740:
	.sleb128	4
	.4byte		.L530
	.uleb128	779
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L741
.L742:
	.sleb128	4
	.4byte		.L530
	.uleb128	780
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L743
.L744:
	.sleb128	4
	.4byte		.L530
	.uleb128	781
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L745
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L731:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L750:
	.sleb128	2
	.4byte		.L747-.L519
	.byte		"Icu_Ipw_StopTimestamp"
	.byte		0
	.4byte		.L530
	.uleb128	792
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L748
	.4byte		.L749
	.sleb128	3
	.4byte		.L530
	.uleb128	792
	.uleb128	22
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L751
	.sleb128	3
	.4byte		.L530
	.uleb128	792
	.uleb128	22
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L752
.L753:
	.sleb128	4
	.4byte		.L530
	.uleb128	798
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L754
.L755:
	.sleb128	4
	.4byte		.L530
	.uleb128	799
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L756
.L757:
	.sleb128	4
	.4byte		.L530
	.uleb128	800
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L758
.L759:
	.sleb128	4
	.4byte		.L530
	.uleb128	801
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L760
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L747:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L765:
	.sleb128	2
	.4byte		.L762-.L519
	.byte		"Icu_Ipw_ResetEdgeCount"
	.byte		0
	.4byte		.L530
	.uleb128	814
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L763
	.4byte		.L764
	.sleb128	3
	.4byte		.L530
	.uleb128	814
	.uleb128	22
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L766
	.sleb128	3
	.4byte		.L530
	.uleb128	814
	.uleb128	22
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L767
.L768:
	.sleb128	4
	.4byte		.L530
	.uleb128	820
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L769
.L770:
	.sleb128	4
	.4byte		.L530
	.uleb128	821
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L771
.L772:
	.sleb128	4
	.4byte		.L530
	.uleb128	822
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L773
.L774:
	.sleb128	4
	.4byte		.L530
	.uleb128	823
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L775
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L762:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L780:
	.sleb128	2
	.4byte		.L777-.L519
	.byte		"Icu_Ipw_EnableEdgeCount"
	.byte		0
	.4byte		.L530
	.uleb128	834
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L778
	.4byte		.L779
	.sleb128	3
	.4byte		.L530
	.uleb128	834
	.uleb128	22
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L781
	.sleb128	3
	.4byte		.L530
	.uleb128	834
	.uleb128	22
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L782
.L783:
	.sleb128	4
	.4byte		.L530
	.uleb128	840
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L784
.L785:
	.sleb128	4
	.4byte		.L530
	.uleb128	841
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L786
.L787:
	.sleb128	4
	.4byte		.L530
	.uleb128	842
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L788
.L789:
	.sleb128	4
	.4byte		.L530
	.uleb128	843
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L790
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L777:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L795:
	.sleb128	2
	.4byte		.L792-.L519
	.byte		"Icu_Ipw_DisableEdgeCount"
	.byte		0
	.4byte		.L530
	.uleb128	854
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L793
	.4byte		.L794
	.sleb128	3
	.4byte		.L530
	.uleb128	854
	.uleb128	22
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L796
	.sleb128	3
	.4byte		.L530
	.uleb128	854
	.uleb128	22
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L797
.L798:
	.sleb128	4
	.4byte		.L530
	.uleb128	860
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L799
.L800:
	.sleb128	4
	.4byte		.L530
	.uleb128	861
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L801
.L802:
	.sleb128	4
	.4byte		.L530
	.uleb128	862
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L803
.L804:
	.sleb128	4
	.4byte		.L530
	.uleb128	863
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L805
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L792:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L814:
	.sleb128	6
	.4byte		.L807-.L519
	.byte		"Icu_Ipw_GetEdgeNumbers"
	.byte		0
	.4byte		.L530
	.uleb128	874
	.uleb128	36
	.4byte		.L810
	.byte		0x1
	.byte		0x1
	.4byte		.L808
	.4byte		.L809
	.sleb128	3
	.4byte		.L530
	.uleb128	874
	.uleb128	36
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L815
	.sleb128	3
	.4byte		.L530
	.uleb128	874
	.uleb128	36
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L816
.L817:
	.sleb128	4
	.4byte		.L530
	.uleb128	880
	.uleb128	68
	.byte		"EdgeNumber"
	.byte		0
	.4byte		.L810
	.4byte		.L818
.L819:
	.sleb128	4
	.4byte		.L530
	.uleb128	881
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L820
.L821:
	.sleb128	4
	.4byte		.L530
	.uleb128	882
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L822
.L823:
	.sleb128	4
	.4byte		.L530
	.uleb128	883
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L824
.L825:
	.sleb128	4
	.4byte		.L530
	.uleb128	884
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L826
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L807:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L831:
	.sleb128	6
	.4byte		.L828-.L519
	.byte		"Icu_Ipw_Get_Overflow"
	.byte		0
	.4byte		.L530
	.uleb128	902
	.uleb128	25
	.4byte		.L699
	.byte		0x1
	.byte		0x1
	.4byte		.L829
	.4byte		.L830
	.sleb128	3
	.4byte		.L530
	.uleb128	902
	.uleb128	25
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L832
	.sleb128	3
	.4byte		.L530
	.uleb128	902
	.uleb128	25
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L833
.L834:
	.sleb128	4
	.4byte		.L530
	.uleb128	908
	.uleb128	68
	.byte		"bGetOverflow"
	.byte		0
	.4byte		.L699
	.4byte		.L835
.L836:
	.sleb128	4
	.4byte		.L530
	.uleb128	909
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L837
.L838:
	.sleb128	4
	.4byte		.L530
	.uleb128	910
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L839
.L840:
	.sleb128	4
	.4byte		.L530
	.uleb128	911
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L841
.L842:
	.sleb128	4
	.4byte		.L530
	.uleb128	912
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L843
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L828:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L848:
	.sleb128	2
	.4byte		.L845-.L519
	.byte		"Icu_Ipw_GetPulseWidth"
	.byte		0
	.4byte		.L530
	.uleb128	1013
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L846
	.4byte		.L847
	.sleb128	3
	.4byte		.L530
	.uleb128	1013
	.uleb128	22
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L549
	.4byte		.L849
	.sleb128	3
	.4byte		.L530
	.uleb128	1013
	.uleb128	22
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L532
	.4byte		.L850
.L851:
	.sleb128	4
	.4byte		.L530
	.uleb128	1019
	.uleb128	68
	.byte		"nHardwareChannel"
	.byte		0
	.4byte		.L549
	.4byte		.L852
.L853:
	.sleb128	4
	.4byte		.L530
	.uleb128	1020
	.uleb128	68
	.byte		"u8IdxChConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L854
.L855:
	.sleb128	4
	.4byte		.L530
	.uleb128	1021
	.uleb128	68
	.byte		"peMiosIpChConfig"
	.byte		0
	.4byte		.L561
	.4byte		.L856
.L857:
	.sleb128	4
	.4byte		.L530
	.uleb128	1022
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L567
	.4byte		.L858
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L845:
	.section	.debug_info,,n
.L536:
	.sleb128	7
	.4byte		.L859
	.uleb128	288
	.uleb128	1
	.4byte		.L860-.L2
	.uleb128	12
	.section	.debug_info,,n
.L456:
	.sleb128	8
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L457:
	.sleb128	8
	.byte		"pSiul2IpConfig"
	.byte		0
	.4byte		.L862
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L458:
	.sleb128	8
	.byte		"pIpChannelsConfig"
	.byte		0
	.4byte		.L863
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L860:
.L868:
	.sleb128	7
	.4byte		.L859
	.uleb128	288
	.uleb128	1
	.4byte		.L869-.L2
	.uleb128	2
.L454:
	.sleb128	8
	.byte		"nChannelIp"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L455:
	.sleb128	8
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L869:
.L576:
	.sleb128	7
	.4byte		.L859
	.uleb128	288
	.uleb128	1
	.4byte		.L873-.L2
	.uleb128	8
.L451:
	.sleb128	8
	.byte		"nNumChannels"
	.byte		0
	.4byte		.L874
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L452:
	.sleb128	8
	.byte		"Icu_GlobalConfiguration"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L453:
	.sleb128	8
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L873:
.L582:
	.sleb128	7
	.4byte		.L859
	.uleb128	288
	.uleb128	1
	.4byte		.L881-.L2
	.uleb128	6
.L448:
	.sleb128	8
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L874
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	8
	.byte		"nControlValue"
	.byte		0
	.4byte		.L882
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	8
	.byte		"nDefaultStartEdge"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L881:
.L564:
	.sleb128	7
	.4byte		.L859
	.uleb128	288
	.uleb128	1
	.4byte		.L884-.L2
	.uleb128	8
.L446:
	.sleb128	8
	.byte		"nNumChannels"
	.byte		0
	.4byte		.L885
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L447:
	.sleb128	8
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L887
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L884:
.L570:
	.sleb128	7
	.4byte		.L859
	.uleb128	288
	.uleb128	1
	.4byte		.L890-.L2
	.uleb128	12
.L442:
	.sleb128	8
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L885
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L443:
	.sleb128	8
	.byte		"nControlValue"
	.byte		0
	.4byte		.L891
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L444:
	.sleb128	8
	.byte		"nDefaultStartEdge"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L445:
	.sleb128	8
	.byte		"bSignalMeasure_WithoutInterrupt"
	.byte		0
	.4byte		.L893
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
	.sleb128	0
.L890:
	.section	.debug_info,,n
.L703:
	.sleb128	9
	.4byte		.L894
	.uleb128	117
	.uleb128	1
	.4byte		.L895-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"EMIOS_FALLING_EDGE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"EMIOS_RISING_EDGE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"EMIOS_BOTH_EDGES"
	.byte		0
	.sleb128	2
	.sleb128	0
.L895:
.L610:
	.sleb128	9
	.4byte		.L896
	.uleb128	180
	.uleb128	1
	.4byte		.L897-.L2
	.uleb128	4
	.sleb128	10
	.byte		"ICU_FALLING_EDGE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"ICU_RISING_EDGE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"ICU_BOTH_EDGES"
	.byte		0
	.sleb128	2
	.sleb128	0
.L897:
.L697:
	.sleb128	9
	.4byte		.L896
	.uleb128	148
	.uleb128	1
	.4byte		.L898-.L2
	.uleb128	4
	.sleb128	10
	.byte		"ICU_LOW_TIME"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"ICU_HIGH_TIME"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"ICU_ACTIVE_TIME"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"ICU_PERIOD_TIME"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"ICU_DUTY_CYCLE"
	.byte		0
	.sleb128	8
	.sleb128	0
.L898:
.L613:
	.sleb128	9
	.4byte		.L896
	.uleb128	132
	.uleb128	1
	.4byte		.L899-.L2
	.uleb128	4
	.sleb128	10
	.byte		"ICU_MODE_SIGNAL_EDGE_DETECT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"ICU_MODE_SIGNAL_MEASUREMENT"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"ICU_MODE_TIMESTAMP"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"ICU_MODE_EDGE_COUNTER"
	.byte		0
	.sleb128	8
	.sleb128	0
.L899:
.L632:
	.sleb128	9
	.4byte		.L896
	.uleb128	120
	.uleb128	1
	.4byte		.L900-.L2
	.uleb128	4
	.sleb128	10
	.byte		"ICU_ACTIVE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"ICU_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L900:
	.section	.debug_info,,n
.L535:
	.sleb128	11
	.byte		"Icu_IpConfigType"
	.byte		0
	.4byte		.L536
	.section	.debug_info,,n
.L534:
	.sleb128	12
	.4byte		.L535
	.section	.debug_info,,n
.L533:
	.sleb128	13
	.4byte		.L534
.L532:
	.sleb128	12
	.4byte		.L533
	.section	.debug_info,,n
.L551:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L550:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L551
.L549:
	.sleb128	11
	.byte		"Icu_ChannelType"
	.byte		0
	.4byte		.L550
.L558:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L557:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L558
.L563:
	.sleb128	11
	.byte		"Icu_eMios_IpConfigType"
	.byte		0
	.4byte		.L564
.L562:
	.sleb128	12
	.4byte		.L563
.L561:
	.sleb128	13
	.4byte		.L562
.L569:
	.sleb128	11
	.byte		"Icu_eMios_ChannelConfigType"
	.byte		0
	.4byte		.L570
.L568:
	.sleb128	12
	.4byte		.L569
.L567:
	.sleb128	13
	.4byte		.L568
.L575:
	.sleb128	11
	.byte		"Icu_Siul2_IpConfigType"
	.byte		0
	.4byte		.L576
.L574:
	.sleb128	12
	.4byte		.L575
.L573:
	.sleb128	13
	.4byte		.L574
.L581:
	.sleb128	11
	.byte		"Icu_Siul2_ChannelConfigType"
	.byte		0
	.4byte		.L582
.L580:
	.sleb128	12
	.4byte		.L581
.L579:
	.sleb128	13
	.4byte		.L580
.L609:
	.sleb128	11
	.byte		"Icu_ActivationType"
	.byte		0
	.4byte		.L610
.L612:
	.sleb128	11
	.byte		"Icu_MeasurementModeType"
	.byte		0
	.4byte		.L613
.L631:
	.sleb128	11
	.byte		"Icu_InputStateType"
	.byte		0
	.4byte		.L632
.L696:
	.sleb128	11
	.byte		"Icu_SignalMeasurementPropertyType"
	.byte		0
	.4byte		.L697
.L699:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L558
.L702:
	.sleb128	11
	.byte		"Icu_eMios_ActivationType"
	.byte		0
	.4byte		.L703
.L813:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L812:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L813
.L811:
	.sleb128	11
	.byte		"Icu_HwSpecificEdgeNumberType"
	.byte		0
	.4byte		.L812
.L810:
	.sleb128	11
	.byte		"Icu_EdgeNumberType"
	.byte		0
	.4byte		.L811
.L861:
	.sleb128	12
	.4byte		.L561
.L862:
	.sleb128	12
	.4byte		.L573
.L867:
	.sleb128	11
	.byte		"Icu_IpChannelConfigType"
	.byte		0
	.4byte		.L868
.L866:
	.sleb128	12
	.4byte		.L867
	.section	.debug_info,,n
.L864:
	.sleb128	15
	.4byte		.L865-.L2
	.4byte		.L866
	.section	.debug_info,,n
	.sleb128	16
	.sleb128	0
.L865:
.L863:
	.sleb128	13
	.4byte		.L864
.L871:
	.sleb128	11
	.byte		"Icu_ChannelIpType"
	.byte		0
	.4byte		.L557
.L870:
	.sleb128	12
	.4byte		.L871
.L872:
	.sleb128	12
	.4byte		.L557
.L875:
	.sleb128	11
	.byte		"Icu_Siul2_ChannelType"
	.byte		0
	.4byte		.L557
.L874:
	.sleb128	12
	.4byte		.L875
.L877:
	.sleb128	11
	.byte		"Icu_Siul2_GlobalConfigurationType"
	.byte		0
	.4byte		.L550
.L876:
	.sleb128	12
	.4byte		.L877
.L879:
	.sleb128	15
	.4byte		.L880-.L2
	.4byte		.L580
	.sleb128	16
	.sleb128	0
.L880:
.L878:
	.sleb128	13
	.4byte		.L879
.L883:
	.sleb128	11
	.byte		"Icu_Siul2_ControlType"
	.byte		0
	.4byte		.L550
.L882:
	.sleb128	12
	.4byte		.L883
.L886:
	.sleb128	11
	.byte		"Icu_eMios_ChannelType"
	.byte		0
	.4byte		.L557
.L885:
	.sleb128	12
	.4byte		.L886
.L888:
	.sleb128	15
	.4byte		.L889-.L2
	.4byte		.L568
	.sleb128	16
	.sleb128	0
.L889:
.L887:
	.sleb128	13
	.4byte		.L888
.L892:
	.sleb128	11
	.byte		"Icu_eMios_ControlType"
	.byte		0
	.4byte		.L812
.L891:
	.sleb128	12
	.4byte		.L892
.L893:
	.sleb128	12
	.4byte		.L699
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L524:
	.sleb128	0
.L520:

	.section	.debug_loc,,n
	.align	0
.L537:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L543:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L552:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locend
.L553:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo19),4
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),4
	.d2locend
.L555:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locend
.L559:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo27),3
	.d2locend
.L565:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo28),4
	.d2locend
.L571:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo28),0
	.d2locend
.L577:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo30),4
	.d2locend
.L583:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo24),3
	.d2locend
.L589:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locend
.L590:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo37),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),4
	.d2locend
.L592:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locend
.L594:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo45),3
	.d2locend
.L596:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo46),4
	.d2locend
.L598:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo46),0
	.d2locend
.L600:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo48),4
	.d2locend
.L602:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo42),3
	.d2locend
.L608:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locend
.L611:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),4
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),4
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),4
	.d2locend
.L614:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo59),6
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),6
	.d2locend
.L616:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),3
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo57),3
	.d2locend
.L618:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo66),3
	.d2locend
.L620:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo59),5
	.d2locend
.L622:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo59),0
	.d2locend
.L624:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),5
	.d2locend
.L626:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo64),3
	.d2locend
.L634:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locend
.L635:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo77),4
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),4
	.d2locend
.L637:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locend
.L639:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo86),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo87),3
	.d2locend
.L641:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo88),4
	.d2locend
.L643:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo88),0
	.d2locend
.L645:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo90),4
	.d2locend
.L647:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo82),3
	.d2locend
.L649:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo91),31
	.d2locend
.L655:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locend
.L656:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo98),4
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),4
	.d2locend
.L658:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),3
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),3
	.d2locend
.L660:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo105),3
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo106),3
	.d2locend
.L662:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo107),4
	.d2locend
.L664:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo107),0
	.d2locend
.L666:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo109),4
	.d2locend
.L668:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo103),3
	.d2locend
.L674:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),3
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),3
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),3
	.d2locend
.L675:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo116),4
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),4
	.d2locend
.L677:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),3
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),3
	.d2locend
.L679:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo124),3
	.d2locend
.L681:
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo125),4
	.d2locend
.L683:
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo125),0
	.d2locend
.L685:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo127),4
	.d2locend
.L687:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo121),3
	.d2locend
.L693:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),3
	.d2locend
.L694:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo130),4
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),4
	.d2locend
.L695:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo133),5
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo132),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),0
	.d2locend
.L698:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo137),6
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo136),5
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),5
	.d2locend
.L700:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo140),7
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo136),6
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),6
	.d2locend
.L704:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),4
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo138),4
	.d2locend
.L706:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locend
.L708:
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),7
	.d2locend
.L710:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo145),3
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo141),3
	.d2locend
.L712:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo134),4
	.d2locend
.L714:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo147),7
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo136),7
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo151),7
	.d2locend
.L720:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),3
	.d2locend
.L721:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo154),4
	.d2locend
.L723:
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),3
	.d2locend
.L725:
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo157),3
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo158),3
	.d2locend
.L727:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo159),4
	.d2locend
.L729:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo155),3
	.d2locend
.L735:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),3
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),0
	.d2locend
.L736:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),4
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),3
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo167),3
	.d2locend
.L737:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo162),5
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),4
	.d2locend
.L739:
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo166),3
	.d2locend
.L741:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),0
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo172),0
	.d2locend
.L743:
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),5
	.d2locend
.L745:
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo173),5
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo169),3
	.d2locend
.L751:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locend
.L752:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo177),4
	.d2locend
.L754:
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),3
	.d2locend
.L756:
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo180),3
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo181),3
	.d2locend
.L758:
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo182),4
	.d2locend
.L760:
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo178),3
	.d2locend
.L766:
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),3
	.d2locend
.L767:
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo185),4
	.d2locend
.L769:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),3
	.d2locend
.L771:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo188),3
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo189),3
	.d2locend
.L773:
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo190),4
	.d2locend
.L775:
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo186),3
	.d2locend
.L781:
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),3
	.d2locend
.L782:
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo193),4
	.d2locend
.L784:
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo195),3
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo196),3
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo197),3
	.d2locend
.L788:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo198),4
	.d2locend
.L790:
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo194),3
	.d2locend
.L796:
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo200),3
	.d2locend
.L797:
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo201),4
	.d2locend
.L799:
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),3
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo204),3
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo205),3
	.d2locend
.L803:
	.d2locreg	%offsetof(.Llo201), %offsetof(.Llo206),4
	.d2locend
.L805:
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo202),3
	.d2locend
.L815:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),3
	.d2locend
.L816:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo209),4
	.d2locend
.L818:
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),3
	.d2locend
.L820:
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),3
	.d2locend
.L822:
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo214),3
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo215),3
	.d2locend
.L824:
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo216),4
	.d2locend
.L826:
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo212),3
	.d2locend
.L832:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),3
	.d2locend
.L833:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo219),4
	.d2locend
.L835:
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo221),3
	.d2locend
.L837:
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo223),3
	.d2locend
.L839:
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo224),3
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo225),3
	.d2locend
.L841:
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo226),4
	.d2locend
.L843:
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo222),3
	.d2locend
.L849:
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo228),3
	.d2locend
.L850:
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo229),4
	.d2locend
.L852:
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),3
	.d2locend
.L854:
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo232),3
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo233),3
	.d2locend
.L856:
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo234),4
	.d2locend
.L858:
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo230),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Icu_Ipw_GetPulseWidth"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_GetPulseWidth"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_Get_Overflow"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_GetOverflow"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_GetEdgeNumbers"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_GetEdgeNumbers"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_DisableEdgeCount"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_DisableEdgeCount"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_EnableEdgeCount"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_EnableEdgeCount"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_ResetEdgeCount"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_ResetEdgeCount"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_StopTimestamp"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_StopTimestamp"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_StartTimestamp"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_StartTimestamp"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_StopSignalMeasurement"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_StopSignalMeasurement"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_StartSignalMeasurement"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_StartSignalMeasurement"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_DisableEdgeDetection"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_DisableEdgeDetection","Icu_eMios_DisableEdgeDetection"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_EnableEdgeDetection"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_EnableEdgeDetection","Icu_eMios_EnableEdgeDetection"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_GetInputState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_Siul2_GetInputState","Icu_eMios_GetInputState"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_SetActivationCondition"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_SetActivationCondition","Icu_eMios_SetActivationCondition"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_SetNormalMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_SetNormalMode","Icu_eMios_SetNormalMode"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_SetSleepMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_SetSleepMode","Icu_eMios_SetSleepMode"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_DeInit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_Siul2_DeInit","Icu_eMios_DeInit"
	.wrcm.end
	.wrcm.nelem "Icu_Ipw_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_Siul2_Init","Icu_eMios_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu_IPW.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu_IPW.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu_IPW.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu_IPW.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu_IPW.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu_IPW.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Icu\ssc\make\..\..\generator\integration_package\src\Icu_IPW.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
