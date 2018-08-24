#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Platform.c"
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
# FUNC (void, OS_CODE) Os_Platform_PreInit(CONST(CoreIdType,AUTOMATIC) coreId)
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11441:
	.section	.Os_TEXT,,c
#$$ld
.L11437:
	.0byte		.L11435
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Platform.c"
        .d2line         100,22
#$$ld
.L11444:

#$$bf	Os_Platform_PreInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Os_Platform_PreInit
	.d2_cfa_start __cie
Os_Platform_PreInit:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#   #ifdef OS_VECTORTABLE_BIG
#     {
#         VAR (uint16, AUTOMATIC) exceptionVectorIdx;
# 
#         for ( exceptionVectorIdx = (uint16)0U;
#               exceptionVectorIdx < Os_ExceptionVectorRegisters[coreId].Os_ExceptionVectorSize;
#               exceptionVectorIdx++ )
#         {
#             CONSTP2CONST (Os_ExceptionVectorRegisterType, AUTOMATIC, OS_CONST) vectorRegister =
#                     &Os_ExceptionVectorRegisters[coreId].Os_ExceptionVectorRegister[exceptionVectorIdx];
# 
#             /* The MTSPR instruction can handle only numeric constant operand. */
#             switch ( vectorRegister->Os_ExceptionRegister )
#             {
#                 case IVOR0:
#                     OS_CORE_MTSPR ( coreId, IVOR0, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR1:
#                     OS_CORE_MTSPR ( coreId, IVOR1, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR2:
#                     OS_CORE_MTSPR ( coreId, IVOR2, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR3:
#                     OS_CORE_MTSPR ( coreId, IVOR3, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR4:
#                     OS_CORE_MTSPR ( coreId, IVOR4, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR5:
#                     OS_CORE_MTSPR ( coreId, IVOR5, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR6:
#                     OS_CORE_MTSPR ( coreId, IVOR6, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR7:
#                     OS_CORE_MTSPR ( coreId, IVOR7, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR8:
#                     OS_CORE_MTSPR ( coreId, IVOR8, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR9:
#                     OS_CORE_MTSPR ( coreId, IVOR9, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR10:
#                     OS_CORE_MTSPR ( coreId, IVOR10, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR11:
#                     OS_CORE_MTSPR ( coreId, IVOR11, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR12:
#                     OS_CORE_MTSPR ( coreId, IVOR12, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR13:
#                     OS_CORE_MTSPR ( coreId, IVOR13, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR14:
#                     OS_CORE_MTSPR ( coreId, IVOR14, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR15:
#                     OS_CORE_MTSPR ( coreId, IVOR15, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR32:
#                     OS_CORE_MTSPR ( coreId, IVOR32, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR33:
#                     OS_CORE_MTSPR ( coreId, IVOR33, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR34:
#                     OS_CORE_MTSPR ( coreId, IVOR34, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 case IVOR35:
#                     OS_CORE_MTSPR ( coreId, IVOR35, vectorRegister->Os_ExceptionHandlerAddress );
#                     break;
# 
#                 default:
#                     /* Only for MISRA */
#                     break;
#             }
#         }
#     }
#   #endif
# 
#     OS_SET_INTC_HVEN ( coreId, (vuint32_t) 1U );
	.d2line		204
	e_cmphl16i	r3,0		# coreId=r3
	bc		0,2,.L11362	# ne
	e_lis		r4,-1020
	lwz		r0,0(r4)
	.diab.bseti		r0,31
	stw		r0,0(r4)
	b		.L11363
.L11362:
	e_lis		r4,-1020
	lwz		r0,0(r4)
	.diab.bseti		r0,27
	stw		r0,0(r4)
.L11363:
#     OS_SET_INTC_PRC  ( coreId, (vuint32_t) OS_TASK_ISR_LEVEL );
	.d2line		205
.Llo2:
	diab.li		r4,16
	e_add2is		r4,-1020
.Llo3:
	rlwinm		r3,r3,2,14,29		# coreId=r3 coreId=r3
	lwzux		r3,r4,r3		# coreId=r3
	rlwinm		r3,r3,0,0,25		# coreId=r3 coreId=r3
	stw		r3,0(r4)		# coreId=r3
# 
#   #if    defined ( OS_DERIVATIVE_DATA_CACHE_PRESENT )               \
#       && defined ( OS_MODULE_MEMORYPROTECTION_GLOBAL_INIT_REQUIRED )
#     {
#         CONSTP2VAR (Os_Core_DynType, AUTOMATIC, OS_CONST) coreDyn = OS_GET_CORE_DYN ( coreId );
# 
#         coreDyn->Os_Platform_IsDataCacheEnabled = OS_IS_DATA_CACHE_ENABLED_ON_CORE ( coreId );
#         OS_DISABLE_AND_INVALIDATE_DATA_CACHE_ON_CORE ( coreId );
#     }
#   #endif
# }
	.d2line		216
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11445:
	.type		Os_Platform_PreInit,@function
	.size		Os_Platform_PreInit,.-Os_Platform_PreInit
# Number of nodes = 29

# Allocations for Os_Platform_PreInit
#	?a4		coreId
#	?a5		$$2356
#	?a6		$$2355
#	?a7		$$2354
#	?a8		$$2352
# FUNC(void,OS_CODE) Os_PlatformIsrEnd ( CONSTP2CONST (Os_IsrPlatformConfigType, TYPEDEF, OS_CONST) isrConfig )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         219,20
#$$ld
.L11455:

#$$bf	Os_PlatformIsrEnd,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_PlatformIsrEnd
	.d2_cfa_start __cie
Os_PlatformIsrEnd:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR  (Os_IsrRegister_t, AUTOMATIC) newLevel;
#     CONST(CoreIdType,AUTOMATIC) coreId = OS_GETCOREID ();
	.d2line		222
	mfspr		r3,286		# coreId=r3
.Llo7:
	mr		r3,r3		# coreId=r3 coreId=r3
# 
#     OS_SET_INTC_EOIR ( 0U,  coreId);
	.d2line		224
	diab.li		r4,0		# newLevel=r4
.Llo5:
	diab.li		r5,48
	e_add2is		r5,-1020
	rlwinm		r3,r3,2,14,29		# coreId=r3 coreId=r3
	stwx		r4,r5,r3		# newLevel=r4
# 
#     /* Signaling End-Of-Interrupt updates the interrupt priority so it must be synced */
#     newLevel = (Os_IsrRegister_t) OS_GET_INTC_CPR ( coreId );
	.d2line		227
	diab.li		r4,16		# newLevel=r4
	e_add2is		r4,-1020		# newLevel=r4
	se_add		r4,r3		# newLevel=r4 newLevel=r4 coreId=r3
	lwzx		r4,r0,r4		# newLevel=r4
	mr		r4,r4		# newLevel=r4 newLevel=r4
#     Os_IsrLevel[coreId] = newLevel;
	.d2line		228
	lis		r5,Os_IsrLevel@ha
	e_add16i		r5,r5,Os_IsrLevel@l
	stwx		r4,r5,r3		# newLevel=r4
# }
	.d2line		229
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11456:
	.type		Os_PlatformIsrEnd,@function
	.size		Os_PlatformIsrEnd,.-Os_PlatformIsrEnd
# Number of nodes = 35

# Allocations for Os_PlatformIsrEnd
#	not allocated	isrConfig
#	?a4		newLevel
#	?a5		coreId
# FUNC(void,OS_CODE) Os_Isr_Platform_InitChannel(CONSTP2CONST(Os_IsrPlatformConfigType,AUTOMATIC,OS_CONST) Os_IsrPltConf)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         264,20
#$$ld
.L11472:

#$$bf	Os_Isr_Platform_InitChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Isr_Platform_InitChannel
	.d2_cfa_start __cie
Os_Isr_Platform_InitChannel:
.Llo8:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Os_IsrPltConf=r3 Os_IsrPltConf=r3
	.d2prologue_end
# {
#     OS_SET_INTC_PSR(Os_IsrPltConf->Os_IsrPltId, Os_IsrPltConf->Os_IsrPltLevel);
	.d2line		266
	lhz		r4,4(r3)		# Os_IsrPltConf=r3
	diab.li		r5,96
	e_add2is		r5,-1020
	lwz		r3,0(r3)		# Os_IsrPltConf=r3 Os_IsrPltConf=r3
	se_slwi		r3,1		# Os_IsrPltConf=r3 Os_IsrPltConf=r3
.Llo9:
	sthux		r4,r5,r3
# }
	.d2line		267
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
.L11473:
	.type		Os_Isr_Platform_InitChannel,@function
	.size		Os_Isr_Platform_InitChannel,.-Os_Isr_Platform_InitChannel
# Number of nodes = 12

# Allocations for Os_Isr_Platform_InitChannel
#	?a4		Os_IsrPltConf
# FUNC (void, OS_CODE) Os_Isr_Platform_Init ( CONST (CoreIdType, AUTOMATIC)  coreID )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         246,22
#$$ld
.L11478:

#$$bf	Os_Isr_Platform_Init,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Isr_Platform_Init
	.d2_cfa_start __cie
Os_Isr_Platform_Init:
.Llo10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# coreID=r4 coreID=r3
	.d2prologue_end
# {
#     OS_SET_IVPR ( Os_IsrIvpr[coreID] );
	.d2line		248
.Llo11:
	lis		r3,Os_IsrIvpr@ha
.Llo12:
	e_add16i		r3,r3,Os_IsrIvpr@l
	rlwinm		r0,r4,2,14,29		# coreID=r4
	lwzx		r0,r3,r0
	mtspr		63,r0
# 
#   #ifdef OS_MODULE_MULTICORE
# 
#     Os_Isr_Platform_InitChannel ( Os_Isr_Platform_CrossCoreIsr[coreID] );
	.d2line		252
	lis		r3,Os_Isr_Platform_CrossCoreIsr@ha
	e_add16i		r3,r3,Os_Isr_Platform_CrossCoreIsr@l
	rlwinm		r4,r4,2,14,29		# coreID=r4 coreID=r4
.Llo13:
	lwzx		r3,r3,r4
	bl		Os_Isr_Platform_InitChannel
# 
#   #endif
# }
	.d2line		255
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
.L11479:
	.type		Os_Isr_Platform_Init,@function
	.size		Os_Isr_Platform_Init,.-Os_Isr_Platform_Init
# Number of nodes = 24

# Allocations for Os_Isr_Platform_Init
#	?a4		coreID
# FUNC (void, OS_CODE) Os_Platform_PostInit(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         258,22
#$$ld
.L11484:

#$$bf	Os_Platform_PostInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Platform_PostInit
	.d2_cfa_start __cie
Os_Platform_PostInit:
.Llo14:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	.d2prologue_end
# {
#     Os_IsrLevel[coreID] = (Os_IsrRegister_t)0U;
	.d2line		260
	diab.li		r4,0
	lis		r5,Os_IsrLevel@ha
	e_add16i		r5,r5,Os_IsrLevel@l
	rlwinm		r3,r3,2,14,29		# coreID=r3 coreID=r3
.Llo15:
	stwx		r4,r5,r3
# }
	.d2line		261
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
.L11485:
	.type		Os_Platform_PostInit,@function
	.size		Os_Platform_PostInit,.-Os_Platform_PostInit
# Number of nodes = 10

# Allocations for Os_Platform_PostInit
#	?a4		coreID
# FUNC(void,OS_CODE) Os_Isr_Platform_DisableChannel( CONSTP2CONST(Os_IsrPlatformConfigType,AUTOMATIC,OS_CONST) Os_IsrPltConf)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         270,20
#$$ld
.L11490:

#$$bf	Os_Isr_Platform_DisableChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Isr_Platform_DisableChannel
	.d2_cfa_start __cie
Os_Isr_Platform_DisableChannel:
.Llo16:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Os_IsrPltConf=r4 Os_IsrPltConf=r3
	.d2prologue_end
# {
#     OS_SET_INTC_PSR(Os_IsrPltConf->Os_IsrPltId, (Os_IsrPlatformLevelType)(Os_IsrPltConf->Os_IsrPltLevel & (Os_IsrPlatformLevelType)0xC0U));
	.d2line		272
	lhz		r3,4(r4)		# Os_IsrPltConf=r4
.Llo17:
	rlwinm		r3,r3,0,24,25
	diab.li		r5,96
	e_add2is		r5,-1020
.Llo18:
	lwz		r4,0(r4)		# Os_IsrPltConf=r4 Os_IsrPltConf=r4
	se_slwi		r4,1		# Os_IsrPltConf=r4 Os_IsrPltConf=r4
.Llo19:
	sthux		r3,r5,r4
# }
	.d2line		273
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
.L11491:
	.type		Os_Isr_Platform_DisableChannel,@function
	.size		Os_Isr_Platform_DisableChannel,.-Os_Isr_Platform_DisableChannel
# Number of nodes = 14

# Allocations for Os_Isr_Platform_DisableChannel
#	?a4		Os_IsrPltConf
# FUNC(void,OS_CODE) Os_Isr_Platform_EnableChannel( CONSTP2CONST(Os_IsrPlatformConfigType,AUTOMATIC,OS_CONST) Os_IsrPltConf)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         276,20
#$$ld
.L11496:

#$$bf	Os_Isr_Platform_EnableChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Isr_Platform_EnableChannel
	.d2_cfa_start __cie
Os_Isr_Platform_EnableChannel:
.Llo20:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Os_IsrPltConf=r3 Os_IsrPltConf=r3
	.d2prologue_end
# {
#     OS_SET_INTC_PSR(Os_IsrPltConf->Os_IsrPltId, Os_IsrPltConf->Os_IsrPltLevel);
	.d2line		278
	lhz		r4,4(r3)		# Os_IsrPltConf=r3
	diab.li		r5,96
	e_add2is		r5,-1020
	lwz		r3,0(r3)		# Os_IsrPltConf=r3 Os_IsrPltConf=r3
	se_slwi		r3,1		# Os_IsrPltConf=r3 Os_IsrPltConf=r3
.Llo21:
	sthux		r4,r5,r3
# }
	.d2line		279
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
.L11497:
	.type		Os_Isr_Platform_EnableChannel,@function
	.size		Os_Isr_Platform_EnableChannel,.-Os_Isr_Platform_EnableChannel
# Number of nodes = 12

# Allocations for Os_Isr_Platform_EnableChannel
#	?a4		Os_IsrPltConf
# FUNC (void, OS_CODE)  Os_Timer_Platform_Init (void)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         286,23
#$$ld
.L11502:

#$$bf	Os_Timer_Platform_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Os_Timer_Platform_Init
	.d2_cfa_start __cie
Os_Timer_Platform_Init:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* [D_OS0125] */
# 
#     PIT.PITMCR.B.MDIS = (vuint32_t)1U;  /* disable the timer module */
	.d2line		290
	diab.li		r4,-507904
	lwz		r3,0(r4)
	.diab.bseti		r3,30
	stw		r3,0(r4)
# 
#     PIT.PITMCR.B.FRZ  = (vuint32_t)0U; /* Timer is not stopped in debug mode. Needed for appropriate timer initialization. */
	.d2line		292
	lwz		r3,0(r4)
	.diab.bclri		r3,31
	stw		r3,0(r4)
# 
#     PIT.PITMCR.B.MDIS = (vuint32_t)0U; /* enable the timer module */
	.d2line		294
	lwz		r3,0(r4)
	.diab.bclri		r3,30
	stw		r3,0(r4)
# }
	.d2line		295
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
.L11503:
	.type		Os_Timer_Platform_Init,@function
	.size		Os_Timer_Platform_Init,.-Os_Timer_Platform_Init
# Number of nodes = 15

# Allocations for Os_Timer_Platform_Init
#	?a4		$$2359
#	?a5		$$2358
#	?a6		$$2357
# FUNC (void, OS_CODE)  Os_Timer_Platform_PostInit(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         298,23
#$$ld
.L11507:

#$$bf	Os_Timer_Platform_PostInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Timer_Platform_PostInit
	.d2_cfa_start __cie
Os_Timer_Platform_PostInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     PIT.PITMCR.B.FRZ = (vuint32_t)Os_TimerFreezeInDebug;
	.d2line		300
	diab.li		r5,-507904
	lis		r3,Os_TimerFreezeInDebug@ha
	lbz		r3,Os_TimerFreezeInDebug@l(r3)
	lwz		r4,0(r5)
	.diab.bclri		r4,31
	rlwinm		r3,r3,0,31,31
	or		r3,r3,r4
	stw		r3,0(r5)
# }
	.d2line		301
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
.L11508:
	.type		Os_Timer_Platform_PostInit,@function
	.size		Os_Timer_Platform_PostInit,.-Os_Timer_Platform_PostInit
# Number of nodes = 6

# Allocations for Os_Timer_Platform_PostInit
#	not allocated	coreId
#	?a4		$$2361
#	?a5		$$2360
# FUNC (void, OS_CODE)  Os_Timer_Platform_InitChannel (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         304,23
#$$ld
.L11512:

#$$bf	Os_Timer_Platform_InitChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.globl		Os_Timer_Platform_InitChannel
	.d2_cfa_start __cie
Os_Timer_Platform_InitChannel:
.Llo22:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerStat=r3 timerStat=r3
	.d2prologue_end
#                         CONSTP2CONST (Os_TimerConfType, AUTOMATIC, OS_CONST)  timerStat )
# {
#     CONST (uint16, AUTOMATIC)  channelId = timerStat->Os_TimerPltConf->Os_TimerChannelId;
	.d2line		307
	lwz		r3,16(r3)		# timerStat=r3 timerStat=r3
	lhz		r3,0(r3)		# timerStat=r3 timerStat=r3
.Llo23:
	mr		r3,r3		# channelId=r3 channelId=r3
# 
#     /* [D_OS0127] */
#     PIT.CH[channelId].TFLG.B.TIF  = (vuint32_t) 1U;
	.d2line		310
	diab.li		r5,-507636
	rlwinm		r6,r3,4,12,27		# channelId=r3
	lwzux		r4,r5,r6
	.diab.bseti		r4,31
	stw		r4,0(r5)
# 
#     /* [D_OS0185] */
#     PIT.CH[channelId].LDVAL.R     = (vuint32_t) TIMER_MAXIMUM_RELOAD_VALUE;
	.d2line		313
	diab.li		r4,-1
	diab.li		r5,-507648
	stwx		r4,r5,r6
#     PIT.CH[channelId].TCTRL.B.TEN = (vuint32_t) 1U;
	.d2line		314
	diab.li		r4,-507640
	se_add		r6,r4
	lwz		r4,0(r6)
	.diab.bseti		r4,31
	stw		r4,0(r6)
# 
#     /* [D_OS0186] */
#     PIT.CH[channelId].TCTRL.B.TIE = (vuint32_t) 0U;
	.d2line		317
	lwz		r4,0(r6)
	.diab.bclri		r4,30
	stw		r4,0(r6)
# 
#     PITReloadValues[channelId]  = (TickType)0U;
	.d2line		319
	diab.li		r4,0
	lis		r5,PITReloadValues@ha
	e_add16i		r5,r5,PITReloadValues@l
	rlwinm		r3,r3,2,14,29		# channelId=r3 channelId=r3
.Llo24:
	stwx		r4,r5,r3
# }
	.d2line		320
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
.L11513:
	.type		Os_Timer_Platform_InitChannel,@function
	.size		Os_Timer_Platform_InitChannel,.-Os_Timer_Platform_InitChannel
# Number of nodes = 56

# Allocations for Os_Timer_Platform_InitChannel
#	?a4		timerStat
#	?a5		$$2364
#	?a6		$$2363
#	?a7		$$2362
#	?a8		channelId
# FUNC (void, OS_CODE)  Os_Timer_Platform_Tick (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         323,23
#$$ld
.L11526:

#$$bf	Os_Timer_Platform_Tick,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Timer_Platform_Tick
	.d2_cfa_start __cie
Os_Timer_Platform_Tick:
.Llo25:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerStat=r3 timerStat=r3
	.d2prologue_end
#                         CONSTP2CONST (Os_TimerConfType, AUTOMATIC, OS_CONST)  timerStat )
# {
#     CONST (uint16, AUTOMATIC)  channelId = timerStat->Os_TimerPltConf->Os_TimerChannelId;
	.d2line		326
	lwz		r3,16(r3)		# timerStat=r3 timerStat=r3
	lhz		r4,0(r3)		# channelId=r4 timerStat=r3
.Llo27:
	mr		r4,r4		# channelId=r4 channelId=r4
# 
#     /* [D_OS0142] */
#     PIT.CH[channelId].TFLG.B.TIF = (vuint32_t) 1U;
	.d2line		329
	diab.li		r5,-507636
	rlwinm		r3,r4,4,12,27		# timerStat=r3 channelId=r4
	lwzux		r3,r5,r3		# timerStat=r3
	.diab.bseti		r3,31		# timerStat=r3
	stw		r3,0(r5)		# timerStat=r3
# 
#     PITReloadValues[channelId]  = (TickType)0U;
	.d2line		331
	diab.li		r3,0		# timerStat=r3
	lis		r5,PITReloadValues@ha
	e_add16i		r5,r5,PITReloadValues@l
	rlwinm		r4,r4,2,14,29		# channelId=r4 channelId=r4
.Llo28:
	stwx		r3,r5,r4		# timerStat=r3
# }
	.d2line		332
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo26:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11527:
	.type		Os_Timer_Platform_Tick,@function
	.size		Os_Timer_Platform_Tick,.-Os_Timer_Platform_Tick
# Number of nodes = 27

# Allocations for Os_Timer_Platform_Tick
#	?a4		timerStat
#	?a5		$$2365
#	?a6		channelId
# FUNC (TickType, OS_CODE)  Os_Timer_Platform_RestartAndGetElapsedIncrements (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         335,27
#$$ld
.L11534:

#$$bf	Os_Timer_Platform_RestartAndGetElapsedIncrements,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Os_Timer_Platform_RestartAndGetElapsedIncrements
	.d2_cfa_start __cie
Os_Timer_Platform_RestartAndGetElapsedIncrements:
.Llo29:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerStat=r3 timerStat=r3
	mr		r4,r4		# hasElapsed=r4 hasElapsed=r4
	.d2prologue_end
#                         CONSTP2CONST (Os_TimerConfType, AUTOMATIC, OS_CONST)  timerStat,
#                         CONSTP2VAR   (Os_BoolType,      AUTOMATIC, OS_VAR)    hasElapsed )
# {
#     CONST (uint16,   AUTOMATIC)  channelId         = timerStat->Os_TimerPltConf->Os_TimerChannelId;
	.d2line		339
	lwz		r5,16(r3)		# timerStat=r3
	lhz		r6,0(r5)		# channelId=r6
.Llo34:
	mr		r6,r6		# channelId=r6 channelId=r6
#     CONST (TickType, AUTOMATIC)  currentIncrements = (TickType) PIT.CH[channelId].CVAL.R;       /* Get timer value */
	.d2line		340
	diab.li		r0,-507644
	rlwinm		r31,r6,4,12,27		# channelId=r6
	se_add		r0,r31
	lwzx		r7,r0,r0
.Llo36:
	mr		r7,r7		# currentIncrements=r7 currentIncrements=r7
#     VAR   (TickType, AUTOMATIC)  elapsedIncrements;
# 
#     /* Stop the timer */
#     /* [D_OS0175] */
#     PIT.CH[channelId].TCTRL.B.TEN = (vuint32_t) 0U;
	.d2line		345
	diab.li		r5,-507640
	lwzux		r0,r5,r31
	.diab.bclri		r0,31
	stw		r0,0(r5)
# 
#     /* [D_OS0178] */
#     /* Not clearing the interrupt flag. */
# 
#     /* [D_OS0177] */
#     *hasElapsed = ( (vuint32_t) 1U == PIT.CH[channelId].TFLG.B.TIF ) ? Os_true : Os_false;
	.d2line		351
	diab.li		r0,-507636
	se_add		r0,r31
	lwzx		r0,r0,r0
	se_btsti		r0,31
	diab.li		r0,1
	isel		r0,r5,r0,2
.L11382:
	isel		r0,0,r0,2
.L11383:
.Llo30:
	stw		r0,0(r4)		# hasElapsed=r4
# 
#     /* [D_OS0179] */
#     PIT.CH[channelId].LDVAL.R     = (vuint32_t) timerStat->Os_TimerDyn->Os_TimerJitterOffsetIncrementsCount;
	.d2line		354
.Llo31:
	lwz		r3,8(r3)		# timerStat=r3 timerStat=r3
	lwz		r0,28(r3)		# timerStat=r3
	diab.li		r3,-507648		# timerStat=r3
	rlwinm		r31,r6,4,12,27		# channelId=r6
	stwx		r0,r3,r31		# timerStat=r3
#     PIT.CH[channelId].TCTRL.B.TEN = (vuint32_t) 1U;
	.d2line		355
	diab.li		r0,-507640
	se_add		r31,r0
	lwz		r0,0(r31)
	.diab.bseti		r0,31
	stw		r0,0(r31)
# 
#     /* [D_OS0176] */
#     elapsedIncrements = PITReloadValues[channelId];
	.d2line		358
	lis		r3,PITReloadValues@ha		# timerStat=r3
	e_add16i		r3,r3,PITReloadValues@l		# timerStat=r3 timerStat=r3
	rlwinm		r6,r6,2,14,29		# channelId=r6 channelId=r6
.Llo35:
	lwzx		r3,r3,r6		# timerStat=r3 timerStat=r3
.Llo32:
	mr		r3,r3		# elapsedIncrements=r3 elapsedIncrements=r3
#     if ( Os_false == *hasElapsed )
	.d2line		359
	lwz		r0,0(r4)		# hasElapsed=r4
	se_cmpi		r0,0
	bc		0,2,.L11381	# ne
#     {
#         elapsedIncrements -= currentIncrements;
	.d2line		361
.Llo33:
	subf		r3,r7,r3		# elapsedIncrements=r3 currentIncrements=r7 elapsedIncrements=r3
	mr		r3,r3		# elapsedIncrements=r3 elapsedIncrements=r3
.L11381:
#     }
# 
#     return elapsedIncrements;
	.d2line		364
.Llo37:
	mr		r3,r3		# elapsedIncrements=r3 elapsedIncrements=r3
# }
	.d2line		365
	.d2epilogue_begin
.Llo38:
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L11535:
	.type		Os_Timer_Platform_RestartAndGetElapsedIncrements,@function
	.size		Os_Timer_Platform_RestartAndGetElapsedIncrements,.-Os_Timer_Platform_RestartAndGetElapsedIncrements
# Number of nodes = 91

# Allocations for Os_Timer_Platform_RestartAndGetElapsedIncrements
#	?a4		timerStat
#	?a5		hasElapsed
#	?a6		$$2367
#	?a7		$$2366
#	?a8		$$2353
#	?a9		channelId
#	?a10		currentIncrements
#	?a11		elapsedIncrements
# FUNC (TickType, OS_CODE)  Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         368,27
#$$ld
.L11553:

#$$bf	Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.globl		Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart
	.d2_cfa_start __cie
Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart:
.Llo39:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerStat=r3 timerStat=r3
	.d2prologue_end
#                         CONSTP2CONST (Os_TimerConfType, AUTOMATIC, OS_CONST)  timerStat )
# {
#     CONST (uint16,   AUTOMATIC)  channelId         = timerStat->Os_TimerPltConf->Os_TimerChannelId;
	.d2line		371
	lwz		r3,16(r3)		# timerStat=r3 timerStat=r3
	lhz		r6,0(r3)		# channelId=r6 timerStat=r3
.Llo41:
	mr		r6,r6		# channelId=r6 channelId=r6
# 
#     /* Stop the timer */
#     PIT.CH[channelId].TCTRL.B.TEN = (vuint32_t) 0U;
	.d2line		374
	diab.li		r3,-507640		# timerStat=r3
	rlwinm		r6,r6,4,12,27		# channelId=r6 channelId=r6
.Llo42:
	lwzux		r4,r3,r6		# timerStat=r3
	.diab.bclri		r4,31
	stw		r4,0(r3)		# timerStat=r3
# 
#     /* [D_OS0189] */
#     PIT.CH[channelId].LDVAL.R     = (vuint32_t) TIMER_MAXIMUM_RELOAD_VALUE;
	.d2line		377
	diab.li		r4,-1
	diab.li		r5,-507648
	stwx		r4,r5,r6
#     PIT.CH[channelId].TCTRL.B.TEN = (vuint32_t) 1U;
	.d2line		378
	lwz		r4,0(r3)		# timerStat=r3
	.diab.bseti		r4,31
	stw		r4,0(r3)		# timerStat=r3
# 
#     /* [D_OS0195] */
#     PIT.CH[channelId].TCTRL.B.TIE = (vuint32_t) 0U;
	.d2line		381
	lwz		r4,0(r3)		# timerStat=r3
	.diab.bclri		r4,30
	stw		r4,0(r3)		# timerStat=r3
# 
#     return (TickType) 0U;
	.d2line		383
	diab.li		r3,0		# timerStat=r3
# }
	.d2line		384
	.d2epilogue_begin
.Llo40:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11554:
	.type		Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart,@function
	.size		Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart,.-Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart
# Number of nodes = 48

# Allocations for Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart
#	?a4		timerStat
#	?a5		$$2370
#	?a6		$$2369
#	?a7		$$2368
#	?a8		channelId
# FUNC (TickType, OS_CODE)  Os_Timer_Platform_StopAndGetElapsedIncrements (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         387,27
#$$ld
.L11561:

#$$bf	Os_Timer_Platform_StopAndGetElapsedIncrements,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,xer,lr
	.globl		Os_Timer_Platform_StopAndGetElapsedIncrements
	.d2_cfa_start __cie
Os_Timer_Platform_StopAndGetElapsedIncrements:
.Llo43:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerStat=r3 timerStat=r3
	.d2prologue_end
#                         CONSTP2CONST (Os_TimerConfType, AUTOMATIC, OS_CONST)  timerStat )
# {
#     CONST (uint16,   AUTOMATIC)  channelId         = timerStat->Os_TimerPltConf->Os_TimerChannelId;
	.d2line		390
	lwz		r3,16(r3)		# timerStat=r3 timerStat=r3
	lhz		r4,0(r3)		# channelId=r4 timerStat=r3
.Llo45:
	mr		r4,r4		# channelId=r4 channelId=r4
#     CONST (TickType, AUTOMATIC)  currentIncrements = (TickType) PIT.CH[channelId].CVAL.R;       /* Get timer value */
	.d2line		391
	diab.li		r3,-507644		# timerStat=r3
	rlwinm		r4,r4,4,12,27		# channelId=r4 channelId=r4
	se_add		r3,r4		# timerStat=r3 timerStat=r3 channelId=r4
	lwzx		r3,r0,r3		# timerStat=r3
.Llo44:
	mr		r3,r3		# currentIncrements=r3 currentIncrements=r3
# 
#     /* Stop the timer */
#     /* [D_OS0131] */
#     PIT.CH[channelId].TCTRL.B.TEN = (vuint32_t) 0U;
	.d2line		395
	diab.li		r5,-507640
	lwzux		r4,r5,r4		# channelId=r4
	.diab.bclri		r4,31		# channelId=r4
	stw		r4,0(r5)		# channelId=r4
# 
#     /* [D_OS0144], [D_OS0196] */
#     return (TickType) TIMER_MAXIMUM_RELOAD_VALUE - currentIncrements;
	.d2line		398
	subfic		r3,r3,-1		# currentIncrements=r3 currentIncrements=r3
# }
	.d2line		399
	.d2epilogue_begin
.Llo47:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo46:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11562:
	.type		Os_Timer_Platform_StopAndGetElapsedIncrements,@function
	.size		Os_Timer_Platform_StopAndGetElapsedIncrements,.-Os_Timer_Platform_StopAndGetElapsedIncrements
# Number of nodes = 30

# Allocations for Os_Timer_Platform_StopAndGetElapsedIncrements
#	?a4		timerStat
#	?a5		$$2371
#	?a6		channelId
#	?a7		currentIncrements
# FUNC (TickType, OS_CODE)  Os_Timer_Platform_GetElapsedIncrements (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         402,27
#$$ld
.L11571:

#$$bf	Os_Timer_Platform_GetElapsedIncrements,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Os_Timer_Platform_GetElapsedIncrements
	.d2_cfa_start __cie
Os_Timer_Platform_GetElapsedIncrements:
.Llo48:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo50:
	stw		r0,20(r1)		# channelId=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerStat=r3 timerStat=r3
	.d2prologue_end
#                         CONSTP2CONST (Os_TimerConfType, AUTOMATIC, OS_CONST)  timerStat )
# {
#     CONST (uint16,   AUTOMATIC)  channelId         = timerStat->Os_TimerPltConf->Os_TimerChannelId;
	.d2line		405
	lwz		r3,16(r3)		# timerStat=r3 timerStat=r3
	lhz		r0,0(r3)		# channelId=r0 timerStat=r3
	mr		r0,r0		# channelId=r0 channelId=r0
#     CONST (TickType, AUTOMATIC)  currentIncrements = (TickType) PIT.CH[channelId].CVAL.R; /* Get timer value */
	.d2line		406
	diab.li		r3,-507644		# timerStat=r3
	rlwinm		r5,r0,4,12,27		# channelId=r0
	se_add		r3,r5		# timerStat=r3 timerStat=r3
	lwzx		r3,r0,r3		# timerStat=r3 channelId=r0
.Llo49:
	mr		r3,r3		# currentIncrements=r3 currentIncrements=r3
#     VAR   (TickType, AUTOMATIC)  elapsedIncrements;
# 
#     /* [D_OS0154] */
#     elapsedIncrements = PITReloadValues[channelId];
	.d2line		410
	lis		r4,PITReloadValues@ha
	e_add16i		r4,r4,PITReloadValues@l
	rlwinm		r0,r0,2,14,29		# channelId=r0 channelId=r0
.Llo51:
	lwzx		r4,r4,r0
.Llo55:
	mr		r4,r4		# elapsedIncrements=r4 elapsedIncrements=r4
#     if ( (vuint32_t) 0U == PIT.CH[channelId].TFLG.B.TIF )
	.d2line		411
	diab.li		r0,-507636		# channelId=r0
.Llo52:
	se_add		r0,r5		# channelId=r0 channelId=r0
	lwzx		r0,r0,r0		# channelId=r0 channelId=r0
	se_btsti		r0,31		# channelId=r0
	bc		0,2,.L11390	# ne
#     {
#         elapsedIncrements -= currentIncrements;
	.d2line		413
.Llo53:
	subf		r3,r3,r4		# currentIncrements=r3 currentIncrements=r3 elapsedIncrements=r4
.Llo54:
	mr		r4,r3		# elapsedIncrements=r4 elapsedIncrements=r3
.L11390:
#     }
# 
#     return elapsedIncrements;
	.d2line		416
	mr		r3,r4		# elapsedIncrements=r3 elapsedIncrements=r4
# }
	.d2line		417
	.d2epilogue_begin
	lwz		r0,20(r1)		# channelId=r0
	mtspr		lr,r0		# channelId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo56:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11572:
	.type		Os_Timer_Platform_GetElapsedIncrements,@function
	.size		Os_Timer_Platform_GetElapsedIncrements,.-Os_Timer_Platform_GetElapsedIncrements
# Number of nodes = 41

# Allocations for Os_Timer_Platform_GetElapsedIncrements
#	?a4		timerStat
#	?a5		channelId
#	?a6		currentIncrements
#	?a7		elapsedIncrements
# FUNC (TickType, OS_CODE) Os_Timer_Platform_Start_MeasureStop (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         420,26
#$$ld
.L11583:

#$$bf	Os_Timer_Platform_Start_MeasureStop,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,lr
	.globl		Os_Timer_Platform_Start_MeasureStop
	.d2_cfa_start __cie
Os_Timer_Platform_Start_MeasureStop:
.Llo57:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerStat=r3 timerStat=r3
	mr		r4,r4		# increments=r4 increments=r4
	.d2prologue_end
#                             CONSTP2CONST (Os_TimerConfType, AUTOMATIC, OS_CONST)  timerStat,
#                             CONST        (TickType,         AUTOMATIC)            increments )
# {
#     CONST (uint16,   AUTOMATIC)  channelId         = timerStat->Os_TimerPltConf->Os_TimerChannelId;
	.d2line		424
	lwz		r3,16(r3)		# timerStat=r3 timerStat=r3
	lhz		r7,0(r3)		# channelId=r7 timerStat=r3
.Llo64:
	mr		r7,r7		# channelId=r7 channelId=r7
#     VAR   (TickType, AUTOMATIC)  currentIncrements;
# 
#     PITReloadValues[channelId] = increments;
	.d2line		427
	lis		r3,PITReloadValues@ha		# timerStat=r3
	e_add16i		r3,r3,PITReloadValues@l		# timerStat=r3 timerStat=r3
	rlwinm		r5,r7,2,14,29		# channelId=r7
	stwx		r4,r3,r5		# timerStat=r3 increments=r4
# 
#     /* [D_OS0191] */
#     PIT.CH[channelId].LDVAL.R     = (vuint32_t) increments;
	.d2line		430
	diab.li		r5,-507648
	rlwinm		r7,r7,4,12,27		# channelId=r7 channelId=r7
	add		r3,r5,r7		# timerStat=r3 channelId=r7
.Llo58:
	stwx		r4,r0,r3		# increments=r4
#     currentIncrements             = (TickType) PIT.CH[channelId].CVAL.R;       /* Get timer value */
	.d2line		431
	diab.li		r3,-507644		# timerStat=r3
.Llo59:
	se_add		r3,r7		# timerStat=r3 timerStat=r3 channelId=r7
.Llo60:
	lwzx		r4,r0,r3		# increments=r4
.Llo63:
	mr		r4,r4		# currentIncrements=r4 currentIncrements=r4
# 
#     /* [D_OS0192] */
#     PIT.CH[channelId].TCTRL.B.TEN = (vuint32_t) 0U; /* Stop the timer */
	.d2line		434
	diab.li		r3,-507640		# timerStat=r3
.Llo61:
	lwzux		r6,r3,r7		# timerStat=r3
	.diab.bclri		r6,31
	stw		r6,0(r3)		# timerStat=r3
# 
#     /* [D_OS0193] */
#     PIT.CH[channelId].LDVAL.R     = (vuint32_t) TIMER_MAXIMUM_RELOAD_VALUE;
	.d2line		437
	diab.li		r3,-1		# timerStat=r3
	stwx		r3,r5,r7		# timerStat=r3
# 
#     return currentIncrements;
	.d2line		439
	mr		r3,r4		# currentIncrements=r3 currentIncrements=r4
# }
	.d2line		440
	.d2epilogue_begin
.Llo62:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo65:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11584:
	.type		Os_Timer_Platform_Start_MeasureStop,@function
	.size		Os_Timer_Platform_Start_MeasureStop,.-Os_Timer_Platform_Start_MeasureStop
# Number of nodes = 56

# Allocations for Os_Timer_Platform_Start_MeasureStop
#	?a4		timerStat
#	?a5		increments
#	?a6		$$2372
#	?a7		channelId
#	?a8		currentIncrements
# FUNC (void, OS_CODE) Os_Timer_Platform_Start (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         443,22
#$$ld
.L11594:

#$$bf	Os_Timer_Platform_Start,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,lr
	.globl		Os_Timer_Platform_Start
	.d2_cfa_start __cie
Os_Timer_Platform_Start:
.Llo66:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerStat=r3 timerStat=r3
	mr		r6,r4		# increments=r6 increments=r4
	.d2prologue_end
#                             CONSTP2CONST (Os_TimerConfType, AUTOMATIC, OS_CONST)  timerStat,
#                             CONST        (TickType,         AUTOMATIC)            increments )
# {
#     CONST (uint16, AUTOMATIC)  channelId = timerStat->Os_TimerPltConf->Os_TimerChannelId;
	.d2line		447
.Llo68:
	lwz		r4,16(r3)		# timerStat=r3
.Llo69:
	lhz		r7,0(r4)		# channelId=r7
.Llo70:
	mr		r7,r7		# channelId=r7 channelId=r7
# 
#     PITReloadValues[channelId] = increments;
	.d2line		449
	lis		r4,PITReloadValues@ha
	e_add16i		r4,r4,PITReloadValues@l
	rlwinm		r5,r7,2,14,29		# channelId=r7
	stwx		r6,r4,r5		# increments=r6
# 
#     /* [D_OS0157] */
#     PIT.CH[channelId].LDVAL.R     = (vuint32_t) increments;
	.d2line		452
	diab.li		r5,-507648
	rlwinm		r7,r7,4,12,27		# channelId=r7 channelId=r7
	add		r4,r5,r7		# channelId=r7
	stwx		r6,r0,r4		# increments=r6
# 
#     /* [D_OS0158] */
#     PIT.CH[channelId].TCTRL.B.TEN = (vuint32_t) 1U; /* Start the timer */
	.d2line		455
	diab.li		r4,-507640
	lwzux		r6,r4,r7		# increments=r6
	.diab.bseti		r6,31		# increments=r6
	stw		r6,0(r4)		# increments=r6
# 
#     /* [D_OS0183] */
#     PIT.CH[channelId].TCTRL.B.TIE = (vuint32_t) 1U; /* Enable interrupts. */
	.d2line		458
	lwz		r6,0(r4)		# increments=r6
	.diab.bseti		r6,30		# increments=r6
	stw		r6,0(r4)		# increments=r6
# 
#     PIT.CH[channelId].LDVAL.R     = (vuint32_t) timerStat->Os_TimerDyn->Os_TimerJitterOffsetIncrementsCount;
	.d2line		460
	lwz		r3,8(r3)		# timerStat=r3 timerStat=r3
	lwz		r3,28(r3)		# timerStat=r3 timerStat=r3
	stwx		r3,r5,r7		# timerStat=r3
# }
	.d2line		461
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo67:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11595:
	.type		Os_Timer_Platform_Start,@function
	.size		Os_Timer_Platform_Start,.-Os_Timer_Platform_Start
# Number of nodes = 61

# Allocations for Os_Timer_Platform_Start
#	?a4		timerStat
#	?a5		increments
#	?a6		$$2374
#	?a7		$$2373
#	?a8		channelId
# FUNC (void, OS_CODE) Os_PlatformTriggerCore ( CONST (CoreIdType, AUTOMATIC) coreID )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         467,22
#$$ld
.L11603:

#$$bf	Os_PlatformTriggerCore,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_PlatformTriggerCore
	.d2_cfa_start __cie
Os_PlatformTriggerCore:
.Llo71:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	.d2prologue_end
# {
#     OS_SET_INTC_SSCIR ( coreID, Os_Isr_Platform_CrossCoreIsr [coreID]->Os_IsrPltId );
	.d2line		469
	diab.li		r4,64
	e_add2is		r4,-1020
	lis		r5,Os_Isr_Platform_CrossCoreIsr@ha
	e_add16i		r5,r5,Os_Isr_Platform_CrossCoreIsr@l
	rlwinm		r3,r3,2,14,29		# coreID=r3 coreID=r3
	lwzx		r3,r5,r3		# coreID=r3
	lwz		r3,0(r3)		# coreID=r3 coreID=r3
	lbzux		r3,r4,r3		# coreID=r3
	.diab.bseti		r3,30		# coreID=r3
	stb		r3,0(r4)		# coreID=r3
# }
	.d2line		470
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo72:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11604:
	.type		Os_PlatformTriggerCore,@function
	.size		Os_PlatformTriggerCore,.-Os_PlatformTriggerCore
# Number of nodes = 15

# Allocations for Os_PlatformTriggerCore
#	?a4		coreID
#	?a5		$$2375
# FUNC (void, OS_CODE) Os_PlatformTriggerClear ( void )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         473,22
#$$ld
.L11609:

#$$bf	Os_PlatformTriggerClear,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_PlatformTriggerClear
	.d2_cfa_start __cie
Os_PlatformTriggerClear:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     CONST (CoreIdType, AUTOMATIC) coreID = OS_GETCOREID ();
	.d2line		475
	mfspr		r3,286		# coreID=r3
.Llo73:
	mr		r3,r3		# coreID=r3 coreID=r3
# 
#     OS_CLR_INTC_SSCIR ( coreID, Os_Isr_Platform_CrossCoreIsr [coreID]->Os_IsrPltId );
	.d2line		477
	diab.li		r4,64
	e_add2is		r4,-1020
	lis		r5,Os_Isr_Platform_CrossCoreIsr@ha
	e_add16i		r5,r5,Os_Isr_Platform_CrossCoreIsr@l
	rlwinm		r3,r3,2,14,29		# coreID=r3 coreID=r3
	lwzx		r3,r5,r3		# coreID=r3
	lwz		r3,0(r3)		# coreID=r3 coreID=r3
	lbzux		r3,r4,r3		# coreID=r3
	.diab.bseti		r3,31		# coreID=r3
	stb		r3,0(r4)		# coreID=r3
# }
	.d2line		478
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo74:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11610:
	.type		Os_PlatformTriggerClear,@function
	.size		Os_PlatformTriggerClear,.-Os_PlatformTriggerClear
# Number of nodes = 22

# Allocations for Os_PlatformTriggerClear
#	?a4		$$2376
#	?a5		coreID
# FUNC(void,OS_CODE) Os_PlatformStartCore(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         484,20
#$$ld
.L11616:

#$$bf	Os_PlatformStartCore,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Os_PlatformStartCore
	.d2_cfa_start __cie
Os_PlatformStartCore:
.Llo75:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# coreID=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# coreID=r0 coreID=r3
	.d2prologue_end
# {
#     /* Start Core 1 in VLE mode */
#     OS_SYS_VLE_START(__start, coreID);
	.d2line		487
	diab.li		r5,252
	diab.li		r3,-294460
.Llo76:
	rlwinm		r0,r0,0,16,31		# coreID=r0 coreID=r0
.Llo77:
	xori		r0,r0,1		# coreID=r0 coreID=r0
	rlwinm		r4,r0,1,0,30		# coreID=r0
	sthux		r5,r3,r4
	lis		r4,__start@ha
	e_add16i		r4,r4,__start@l
	.diab.bseti		r4,31
	diab.li		r3,-294432
	se_slwi		r0,2		# coreID=r0 coreID=r0
.Llo78:
	stwx		r4,r3,r0
	e_lis		r0,12288		# coreID=r0
.Llo79:
	e_or2i		r0,23280		# coreID=r0
	diab.li		r3,-262144
	stw		r0,-32764(r3)		# coreID=r0
	e_lis		r0,12288		# coreID=r0
	e_or2i		r0,42255		# coreID=r0
	stw		r0,-32764(r3)		# coreID=r0
.L11400:
.Llo80:
	diab.li		r3,-262144
	lwz		r0,-32768(r3)		# coreID=r0
.Llo81:
	se_btsti		r0,4		# coreID=r0
	bc		0,2,.L11400	# ne
# }
	.d2line		488
	.d2epilogue_begin
.Llo82:
	lwz		r0,20(r1)		# coreID=r0
	mtspr		lr,r0		# coreID=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11617:
	.type		Os_PlatformStartCore,@function
	.size		Os_PlatformStartCore,.-Os_PlatformStartCore
# Number of nodes = 39

# Allocations for Os_PlatformStartCore
#	?a4		coreID
# FUNC (void, OS_CODE) Os_Platfrom_ReadExceptionStatus ( CONST (Os_ExceptionTypeType, AUTOMATIC) exceptionId )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         493,22
#$$ld
.L11622:

#$$bf	Os_Platfrom_ReadExceptionStatus,interprocedural,rasave,nostackparams
	.globl		Os_Platfrom_ReadExceptionStatus
	.d2_cfa_start __cie
Os_Platfrom_ReadExceptionStatus:
.Llo83:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# exceptionId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# exceptionId=r0 exceptionId=r3
	.d2prologue_end
# {
#     if (    (OS_EXCEPTION_COUNT <= exceptionId)
	.d2line		495
	se_cmpi		r0,19		# exceptionId=r0
	bc		0,0,.L11410	# ge
.Llo84:
	se_cmpi		r0,0		# exceptionId=r0
.Llo85:
	bc		0,2,.L11405	# ne
.L11410:
#          || (OS_EXCEPTION_NONE  == exceptionId) )
#     {
#         OS_FATAL_ERROR ( E_OS_SYS_INVALID_EXCEPTION );
	.d2line		498
.Llo86:
	diab.li		r4,48
.Llo87:
	lis		r3,(Os_Core_DynShared+12)@ha
.Llo88:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# exceptionId=r0
.Llo89:
	rlwinm		r0,r0,0,16,31		# exceptionId=r0 exceptionId=r0
	e_mulli		r0,r0,152		# exceptionId=r0 exceptionId=r0
.Llo90:
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
	b		.L11404
.L11405:
	.section	.Os_TEXT,,c
.L11629:
#     }
# 
#     else
#     {
#       #if ( OS_SHUTDOWNHOOK == STD_ON ) || ( OS_APP_SHUTDOWNHOOK == STD_ON ) || ( OS_PROTECTIONHOOK == STD_ON )
# 
#         CONST(CoreIdType, AUTOMATIC) coreID = OS_GETCOREID();
	.d2line		505
.Llo91:
	mfspr		r4,286		# coreID=r4
.Llo97:
	mr		r4,r4		# coreID=r4 coreID=r4
# 
#         OS_GET_EXCEPTIONSTATUS ( coreID ).Os_ExceptionType             = exceptionId;
	.d2line		507
	lis		r3,(Os_Core_DynShared+128)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+128)@l
	rlwinm		r6,r4,0,16,31		# coreID=r4
	e_mulli		r6,r6,152
	stwx		r0,r3,r6		# exceptionId=r0
#         OS_GET_EXCEPTIONSTATUS ( coreID ).Os_ExceptionExecutionAddress = OS_MFSPR ( SPR_SRR0 );
	.d2line		508
	mfspr		r5,26
	lis		r3,(Os_Core_DynShared+140)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+140)@l
	stwx		r5,r3,r6
#         OS_GET_EXCEPTIONSTATUS ( coreID ).Os_ExceptionCause            = OS_MFSPR ( SPR_ESR );
	.d2line		509
	mfspr		r5,62
	lis		r3,(Os_Core_DynShared+132)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+132)@l
	stwx		r5,r3,r6
# 
#         if ( OS_EXCEPTION_MACHINE_CHECK == exceptionId )
	.d2line		511
	se_cmpi		r0,2		# exceptionId=r0
	bc		0,2,.L11408	# ne
#         {
#             OS_GET_EXCEPTIONSTATUS ( coreID ).Os_ExceptionAuxiliaryCause = OS_MFSPR ( SPR_MCSR );
	.d2line		513
.Llo92:
	mfspr		r0,572		# exceptionId=r0
.Llo93:
	lis		r3,(Os_Core_DynShared+136)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+136)@l
.Llo98:
	rlwinm		r4,r4,0,16,31		# coreID=r4 coreID=r4
	e_mulli		r4,r4,152		# coreID=r4 coreID=r4
.Llo99:
	stwx		r0,r3,r4		# exceptionId=r0
	b		.L11404
.L11408:
#         }
# 
#         else
#         {
#             OS_GET_EXCEPTIONSTATUS ( coreID ).Os_ExceptionAuxiliaryCause = OS_NOT_MACHINE_CHECK_SYMPTOM;
	.d2line		518
.Llo94:
	diab.li		r0,0		# exceptionId=r0
.Llo95:
	lis		r3,(Os_Core_DynShared+136)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+136)@l
.Llo100:
	rlwinm		r4,r4,0,16,31		# coreID=r4 coreID=r4
	e_mulli		r4,r4,152		# coreID=r4 coreID=r4
.Llo101:
	stwx		r0,r3,r4		# exceptionId=r0
	.section	.Os_TEXT,,c
.L11630:
.L11404:
#         }
# 
#       #endif
#     }
# }
	.d2line		523
	.d2epilogue_begin
.Llo96:
	lwz		r0,20(r1)		# exceptionId=r0
	mtspr		lr,r0		# exceptionId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11623:
	.type		Os_Platfrom_ReadExceptionStatus,@function
	.size		Os_Platfrom_ReadExceptionStatus,.-Os_Platfrom_ReadExceptionStatus
# Number of nodes = 107

# Allocations for Os_Platfrom_ReadExceptionStatus
#	?a4		exceptionId
#	?a5		coreID
# NORETURN_FUNC (void, OS_CODE) Os_Platform_Idle(CONST(CoreIdType,AUTOMATIC) coreID,VAR(IdleModeType,AUTOMATIC) IdleMode)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         526,31
#$$ld
.L11637:

#$$bf	Os_Platform_Idle,interprocedural,nostackparams

# Regs written: r0,r1,r4,cr0
	.globl		Os_Platform_Idle
	.d2_cfa_start __cie
Os_Platform_Idle:
.Llo102:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# IdleMode=r4 IdleMode=r4
	.d2prologue_end
# {
#     switch(IdleMode)
	.d2line		528
	se_cmpi		r4,1		# IdleMode=r4
	bc		0,2,.L11421	# ne
.L11417:
#     {
#         case IDLE_WAIT :
#         {
#             /* Guarantee instructions integrity. */
#             for(;;)
#             {
#                 OS_WAIT();
	.d2line		535
.Llo103:
	wait
	b		.L11417
.L11421:
	b		.L11421
#             }
#         } /* break is removed due to it will not be executed and just cause a compiler warning */
#         default :
#         {
#             /* Guarantee instructions integrity. */
#             for(;;)
#             {
#                 ;
#             }
#         } /* break is removed due to it will not be executed and just cause a compiler warning */
#     }
# 
# }
	.d2line		548
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11638:
	.type		Os_Platform_Idle,@function
	.size		Os_Platform_Idle,.-Os_Platform_Idle
# Number of nodes = 7

# Allocations for Os_Platform_Idle
#	not allocated	coreID
#	?a4		IdleMode
# FUNC(void,OS_CODE) Os_Platform_Shutdown(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         551,20
#$$ld
.L11645:

#$$bf	Os_Platform_Shutdown,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		Os_Platform_Shutdown
	.d2_cfa_start __cie
Os_Platform_Shutdown:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
.L11428:
	b		.L11428
# {
#     /* Guarantee instructions integrity. */
#     for(;;)
#     {
#         ;
#     }
# }
	.d2line		558
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11646:
	.type		Os_Platform_Shutdown,@function
	.size		Os_Platform_Shutdown,.-Os_Platform_Shutdown
# Number of nodes = 1

# Allocations for Os_Platform_Shutdown
#	not allocated	coreID
# FUNC (void, OS_CODE) OS_SYS_CALL ( void* param, void* address )
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11655:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11651:
	.0byte		.L11649
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Platform.c"
        .d2line         626,22
#$$ld
.L11658:

#$$bf	OS_SYS_CALL,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,msr,lr,srr0,srr1
	.globl		OS_SYS_CALL
	.d2_cfa_start __cie
OS_SYS_CALL:
.Llo104:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# param=r3 param=r3
.Llo105:
	mr		r4,r4		# address=r4 address=r4
	.d2prologue_end
# {
#     Os_SysCallDo ( param, address );
	.d2line		628
.Llo106:
	se_sc
#$$ep
# }
	.d2line		629
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
.L11659:
	.type		OS_SYS_CALL,@function
	.size		OS_SYS_CALL,.-OS_SYS_CALL
# Number of nodes = 6

# Allocations for OS_SYS_CALL
#	?a4		param
#	?a5		address
# FUNC (uint32, OS_CODE) OS_COREID_SYS_CALL (void)
	.align		2
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         634,24
#$$ld
.L11668:

#$$bf	OS_COREID_SYS_CALL,interprocedural,nostackparams

# Regs written: r0,r1,r3,msr,lr,srr0,srr1
	.globl		OS_COREID_SYS_CALL
	.d2_cfa_start __cie
OS_COREID_SYS_CALL:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return Os_CoreIdSysCallDo();
	.d2line		636
	diab.li		r3,0
	se_sc
#$$ep
# }
	.d2line		637
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
.L11669:
	.type		OS_COREID_SYS_CALL,@function
	.size		OS_COREID_SYS_CALL,.-OS_COREID_SYS_CALL
# Number of nodes = 3

# Allocations for OS_COREID_SYS_CALL

# Allocations for module
	.section	.text_vle
	.0byte		.L11671
	.section	.Os_BSS,,b
	.0byte		.L11675
	.section	.Os_BSS,,b
	.0byte		.L11681
	.section	.text_vle
	.0byte		.L11685
	.section	.Os_PUBLIC_BSS,,b
	.0byte		.L11693
	.section	.Os_BSS,,b
	.0byte		.L11695
	.section	.Os_BSS,,b
	.type		PITReloadValues,@object
	.size		PITReloadValues,32
	.align		2
	.globl		PITReloadValues
PITReloadValues:
	.space		32
	.section	.text_vle
#$$ld
.L5:
.L11886:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L11883:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11881:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11879:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11877:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11866:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11864:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11814:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11806:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11726:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L11706:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11704:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11698:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11694:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Platform.c"
.L11682:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\inc\\Os_Arch_Intr.h"
.L11676:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11672:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_IsrCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11438:
.L11446:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Platform.c"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11652:
.L11660:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Platform.c"
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
	.uleb128	9
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
	.uleb128	14
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
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
	.uleb128	16
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Platform.c"
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
.L11435:
	.4byte		.L11436-.L11434
.L11434:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11440-.L11435
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Platform.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11437
	.4byte		.L11438
	.4byte		.L11441
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11447:
	.sleb128	2
	.4byte		.L11443-.L11435
	.byte		"Os_Platform_PreInit"
	.byte		0
	.4byte		.L11446
	.uleb128	100
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11444
	.4byte		.L11445
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11446
	.uleb128	100
	.uleb128	22
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11452
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11443:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11457:
	.sleb128	2
	.4byte		.L11454-.L11435
	.byte		"Os_PlatformIsrEnd"
	.byte		0
	.4byte		.L11446
	.uleb128	219
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11455
	.4byte		.L11456
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L11446
	.uleb128	219
	.uleb128	20
	.byte		"isrConfig"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11463:
	.sleb128	5
	.4byte		.L11446
	.uleb128	221
	.uleb128	40
	.byte		"newLevel"
	.byte		0
	.4byte		.L11464
	.4byte		.L11467
.L11468:
	.sleb128	5
	.4byte		.L11446
	.uleb128	222
	.uleb128	33
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.4byte		.L11469
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11454:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11474:
	.sleb128	2
	.4byte		.L11471-.L11435
	.byte		"Os_Isr_Platform_InitChannel"
	.byte		0
	.4byte		.L11446
	.uleb128	264
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11472
	.4byte		.L11473
	.sleb128	3
	.4byte		.L11446
	.uleb128	264
	.uleb128	20
	.byte		"Os_IsrPltConf"
	.byte		0
	.4byte		.L11458
	.4byte		.L11475
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11471:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11480:
	.sleb128	2
	.4byte		.L11477-.L11435
	.byte		"Os_Isr_Platform_Init"
	.byte		0
	.4byte		.L11446
	.uleb128	246
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11478
	.4byte		.L11479
	.sleb128	3
	.4byte		.L11446
	.uleb128	246
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11481
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11477:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11486:
	.sleb128	2
	.4byte		.L11483-.L11435
	.byte		"Os_Platform_PostInit"
	.byte		0
	.4byte		.L11446
	.uleb128	258
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11484
	.4byte		.L11485
	.sleb128	3
	.4byte		.L11446
	.uleb128	258
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11487
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11483:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11492:
	.sleb128	2
	.4byte		.L11489-.L11435
	.byte		"Os_Isr_Platform_DisableChannel"
	.byte		0
	.4byte		.L11446
	.uleb128	270
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11490
	.4byte		.L11491
	.sleb128	3
	.4byte		.L11446
	.uleb128	270
	.uleb128	20
	.byte		"Os_IsrPltConf"
	.byte		0
	.4byte		.L11458
	.4byte		.L11493
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11489:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11498:
	.sleb128	2
	.4byte		.L11495-.L11435
	.byte		"Os_Isr_Platform_EnableChannel"
	.byte		0
	.4byte		.L11446
	.uleb128	276
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11496
	.4byte		.L11497
	.sleb128	3
	.4byte		.L11446
	.uleb128	276
	.uleb128	20
	.byte		"Os_IsrPltConf"
	.byte		0
	.4byte		.L11458
	.4byte		.L11499
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11495:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11504:
	.sleb128	2
	.4byte		.L11501-.L11435
	.byte		"Os_Timer_Platform_Init"
	.byte		0
	.4byte		.L11446
	.uleb128	286
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L11502
	.4byte		.L11503
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11501:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11509:
	.sleb128	2
	.4byte		.L11506-.L11435
	.byte		"Os_Timer_Platform_PostInit"
	.byte		0
	.4byte		.L11446
	.uleb128	298
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L11507
	.4byte		.L11508
	.sleb128	4
	.4byte		.L11446
	.uleb128	298
	.uleb128	23
	.byte		"coreId"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11506:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11514:
	.sleb128	2
	.4byte		.L11511-.L11435
	.byte		"Os_Timer_Platform_InitChannel"
	.byte		0
	.4byte		.L11446
	.uleb128	304
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L11512
	.4byte		.L11513
	.sleb128	3
	.4byte		.L11446
	.uleb128	304
	.uleb128	23
	.byte		"timerStat"
	.byte		0
	.4byte		.L11515
	.4byte		.L11520
.L11521:
	.sleb128	5
	.4byte		.L11446
	.uleb128	307
	.uleb128	32
	.byte		"channelId"
	.byte		0
	.4byte		.L11522
	.4byte		.L11523
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11511:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11528:
	.sleb128	2
	.4byte		.L11525-.L11435
	.byte		"Os_Timer_Platform_Tick"
	.byte		0
	.4byte		.L11446
	.uleb128	323
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L11526
	.4byte		.L11527
	.sleb128	3
	.4byte		.L11446
	.uleb128	323
	.uleb128	23
	.byte		"timerStat"
	.byte		0
	.4byte		.L11515
	.4byte		.L11529
.L11530:
	.sleb128	5
	.4byte		.L11446
	.uleb128	326
	.uleb128	32
	.byte		"channelId"
	.byte		0
	.4byte		.L11522
	.4byte		.L11531
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11525:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11537:
	.sleb128	6
	.4byte		.L11533-.L11435
	.byte		"Os_Timer_Platform_RestartAndGetElapsedIncrements"
	.byte		0
	.4byte		.L11446
	.uleb128	335
	.uleb128	27
	.4byte		.L11536
	.byte		0x1
	.byte		0x1
	.4byte		.L11534
	.4byte		.L11535
	.sleb128	3
	.4byte		.L11446
	.uleb128	335
	.uleb128	27
	.byte		"timerStat"
	.byte		0
	.4byte		.L11515
	.4byte		.L11538
	.sleb128	3
	.4byte		.L11446
	.uleb128	335
	.uleb128	27
	.byte		"hasElapsed"
	.byte		0
	.4byte		.L11539
	.4byte		.L11543
.L11544:
	.sleb128	5
	.4byte		.L11446
	.uleb128	339
	.uleb128	34
	.byte		"channelId"
	.byte		0
	.4byte		.L11522
	.4byte		.L11545
.L11546:
	.sleb128	5
	.4byte		.L11446
	.uleb128	340
	.uleb128	34
	.byte		"currentIncrements"
	.byte		0
	.4byte		.L11547
	.4byte		.L11548
.L11549:
	.sleb128	5
	.4byte		.L11446
	.uleb128	341
	.uleb128	34
	.byte		"elapsedIncrements"
	.byte		0
	.4byte		.L11536
	.4byte		.L11550
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11533:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11555:
	.sleb128	6
	.4byte		.L11552-.L11435
	.byte		"Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart"
	.byte		0
	.4byte		.L11446
	.uleb128	368
	.uleb128	27
	.4byte		.L11536
	.byte		0x1
	.byte		0x1
	.4byte		.L11553
	.4byte		.L11554
	.sleb128	3
	.4byte		.L11446
	.uleb128	368
	.uleb128	27
	.byte		"timerStat"
	.byte		0
	.4byte		.L11515
	.4byte		.L11556
.L11557:
	.sleb128	5
	.4byte		.L11446
	.uleb128	371
	.uleb128	34
	.byte		"channelId"
	.byte		0
	.4byte		.L11522
	.4byte		.L11558
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11552:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11563:
	.sleb128	6
	.4byte		.L11560-.L11435
	.byte		"Os_Timer_Platform_StopAndGetElapsedIncrements"
	.byte		0
	.4byte		.L11446
	.uleb128	387
	.uleb128	27
	.4byte		.L11536
	.byte		0x1
	.byte		0x1
	.4byte		.L11561
	.4byte		.L11562
	.sleb128	3
	.4byte		.L11446
	.uleb128	387
	.uleb128	27
	.byte		"timerStat"
	.byte		0
	.4byte		.L11515
	.4byte		.L11564
.L11565:
	.sleb128	5
	.4byte		.L11446
	.uleb128	390
	.uleb128	34
	.byte		"channelId"
	.byte		0
	.4byte		.L11522
	.4byte		.L11566
.L11567:
	.sleb128	5
	.4byte		.L11446
	.uleb128	391
	.uleb128	34
	.byte		"currentIncrements"
	.byte		0
	.4byte		.L11547
	.4byte		.L11568
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11560:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11573:
	.sleb128	6
	.4byte		.L11570-.L11435
	.byte		"Os_Timer_Platform_GetElapsedIncrements"
	.byte		0
	.4byte		.L11446
	.uleb128	402
	.uleb128	27
	.4byte		.L11536
	.byte		0x1
	.byte		0x1
	.4byte		.L11571
	.4byte		.L11572
	.sleb128	3
	.4byte		.L11446
	.uleb128	402
	.uleb128	27
	.byte		"timerStat"
	.byte		0
	.4byte		.L11515
	.4byte		.L11574
.L11575:
	.sleb128	5
	.4byte		.L11446
	.uleb128	405
	.uleb128	34
	.byte		"channelId"
	.byte		0
	.4byte		.L11522
	.4byte		.L11576
.L11577:
	.sleb128	5
	.4byte		.L11446
	.uleb128	406
	.uleb128	34
	.byte		"currentIncrements"
	.byte		0
	.4byte		.L11547
	.4byte		.L11578
.L11579:
	.sleb128	5
	.4byte		.L11446
	.uleb128	407
	.uleb128	34
	.byte		"elapsedIncrements"
	.byte		0
	.4byte		.L11536
	.4byte		.L11580
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11570:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11585:
	.sleb128	6
	.4byte		.L11582-.L11435
	.byte		"Os_Timer_Platform_Start_MeasureStop"
	.byte		0
	.4byte		.L11446
	.uleb128	420
	.uleb128	26
	.4byte		.L11536
	.byte		0x1
	.byte		0x1
	.4byte		.L11583
	.4byte		.L11584
	.sleb128	3
	.4byte		.L11446
	.uleb128	420
	.uleb128	26
	.byte		"timerStat"
	.byte		0
	.4byte		.L11515
	.4byte		.L11586
	.sleb128	3
	.4byte		.L11446
	.uleb128	420
	.uleb128	26
	.byte		"increments"
	.byte		0
	.4byte		.L11547
	.4byte		.L11587
.L11588:
	.sleb128	5
	.4byte		.L11446
	.uleb128	424
	.uleb128	34
	.byte		"channelId"
	.byte		0
	.4byte		.L11522
	.4byte		.L11589
.L11590:
	.sleb128	5
	.4byte		.L11446
	.uleb128	425
	.uleb128	34
	.byte		"currentIncrements"
	.byte		0
	.4byte		.L11536
	.4byte		.L11591
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11582:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11596:
	.sleb128	2
	.4byte		.L11593-.L11435
	.byte		"Os_Timer_Platform_Start"
	.byte		0
	.4byte		.L11446
	.uleb128	443
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11594
	.4byte		.L11595
	.sleb128	3
	.4byte		.L11446
	.uleb128	443
	.uleb128	22
	.byte		"timerStat"
	.byte		0
	.4byte		.L11515
	.4byte		.L11597
	.sleb128	3
	.4byte		.L11446
	.uleb128	443
	.uleb128	22
	.byte		"increments"
	.byte		0
	.4byte		.L11547
	.4byte		.L11598
.L11599:
	.sleb128	5
	.4byte		.L11446
	.uleb128	447
	.uleb128	32
	.byte		"channelId"
	.byte		0
	.4byte		.L11522
	.4byte		.L11600
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11593:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11605:
	.sleb128	2
	.4byte		.L11602-.L11435
	.byte		"Os_PlatformTriggerCore"
	.byte		0
	.4byte		.L11446
	.uleb128	467
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11603
	.4byte		.L11604
	.sleb128	3
	.4byte		.L11446
	.uleb128	467
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11606
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11602:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11611:
	.sleb128	2
	.4byte		.L11608-.L11435
	.byte		"Os_PlatformTriggerClear"
	.byte		0
	.4byte		.L11446
	.uleb128	473
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11609
	.4byte		.L11610
.L11612:
	.sleb128	5
	.4byte		.L11446
	.uleb128	475
	.uleb128	35
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11613
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11608:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11618:
	.sleb128	2
	.4byte		.L11615-.L11435
	.byte		"Os_PlatformStartCore"
	.byte		0
	.4byte		.L11446
	.uleb128	484
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11616
	.4byte		.L11617
	.sleb128	3
	.4byte		.L11446
	.uleb128	484
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11619
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11615:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11624:
	.sleb128	2
	.4byte		.L11621-.L11435
	.byte		"Os_Platfrom_ReadExceptionStatus"
	.byte		0
	.4byte		.L11446
	.uleb128	493
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11622
	.4byte		.L11623
	.sleb128	3
	.4byte		.L11446
	.uleb128	493
	.uleb128	22
	.byte		"exceptionId"
	.byte		0
	.4byte		.L11625
	.4byte		.L11628
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11632
	.4byte		.L11629
	.4byte		.L11630
.L11633:
	.sleb128	5
	.4byte		.L11446
	.uleb128	505
	.uleb128	38
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.4byte		.L11634
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11632:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11621:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11639:
	.sleb128	2
	.4byte		.L11636-.L11435
	.byte		"Os_Platform_Idle"
	.byte		0
	.4byte		.L11446
	.uleb128	526
	.uleb128	31
	.byte		0x1
	.byte		0x1
	.4byte		.L11637
	.4byte		.L11638
	.sleb128	4
	.4byte		.L11446
	.uleb128	526
	.uleb128	31
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L11446
	.uleb128	526
	.uleb128	31
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11640
	.4byte		.L11642
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11636:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11647:
	.sleb128	2
	.4byte		.L11644-.L11435
	.byte		"Os_Platform_Shutdown"
	.byte		0
	.4byte		.L11446
	.uleb128	551
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11645
	.4byte		.L11646
	.sleb128	4
	.4byte		.L11446
	.uleb128	551
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11644:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11649:
	.4byte		.L11650-.L11648
.L11648:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11654-.L11649
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Platform.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11651
	.4byte		.L11652
	.4byte		.L11655
.L11661:
	.sleb128	2
	.4byte		.L11657-.L11649
	.byte		"OS_SYS_CALL"
	.byte		0
	.4byte		.L11660
	.uleb128	626
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11658
	.4byte		.L11659
	.sleb128	3
	.4byte		.L11660
	.uleb128	626
	.uleb128	22
	.byte		"param"
	.byte		0
	.4byte		.L11662
	.4byte		.L11664
	.sleb128	3
	.4byte		.L11660
	.uleb128	626
	.uleb128	22
	.byte		"address"
	.byte		0
	.4byte		.L11662
	.4byte		.L11665
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11657:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11670:
	.sleb128	6
	.4byte		.L11667-.L11649
	.byte		"OS_COREID_SYS_CALL"
	.byte		0
	.4byte		.L11660
	.uleb128	634
	.uleb128	24
	.4byte		.L11465
	.byte		0x1
	.byte		0x1
	.4byte		.L11668
	.4byte		.L11669
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11667:
	.section	.debug_info,,n
.L11671:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11672
	.uleb128	87
	.uleb128	68
	.byte		"Os_Isr_Platform_CrossCoreIsr"
	.byte		0
	.4byte		.L11673
	.section	.debug_info,,n
.L11675:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11676
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11677
	.section	.debug_info,,n
.L11681:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11682
	.uleb128	63
	.uleb128	40
	.byte		"Os_IsrLevel"
	.byte		0
	.4byte		.L11683
	.section	.debug_info,,n
.L11685:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11682
	.uleb128	72
	.uleb128	34
	.byte		"Os_IsrIvpr"
	.byte		0
	.4byte		.L11686
	.section	.debug_info,,n
.L11689:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11682
	.uleb128	73
	.uleb128	34
	.byte		"Os_TimerFreezeInDebug"
	.byte		0
	.4byte		.L11690
.L11693:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11694
	.uleb128	74
	.uleb128	22
	.byte		"__start"
	.byte		0
	.4byte		.L11466
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11695:
	.sleb128	9
	.byte		0x1
	.4byte		.L11694
	.uleb128	82
	.uleb128	24
	.byte		"PITReloadValues"
	.byte		0
	.4byte		.L11696
	.sleb128	5
	.byte		0x3
	.4byte		PITReloadValues
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11680:
	.sleb128	10
	.4byte		.L11698
	.uleb128	69
	.uleb128	1
	.4byte		.L11699-.L2
	.uleb128	152
	.section	.debug_info,,n
.L776:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11699:
.L11701:
	.sleb128	10
	.4byte		.L11704
	.uleb128	612
	.uleb128	1
	.4byte		.L11705-.L2
	.uleb128	8
.L735:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11705:
	.section	.debug_info,,n
.L11519:
	.sleb128	12
	.4byte		.L11706
	.uleb128	52
	.uleb128	1
	.4byte		.L11707-.L2
	.byte		"Os_TimerConfStruct"
	.byte		0
	.uleb128	28
.L466:
	.sleb128	11
	.byte		"Os_NumberOfCounters"
	.byte		0
	.4byte		.L11708
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L467:
	.sleb128	11
	.byte		"Os_Counters"
	.byte		0
	.4byte		.L11710
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L468:
	.sleb128	11
	.byte		"Os_TimerDyn"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L469:
	.sleb128	11
	.byte		"Os_IsrPltConfig"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L470:
	.sleb128	11
	.byte		"Os_TimerPltConf"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L471:
	.sleb128	11
	.byte		"Os_TimerMultiplicator"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L472:
	.sleb128	11
	.byte		"Os_TimerMaxTickCount"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11707:
.L11716:
	.sleb128	12
	.4byte		.L11726
	.uleb128	44
	.uleb128	14
	.4byte		.L11727-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L484:
	.sleb128	11
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L11728
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L485:
	.sleb128	11
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L486:
	.sleb128	11
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L487:
	.sleb128	11
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L488:
	.sleb128	11
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L489:
	.sleb128	11
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L490:
	.sleb128	11
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L491:
	.sleb128	11
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L492:
	.sleb128	11
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L493:
	.sleb128	11
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L494:
	.sleb128	11
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L495:
	.sleb128	11
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L11751
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11727:
.L11744:
	.sleb128	12
	.4byte		.L11726
	.uleb128	44
	.uleb128	14
	.4byte		.L11756-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L473:
	.sleb128	11
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L474:
	.sleb128	11
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11732
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L475:
	.sleb128	11
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11756:
.L11740:
	.sleb128	12
	.4byte		.L11726
	.uleb128	44
	.uleb128	14
	.4byte		.L11759-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L476:
	.sleb128	11
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L477:
	.sleb128	11
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L478:
	.sleb128	11
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L479:
	.sleb128	11
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11759:
.L11736:
	.sleb128	12
	.4byte		.L11726
	.uleb128	44
	.uleb128	14
	.4byte		.L11760-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L480:
	.sleb128	11
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L481:
	.sleb128	11
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L482:
	.sleb128	11
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L483:
	.sleb128	11
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11760:
.L11720:
	.sleb128	12
	.4byte		.L11706
	.uleb128	52
	.uleb128	1
	.4byte		.L11761-.L2
	.byte		"Os_TimerCounterDynStruct"
	.byte		0
	.uleb128	44
.L453:
	.sleb128	11
	.byte		"Os_TimerTickCount"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L454:
	.sleb128	11
	.byte		"Os_TimerRemainingTicks"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L455:
	.sleb128	11
	.byte		"Os_TimerConfiguredTicks"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L456:
	.sleb128	11
	.byte		"Os_TimerLastQueriedElapsedTicks"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L457:
	.sleb128	11
	.byte		"Os_TimerRemainingIncrementsCount"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L458:
	.sleb128	11
	.byte		"Os_TimerRemainderIncrements"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L459:
	.sleb128	11
	.byte		"Os_TimerJitterIncrementsCount"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L460:
	.sleb128	11
	.byte		"Os_TimerJitterOffsetIncrementsCount"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L461:
	.sleb128	11
	.byte		"Os_TimerRunning"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L462:
	.sleb128	11
	.byte		"Os_TimerTicked"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L463:
	.sleb128	11
	.byte		"Os_TimerExpired"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L11761:
.L11755:
	.sleb128	12
	.4byte		.L11706
	.uleb128	52
	.uleb128	1
	.4byte		.L11762-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11762:
.L11766:
	.sleb128	10
	.4byte		.L11706
	.uleb128	52
	.uleb128	1
	.4byte		.L11804-.L2
	.uleb128	1
.L432:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11805
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11804:
.L11703:
	.sleb128	10
	.4byte		.L11806
	.uleb128	32
	.uleb128	1
	.4byte		.L11807-.L2
	.uleb128	144
.L423:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11807:
.L11811:
	.sleb128	10
	.4byte		.L11806
	.uleb128	32
	.uleb128	1
	.4byte		.L11812-.L2
	.uleb128	20
.L412:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11812:
.L11809:
	.sleb128	10
	.4byte		.L11814
	.uleb128	174
	.uleb128	1
	.4byte		.L11815-.L2
	.uleb128	120
.L409:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11815:
.L11821:
	.sleb128	10
	.4byte		.L11814
	.uleb128	174
	.uleb128	1
	.4byte		.L11822-.L2
	.uleb128	8
.L406:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11822:
.L11819:
	.sleb128	10
	.4byte		.L11814
	.uleb128	174
	.uleb128	1
	.4byte		.L11826-.L2
	.uleb128	104
.L381:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11732
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11857
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11826:
.L11817:
	.sleb128	10
	.4byte		.L11814
	.uleb128	174
	.uleb128	1
	.4byte		.L11861-.L2
	.uleb128	8
.L379:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11861:
.L11849:
	.sleb128	10
	.4byte		.L11864
	.uleb128	50
	.uleb128	1
	.4byte		.L11865-.L2
	.uleb128	12
.L376:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11865:
.L11725:
	.sleb128	10
	.4byte		.L11866
	.uleb128	111
	.uleb128	7
	.4byte		.L11867-.L2
	.uleb128	2
.L366:
	.sleb128	11
	.byte		"Os_TimerChannelId"
	.byte		0
	.4byte		.L11522
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11867:
.L11462:
	.sleb128	10
	.4byte		.L11866
	.uleb128	111
	.uleb128	7
	.4byte		.L11868-.L2
	.uleb128	8
.L364:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11868:
	.section	.debug_info,,n
.L11758:
	.sleb128	13
	.4byte		.L11726
	.uleb128	44
	.uleb128	14
	.4byte		.L11871-.L2
	.byte		"Os_CounterActionOwnerType_e"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"OS_COUNTERACTION_OWNER_INVALID"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_COUNTERACTION_ALARM"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_COUNTERACTION_SCHTBL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11871:
.L11730:
	.sleb128	13
	.4byte		.L11726
	.uleb128	36
	.uleb128	14
	.4byte		.L11872-.L2
	.byte		"Os_CounterKindType_e"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"OS_HARDWARE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_SOFTWARE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11872:
	.section	.debug_info,,n
.L11774:
	.sleb128	15
	.4byte		.L11706
	.uleb128	52
	.uleb128	1
	.4byte		.L11873-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11873:
.L11627:
	.sleb128	15
	.4byte		.L11806
	.uleb128	32
	.uleb128	1
	.4byte		.L11874-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L11874:
.L11863:
	.sleb128	15
	.4byte		.L11814
	.uleb128	174
	.uleb128	1
	.4byte		.L11875-.L2
	.uleb128	4
	.sleb128	14
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	14
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	14
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	14
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	14
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	14
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	14
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	14
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	14
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	14
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	14
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	14
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	14
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	14
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	14
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	14
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	14
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	14
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	14
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	14
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	14
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	14
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	14
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L11875:
.L11825:
	.sleb128	15
	.4byte		.L11814
	.uleb128	86
	.uleb128	1
	.4byte		.L11876-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	14
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	14
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	14
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	14
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	14
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	14
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	14
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	14
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	14
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	14
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	14
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	14
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	14
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	14
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	14
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	14
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	14
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	14
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	14
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	14
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	14
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	14
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	14
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	14
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	14
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	14
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	14
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	14
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	14
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	14
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	14
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	14
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	14
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	14
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	14
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	14
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	14
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	14
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	14
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	14
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	14
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	14
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	14
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	14
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	14
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	14
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L11876:
.L11860:
	.sleb128	15
	.4byte		.L11877
	.uleb128	43
	.uleb128	1
	.4byte		.L11878-.L2
	.uleb128	4
	.sleb128	14
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11878:
.L11843:
	.sleb128	15
	.4byte		.L11879
	.uleb128	37
	.uleb128	1
	.4byte		.L11880-.L2
	.uleb128	4
	.sleb128	14
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11880:
.L11855:
	.sleb128	15
	.4byte		.L11881
	.uleb128	40
	.uleb128	1
	.4byte		.L11882-.L2
	.uleb128	4
	.sleb128	14
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11882:
.L11836:
	.sleb128	15
	.4byte		.L11883
	.uleb128	47
	.uleb128	1
	.4byte		.L11884-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11884:
.L11542:
	.sleb128	15
	.4byte		.L11864
	.uleb128	50
	.uleb128	1
	.4byte		.L11885-.L2
	.uleb128	4
	.sleb128	14
	.byte		"Os_false"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_true"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11885:
.L11641:
	.sleb128	15
	.4byte		.L11886
	.uleb128	83
	.uleb128	14
	.4byte		.L11887-.L2
	.uleb128	4
	.sleb128	14
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11887:
	.section	.debug_info,,n
.L11451:
	.sleb128	16
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L11450:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11451
.L11449:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11450
	.section	.debug_info,,n
.L11448:
	.sleb128	18
	.4byte		.L11449
.L11461:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11462
.L11460:
	.sleb128	18
	.4byte		.L11461
	.section	.debug_info,,n
.L11459:
	.sleb128	19
	.4byte		.L11460
.L11458:
	.sleb128	18
	.4byte		.L11459
.L11466:
	.sleb128	16
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
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11465
.L11518:
	.sleb128	17
	.byte		"Os_TimerConfType"
	.byte		0
	.4byte		.L11519
.L11517:
	.sleb128	18
	.4byte		.L11518
.L11516:
	.sleb128	19
	.4byte		.L11517
.L11515:
	.sleb128	18
	.4byte		.L11516
.L11522:
	.sleb128	18
	.4byte		.L11450
.L11536:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11465
.L11541:
	.sleb128	17
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L11542
.L11540:
	.sleb128	19
	.4byte		.L11541
.L11539:
	.sleb128	18
	.4byte		.L11540
.L11547:
	.sleb128	18
	.4byte		.L11536
.L11626:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11627
.L11625:
	.sleb128	18
	.4byte		.L11626
.L11640:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11641
	.section	.debug_info,,n
.L11663:
	.sleb128	20
	.byte		"void"
	.byte		0
	.byte		0x0
.L11662:
	.sleb128	19
	.4byte		.L11663
	.section	.debug_info,,n
.L11673:
	.sleb128	21
	.4byte		.L11674-.L2
	.4byte		.L11458
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11674:
.L11679:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11680
.L11677:
	.sleb128	21
	.4byte		.L11678-.L2
	.4byte		.L11679
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11678:
.L11683:
	.sleb128	21
	.4byte		.L11684-.L2
	.4byte		.L11464
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11684:
.L11688:
	.sleb128	18
	.4byte		.L11465
.L11686:
	.sleb128	21
	.4byte		.L11687-.L2
	.4byte		.L11688
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11687:
.L11692:
	.sleb128	16
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11691:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11692
.L11690:
	.sleb128	18
	.4byte		.L11691
.L11696:
	.sleb128	21
	.4byte		.L11697-.L2
	.4byte		.L11536
	.sleb128	22
	.uleb128	7
	.sleb128	0
.L11697:
.L11700:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11701
.L11702:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11703
.L11709:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11465
.L11708:
	.sleb128	18
	.4byte		.L11709
.L11715:
	.sleb128	17
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11716
.L11714:
	.sleb128	18
	.4byte		.L11715
.L11713:
	.sleb128	19
	.4byte		.L11714
.L11712:
	.sleb128	18
	.4byte		.L11713
.L11711:
	.sleb128	19
	.4byte		.L11712
.L11710:
	.sleb128	18
	.4byte		.L11711
.L11719:
	.sleb128	17
	.byte		"Os_TimerCounterDynType"
	.byte		0
	.4byte		.L11720
.L11718:
	.sleb128	19
	.4byte		.L11719
.L11717:
	.sleb128	18
	.4byte		.L11718
.L11724:
	.sleb128	17
	.byte		"Os_TimerPlatformConfigType"
	.byte		0
	.4byte		.L11725
.L11723:
	.sleb128	18
	.4byte		.L11724
.L11722:
	.sleb128	19
	.4byte		.L11723
.L11721:
	.sleb128	18
	.4byte		.L11722
.L11729:
	.sleb128	17
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L11730
.L11728:
	.sleb128	18
	.4byte		.L11729
.L11732:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11465
.L11731:
	.sleb128	18
	.4byte		.L11732
.L11735:
	.sleb128	17
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L11736
.L11734:
	.sleb128	19
	.4byte		.L11735
.L11733:
	.sleb128	18
	.4byte		.L11734
.L11739:
	.sleb128	17
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L11740
.L11738:
	.sleb128	19
	.4byte		.L11739
.L11737:
	.sleb128	18
	.4byte		.L11738
.L11743:
	.sleb128	17
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L11744
.L11742:
	.sleb128	19
	.4byte		.L11743
.L11741:
	.sleb128	18
	.4byte		.L11742
.L11746:
	.sleb128	17
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11465
.L11745:
	.sleb128	18
	.4byte		.L11746
.L11750:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11465
.L11749:
	.sleb128	18
	.4byte		.L11750
.L11748:
	.sleb128	19
	.4byte		.L11749
.L11747:
	.sleb128	18
	.4byte		.L11748
.L11754:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11755
.L11753:
	.sleb128	18
	.4byte		.L11754
.L11752:
	.sleb128	19
	.4byte		.L11753
.L11751:
	.sleb128	18
	.4byte		.L11752
.L11757:
	.sleb128	17
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L11758
.L11765:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11766
.L11764:
	.sleb128	19
	.4byte		.L11765
.L11763:
	.sleb128	18
	.4byte		.L11764
.L11768:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11691
.L11767:
	.sleb128	18
	.4byte		.L11768
.L11771:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11732
.L11770:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11771
.L11769:
	.sleb128	18
	.4byte		.L11770
.L11773:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11774
.L11772:
	.sleb128	18
	.4byte		.L11773
	.section	.debug_info,,n
.L11778:
	.sleb128	23
	.4byte		.L11779-.L2
	.byte		0x1
.L11780:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11691
	.section	.debug_info,,n
	.sleb128	24
	.4byte		.L11780
	.sleb128	0
.L11779:
.L11777:
	.sleb128	19
	.4byte		.L11778
.L11776:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11777
.L11775:
	.sleb128	18
	.4byte		.L11776
.L11784:
	.sleb128	23
	.4byte		.L11785-.L2
	.byte		0x1
	.sleb128	0
.L11785:
.L11783:
	.sleb128	19
	.4byte		.L11784
.L11782:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11783
.L11781:
	.sleb128	18
	.4byte		.L11782
.L11789:
	.sleb128	23
	.4byte		.L11790-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11780
	.sleb128	0
.L11790:
.L11788:
	.sleb128	19
	.4byte		.L11789
.L11787:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11788
.L11786:
	.sleb128	18
	.4byte		.L11787
.L11793:
	.sleb128	18
	.4byte		.L11771
.L11792:
	.sleb128	19
	.4byte		.L11793
.L11791:
	.sleb128	18
	.4byte		.L11792
.L11795:
	.sleb128	19
	.4byte		.L11708
.L11794:
	.sleb128	18
	.4byte		.L11795
.L11799:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11732
.L11798:
	.sleb128	18
	.4byte		.L11799
.L11797:
	.sleb128	19
	.4byte		.L11798
.L11796:
	.sleb128	18
	.4byte		.L11797
.L11803:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11465
.L11802:
	.sleb128	18
	.4byte		.L11803
.L11801:
	.sleb128	19
	.4byte		.L11802
.L11800:
	.sleb128	18
	.4byte		.L11801
.L11805:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11691
.L11808:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11809
.L11810:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11811
.L11813:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11465
.L11816:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11817
.L11818:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11819
.L11820:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11821
.L11823:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11691
.L11824:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11825
.L11827:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11465
.L11830:
	.sleb128	16
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11829:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L11830
.L11828:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11829
.L11831:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11465
.L11832:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11662
.L11834:
	.sleb128	19
	.4byte		.L11805
.L11833:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11834
.L11835:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11836
.L11837:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11691
.L11839:
	.sleb128	19
	.4byte		.L11828
.L11838:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11839
.L11842:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11843
.L11841:
	.sleb128	19
	.4byte		.L11842
.L11840:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11841
.L11845:
	.sleb128	19
	.4byte		.L11536
.L11844:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11845
.L11848:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11849
.L11847:
	.sleb128	19
	.4byte		.L11848
.L11846:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11847
.L11851:
	.sleb128	19
	.4byte		.L11770
.L11850:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11851
.L11854:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11855
.L11853:
	.sleb128	19
	.4byte		.L11854
.L11852:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11853
.L11856:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11450
.L11859:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11860
.L11858:
	.sleb128	19
	.4byte		.L11859
.L11857:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11858
.L11862:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11863
.L11870:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11450
.L11869:
	.sleb128	18
	.4byte		.L11870
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11440:
	.sleb128	0
.L11436:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11654:
	.sleb128	0
.L11650:

	.section	.debug_loc,,n
	.align	0
.L11452:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L11467:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locend
.L11469:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),3
	.d2locend
.L11475:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locend
.L11481:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
.L11493:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),4
	.d2locend
.L11499:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L11520:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locend
.L11523:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L11529:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L11531:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),4
	.d2locend
.L11538:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locend
.L11543:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo33),4
	.d2locend
.L11545:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),6
	.d2locend
.L11548:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),7
	.d2locend
.L11550:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo38),3
	.d2locend
.L11556:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locend
.L11558:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),6
	.d2locend
.L11564:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locend
.L11566:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),4
	.d2locend
.L11568:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo47),3
	.d2locend
.L11574:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
.L11576:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),0
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),0
	.d2locend
.L11578:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo54),3
	.d2locend
.L11580:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),4
	.d2locend
.L11586:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),3
	.d2locend
.L11587:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo63),4
	.d2locend
.L11589:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),7
	.d2locend
.L11591:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo65),4
	.d2locend
.L11597:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locend
.L11598:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo68),4
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo67),6
	.d2locend
.L11600:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo67),7
	.d2locend
.L11606:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locend
.L11613:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locend
.L11619:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),0
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),0
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),0
	.d2locend
.L11628:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),0
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),0
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),0
	.d2locend
.L11634:
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo92),4
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),4
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),4
	.d2locend
.L11642:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),4
	.d2locend
.L11664:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locend
.L11665:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo106),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "OS_SYS_CALL"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Platform_Shutdown"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Platform_Idle"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Platfrom_ReadExceptionStatus"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_PlatformStartCore"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_PlatformTriggerClear"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_PlatformTriggerCore"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_Start"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_Start_MeasureStop"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_GetElapsedIncrements"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_StopAndGetElapsedIncrements"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_RestartAndGetElapsedIncrements"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_Tick"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_InitChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_PostInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Platform_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_Platform_EnableChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_Platform_DisableChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Platform_PostInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_Platform_Init"
	.wrcm.nstrlist "calls", "Os_Isr_Platform_InitChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_Platform_InitChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_PlatformIsrEnd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Platform_PreInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Platform.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Platform.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Platform.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Platform.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Platform.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Platform.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\ssc\src\Os_Platform.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
