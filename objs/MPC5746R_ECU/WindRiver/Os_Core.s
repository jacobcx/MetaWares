#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Core.c"
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
# FUNC (void, OS_CODE) StartCore(CONST(CoreIdType, AUTOMATIC)            coreID,
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11449:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11445:
	.0byte		.L11443
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Core.c"
        .d2line         70,22
#$$ld
.L11452:

#$$bf	StartCore,interprocedural,rasave,nostackparams
	.globl		StartCore
	.d2_cfa_start __cie
StartCore:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# coreID=r31 coreID=r3
	mr		r30,r4		# status=r30 status=r4
	.d2prologue_end
#                                P2VAR(StatusType, AUTOMATIC, AUTOMATIC) status)
# {
#   #ifdef OS_MODULE_MEMORYPROTECTION
#     VAR (Os_APICallType, AUTOMATIC) Os_StartCoreCall;
# 
#     Os_StartCoreCall.Os_API_Data.Os_ApiStartCore.CoreID = coreID;
#     Os_StartCoreCall.Os_API_Data.Os_ApiStartCore.StatusRef = status;
# 
#     OS_LIGHT_SYSCALL(Os_StartCoreCall, StartCore);
# }
# 
# #define OS_STOP_SEC_PUBLIC_CODE
# #include OS_MEMMAP_HEADER
# /* Section: PUBLIC_CODE */
# /*------------------------------------------------------------------------------------------------*/
# /* Section: PRIVATE_CODE */
# #define OS_START_SEC_PRIVATE_CODE
# #include OS_MEMMAP_HEADER
# 
# OS_APILIGHT(StartCore)
# {
#     CONST(CoreIdType, AUTOMATIC) coreID = Os_APICall->Os_API_Data.Os_ApiStartCore.CoreID;
#     CONSTP2VAR(StatusType, AUTOMATIC, OS_VAR) status = Os_APICall->Os_API_Data.Os_ApiStartCore.StatusRef;
# 
#   #endif /* OS_MODULE_MEMORYPROTECTION */
# 
#     /*
#      * [OS088-03-492] [OS088-03-493] [OS088-03-300] [OS088-03-373] [OS088-03-301]
#      * [OS088-03-302] [OS088-03-135] [OS088-03-303] [OS088-03-416] [OS088-03-304]
#      * [OS088-03-460] [OS088-03-305] [OS088-03-306]
#      * [OS-MGC-0056-36] [OS-MGC-0056-79]
#      *
#      * Note: when call is considered invalid either returns an error value or results in a memory protection exception.
#      */
# 
#     /* Shall be available for all cores. */
#     if ( coreID < OS_CORE_NO )
	.d2line		107
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
	se_cmpi		r3,2		# coreID=r3
	bc		0,0,.L11348	# ge
	.section	.Os_PUBLIC_TEXT,,c
.L11466:
#     {
#         VAR (Os_CoreStateType,   AUTOMATIC) coreState;
#         VAR (Os_StartOsFuncType, AUTOMATIC) startFunc;
# 
#         OS_PLATFORM_READ_DCACHE_TRANSPARENT32 ( OS_GET_CORE_DYN_INIT_SHARED(coreID)->Os_CoreState,   coreState, Os_CoreStateType );
	.d2line		112
.Llo2:
	lis		r3,(Os_Core_DynInitShared+4)@ha		# coreID=r3
.Llo3:
	e_add16i		r3,r3,(Os_Core_DynInitShared+4)@l		# coreID=r3 coreID=r3
	rlwinm		r4,r31,0,16,31		# coreID=r31
	e_mulli		r4,r4,20
	lwzux		r0,r3,r4		# coreState=r0 coreID=r3
.Llo13:
	mr		r0,r0		# coreState=r0 coreState=r0
#         OS_PLATFORM_READ_DCACHE_TRANSPARENT32 ( OS_GET_CORE_DYN_INIT_SHARED(coreID)->Os_StartOsFunc, startFunc, Os_StartOsFuncType );
	.d2line		113
	lis		r3,Os_Core_DynInitShared@ha		# coreID=r3
	e_add16i		r3,r3,Os_Core_DynInitShared@l		# coreID=r3 coreID=r3
	lwzx		r4,r3,r4		# coreID=r3
.Llo20:
	mr		r4,r4		# startFunc=r4 startFunc=r4
# 
#         if (    ( OS_CORE_ACTIVATED       == coreState )
	.d2line		115
	e_lis		r3,29035		# coreID=r3
	e_ori		r3,r3,181		# coreID=r3 coreID=r3
	se_cmpl		r0,r3		# coreState=r0 coreID=r3
	bc		1,2,.L11356	# eq
	e_lis		r3,9029		# coreID=r3
	e_or2i		r3,26505		# coreID=r3
	se_cmpl		r0,r3		# coreState=r0 coreID=r3
	bc		0,2,.L11349	# ne
.L11356:
#              || ( OS_CORE_NONAR_ACTIVATED == coreState ) )
#         {
#             *status = E_OS_STATE;  /* [OS680] [OS679] */
	.d2line		118
.Llo14:
	diab.li		r0,7		# coreState=r0
.Llo15:
	stb		r0,0(r30)		# status=r30 coreState=r0
	b		.L11347
.L11349:
#         }
#         else if ( startFunc == NULL_PTR )
	.d2line		120
	se_cmpi		r4,0		# startFunc=r4
	bc		0,2,.L11351	# ne
#         {
#             *status = E_OS_ID;/* [OS-MGC-0105] */
	.d2line		122
.Llo16:
	diab.li		r0,3		# coreState=r0
.Llo17:
	stb		r0,0(r30)		# status=r30 coreState=r0
	b		.L11347
.L11351:
#         }
#         else if ( coreState == OS_CORE_NOTACTIVATED )
	.d2line		124
	e_lis		r3,6910		# coreID=r3
	e_or2i		r3,47806		# coreID=r3
	se_cmpl		r0,r3		# coreState=r0 coreID=r3
	bc		0,2,.L11353	# ne
#         {
#             Os_PlatformStartCore ( coreID ); /* [OS677-01] */
	.d2line		126
.Llo18:
	rlwinm		r3,r31,0,16,31		# coreID=r3 coreID=r31
	bl		Os_PlatformStartCore
#             OS_GET_CORE_DYN_INIT_SHARED(coreID)->Os_CoreState = OS_CORE_ACTIVATED;
	.d2line		127
	e_lis		r0,29035		# coreState=r0
.Llo19:
	e_ori		r0,r0,181		# coreState=r0 coreState=r0
	lis		r3,(Os_Core_DynInitShared+4)@ha		# coreID=r3
	e_add16i		r3,r3,(Os_Core_DynInitShared+4)@l		# coreID=r3 coreID=r3
	rlwinm		r31,r31,0,16,31		# coreID=r31 coreID=r31
.Llo4:
	e_mulli		r31,r31,20		# coreID=r31 coreID=r31
.Llo5:
	stwx		r0,r3,r31		# coreID=r3 coreState=r0
#             *status = E_OK; /* [OS-MGC-0013] */
	.d2line		128
	diab.li		r0,0		# coreState=r0
	stb		r0,0(r30)		# status=r30 coreState=r0
	b		.L11347
.L11353:
#         }
#         else
#         {
#             *status = E_OS_ACCESS;  /* [OS606-01] [OS678] */
	.d2line		132
.Llo6:
	diab.li		r0,1		# coreState=r0
.Llo7:
	stb		r0,0(r30)		# status=r30 coreState=r0
	.section	.Os_PUBLIC_TEXT,,c
.L11467:
.Llo8:
	b		.L11347
.L11348:
#         }
#     }
#     else
#     {
#         /* Do not try to trigger an error due to the OS has not been started yet. */
#         *status = E_OS_ID; /* [OS-MGC-0014] */
	.d2line		138
.Llo9:
	diab.li		r0,3
	stb		r0,0(r30)		# status=r30
.L11347:
#     }
# 
#     /*
#      * [OS088-05-080] [OS088-05-081] [OS088-05-042] [OS088-05-058] [OS088-05-043]
#      * [OS088-05-044] [OS088-05-045] [OS088-05-066] [OS088-05-046] [OS088-05-074]
#      * [OS088-05-047] [OS088-05-048]
#      */
# 
# } /* End StartCore () */
	.d2line		147
	.d2epilogue_begin
.Llo10:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo11:
	lwz		r0,36(r1)		# coreState=r0
	mtspr		lr,r0		# coreState=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo12:
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11453:
	.type		StartCore,@function
	.size		StartCore,.-StartCore
# Number of nodes = 79

# Allocations for StartCore
#	?a4		coreID
#	?a5		status
#	?a6		coreState
#	?a7		startFunc
# FUNC (void, OS_CODE) StartNonAutosarCore(CONST(CoreIdType, AUTOMATIC)            coreID,
	.align		2
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         170,22
#$$ld
.L11485:

#$$bf	StartNonAutosarCore,interprocedural,rasave,nostackparams
	.globl		StartNonAutosarCore
	.d2_cfa_start __cie
StartNonAutosarCore:
.Llo21:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# coreID=r31 coreID=r3
	mr		r30,r4		# status=r30 status=r4
	.d2prologue_end
#                                P2VAR(StatusType, AUTOMATIC, AUTOMATIC) status)
# {
#   #ifdef OS_MODULE_MEMORYPROTECTION
#     VAR (Os_APICallType, AUTOMATIC) Os_StartNonAutosarCoreCall;
# 
#     Os_StartNonAutosarCoreCall.Os_API_Data.Os_ApiStartNonAutosarCore.CoreID = coreID;
#     Os_StartNonAutosarCoreCall.Os_API_Data.Os_ApiStartNonAutosarCore.StatusRef = status;
# 
#     OS_LIGHT_SYSCALL(Os_StartNonAutosarCoreCall, StartNonAutosarCore);
# }
# 
# #define OS_STOP_SEC_PUBLIC_CODE
# #include OS_MEMMAP_HEADER
# /* Section: PUBLIC_CODE */
# /*------------------------------------------------------------------------------------------------*/
# /* Section: PRIVATE_CODE */
# #define OS_START_SEC_PRIVATE_CODE
# #include OS_MEMMAP_HEADER
# 
# OS_APILIGHT(StartNonAutosarCore)
# {
#     CONST(CoreIdType, AUTOMATIC) coreID = Os_APICall->Os_API_Data.Os_ApiStartCore.CoreID;
#     CONSTP2VAR(StatusType, AUTOMATIC, OS_VAR) status = Os_APICall->Os_API_Data.Os_ApiStartCore.StatusRef;
# 
#   #endif /* OS_MODULE_MEMORYPROTECTION */
# 
#     /*
#      * [OS088-03-494] [OS088-03-495] [OS088-03-308] [OS088-03-374] [OS088-03-309]
#      * [OS088-03-310] [OS088-03-135] [OS088-03-311] [OS088-03-417] [OS088-03-312]
#      * [OS088-03-461] [OS088-03-313] [OS088-03-314]
#      * [OS-MGC-0056-37] [OS-MGC-0056-80]
#      *
#      * Note: when call is considered invalid either returns an error value or results in a memory protection exception
#      */
# 
#     /* Shall be available for all cores. */
#     if ( coreID < OS_CORE_NO )
	.d2line		207
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
	se_cmpi		r3,2		# coreID=r3
	bc		0,0,.L11364	# ge
	.section	.Os_PUBLIC_TEXT,,c
.L11490:
#     {
#         VAR (Os_CoreStateType,   AUTOMATIC) coreState;
#         VAR (Os_CoreStateType,   AUTOMATIC) masterCoreState;
#         VAR (Os_StartOsFuncType, AUTOMATIC) startFunc;
# 
#         OS_PLATFORM_READ_DCACHE_TRANSPARENT32 ( OS_GET_CORE_DYN_INIT_SHARED(coreID           )->Os_CoreState,   coreState      , Os_CoreStateType );
	.d2line		213
.Llo22:
	lis		r3,(Os_Core_DynInitShared+4)@ha		# coreID=r3
.Llo23:
	e_add16i		r3,r3,(Os_Core_DynInitShared+4)@l		# coreID=r3 coreID=r3
	rlwinm		r4,r31,0,16,31		# coreID=r31
	e_mulli		r5,r4,20
	lwzx		r0,r3,r5		# coreID=r3
.Llo33:
	mr		r0,r0		# coreState=r0 coreState=r0
#         OS_PLATFORM_READ_DCACHE_TRANSPARENT32 ( OS_GET_CORE_DYN_INIT_SHARED(OS_CORE_ID_MASTER)->Os_CoreState,   masterCoreState, Os_CoreStateType );
	.d2line		214
	lis		r3,(Os_Core_DynInitShared+24)@ha		# coreID=r3
	lwz		r6,(Os_Core_DynInitShared+24)@l(r3)		# coreID=r3
.Llo42:
	mr		r6,r6		# masterCoreState=r6 masterCoreState=r6
#         OS_PLATFORM_READ_DCACHE_TRANSPARENT32 ( OS_GET_CORE_DYN_INIT_SHARED(coreID           )->Os_StartOsFunc, startFunc      , Os_StartOsFuncType );
	.d2line		215
	lis		r3,Os_Core_DynInitShared@ha		# coreID=r3
	e_add16i		r3,r3,Os_Core_DynInitShared@l		# coreID=r3 coreID=r3
	lwzx		r5,r3,r5		# coreID=r3
.Llo43:
	mr		r5,r5		# startFunc=r5 startFunc=r5
# 
#         if (    ( coreID == OS_GETCOREID () )
	.d2line		217
	mfspr		r3,286		# coreID=r3
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
	se_cmp		r4,r3		# coreID=r3
	bc		1,2,.L11372	# eq
	e_lis		r3,29035		# coreID=r3
	e_ori		r3,r3,181		# coreID=r3 coreID=r3
	se_cmpl		r0,r3		# coreState=r0 coreID=r3
	bc		1,2,.L11372	# eq
	e_lis		r3,9029		# coreID=r3
	e_or2i		r3,26505		# coreID=r3
	se_cmpl		r0,r3		# coreState=r0 coreID=r3
	bc		0,2,.L11365	# ne
.L11372:
#              || ( OS_CORE_ACTIVATED       == coreState )
#              || ( OS_CORE_NONAR_ACTIVATED == coreState ) )
#         {
#             *status = E_OS_STATE;   /* [OS684] */
	.d2line		221
.Llo34:
	diab.li		r0,7		# coreState=r0
.Llo35:
	stb		r0,0(r30)		# status=r30 coreState=r0
	b		.L11363
.L11365:
#         }
#         else if ( startFunc != NULL_PTR )
	.d2line		223
	se_cmpi		r5,0		# startFunc=r5
	bc		1,2,.L11367	# eq
#         {
#             *status = E_OS_ID;/* [OS-MGC-0106] */
	.d2line		225
.Llo36:
	diab.li		r0,3		# coreState=r0
.Llo37:
	stb		r0,0(r30)		# status=r30 coreState=r0
	b		.L11363
.L11367:
#         }
#         else if ( ( OS_CORE_NOTACTIVATED == coreState ) && ( OS_CORE_ACTIVATED == masterCoreState ) )
	.d2line		227
	e_lis		r3,6910		# coreID=r3
	e_or2i		r3,47806		# coreID=r3
	se_cmpl		r0,r3		# coreState=r0 coreID=r3
	bc		0,2,.L11369	# ne
.Llo38:
	e_lis		r0,29035		# coreState=r0
.Llo39:
	e_ori		r0,r0,181		# coreState=r0 coreState=r0
	se_cmpl		r6,r0		# masterCoreState=r6 coreState=r0
	bc		0,2,.L11369	# ne
#         {
#             Os_PlatformStartCore ( coreID );   /* [OS683-01] */
	.d2line		229
.Llo40:
	rlwinm		r3,r31,0,16,31		# coreID=r3 coreID=r31
	bl		Os_PlatformStartCore
#             OS_GET_CORE_DYN_INIT_SHARED ( coreID )->Os_CoreState = OS_CORE_NONAR_ACTIVATED;
	.d2line		230
	e_lis		r0,9029		# coreState=r0
.Llo41:
	e_or2i		r0,26505		# coreState=r0
	lis		r3,(Os_Core_DynInitShared+4)@ha		# coreID=r3
	e_add16i		r3,r3,(Os_Core_DynInitShared+4)@l		# coreID=r3 coreID=r3
	rlwinm		r31,r31,0,16,31		# coreID=r31 coreID=r31
.Llo24:
	e_mulli		r31,r31,20		# coreID=r31 coreID=r31
.Llo25:
	stwx		r0,r3,r31		# coreID=r3 coreState=r0
#             *status = E_OK;     /* [OS-MGC-0015] */
	.d2line		231
	diab.li		r0,0		# coreState=r0
	stb		r0,0(r30)		# status=r30 coreState=r0
	b		.L11363
.L11369:
#         }
#         else
#         {
#             *status = E_OS_ACCESS;
	.d2line		235
.Llo26:
	diab.li		r0,1		# coreState=r0
.Llo27:
	stb		r0,0(r30)		# status=r30 coreState=r0
	.section	.Os_PUBLIC_TEXT,,c
.L11491:
.Llo28:
	b		.L11363
.L11364:
#         }
#     }
#     else
#     {
#         *status = E_OS_ID; /* [OS685] */
	.d2line		240
.Llo29:
	diab.li		r0,3
	stb		r0,0(r30)		# status=r30
.L11363:
#     }
#     /* Do not try to trigger an error due to the OS not yet started [OS681] */
# 
#     /*
#      * [OS088-05-082] [OS088-05-083] [OS088-05-050] [OS088-05-059] [OS088-05-051]
#      * [OS088-05-052] [OS088-05-053] [OS088-05-067] [OS088-05-054] [OS088-05-075]
#      * [OS088-05-055] [OS088-05-056]
#      */
# 
# } /* End StartNonAutosarCore () */
	.d2line		250
	.d2epilogue_begin
.Llo30:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo31:
	lwz		r0,36(r1)		# coreState=r0
	mtspr		lr,r0		# coreState=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo32:
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11486:
	.type		StartNonAutosarCore,@function
	.size		StartNonAutosarCore,.-StartNonAutosarCore
# Number of nodes = 98

# Allocations for StartNonAutosarCore
#	?a4		coreID
#	?a5		status
#	?a6		coreState
#	?a7		masterCoreState
#	?a8		startFunc
# FUNC(void,OS_CODE) Os_Core_Idle(CONST(CoreIdType,AUTOMATIC) coreID)
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11507:
	.section	.Os_TEXT,,c
#$$ld
.L11503:
	.0byte		.L11501
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Core.c"
        .d2line         280,20
#$$ld
.L11510:

#$$bf	Os_Core_Idle,interprocedural,rasave,nostackparams
	.globl		Os_Core_Idle
	.d2_cfa_start __cie
Os_Core_Idle:
.Llo44:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# coreID=r0 coreID=r3
	.d2prologue_end
	.section	.Os_TEXT,,c
.L11515:
# {
#   #if defined(OS_PLATFORM_IDLE_MODES)
# 
#     {
#         CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreID );
	.d2line		285
.Llo45:
	lis		r3,Os_Core_DynInitShared@ha		# osCoreDynInitShared=r3
.Llo46:
	e_add16i		r3,r3,Os_Core_DynInitShared@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
	rlwinm		r4,r0,0,16,31		# coreID=r0
	e_mulli		r4,r4,20
	se_add		r3,r4		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
	mr		r3,r3		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
# 
#         switch(osCoreDynInitShared->Os_CoreState)
	.d2line		287
	lwz		r6,4(r3)		# osCoreDynInitShared=r3
	e_lis		r7,29035
	e_ori		r7,r7,181
	se_cmp		r6,r7
	bc		1,2,.L11381	# eq
	e_lis		r7,31111
	e_or2i		r7,30874
	se_cmp		r6,r7
	bc		1,2,.L11381	# eq
	b		.L11379
.L11381:
#         {
#             case OS_CORE_ACTIVATED:
#             case OS_CORE_RUNNING:
#             {
#                 Os_Platform_Idle(coreID, osCoreDynInitShared->Os_CoreIdleMode);
	.d2line		292
	lwz		r4,16(r3)		# osCoreDynInitShared=r3
	rlwinm		r3,r0,0,16,31		# osCoreDynInitShared=r3 coreID=r0
.Llo48:
	bl		Os_Platform_Idle
	.section	.Os_TEXT,,c
.L11516:
.L11379:
#             }break;
# 
#             default:
#                 break;
#         }
#     }
# 
#   #else
# 
#     for(;;)
#     {
# 
#     }
# 
#   #endif /* OS_PLATFORM_IDLE_MODES */
# }
	.d2line		308
	.d2epilogue_begin
.Llo47:
	lwz		r0,20(r1)		# coreID=r0
	mtspr		lr,r0		# coreID=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11511:
	.type		Os_Core_Idle,@function
	.size		Os_Core_Idle,.-Os_Core_Idle
# Number of nodes = 25

# Allocations for Os_Core_Idle
#	?a4		coreID
#	?a5		osCoreDynInitShared
# FUNC(void,OS_CODE) Os_Core_SetIdleMode(CONST(CoreIdType,AUTOMATIC) coreID,CONST(IdleModeType,AUTOMATIC) newIdleMode)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         315,20
#$$ld
.L11527:

#$$bf	Os_Core_SetIdleMode,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Core_SetIdleMode
	.d2_cfa_start __cie
Os_Core_SetIdleMode:
.Llo49:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	mr		r4,r4		# newIdleMode=r4 newIdleMode=r4
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreID );
	.d2line		317
	lis		r5,Os_Core_DynInitShared@ha
	e_add16i		r5,r5,Os_Core_DynInitShared@l
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
	e_mulli		r3,r3,20		# coreID=r3 coreID=r3
	se_add		r3,r5		# coreID=r3 coreID=r3
.Llo50:
	mr		r3,r3		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
#     osCoreDynInitShared->Os_CoreIdleMode = newIdleMode;
	.d2line		318
	stw		r4,16(r3)		# osCoreDynInitShared=r3 newIdleMode=r4
# }
	.d2line		319
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo51:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11528:
	.type		Os_Core_SetIdleMode,@function
	.size		Os_Core_SetIdleMode,.-Os_Core_SetIdleMode
# Number of nodes = 15

# Allocations for Os_Core_SetIdleMode
#	?a4		coreID
#	?a5		newIdleMode
#	?a6		osCoreDynInitShared
# FUNC(P2VAR(Os_StackType,AUTOMATIC,OS_VAR),OS_CODE) Os_Core_GetKernelStack(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         326,52
#$$ld
.L11539:

#$$bf	Os_Core_GetKernelStack,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Os_Core_GetKernelStack
	.d2_cfa_start __cie
Os_Core_GetKernelStack:
.Llo52:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	.d2prologue_end
# {
#     return Os_KernelStack[coreID];
	.d2line		328
	lis		r4,Os_KernelStack@ha
	e_add16i		r4,r4,Os_KernelStack@l
	rlwinm		r3,r3,2,14,29		# coreID=r3 coreID=r3
	lwzx		r3,r4,r3		# coreID=r3
# }
	.d2line		329
	.d2epilogue_begin
.Llo53:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11540:
	.type		Os_Core_GetKernelStack,@function
	.size		Os_Core_GetKernelStack,.-Os_Core_GetKernelStack
# Number of nodes = 9

# Allocations for Os_Core_GetKernelStack
#	?a4		coreID
# FUNC(void, OS_CODE) Os_Core_PreInit(CONST(CoreIdType,AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         336,21
#$$ld
.L11547:

#$$bf	Os_Core_PreInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Os_Core_PreInit
	.d2_cfa_start __cie
Os_Core_PreInit:
.Llo54:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#     /* Update core state */
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreId );
	.d2line		339
	lis		r4,Os_Core_DynInitShared@ha
	e_add16i		r4,r4,Os_Core_DynInitShared@l
	rlwinm		r3,r3,0,16,31		# coreId=r3 coreId=r3
	e_mulli		r3,r3,20		# coreId=r3 coreId=r3
	se_add		r3,r4		# coreId=r3 coreId=r3
.Llo55:
	mr		r3,r3		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
#     osCoreDynInitShared->Os_CoreState = OS_CORE_STARTING;
	.d2line		340
	e_lis		r4,30874
	e_or2i		r4,43399
	stw		r4,4(r3)		# osCoreDynInitShared=r3
# }
	.d2line		341
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo56:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11548:
	.type		Os_Core_PreInit,@function
	.size		Os_Core_PreInit,.-Os_Core_PreInit
# Number of nodes = 15

# Allocations for Os_Core_PreInit
#	?a4		coreId
#	?a5		osCoreDynInitShared
# FUNC(void, OS_CODE) Os_Core_Init(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         348,21
#$$ld
.L11555:

#$$bf	Os_Core_Init,interprocedural,rasave,nostackparams
	.globl		Os_Core_Init
	.d2_cfa_start __cie
Os_Core_Init:
.Llo57:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED(coreID);
	.d2line		350
	lis		r31,Os_Core_DynInitShared@ha		# coreID=r31
	e_add16i		r31,r31,Os_Core_DynInitShared@l		# coreID=r31 coreID=r31
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
	e_mulli		r3,r3,20		# coreID=r3 coreID=r3
	se_add		r3,r31		# coreID=r3 coreID=r3 coreID=r31
.Llo58:
	mr		r31,r3		# osCoreDynInitShared=r31 osCoreDynInitShared=r3
# 
#     /* OS_LINKTIMEGUARD is always zero */
#     OS_ASSERT(OS_LINKTIME_GUARD == 0U, E_OS_SYS_LINKTIMEGUARD_ERROR);
	.d2line		353
	lis		r3,Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2@ha		# coreID=r3
.Llo59:
	lbz		r0,Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2@l(r3)		# coreID=r3
	se_cmpi		r0,0
	bc		1,2,.L11392	# eq
.Llo60:
	diab.li		r4,32
	lis		r3,(Os_Core_DynShared+12)@ha		# coreID=r3
.Llo61:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# coreID=r3 coreID=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# coreID=r3
	diab.li		r3,30		# coreID=r3
.Llo62:
	bl		Os_ShutdownAllCores
.L11392:
#     osCoreDynInitShared->Os_CoreAppMode = (AppModeType)(osCoreDynInitShared->Os_CoreAppMode + (AppModeType)OS_LINKTIME_GUARD);
	.d2line		354
	lwz		r4,12(r31)		# osCoreDynInitShared=r31
	lis		r3,Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2@ha		# coreID=r3
.Llo63:
	lbz		r3,Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2@l(r3)		# coreID=r3 coreID=r3
	se_add		r3,r4		# coreID=r3 coreID=r3
	stw		r3,12(r31)		# osCoreDynInitShared=r31 coreID=r3
#     osCoreDynInitShared->Os_StartOsFunc = &Os_StartOsRuntime;
	.d2line		355
	lis		r3,Os_StartOsRuntime@ha		# coreID=r3
	e_add16i		r3,r3,Os_StartOsRuntime@l		# coreID=r3 coreID=r3
	stw		r3,0(r31)		# osCoreDynInitShared=r31 coreID=r3
# 
#   #if (defined(OS_CONFIG_HOOK) && (STD_OFF == OS_STARTUPHOOK))
#     OS_GET_CORE_DYN(coreID)->Os_HooksDyn.Os_HookID = OS_HOOKID_NONE;
#   #else
#     /* Os_HookID will be set around calling Startup Hook. */
#   #endif
# }
	.d2line		362
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo65:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo64:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11556:
	.type		Os_Core_Init,@function
	.size		Os_Core_Init,.-Os_Core_Init
# Number of nodes = 50

# Allocations for Os_Core_Init
#	?a4		coreID
#	?a5		osCoreDynInitShared
# FUNC(VAR (Os_CoreStartedType, AUTOMATIC),OS_CODE) Os_Core_GetStarted(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         369,51
#$$ld
.L11563:

#$$bf	Os_Core_GetStarted,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Os_Core_GetStarted
	.d2_cfa_start __cie
Os_Core_GetStarted:
.Llo66:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreID );
	.d2line		371
	lis		r4,Os_Core_DynInitShared@ha
	e_add16i		r4,r4,Os_Core_DynInitShared@l
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
	e_mulli		r3,r3,20		# coreID=r3 coreID=r3
	se_add		r3,r4		# coreID=r3 coreID=r3
.Llo67:
	mr		r3,r3		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
#     return osCoreDynInitShared->Os_CoreStarted;
	.d2line		372
	lwz		r3,8(r3)		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
# }
	.d2line		373
	.d2epilogue_begin
.Llo68:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11564:
	.type		Os_Core_GetStarted,@function
	.size		Os_Core_GetStarted,.-Os_Core_GetStarted
# Number of nodes = 14

# Allocations for Os_Core_GetStarted
#	?a4		coreID
#	?a5		osCoreDynInitShared
# FUNC(void ,OS_CODE) Os_Core_SetStarted(CONST(CoreIdType,AUTOMATIC) coreID, VAR (Os_CoreStartedType, AUTOMATIC) started)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         380,21
#$$ld
.L11572:

#$$bf	Os_Core_SetStarted,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Core_SetStarted
	.d2_cfa_start __cie
Os_Core_SetStarted:
.Llo69:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	mr		r4,r4		# started=r4 started=r4
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreID );
	.d2line		382
	lis		r5,Os_Core_DynInitShared@ha
	e_add16i		r5,r5,Os_Core_DynInitShared@l
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
	e_mulli		r3,r3,20		# coreID=r3 coreID=r3
	se_add		r3,r5		# coreID=r3 coreID=r3
.Llo70:
	mr		r3,r3		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
#     osCoreDynInitShared->Os_CoreStarted = started;
	.d2line		383
	stw		r4,8(r3)		# osCoreDynInitShared=r3 started=r4
# }
	.d2line		384
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo71:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11573:
	.type		Os_Core_SetStarted,@function
	.size		Os_Core_SetStarted,.-Os_Core_SetStarted
# Number of nodes = 15

# Allocations for Os_Core_SetStarted
#	?a4		coreID
#	?a5		started
#	?a6		osCoreDynInitShared
# FUNC(VAR(Os_StartOsFuncType,AUTOMATIC),OS_CODE) Os_Core_GetStartOsFunc(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         391,49
#$$ld
.L11581:

#$$bf	Os_Core_GetStartOsFunc,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Os_Core_GetStartOsFunc
	.d2_cfa_start __cie
Os_Core_GetStartOsFunc:
.Llo72:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo80:
	stw		r0,20(r1)		# func=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# coreID=r4 coreID=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreID );
#     VAR (Os_StartOsFuncType, AUTOMATIC) func = NULL_PTR;
	.d2line		394
	diab.li		r0,0		# func=r0
	.d2line		393
.Llo81:
	lis		r3,Os_Core_DynInitShared@ha		# func=r3
.Llo73:
	e_add16i		r3,r3,Os_Core_DynInitShared@l		# func=r3 func=r3
.Llo74:
	rlwinm		r4,r4,0,16,31		# coreID=r4 coreID=r4
	e_mulli		r0,r4,20		# func=r0 coreID=r4
	se_add		r0,r3		# func=r0 func=r0 func=r3
.Llo78:
	mr		r3,r0		# osCoreDynInitShared=r3 osCoreDynInitShared=r0
# 
#     /*
#      * [OS088-03-129] [OS088-03-131] [OS088-03-132] [OS088-03-357] [OS088-03-133]
#      * [OS088-03-134] [OS088-03-135] [OS088-03-395] [OS088-03-136] [OS088-03-438]
#      * [OS088-03-137] [OS088-03-138]
#      * [OS-MGC-0056-14] [OS-MGC-0056-57]
#      *
#      * Note: when call is considered invalid either returns NULL_PTR or results in a memory protection exception
#      */
# 
#     if (    ( OS_CORE_NO > coreID )
	.d2line		405
.Llo82:
	se_cmpi		r4,2		# coreID=r4
	bc		0,0,.L11399	# ge
.Llo75:
	lwz		r4,4(r3)		# coreID=r4 osCoreDynInitShared=r3
.Llo76:
	e_lis		r0,29035		# func=r0
.Llo83:
	e_ori		r0,r0,181		# func=r0 func=r0
	se_cmpl		r4,r0		# coreID=r4 func=r0
	bc		0,2,.L11399	# ne
#          && ( osCoreDynInitShared->Os_CoreState == OS_CORE_ACTIVATED ) )
#     {
#         func = osCoreDynInitShared->Os_StartOsFunc;
	.d2line		408
.Llo77:
	lwz		r3,0(r3)		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo79:
	mr		r3,r3		# func=r3 func=r3
	b		.L11400
.L11399:
#     }
# 
#     else
#     {
#         func = NULL_PTR;
	.d2line		413
.Llo84:
	diab.li		r3,0		# func=r3
.L11400:
#     }
# 
#     return func;
	.d2line		416
.Llo85:
	mr		r3,r3		# func=r3 func=r3
# }
	.d2line		417
	.d2epilogue_begin
.Llo86:
	lwz		r0,20(r1)		# func=r0
	mtspr		lr,r0		# func=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11582:
	.type		Os_Core_GetStartOsFunc,@function
	.size		Os_Core_GetStartOsFunc,.-Os_Core_GetStartOsFunc
# Number of nodes = 32

# Allocations for Os_Core_GetStartOsFunc
#	?a4		coreID
#	?a5		osCoreDynInitShared
#	?a6		func
# FUNC(VAR (AppModeType, AUTOMATIC),OS_CODE) Os_Core_GetAppMode(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         424,44
#$$ld
.L11591:

#$$bf	Os_Core_GetAppMode,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Os_Core_GetAppMode
	.d2_cfa_start __cie
Os_Core_GetAppMode:
.Llo87:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreID );
	.d2line		426
	lis		r4,Os_Core_DynInitShared@ha
	e_add16i		r4,r4,Os_Core_DynInitShared@l
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
	e_mulli		r3,r3,20		# coreID=r3 coreID=r3
	se_add		r3,r4		# coreID=r3 coreID=r3
.Llo88:
	mr		r3,r3		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
#     return osCoreDynInitShared->Os_CoreAppMode;
	.d2line		427
	lwz		r3,12(r3)		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
# }
	.d2line		428
	.d2epilogue_begin
.Llo89:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11592:
	.type		Os_Core_GetAppMode,@function
	.size		Os_Core_GetAppMode,.-Os_Core_GetAppMode
# Number of nodes = 14

# Allocations for Os_Core_GetAppMode
#	?a4		coreID
#	?a5		osCoreDynInitShared
# FUNC(void, OS_CODE) Os_CoreSyncPhase0(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         436,21
#$$ld
.L11599:

#$$bf	Os_CoreSyncPhase0,interprocedural,rasave,nostackparams
	.globl		Os_CoreSyncPhase0
	.d2_cfa_start __cie
Os_CoreSyncPhase0:
.Llo90:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# coreId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# coreId=r0 coreId=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreId );
	.d2line		438
	lis		r3,Os_Core_DynInitShared@ha		# osCoreDynInitShared=r3
.Llo91:
	e_add16i		r3,r3,Os_Core_DynInitShared@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo92:
	rlwinm		r0,r0,0,16,31		# coreId=r0 coreId=r0
	e_mulli		r0,r0,20		# coreId=r0 coreId=r0
	se_add		r0,r3		# coreId=r0 coreId=r0 osCoreDynInitShared=r3
.Llo93:
	mr		r3,r0		# osCoreDynInitShared=r3 osCoreDynInitShared=r0
#     /* Update core state */
#     osCoreDynInitShared->Os_CoreState = OS_CORE_STARTED_SYNCPHASE0;
	.d2line		440
	e_lis		r0,25957		# coreId=r0
.Llo94:
	e_or2i		r0,25957		# coreId=r0
	stw		r0,4(r3)		# osCoreDynInitShared=r3 coreId=r0
#     /* Atomic increment */
#     OS_PLATFORM_ATOMIC_INCREMENT_UINT16(coreId, Os_SyncPhase0Barrier);
	.d2line		442
	lis		r3,Os_SyncPhase0Barrier@ha		# osCoreDynInitShared=r3
	e_add16i		r3,r3,Os_SyncPhase0Barrier@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo96:
	bl		Os_Platform_AtomicIncrementUint16
.L11405:
#     /* Wait for all the cores before proceeding. */
#     while((uint16)OS_AUTOSAR_CORE_NO != OS_PLATFORM_ATOMIC_UINT16_VALUE(coreId, Os_SyncPhase0Barrier))
	.d2line		444
.Llo95:
	lis		r3,Os_SyncPhase0Barrier@ha		# osCoreDynInitShared=r3
.Llo97:
	e_add16i		r3,r3,Os_SyncPhase0Barrier@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo98:
	bl		Os_Platform_AtomicValueUint16
.Llo99:
	rlwinm		r3,r3,0,16,31		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
	se_cmpi		r3,2		# osCoreDynInitShared=r3
	bc		0,2,.L11405	# ne
#     {
# 
#     }
# }
	.d2line		448
	.d2epilogue_begin
.Llo100:
	lwz		r0,20(r1)		# coreId=r0
	mtspr		lr,r0		# coreId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11600:
	.type		Os_CoreSyncPhase0,@function
	.size		Os_CoreSyncPhase0,.-Os_CoreSyncPhase0
# Number of nodes = 29

# Allocations for Os_CoreSyncPhase0
#	?a4		coreId
#	?a5		osCoreDynInitShared
# FUNC(void, OS_CODE) Os_CoreSyncPhase1(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         457,21
#$$ld
.L11607:

#$$bf	Os_CoreSyncPhase1,interprocedural,rasave,nostackparams
	.globl		Os_CoreSyncPhase1
	.d2_cfa_start __cie
Os_CoreSyncPhase1:
.Llo101:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# coreId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# coreId=r0 coreId=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreId );
	.d2line		459
	lis		r3,Os_Core_DynInitShared@ha		# osCoreDynInitShared=r3
.Llo102:
	e_add16i		r3,r3,Os_Core_DynInitShared@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo103:
	rlwinm		r0,r0,0,16,31		# coreId=r0 coreId=r0
	e_mulli		r0,r0,20		# coreId=r0 coreId=r0
	se_add		r0,r3		# coreId=r0 coreId=r0 osCoreDynInitShared=r3
.Llo104:
	mr		r3,r0		# osCoreDynInitShared=r3 osCoreDynInitShared=r0
#     /* Update core state */
#     osCoreDynInitShared->Os_CoreState = OS_CORE_STARTED_SYNCPHASE1;
	.d2line		461
	e_lis		r0,30326		# coreId=r0
.Llo105:
	e_or2i		r0,30326		# coreId=r0
	stw		r0,4(r3)		# osCoreDynInitShared=r3 coreId=r0
#     /* Atomic increment */
#     OS_PLATFORM_ATOMIC_INCREMENT_UINT16(coreId, Os_SyncPhase1Barrier);
	.d2line		463
	lis		r3,Os_SyncPhase1Barrier@ha		# osCoreDynInitShared=r3
	e_add16i		r3,r3,Os_SyncPhase1Barrier@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo107:
	bl		Os_Platform_AtomicIncrementUint16
.L11410:
#     /* Wait for all the cores before proceeding. */
#     while((uint16)OS_AUTOSAR_CORE_NO != OS_PLATFORM_ATOMIC_UINT16_VALUE(coreId, Os_SyncPhase1Barrier))
	.d2line		465
.Llo106:
	lis		r3,Os_SyncPhase1Barrier@ha		# osCoreDynInitShared=r3
.Llo108:
	e_add16i		r3,r3,Os_SyncPhase1Barrier@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo109:
	bl		Os_Platform_AtomicValueUint16
.Llo110:
	rlwinm		r3,r3,0,16,31		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
	se_cmpi		r3,2		# osCoreDynInitShared=r3
	bc		0,2,.L11410	# ne
#     {
# 
#     }
# }
	.d2line		469
	.d2epilogue_begin
.Llo111:
	lwz		r0,20(r1)		# coreId=r0
	mtspr		lr,r0		# coreId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11608:
	.type		Os_CoreSyncPhase1,@function
	.size		Os_CoreSyncPhase1,.-Os_CoreSyncPhase1
# Number of nodes = 29

# Allocations for Os_CoreSyncPhase1
#	?a4		coreId
#	?a5		osCoreDynInitShared
# FUNC(void, OS_CODE) Os_CoreSyncPhase2(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         478,21
#$$ld
.L11615:

#$$bf	Os_CoreSyncPhase2,interprocedural,rasave,nostackparams
	.globl		Os_CoreSyncPhase2
	.d2_cfa_start __cie
Os_CoreSyncPhase2:
.Llo112:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreId );
	.d2line		480
	lis		r31,Os_Core_DynInitShared@ha		# osCoreDynInitShared=r31
	e_add16i		r31,r31,Os_Core_DynInitShared@l		# osCoreDynInitShared=r31 osCoreDynInitShared=r31
	rlwinm		r3,r3,0,16,31		# coreId=r3 coreId=r3
	e_mulli		r3,r3,20		# coreId=r3 coreId=r3
	se_add		r3,r31		# coreId=r3 coreId=r3 osCoreDynInitShared=r31
.Llo113:
	mr		r31,r3		# osCoreDynInitShared=r31 osCoreDynInitShared=r3
#     /* Update core state */
#     osCoreDynInitShared->Os_CoreState = OS_CORE_STARTED_SYNCPHASE2;
	.d2line		482
.Llo124:
	e_lis		r0,30565
.Llo125:
	e_or2i		r0,17185
	stw		r0,4(r31)		# osCoreDynInitShared=r31
#     /* Atomic increments */
#     OS_PLATFORM_ATOMIC_INCREMENT_UINT16(coreId, Os_RunningBarrier);
	.d2line		484
	lis		r3,Os_RunningBarrier@ha		# coreId=r3
.Llo114:
	e_add16i		r3,r3,Os_RunningBarrier@l		# coreId=r3 coreId=r3
.Llo115:
	bl		Os_Platform_AtomicIncrementUint16
#     OS_PLATFORM_ATOMIC_INCREMENT_UINT16(coreId, Os_SyncPhase2Barrier);
	.d2line		485
	lis		r3,Os_SyncPhase2Barrier@ha		# coreId=r3
.Llo116:
	e_add16i		r3,r3,Os_SyncPhase2Barrier@l		# coreId=r3 coreId=r3
.Llo117:
	bl		Os_Platform_AtomicIncrementUint16
.L11415:
#     /* Wait for all the cores before proceeding. */
#     while((uint16)OS_AUTOSAR_CORE_NO != OS_PLATFORM_ATOMIC_UINT16_VALUE(coreId, Os_SyncPhase2Barrier))
	.d2line		487
.Llo126:
	lis		r3,Os_SyncPhase2Barrier@ha		# coreId=r3
.Llo118:
	e_add16i		r3,r3,Os_SyncPhase2Barrier@l		# coreId=r3 coreId=r3
.Llo119:
	bl		Os_Platform_AtomicValueUint16
.Llo120:
	rlwinm		r3,r3,0,16,31		# coreId=r3 coreId=r3
	se_cmpi		r3,2		# coreId=r3
	bc		0,2,.L11415	# ne
#     {
# 
#     }
#     /* Update core state */
#     osCoreDynInitShared->Os_CoreState = OS_CORE_RUNNING;
	.d2line		492
.Llo121:
	e_lis		r3,31111		# coreId=r3
.Llo122:
	e_or2i		r3,30874		# coreId=r3
	stw		r3,4(r31)		# osCoreDynInitShared=r31 coreId=r3
# }
	.d2line		493
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo127:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo123:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11616:
	.type		Os_CoreSyncPhase2,@function
	.size		Os_CoreSyncPhase2,.-Os_CoreSyncPhase2
# Number of nodes = 39

# Allocations for Os_CoreSyncPhase2
#	?a4		coreId
#	?a5		osCoreDynInitShared
# FUNC(void ,OS_CODE) Os_CoreBeginShutdown(CONST(CoreIdType,AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         502,21
#$$ld
.L11623:

#$$bf	Os_CoreBeginShutdown,interprocedural,rasave,nostackparams
	.globl		Os_CoreBeginShutdown
	.d2_cfa_start __cie
Os_CoreBeginShutdown:
.Llo128:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# coreId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# coreId=r0 coreId=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) osCoreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED ( coreId );
	.d2line		504
	lis		r3,Os_Core_DynInitShared@ha		# osCoreDynInitShared=r3
.Llo129:
	e_add16i		r3,r3,Os_Core_DynInitShared@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo130:
	rlwinm		r0,r0,0,16,31		# coreId=r0 coreId=r0
	e_mulli		r0,r0,20		# coreId=r0 coreId=r0
	se_add		r0,r3		# coreId=r0 coreId=r0 osCoreDynInitShared=r3
.Llo131:
	mr		r3,r0		# osCoreDynInitShared=r3 osCoreDynInitShared=r0
# 
#     if(OS_CORE_STARTED_SYNCPHASE1 == osCoreDynInitShared->Os_CoreState)
	.d2line		506
.Llo134:
	lwz		r0,4(r3)		# coreId=r0 osCoreDynInitShared=r3
.Llo132:
	e_lis		r3,30326		# osCoreDynInitShared=r3
.Llo135:
	e_or2i		r3,30326		# osCoreDynInitShared=r3
	se_cmpl		r0,r3		# coreId=r0 osCoreDynInitShared=r3
	bc		0,2,.L11419	# ne
#     {
#         /* Release cores waiting in Os_CoreSyncPhase2 as this core could't reach that point due to
#          * shutdown request in on of the startup hooks.
#          */
# 
#         /* Atomic increment */
#         OS_PLATFORM_ATOMIC_INCREMENT_UINT16(coreId, Os_SyncPhase2Barrier);
	.d2line		513
.Llo133:
	lis		r3,Os_SyncPhase2Barrier@ha		# osCoreDynInitShared=r3
.Llo136:
	e_add16i		r3,r3,Os_SyncPhase2Barrier@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo137:
	bl		Os_Platform_AtomicIncrementUint16
	b		.L11418
.L11419:
#     }
#     else
#     {
#         /* Atomic decrement */
#         OS_PLATFORM_ATOMIC_DECREMENT_UINT16(coreId, Os_RunningBarrier);
	.d2line		518
	lis		r3,Os_RunningBarrier@ha		# osCoreDynInitShared=r3
.Llo138:
	e_add16i		r3,r3,Os_RunningBarrier@l		# osCoreDynInitShared=r3 osCoreDynInitShared=r3
.Llo139:
	bl		Os_Platform_AtomicDecrementUint16
.L11418:
#     }
# }
	.d2line		520
	.d2epilogue_begin
	lwz		r0,20(r1)		# coreId=r0
	mtspr		lr,r0		# coreId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11624:
	.type		Os_CoreBeginShutdown,@function
	.size		Os_CoreBeginShutdown,.-Os_CoreBeginShutdown
# Number of nodes = 26

# Allocations for Os_CoreBeginShutdown
#	?a4		coreId
#	?a5		osCoreDynInitShared
# FUNC(void, OS_CODE) Os_CoreSyncShutdown(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         529,21
#$$ld
.L11631:

#$$bf	Os_CoreSyncShutdown,interprocedural,rasave,nostackparams
	.globl		Os_CoreSyncShutdown
	.d2_cfa_start __cie
Os_CoreSyncShutdown:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
.L11424:
# {
#     /* Wait for all the cores before proceeding. */
#     while((uint16)0 != OS_PLATFORM_ATOMIC_UINT16_VALUE(coreId, Os_RunningBarrier))
	.d2line		532
	lis		r3,Os_RunningBarrier@ha
	e_add16i		r3,r3,Os_RunningBarrier@l
	bl		Os_Platform_AtomicValueUint16
	e_and2i.		r3,65535
	bc		0,2,.L11424	# ne
#     {
# 
#     }
#     /* Atomic decrement */
#     OS_PLATFORM_ATOMIC_DECREMENT_UINT16(coreId, Os_SyncPhase2Barrier);
	.d2line		537
	lis		r3,Os_SyncPhase2Barrier@ha
	e_add16i		r3,r3,Os_SyncPhase2Barrier@l
	bl		Os_Platform_AtomicDecrementUint16
.L11426:
#     /* Wait for all the cores before proceeding. */
#     while((uint16)0 != OS_PLATFORM_ATOMIC_UINT16_VALUE(coreId, Os_SyncPhase2Barrier))
	.d2line		539
	lis		r3,Os_SyncPhase2Barrier@ha
	e_add16i		r3,r3,Os_SyncPhase2Barrier@l
	bl		Os_Platform_AtomicValueUint16
	e_and2i.		r3,65535
	bc		0,2,.L11426	# ne
#     {
# 
#     }
# }
	.d2line		543
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
.L11632:
	.type		Os_CoreSyncShutdown,@function
	.size		Os_CoreSyncShutdown,.-Os_CoreSyncShutdown
# Number of nodes = 22

# Allocations for Os_CoreSyncShutdown
#	not allocated	coreId
# FUNC(void, OS_CODE) Os_CoreIndividualShutdown(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         552,21
#$$ld
.L11636:

#$$bf	Os_CoreIndividualShutdown,interprocedural,rasave,nostackparams
	.globl		Os_CoreIndividualShutdown
	.d2_cfa_start __cie
Os_CoreIndividualShutdown:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Atomic decrement */
#     OS_PLATFORM_ATOMIC_DECREMENT_UINT16(coreId, Os_SyncPhase2Barrier);
	.d2line		555
	lis		r3,Os_SyncPhase2Barrier@ha
	e_add16i		r3,r3,Os_SyncPhase2Barrier@l
	bl		Os_Platform_AtomicDecrementUint16
# }
	.d2line		556
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
.L11637:
	.type		Os_CoreIndividualShutdown,@function
	.size		Os_CoreIndividualShutdown,.-Os_CoreIndividualShutdown
# Number of nodes = 5

# Allocations for Os_CoreIndividualShutdown
#	not allocated	coreId
# FUNC(CoreIdType ,OS_CODE) Os_Core_GetActivatedNo(void)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         565,27
#$$ld
.L11641:

#$$bf	Os_Core_GetActivatedNo,interprocedural,rasave,nostackparams
	.globl		Os_Core_GetActivatedNo
	.d2_cfa_start __cie
Os_Core_GetActivatedNo:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* [OS673] */
#     return (CoreIdType)OS_PLATFORM_ATOMIC_UINT16_VALUE(OS_GETCOREID(), Os_RunningBarrier);
	.d2line		568
	lis		r3,Os_RunningBarrier@ha
	e_add16i		r3,r3,Os_RunningBarrier@l
	bl		Os_Platform_AtomicValueUint16
	rlwinm		r3,r3,0,16,31
# }
	.d2line		569
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
.L11642:
	.type		Os_Core_GetActivatedNo,@function
	.size		Os_Core_GetActivatedNo,.-Os_Core_GetActivatedNo
# Number of nodes = 6

# Allocations for Os_Core_GetActivatedNo
# FUNC(boolean,OS_CODE) Os_Core_IsRunning(CONST(CoreIdType, AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         578,23
#$$ld
.L11646:

#$$bf	Os_Core_IsRunning,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Os_Core_IsRunning
	.d2_cfa_start __cie
Os_Core_IsRunning:
.Llo140:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# coreID=r4 coreID=r3
	.d2prologue_end
# {
#     if(    OS_IS_AUTOSAR_CORE(coreID)
	.d2line		580
.Llo141:
	lis		r3,(Os_Core_Stat+4)@ha
.Llo142:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r4,0,16,31		# coreID=r4
	e_mulli		r0,r0,20
	lwzx		r0,r3,r0
	se_cmpi		r0,0
	bc		1,2,.L11434	# eq
.Llo143:
	lis		r3,(Os_Core_DynInitShared+4)@ha
	e_add16i		r3,r3,(Os_Core_DynInitShared+4)@l
.Llo144:
	rlwinm		r4,r4,0,16,31		# coreID=r4 coreID=r4
	e_mulli		r4,r4,20		# coreID=r4 coreID=r4
.Llo145:
	lwzx		r0,r3,r4
	e_lis		r3,30326
	e_or2i		r3,30326
	se_cmpl		r0,r3
	bc		1,0,.L11434	# lt
#         && (OS_CORE_STARTED_SYNCPHASE1 <= OS_GET_CORE_DYN_INIT_SHARED(coreID)->Os_CoreState))
#     {
#         return TRUE;
	.d2line		583
	diab.li		r3,1
	b		.L11433
.L11434:
#     }
#     else
#     {
#         return FALSE;
	.d2line		587
.Llo146:
	diab.li		r3,0
.L11433:
#     }
# }
	.d2line		589
	.d2epilogue_begin
.Llo147:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11647:
	.type		Os_Core_IsRunning,@function
	.size		Os_Core_IsRunning,.-Os_Core_IsRunning
# Number of nodes = 29

# Allocations for Os_Core_IsRunning
#	?a4		coreID
# FUNC(void,OS_CODE) Os_Core_PostInit(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         621,20
#$$ld
.L11653:

#$$bf	Os_Core_PostInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Os_Core_PostInit
	.d2_cfa_start __cie
Os_Core_PostInit:
.Llo148:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#     /* Global initialization only for once */
#     if(OS_CORE_ID_MASTER == coreId)
	.d2line		624
	rlwinm		r3,r3,0,16,31		# coreId=r3 coreId=r3
	se_cmpi		r3,1		# coreId=r3
	bc		0,2,.L11438	# ne
#     {
#         Os_GetCoreIDFunc = &Os_GetCoreIDAPI;
	.d2line		626
.Llo149:
	lis		r3,Os_GetCoreIDAPI@ha		# coreId=r3
.Llo150:
	e_add16i		r3,r3,Os_GetCoreIDAPI@l		# coreId=r3 coreId=r3
	lis		r4,Os_GetCoreIDFunc@ha
	e_add16i		r4,r4,Os_GetCoreIDFunc@l
	stw		r3,0(r4)		# coreId=r3
.L11438:
#     }
#     else
#     {
#         /* Do nothing on purpose. */
#     }
# }
	.d2line		632
	.d2epilogue_begin
.Llo151:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11654:
	.type		Os_Core_PostInit,@function
	.size		Os_Core_PostInit,.-Os_Core_PostInit
# Number of nodes = 9

# Allocations for Os_Core_PostInit
#	?a4		coreId

# Allocations for module
	.section	.text_vle
	.0byte		.L11657
	.section	.text_vle
	.0byte		.L11660
	.section	.Os_BSS,,b
	.0byte		.L11667
	.section	.text_vle
	.0byte		.L11675
	.section	.Os_PUBLIC_BSS,,b
	.0byte		.L11680
	.section	.Os_DATA,,d
	.0byte		.L11685
	.section	.Os_DATA,,d
	.type		Os_SyncPhase0Barrier,@object
	.size		Os_SyncPhase0Barrier,4
	.align		1
Os_SyncPhase0Barrier:
	.short		0
	.short		0
	.section	.Os_DATA,,d
	.type		Os_SyncPhase1Barrier,@object
	.size		Os_SyncPhase1Barrier,4
	.align		1
Os_SyncPhase1Barrier:
	.short		0
	.short		0
	.section	.Os_DATA,,d
	.type		Os_SyncPhase2Barrier,@object
	.size		Os_SyncPhase2Barrier,4
	.align		1
Os_SyncPhase2Barrier:
	.short		0
	.short		0
	.section	.Os_DATA,,d
	.type		Os_RunningBarrier,@object
	.size		Os_RunningBarrier,4
	.align		1
Os_RunningBarrier:
	.short		0
	.short		0
	.section	.text_vle
#$$ld
.L5:
.L12177:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12174:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12172:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12170:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12168:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12152:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12150:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12133:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12113:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L12068:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L12021:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L12018:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11993:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11753:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11693:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11686:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Core.c"
.L11676:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Core.h"
.L11661:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11658:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Os_Cfg.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11446:
.L11454:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Core.c"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11504:
.L11512:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Core.c"
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
	.uleb128	18
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
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
	.uleb128	26
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	27
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	28
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Core.c"
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
.L11443:
	.4byte		.L11444-.L11442
.L11442:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11448-.L11443
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Core.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11445
	.4byte		.L11446
	.4byte		.L11449
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11455:
	.sleb128	2
	.4byte		.L11451-.L11443
	.byte		"StartCore"
	.byte		0
	.4byte		.L11454
	.uleb128	70
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11452
	.4byte		.L11453
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11454
	.uleb128	70
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11460
	.sleb128	3
	.4byte		.L11454
	.uleb128	70
	.uleb128	22
	.byte		"status"
	.byte		0
	.4byte		.L11461
	.4byte		.L11465
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L11469
	.4byte		.L11466
	.4byte		.L11467
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11470:
	.sleb128	5
	.4byte		.L11454
	.uleb128	109
	.uleb128	45
	.byte		"coreState"
	.byte		0
	.4byte		.L11471
	.4byte		.L11474
.L11475:
	.sleb128	5
	.4byte		.L11454
	.uleb128	110
	.uleb128	45
	.byte		"startFunc"
	.byte		0
	.4byte		.L11476
	.4byte		.L11482
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11469:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11451:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11487:
	.sleb128	2
	.4byte		.L11484-.L11443
	.byte		"StartNonAutosarCore"
	.byte		0
	.4byte		.L11454
	.uleb128	170
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11485
	.4byte		.L11486
	.sleb128	3
	.4byte		.L11454
	.uleb128	170
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11488
	.sleb128	3
	.4byte		.L11454
	.uleb128	170
	.uleb128	22
	.byte		"status"
	.byte		0
	.4byte		.L11461
	.4byte		.L11489
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L11493
	.4byte		.L11490
	.4byte		.L11491
.L11494:
	.sleb128	5
	.4byte		.L11454
	.uleb128	209
	.uleb128	45
	.byte		"coreState"
	.byte		0
	.4byte		.L11471
	.4byte		.L11495
.L11496:
	.sleb128	5
	.4byte		.L11454
	.uleb128	210
	.uleb128	45
	.byte		"masterCoreState"
	.byte		0
	.4byte		.L11471
	.4byte		.L11497
.L11498:
	.sleb128	5
	.4byte		.L11454
	.uleb128	211
	.uleb128	45
	.byte		"startFunc"
	.byte		0
	.4byte		.L11476
	.4byte		.L11499
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11493:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11484:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11501:
	.4byte		.L11502-.L11500
.L11500:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11506-.L11501
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Core.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11503
	.4byte		.L11504
	.4byte		.L11507
.L11513:
	.sleb128	2
	.4byte		.L11509-.L11501
	.byte		"Os_Core_Idle"
	.byte		0
	.4byte		.L11512
	.uleb128	280
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11510
	.4byte		.L11511
	.sleb128	3
	.4byte		.L11512
	.uleb128	280
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11514
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L11518
	.4byte		.L11515
	.4byte		.L11516
.L11519:
	.sleb128	5
	.4byte		.L11512
	.uleb128	285
	.uleb128	68
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11524
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
.L11529:
	.sleb128	2
	.4byte		.L11526-.L11501
	.byte		"Os_Core_SetIdleMode"
	.byte		0
	.4byte		.L11512
	.uleb128	315
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11527
	.4byte		.L11528
	.sleb128	3
	.4byte		.L11512
	.uleb128	315
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11530
	.sleb128	3
	.4byte		.L11512
	.uleb128	315
	.uleb128	20
	.byte		"newIdleMode"
	.byte		0
	.4byte		.L11531
	.4byte		.L11534
.L11535:
	.sleb128	5
	.4byte		.L11512
	.uleb128	317
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11536
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11526:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11543:
	.sleb128	6
	.4byte		.L11538-.L11501
	.byte		"Os_Core_GetKernelStack"
	.byte		0
	.4byte		.L11512
	.uleb128	326
	.uleb128	52
	.4byte		.L11541
	.byte		0x1
	.byte		0x1
	.4byte		.L11539
	.4byte		.L11540
	.sleb128	3
	.4byte		.L11512
	.uleb128	326
	.uleb128	52
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11544
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11538:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11549:
	.sleb128	2
	.4byte		.L11546-.L11501
	.byte		"Os_Core_PreInit"
	.byte		0
	.4byte		.L11512
	.uleb128	336
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11547
	.4byte		.L11548
	.sleb128	3
	.4byte		.L11512
	.uleb128	336
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11550
.L11551:
	.sleb128	5
	.4byte		.L11512
	.uleb128	339
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11552
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11546:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11557:
	.sleb128	2
	.4byte		.L11554-.L11501
	.byte		"Os_Core_Init"
	.byte		0
	.4byte		.L11512
	.uleb128	348
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11555
	.4byte		.L11556
	.sleb128	3
	.4byte		.L11512
	.uleb128	348
	.uleb128	21
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11558
.L11559:
	.sleb128	5
	.4byte		.L11512
	.uleb128	350
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11560
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11554:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11566:
	.sleb128	6
	.4byte		.L11562-.L11501
	.byte		"Os_Core_GetStarted"
	.byte		0
	.4byte		.L11512
	.uleb128	369
	.uleb128	51
	.4byte		.L11565
	.byte		0x1
	.byte		0x1
	.4byte		.L11563
	.4byte		.L11564
	.sleb128	3
	.4byte		.L11512
	.uleb128	369
	.uleb128	51
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11567
.L11568:
	.sleb128	5
	.4byte		.L11512
	.uleb128	371
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11569
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11562:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11574:
	.sleb128	2
	.4byte		.L11571-.L11501
	.byte		"Os_Core_SetStarted"
	.byte		0
	.4byte		.L11512
	.uleb128	380
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11572
	.4byte		.L11573
	.sleb128	3
	.4byte		.L11512
	.uleb128	380
	.uleb128	21
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11575
	.sleb128	3
	.4byte		.L11512
	.uleb128	380
	.uleb128	21
	.byte		"started"
	.byte		0
	.4byte		.L11565
	.4byte		.L11576
.L11577:
	.sleb128	5
	.4byte		.L11512
	.uleb128	382
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11578
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11571:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11583:
	.sleb128	6
	.4byte		.L11580-.L11501
	.byte		"Os_Core_GetStartOsFunc"
	.byte		0
	.4byte		.L11512
	.uleb128	391
	.uleb128	49
	.4byte		.L11476
	.byte		0x1
	.byte		0x1
	.4byte		.L11581
	.4byte		.L11582
	.sleb128	3
	.4byte		.L11512
	.uleb128	391
	.uleb128	49
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11584
.L11585:
	.sleb128	5
	.4byte		.L11512
	.uleb128	393
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11586
.L11587:
	.sleb128	5
	.4byte		.L11512
	.uleb128	394
	.uleb128	41
	.byte		"func"
	.byte		0
	.4byte		.L11476
	.4byte		.L11588
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11580:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11593:
	.sleb128	6
	.4byte		.L11590-.L11501
	.byte		"Os_Core_GetAppMode"
	.byte		0
	.4byte		.L11512
	.uleb128	424
	.uleb128	44
	.4byte		.L11481
	.byte		0x1
	.byte		0x1
	.4byte		.L11591
	.4byte		.L11592
	.sleb128	3
	.4byte		.L11512
	.uleb128	424
	.uleb128	44
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11594
.L11595:
	.sleb128	5
	.4byte		.L11512
	.uleb128	426
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11596
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11590:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11601:
	.sleb128	2
	.4byte		.L11598-.L11501
	.byte		"Os_CoreSyncPhase0"
	.byte		0
	.4byte		.L11512
	.uleb128	436
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11599
	.4byte		.L11600
	.sleb128	3
	.4byte		.L11512
	.uleb128	436
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11602
.L11603:
	.sleb128	5
	.4byte		.L11512
	.uleb128	438
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11604
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11598:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11609:
	.sleb128	2
	.4byte		.L11606-.L11501
	.byte		"Os_CoreSyncPhase1"
	.byte		0
	.4byte		.L11512
	.uleb128	457
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11607
	.4byte		.L11608
	.sleb128	3
	.4byte		.L11512
	.uleb128	457
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11610
.L11611:
	.sleb128	5
	.4byte		.L11512
	.uleb128	459
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11612
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11606:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11617:
	.sleb128	2
	.4byte		.L11614-.L11501
	.byte		"Os_CoreSyncPhase2"
	.byte		0
	.4byte		.L11512
	.uleb128	478
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11615
	.4byte		.L11616
	.sleb128	3
	.4byte		.L11512
	.uleb128	478
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11618
.L11619:
	.sleb128	5
	.4byte		.L11512
	.uleb128	480
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11620
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11614:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11625:
	.sleb128	2
	.4byte		.L11622-.L11501
	.byte		"Os_CoreBeginShutdown"
	.byte		0
	.4byte		.L11512
	.uleb128	502
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11623
	.4byte		.L11624
	.sleb128	3
	.4byte		.L11512
	.uleb128	502
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11626
.L11627:
	.sleb128	5
	.4byte		.L11512
	.uleb128	504
	.uleb128	64
	.byte		"osCoreDynInitShared"
	.byte		0
	.4byte		.L11520
	.4byte		.L11628
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11622:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11633:
	.sleb128	2
	.4byte		.L11630-.L11501
	.byte		"Os_CoreSyncShutdown"
	.byte		0
	.4byte		.L11512
	.uleb128	529
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11631
	.4byte		.L11632
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11512
	.uleb128	529
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11630:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11638:
	.sleb128	2
	.4byte		.L11635-.L11501
	.byte		"Os_CoreIndividualShutdown"
	.byte		0
	.4byte		.L11512
	.uleb128	552
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11636
	.4byte		.L11637
	.sleb128	7
	.4byte		.L11512
	.uleb128	552
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11635:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11643:
	.sleb128	6
	.4byte		.L11640-.L11501
	.byte		"Os_Core_GetActivatedNo"
	.byte		0
	.4byte		.L11512
	.uleb128	565
	.uleb128	27
	.4byte		.L11457
	.byte		0x1
	.byte		0x1
	.4byte		.L11641
	.4byte		.L11642
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11640:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11649:
	.sleb128	6
	.4byte		.L11645-.L11501
	.byte		"Os_Core_IsRunning"
	.byte		0
	.4byte		.L11512
	.uleb128	578
	.uleb128	23
	.4byte		.L11648
	.byte		0x1
	.byte		0x1
	.4byte		.L11646
	.4byte		.L11647
	.sleb128	3
	.4byte		.L11512
	.uleb128	578
	.uleb128	23
	.byte		"coreID"
	.byte		0
	.4byte		.L11456
	.4byte		.L11650
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11645:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11655:
	.sleb128	2
	.4byte		.L11652-.L11501
	.byte		"Os_Core_PostInit"
	.byte		0
	.4byte		.L11512
	.uleb128	621
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11653
	.4byte		.L11654
	.sleb128	3
	.4byte		.L11512
	.uleb128	621
	.uleb128	20
	.byte		"coreId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11656
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11652:
	.section	.debug_info,,n
.L11657:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11658
	.uleb128	124
	.uleb128	31
	.byte		"Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2"
	.byte		0
	.4byte		.L11659
	.section	.debug_info,,n
.L11660:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11661
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11662
	.section	.debug_info,,n
.L11667:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11661
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11668
	.section	.debug_info,,n
.L11672:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11661
	.uleb128	193
	.uleb128	47
	.byte		"Os_Core_DynInitShared"
	.byte		0
	.4byte		.L11673
	.0byte		.L11672
.L11675:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11676
	.uleb128	92
	.uleb128	52
	.byte		"Os_KernelStack"
	.byte		0
	.4byte		.L11677
	.section	.debug_info,,n
.L11680:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11676
	.uleb128	113
	.uleb128	43
	.byte		"Os_GetCoreIDFunc"
	.byte		0
	.4byte		.L11681
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11685:
	.sleb128	9
	.4byte		.L11686
	.uleb128	46
	.uleb128	58
	.byte		"Os_SyncPhase0Barrier"
	.byte		0
	.4byte		.L11687
	.sleb128	5
	.byte		0x3
	.4byte		Os_SyncPhase0Barrier
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11690:
	.sleb128	9
	.4byte		.L11686
	.uleb128	47
	.uleb128	58
	.byte		"Os_SyncPhase1Barrier"
	.byte		0
	.4byte		.L11687
	.sleb128	5
	.byte		0x3
	.4byte		Os_SyncPhase1Barrier
	.section	.debug_info,,n
.L11691:
	.sleb128	9
	.4byte		.L11686
	.uleb128	48
	.uleb128	58
	.byte		"Os_SyncPhase2Barrier"
	.byte		0
	.4byte		.L11687
	.sleb128	5
	.byte		0x3
	.4byte		Os_SyncPhase2Barrier
	.section	.debug_info,,n
.L11692:
	.sleb128	9
	.4byte		.L11686
	.uleb128	49
	.uleb128	58
	.byte		"Os_RunningBarrier"
	.byte		0
	.4byte		.L11687
	.sleb128	5
	.byte		0x3
	.4byte		Os_RunningBarrier
	.section	.debug_info,,n
.L11666:
	.sleb128	10
	.4byte		.L11693
	.uleb128	69
	.uleb128	1
	.4byte		.L11694-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11707
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11694:
.L11698:
	.sleb128	10
	.4byte		.L11693
	.uleb128	69
	.uleb128	1
	.4byte		.L11722-.L2
	.uleb128	36
.L783:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11725
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11722:
.L11523:
	.sleb128	10
	.4byte		.L11693
	.uleb128	69
	.uleb128	1
	.4byte		.L11731-.L2
	.uleb128	20
.L778:
	.sleb128	11
	.byte		"Os_StartOsFunc"
	.byte		0
	.4byte		.L11476
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	11
	.byte		"Os_CoreState"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L780:
	.sleb128	11
	.byte		"Os_CoreStarted"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L781:
	.sleb128	11
	.byte		"Os_CoreAppMode"
	.byte		0
	.4byte		.L11481
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L782:
	.sleb128	11
	.byte		"Os_CoreIdleMode"
	.byte		0
	.4byte		.L11532
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11731:
.L11671:
	.sleb128	10
	.4byte		.L11693
	.uleb128	69
	.uleb128	1
	.4byte		.L11732-.L2
	.uleb128	152
.L776:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11735
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11732:
.L11702:
	.sleb128	10
	.4byte		.L11693
	.uleb128	69
	.uleb128	1
	.4byte		.L11737-.L2
	.uleb128	104
.L773:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11737:
.L11726:
	.sleb128	10
	.4byte		.L11693
	.uleb128	69
	.uleb128	1
	.4byte		.L11744-.L2
	.uleb128	4
.L772:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11744:
.L11739:
	.sleb128	10
	.4byte		.L11693
	.uleb128	69
	.uleb128	1
	.4byte		.L11747-.L2
	.uleb128	48
.L764:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11751
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11751
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11747:
	.section	.debug_info,,n
.L11752:
	.sleb128	12
	.4byte		.L11753
	.uleb128	612
	.uleb128	1
	.4byte		.L11754-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11754:
.L11724:
	.sleb128	10
	.4byte		.L11753
	.uleb128	612
	.uleb128	1
	.4byte		.L11756-.L2
	.uleb128	28
.L743:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11756:
.L11741:
	.sleb128	10
	.4byte		.L11753
	.uleb128	612
	.uleb128	1
	.4byte		.L11758-.L2
	.uleb128	52
.L737:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11758:
.L11734:
	.sleb128	10
	.4byte		.L11753
	.uleb128	612
	.uleb128	1
	.4byte		.L11769-.L2
	.uleb128	8
.L735:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11769:
.L11706:
	.sleb128	12
	.4byte		.L11753
	.uleb128	612
	.uleb128	1
	.4byte		.L11770-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11777
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11770:
.L11778:
	.sleb128	12
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11779-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11788
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11779:
	.section	.debug_info,,n
.L11788:
	.sleb128	13
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11789-.L2
	.uleb128	24
.L677:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11868
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11870
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11884
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11789:
.L11885:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11532
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11886:
.L11883:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11887-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11887:
.L11881:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11898-.L2
	.uleb128	8
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11899
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11900
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11898:
.L11879:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11903-.L2
	.uleb128	2
.L670:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11899
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11903:
.L11877:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11904-.L2
	.uleb128	2
.L669:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11899
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11904:
.L11875:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11905-.L2
	.uleb128	20
.L664:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11905:
.L11873:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11908-.L2
	.uleb128	12
.L661:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11909
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11908:
.L11871:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11913-.L2
	.uleb128	12
.L658:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11913:
.L11869:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11917-.L2
	.uleb128	12
.L655:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11917:
.L11835:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11918-.L2
	.uleb128	4
.L654:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11918:
.L11833:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11920-.L2
	.uleb128	12
.L651:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11920:
.L11831:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11922-.L2
	.uleb128	12
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11922:
.L11829:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11923-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11923:
.L11827:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11926-.L2
	.uleb128	8
.L644:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11927
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11926:
.L11867:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11931-.L2
	.uleb128	4
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11931:
.L11865:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11933-.L2
	.uleb128	8
.L641:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11933:
.L11863:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11934-.L2
	.uleb128	4
.L640:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11934:
.L11861:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11935-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11935:
.L11859:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11936-.L2
	.uleb128	8
.L636:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11936:
.L11857:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11941-.L2
	.uleb128	4
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11941:
.L11855:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11942-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11942:
.L11853:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11943-.L2
	.uleb128	8
.L631:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11943:
.L11851:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11944-.L2
	.uleb128	12
.L628:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11944:
.L11849:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11946-.L2
	.uleb128	12
.L625:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11946:
.L11847:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11951-.L2
	.uleb128	4
.L624:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11951:
.L11843:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11952-.L2
	.uleb128	4
.L623:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11952:
.L11839:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11953-.L2
	.uleb128	2
.L621:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11953:
.L11841:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11955-.L2
	.uleb128	1
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11955:
.L11837:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11956-.L2
	.uleb128	8
.L618:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11956:
.L11821:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11960-.L2
	.uleb128	8
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11960:
.L11819:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11964-.L2
	.uleb128	24
.L614:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11965
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11964:
.L11817:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11967-.L2
	.uleb128	8
.L613:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11967:
.L11815:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11968-.L2
	.uleb128	16
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11968:
.L11813:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11969-.L2
	.uleb128	8
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11969:
.L11811:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11974-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11974:
.L11809:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11977-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11977:
.L11807:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11978-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11978:
.L11825:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11979-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11980
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11979:
.L11823:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11981-.L2
	.uleb128	4
.L604:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11980
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11981:
.L11845:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11982-.L2
	.uleb128	4
.L603:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11481
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11982:
.L11805:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11983-.L2
	.uleb128	2
.L602:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11983:
.L11799:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11984-.L2
	.uleb128	2
.L601:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11984:
.L11797:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11985-.L2
	.uleb128	1
.L600:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11985:
.L11795:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11986-.L2
	.uleb128	8
.L598:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11986:
.L11793:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11989-.L2
	.uleb128	1
.L597:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11989:
.L11803:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11990-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11990:
.L11801:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11991-.L2
	.uleb128	8
.L593:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11991:
.L11791:
	.sleb128	10
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L11992-.L2
	.uleb128	4
.L592:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11481
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11992:
.L11891:
	.sleb128	10
	.4byte		.L11993
	.uleb128	33
	.uleb128	14
	.4byte		.L11994-.L2
	.uleb128	24
.L585:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11995
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L12002
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L12004
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L12009
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11994:
.L12008:
	.sleb128	10
	.4byte		.L11993
	.uleb128	33
	.uleb128	14
	.4byte		.L12012-.L2
	.uleb128	4
.L581:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L12015
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L12012:
.L11998:
	.sleb128	10
	.4byte		.L11993
	.uleb128	33
	.uleb128	14
	.4byte		.L12017-.L2
	.uleb128	6
.L578:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12017:
.L11743:
	.sleb128	10
	.4byte		.L12018
	.uleb128	34
	.uleb128	14
	.4byte		.L12019-.L2
	.uleb128	2
.L529:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12019:
.L11716:
	.sleb128	12
	.4byte		.L12021
	.uleb128	80
	.uleb128	13
	.4byte		.L12022-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L12023
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L12024
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L12028
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L12033
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L12038
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11679
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L12040
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L12041
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L12041
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12051
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12057
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L12022:
.L12032:
	.sleb128	12
	.4byte		.L12021
	.uleb128	80
	.uleb128	13
	.4byte		.L12059-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12060
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11679
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12059:
.L12027:
	.sleb128	10
	.4byte		.L12021
	.uleb128	80
	.uleb128	13
	.4byte		.L12062-.L2
	.uleb128	56
.L496:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12063
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L12039
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11980
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12065
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12062:
.L12067:
	.sleb128	12
	.4byte		.L12068
	.uleb128	52
	.uleb128	1
	.4byte		.L12069-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12070
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12070
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12071
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L12041
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L12009
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12069:
.L12074:
	.sleb128	10
	.4byte		.L12068
	.uleb128	52
	.uleb128	1
	.4byte		.L12075-.L2
	.uleb128	12
.L445:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12065
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12075:
.L11730:
	.sleb128	12
	.4byte		.L12068
	.uleb128	52
	.uleb128	1
	.4byte		.L12076-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12081
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L12023
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12082
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12085
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12090
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12095
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12100
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12103
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12106
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12109
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12076:
.L12080:
	.sleb128	10
	.4byte		.L12068
	.uleb128	52
	.uleb128	1
	.4byte		.L12112-.L2
	.uleb128	1
.L432:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12112:
.L12056:
	.sleb128	10
	.4byte		.L12113
	.uleb128	32
	.uleb128	1
	.4byte		.L12114-.L2
	.uleb128	12
.L429:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L12042
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12114:
.L12117:
	.sleb128	10
	.4byte		.L12113
	.uleb128	32
	.uleb128	1
	.4byte		.L12118-.L2
	.uleb128	4
.L428:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12118:
.L11736:
	.sleb128	10
	.4byte		.L12113
	.uleb128	32
	.uleb128	1
	.4byte		.L12119-.L2
	.uleb128	144
.L423:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12120
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12122
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12119:
.L11766:
	.sleb128	10
	.4byte		.L12113
	.uleb128	32
	.uleb128	1
	.4byte		.L12124-.L2
	.uleb128	24
.L417:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12124:
.L12123:
	.sleb128	10
	.4byte		.L12113
	.uleb128	32
	.uleb128	1
	.4byte		.L12130-.L2
	.uleb128	20
.L412:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12131
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12130:
.L12121:
	.sleb128	10
	.4byte		.L12133
	.uleb128	174
	.uleb128	1
	.4byte		.L12134-.L2
	.uleb128	120
.L409:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12135
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12137
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12139
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12134:
.L12140:
	.sleb128	10
	.4byte		.L12133
	.uleb128	174
	.uleb128	1
	.4byte		.L12141-.L2
	.uleb128	8
.L406:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12142
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12143
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12141:
.L12138:
	.sleb128	10
	.4byte		.L12133
	.uleb128	174
	.uleb128	1
	.4byte		.L12145-.L2
	.uleb128	104
.L381:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11980
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11909
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11965
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11927
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11899
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12146
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12145:
.L12136:
	.sleb128	10
	.4byte		.L12133
	.uleb128	174
	.uleb128	1
	.4byte		.L12147-.L2
	.uleb128	8
.L379:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12148
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12147:
.L11930:
	.sleb128	10
	.4byte		.L12150
	.uleb128	50
	.uleb128	1
	.4byte		.L12151-.L2
	.uleb128	12
.L376:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12151:
.L11762:
	.sleb128	10
	.4byte		.L12152
	.uleb128	87
	.uleb128	7
	.4byte		.L12153-.L2
	.uleb128	8
.L364:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12154
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12155
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12153:
.L11689:
	.sleb128	10
	.4byte		.L12152
	.uleb128	87
	.uleb128	7
	.4byte		.L12157-.L2
	.uleb128	4
.L362:
	.sleb128	11
	.byte		"semaphore"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L363:
	.sleb128	11
	.byte		"value"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L12157:
	.section	.debug_info,,n
.L11749:
	.sleb128	14
	.4byte		.L11693
	.uleb128	69
	.uleb128	1
	.4byte		.L12158-.L2
	.uleb128	4
	.section	.debug_info,,n
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
.L12158:
.L11772:
	.sleb128	14
	.4byte		.L11753
	.uleb128	612
	.uleb128	1
	.4byte		.L12159-.L2
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
.L12159:
.L11781:
	.sleb128	14
	.4byte		.L11753
	.uleb128	60
	.uleb128	1
	.4byte		.L12160-.L2
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
.L12160:
	.section	.debug_info,,n
.L11912:
	.sleb128	16
	.4byte		.L11993
	.uleb128	33
	.uleb128	14
	.4byte		.L12161-.L2
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
.L12161:
.L12064:
	.sleb128	14
	.4byte		.L12021
	.uleb128	80
	.uleb128	13
	.4byte		.L12162-.L2
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
.L12162:
.L12035:
	.sleb128	14
	.4byte		.L12021
	.uleb128	61
	.uleb128	1
	.4byte		.L12163-.L2
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
.L12163:
.L12084:
	.sleb128	14
	.4byte		.L12068
	.uleb128	52
	.uleb128	1
	.4byte		.L12164-.L2
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
.L12164:
.L12132:
	.sleb128	14
	.4byte		.L12113
	.uleb128	32
	.uleb128	1
	.4byte		.L12165-.L2
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
.L12165:
.L12149:
	.sleb128	14
	.4byte		.L12133
	.uleb128	174
	.uleb128	1
	.4byte		.L12166-.L2
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
.L12166:
.L12144:
	.sleb128	14
	.4byte		.L12133
	.uleb128	86
	.uleb128	1
	.4byte		.L12167-.L2
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
.L12167:
.L11902:
	.sleb128	14
	.4byte		.L12168
	.uleb128	43
	.uleb128	1
	.4byte		.L12169-.L2
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
.L12169:
.L11973:
	.sleb128	14
	.4byte		.L12170
	.uleb128	37
	.uleb128	1
	.4byte		.L12171-.L2
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
.L12171:
.L11940:
	.sleb128	14
	.4byte		.L12172
	.uleb128	40
	.uleb128	1
	.4byte		.L12173-.L2
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
.L12173:
.L11916:
	.sleb128	14
	.4byte		.L12174
	.uleb128	47
	.uleb128	1
	.4byte		.L12175-.L2
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
.L12175:
.L11988:
	.sleb128	14
	.4byte		.L12150
	.uleb128	42
	.uleb128	13
	.4byte		.L12176-.L2
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
.L12176:
.L11533:
	.sleb128	14
	.4byte		.L12177
	.uleb128	83
	.uleb128	14
	.4byte		.L12178-.L2
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
.L12178:
	.section	.debug_info,,n
.L11459:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L11458:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L11459
.L11457:
	.sleb128	18
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11458
	.section	.debug_info,,n
.L11456:
	.sleb128	19
	.4byte		.L11457
.L11464:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11463:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L11464
.L11462:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11463
	.section	.debug_info,,n
.L11461:
	.sleb128	20
	.4byte		.L11462
.L11473:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11472:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L11473
.L11471:
	.sleb128	18
	.byte		"Os_CoreStateType"
	.byte		0
	.4byte		.L11472
	.section	.debug_info,,n
.L11478:
	.sleb128	21
	.4byte		.L11479
	.byte		0x1
.L11481:
	.sleb128	18
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11472
.L11480:
	.sleb128	19
	.4byte		.L11481
	.section	.debug_info,,n
	.sleb128	22
	.4byte		.L11480
	.sleb128	0
.L11479:
.L11477:
	.sleb128	20
	.4byte		.L11478
.L11476:
	.sleb128	18
	.byte		"Os_StartOsFuncType"
	.byte		0
	.4byte		.L11477
.L11522:
	.sleb128	18
	.byte		"Os_Core_DynInitSharedType"
	.byte		0
	.4byte		.L11523
.L11521:
	.sleb128	20
	.4byte		.L11522
.L11520:
	.sleb128	19
	.4byte		.L11521
.L11532:
	.sleb128	18
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11533
.L11531:
	.sleb128	19
	.4byte		.L11532
.L11542:
	.sleb128	18
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11472
.L11541:
	.sleb128	20
	.4byte		.L11542
.L11565:
	.sleb128	18
	.byte		"Os_CoreStartedType"
	.byte		0
	.4byte		.L11472
.L11648:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L11464
.L11659:
	.sleb128	19
	.4byte		.L11463
.L11665:
	.sleb128	18
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11666
.L11664:
	.sleb128	19
	.4byte		.L11665
	.section	.debug_info,,n
.L11662:
	.sleb128	23
	.4byte		.L11663-.L2
	.4byte		.L11664
	.section	.debug_info,,n
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11663:
.L11670:
	.sleb128	18
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11671
.L11668:
	.sleb128	23
	.4byte		.L11669-.L2
	.4byte		.L11670
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11669:
.L11673:
	.sleb128	23
	.4byte		.L11674-.L2
	.4byte		.L11522
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11674:
.L11679:
	.sleb128	19
	.4byte		.L11541
.L11677:
	.sleb128	23
	.4byte		.L11678-.L2
	.4byte		.L11679
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11678:
	.section	.debug_info,,n
.L11683:
	.sleb128	25
	.4byte		.L11684-.L2
	.4byte		.L11457
	.byte		0x1
	.sleb128	0
.L11684:
.L11682:
	.sleb128	20
	.4byte		.L11683
.L11681:
	.sleb128	18
	.byte		"Os_GetCoreIDFuncType"
	.byte		0
	.4byte		.L11682
.L11688:
	.sleb128	18
	.byte		"Os_PlatformAtomicUint16Type"
	.byte		0
	.4byte		.L11689
	.section	.debug_info,,n
.L11687:
	.sleb128	26
	.4byte		.L11688
.L11697:
	.sleb128	18
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11698
.L11696:
	.sleb128	20
	.4byte		.L11697
.L11695:
	.sleb128	19
	.4byte		.L11696
.L11701:
	.sleb128	18
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11702
.L11700:
	.sleb128	20
	.4byte		.L11701
.L11699:
	.sleb128	19
	.4byte		.L11700
.L11705:
	.sleb128	18
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11706
.L11704:
	.sleb128	20
	.4byte		.L11705
.L11703:
	.sleb128	19
	.4byte		.L11704
	.section	.debug_info,,n
.L11710:
	.sleb128	27
	.4byte		.L11711-.L2
	.byte		0x1
.L11715:
	.sleb128	18
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11716
.L11714:
	.sleb128	19
	.4byte		.L11715
.L11713:
	.sleb128	20
	.4byte		.L11714
.L11712:
	.sleb128	19
	.4byte		.L11713
	.sleb128	22
	.4byte		.L11712
	.sleb128	0
.L11711:
.L11709:
	.sleb128	20
	.4byte		.L11710
.L11708:
	.sleb128	18
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11709
.L11707:
	.sleb128	19
	.4byte		.L11708
.L11720:
	.sleb128	25
	.4byte		.L11721-.L2
	.4byte		.L11541
	.byte		0x1
	.sleb128	22
	.4byte		.L11713
	.sleb128	0
.L11721:
.L11719:
	.sleb128	20
	.4byte		.L11720
.L11718:
	.sleb128	18
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11719
.L11717:
	.sleb128	19
	.4byte		.L11718
.L11723:
	.sleb128	18
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11724
.L11725:
	.sleb128	18
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11726
.L11729:
	.sleb128	18
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11730
.L11728:
	.sleb128	19
	.4byte		.L11729
.L11727:
	.sleb128	20
	.4byte		.L11728
.L11733:
	.sleb128	18
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11734
.L11735:
	.sleb128	18
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11736
.L11738:
	.sleb128	18
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11739
.L11740:
	.sleb128	18
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11741
.L11742:
	.sleb128	18
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11743
.L11746:
	.sleb128	19
	.4byte		.L11716
.L11745:
	.sleb128	20
	.4byte		.L11746
.L11748:
	.sleb128	18
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11749
.L11750:
	.sleb128	18
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11472
.L11751:
	.sleb128	18
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11752
.L11755:
	.sleb128	20
	.4byte		.L11752
.L11757:
	.sleb128	18
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11472
.L11761:
	.sleb128	18
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11762
.L11760:
	.sleb128	19
	.4byte		.L11761
.L11759:
	.sleb128	20
	.4byte		.L11760
.L11765:
	.sleb128	18
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11766
.L11764:
	.sleb128	19
	.4byte		.L11765
.L11763:
	.sleb128	20
	.4byte		.L11764
.L11767:
	.sleb128	23
	.4byte		.L11768-.L2
	.4byte		.L11472
	.sleb128	24
	.uleb128	7
	.sleb128	0
.L11768:
.L11771:
	.sleb128	18
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11772
.L11775:
	.sleb128	18
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11472
.L11774:
	.sleb128	18
	.byte		"ProcType"
	.byte		0
	.4byte		.L11775
.L11773:
	.sleb128	18
	.byte		"ISRType"
	.byte		0
	.4byte		.L11774
.L11777:
	.sleb128	18
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11778
.L11776:
	.sleb128	20
	.4byte		.L11777
.L11780:
	.sleb128	18
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11781
.L11784:
	.sleb128	27
	.4byte		.L11785-.L2
	.byte		0x1
.L11786:
	.sleb128	20
	.4byte		.L11778
	.sleb128	22
	.4byte		.L11786
.L11787:
	.sleb128	19
	.4byte		.L11745
	.sleb128	22
	.4byte		.L11787
	.sleb128	0
.L11785:
.L11783:
	.sleb128	20
	.4byte		.L11784
.L11782:
	.sleb128	18
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11783
.L11790:
	.sleb128	18
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11791
.L11792:
	.sleb128	18
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11793
.L11794:
	.sleb128	18
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11795
.L11796:
	.sleb128	18
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11797
.L11798:
	.sleb128	18
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11799
.L11800:
	.sleb128	18
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11801
.L11802:
	.sleb128	18
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11803
.L11804:
	.sleb128	18
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11805
.L11806:
	.sleb128	18
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11807
.L11808:
	.sleb128	18
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11809
.L11810:
	.sleb128	18
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11811
.L11812:
	.sleb128	18
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11813
.L11814:
	.sleb128	18
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11815
.L11816:
	.sleb128	18
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11817
.L11818:
	.sleb128	18
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11819
.L11820:
	.sleb128	18
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11821
.L11822:
	.sleb128	18
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11823
.L11824:
	.sleb128	18
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11825
.L11826:
	.sleb128	18
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11827
.L11828:
	.sleb128	18
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11829
.L11830:
	.sleb128	18
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11831
.L11832:
	.sleb128	18
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11833
.L11834:
	.sleb128	18
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11835
.L11836:
	.sleb128	18
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11837
.L11838:
	.sleb128	18
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11839
.L11840:
	.sleb128	18
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11841
.L11842:
	.sleb128	18
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11843
.L11844:
	.sleb128	18
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11845
.L11846:
	.sleb128	18
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11847
.L11848:
	.sleb128	18
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11849
.L11850:
	.sleb128	18
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11851
.L11852:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11853
.L11854:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11855
.L11856:
	.sleb128	18
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11857
.L11858:
	.sleb128	18
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11859
.L11860:
	.sleb128	18
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11861
.L11862:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11863
.L11864:
	.sleb128	18
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11865
.L11866:
	.sleb128	18
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11867
.L11868:
	.sleb128	18
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11869
.L11870:
	.sleb128	18
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11871
.L11872:
	.sleb128	18
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11873
.L11874:
	.sleb128	18
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11875
.L11876:
	.sleb128	18
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11877
.L11878:
	.sleb128	18
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11879
.L11880:
	.sleb128	18
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11881
.L11882:
	.sleb128	18
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11883
.L11884:
	.sleb128	18
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11885
.L11890:
	.sleb128	18
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11891
.L11889:
	.sleb128	19
	.4byte		.L11890
.L11888:
	.sleb128	20
	.4byte		.L11889
	.section	.debug_info,,n
.L11897:
	.sleb128	28
	.byte		"void"
	.byte		0
	.byte		0x0
.L11896:
	.sleb128	20
	.4byte		.L11897
.L11894:
	.sleb128	23
	.4byte		.L11895-.L2
	.4byte		.L11896
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11895:
.L11893:
	.sleb128	18
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11894
.L11892:
	.sleb128	20
	.4byte		.L11893
.L11899:
	.sleb128	18
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11458
.L11901:
	.sleb128	18
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11902
.L11900:
	.sleb128	20
	.4byte		.L11901
.L11906:
	.sleb128	18
	.byte		"TaskType"
	.byte		0
	.4byte		.L11774
.L11907:
	.sleb128	20
	.4byte		.L11463
.L11909:
	.sleb128	18
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11472
.L11910:
	.sleb128	18
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11896
.L11911:
	.sleb128	18
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11912
.L11914:
	.sleb128	18
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11463
.L11915:
	.sleb128	18
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11916
.L11919:
	.sleb128	18
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11775
.L11921:
	.sleb128	18
	.byte		"TickType"
	.byte		0
	.4byte		.L11472
.L11925:
	.sleb128	20
	.4byte		.L11921
.L11924:
	.sleb128	18
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11925
.L11929:
	.sleb128	18
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11930
.L11928:
	.sleb128	20
	.4byte		.L11929
.L11927:
	.sleb128	18
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11928
.L11932:
	.sleb128	18
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11472
.L11939:
	.sleb128	18
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11940
.L11938:
	.sleb128	20
	.4byte		.L11939
.L11937:
	.sleb128	18
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11938
.L11945:
	.sleb128	18
	.byte		"CounterType"
	.byte		0
	.4byte		.L11472
.L11949:
	.sleb128	27
	.4byte		.L11950-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11786
	.sleb128	0
.L11950:
.L11948:
	.sleb128	20
	.4byte		.L11949
.L11947:
	.sleb128	18
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11948
.L11954:
	.sleb128	18
	.byte		"RestartType"
	.byte		0
	.4byte		.L11463
.L11959:
	.sleb128	18
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11463
.L11958:
	.sleb128	20
	.4byte		.L11959
.L11957:
	.sleb128	18
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11958
.L11963:
	.sleb128	17
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11962:
	.sleb128	18
	.byte		"uint64"
	.byte		0
	.4byte		.L11963
.L11961:
	.sleb128	18
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11962
.L11966:
	.sleb128	20
	.4byte		.L11961
.L11965:
	.sleb128	18
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11966
.L11972:
	.sleb128	18
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11973
.L11971:
	.sleb128	20
	.4byte		.L11972
.L11970:
	.sleb128	18
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11971
.L11976:
	.sleb128	20
	.4byte		.L11906
.L11975:
	.sleb128	18
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11976
.L11980:
	.sleb128	18
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11472
.L11987:
	.sleb128	18
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11988
.L11997:
	.sleb128	18
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11998
.L11996:
	.sleb128	20
	.4byte		.L11997
.L11995:
	.sleb128	19
	.4byte		.L11996
.L11999:
	.sleb128	18
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11458
.L12000:
	.sleb128	19
	.4byte		.L11896
.L12001:
	.sleb128	19
	.4byte		.L11458
.L12003:
	.sleb128	18
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11463
.L12002:
	.sleb128	19
	.4byte		.L12003
.L12007:
	.sleb128	18
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L12008
.L12006:
	.sleb128	19
	.4byte		.L12007
.L12005:
	.sleb128	20
	.4byte		.L12006
.L12004:
	.sleb128	19
	.4byte		.L12005
.L12011:
	.sleb128	18
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11463
.L12010:
	.sleb128	20
	.4byte		.L12011
.L12009:
	.sleb128	19
	.4byte		.L12010
.L12014:
	.sleb128	18
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11458
.L12013:
	.sleb128	19
	.4byte		.L12014
.L12016:
	.sleb128	18
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11458
.L12015:
	.sleb128	19
	.4byte		.L12016
.L12020:
	.sleb128	18
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11458
.L12023:
	.sleb128	19
	.4byte		.L11906
.L12026:
	.sleb128	18
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L12027
.L12025:
	.sleb128	20
	.4byte		.L12026
.L12024:
	.sleb128	19
	.4byte		.L12025
.L12031:
	.sleb128	18
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L12032
.L12030:
	.sleb128	19
	.4byte		.L12031
.L12029:
	.sleb128	20
	.4byte		.L12030
.L12028:
	.sleb128	19
	.4byte		.L12029
.L12034:
	.sleb128	18
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L12035
.L12033:
	.sleb128	19
	.4byte		.L12034
.L12036:
	.sleb128	19
	.4byte		.L11961
.L12037:
	.sleb128	19
	.4byte		.L11750
.L12039:
	.sleb128	18
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11472
.L12038:
	.sleb128	19
	.4byte		.L12039
.L12040:
	.sleb128	19
	.4byte		.L11727
.L12044:
	.sleb128	18
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11472
.L12043:
	.sleb128	19
	.4byte		.L12044
.L12042:
	.sleb128	20
	.4byte		.L12043
.L12041:
	.sleb128	19
	.4byte		.L12042
.L12048:
	.sleb128	27
	.4byte		.L12049-.L2
	.byte		0x1
	.sleb128	0
.L12049:
.L12047:
	.sleb128	20
	.4byte		.L12048
.L12046:
	.sleb128	18
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L12047
.L12045:
	.sleb128	19
	.4byte		.L12046
.L12050:
	.sleb128	19
	.4byte		.L11980
.L12055:
	.sleb128	18
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L12056
.L12054:
	.sleb128	19
	.4byte		.L12055
.L12053:
	.sleb128	20
	.4byte		.L12054
.L12052:
	.sleb128	18
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12053
.L12051:
	.sleb128	20
	.4byte		.L12052
.L12057:
	.sleb128	19
	.4byte		.L11755
.L12058:
	.sleb128	19
	.4byte		.L11759
.L12061:
	.sleb128	18
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11472
.L12060:
	.sleb128	19
	.4byte		.L12061
.L12063:
	.sleb128	18
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12064
.L12066:
	.sleb128	19
	.4byte		.L12067
.L12065:
	.sleb128	20
	.4byte		.L12066
.L12070:
	.sleb128	19
	.4byte		.L11899
.L12073:
	.sleb128	18
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12074
.L12072:
	.sleb128	20
	.4byte		.L12073
.L12071:
	.sleb128	19
	.4byte		.L12072
.L12079:
	.sleb128	18
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12080
.L12078:
	.sleb128	20
	.4byte		.L12079
.L12077:
	.sleb128	19
	.4byte		.L12078
.L12081:
	.sleb128	19
	.4byte		.L11914
.L12083:
	.sleb128	18
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12084
.L12082:
	.sleb128	19
	.4byte		.L12083
.L12088:
	.sleb128	27
	.4byte		.L12089-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11462
	.sleb128	0
.L12089:
.L12087:
	.sleb128	20
	.4byte		.L12088
.L12086:
	.sleb128	18
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12087
.L12085:
	.sleb128	19
	.4byte		.L12086
.L12093:
	.sleb128	27
	.4byte		.L12094-.L2
	.byte		0x1
	.sleb128	0
.L12094:
.L12092:
	.sleb128	20
	.4byte		.L12093
.L12091:
	.sleb128	18
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12092
.L12090:
	.sleb128	19
	.4byte		.L12091
.L12098:
	.sleb128	27
	.4byte		.L12099-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11462
	.sleb128	0
.L12099:
.L12097:
	.sleb128	20
	.4byte		.L12098
.L12096:
	.sleb128	18
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12097
.L12095:
	.sleb128	19
	.4byte		.L12096
.L12102:
	.sleb128	19
	.4byte		.L11774
.L12101:
	.sleb128	20
	.4byte		.L12102
.L12100:
	.sleb128	19
	.4byte		.L12101
.L12105:
	.sleb128	19
	.4byte		.L11945
.L12104:
	.sleb128	20
	.4byte		.L12105
.L12103:
	.sleb128	19
	.4byte		.L12104
.L12108:
	.sleb128	19
	.4byte		.L11919
.L12107:
	.sleb128	20
	.4byte		.L12108
.L12106:
	.sleb128	19
	.4byte		.L12107
.L12111:
	.sleb128	19
	.4byte		.L11932
.L12110:
	.sleb128	20
	.4byte		.L12111
.L12109:
	.sleb128	19
	.4byte		.L12110
.L12116:
	.sleb128	18
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12117
.L12115:
	.sleb128	20
	.4byte		.L12116
.L12120:
	.sleb128	18
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12121
.L12122:
	.sleb128	18
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12123
.L12128:
	.sleb128	27
	.4byte		.L12129-.L2
	.byte		0x1
	.sleb128	0
.L12129:
.L12127:
	.sleb128	20
	.4byte		.L12128
.L12126:
	.sleb128	18
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12127
.L12125:
	.sleb128	19
	.4byte		.L12126
.L12131:
	.sleb128	18
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12132
.L12135:
	.sleb128	18
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12136
.L12137:
	.sleb128	18
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12138
.L12139:
	.sleb128	18
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12140
.L12142:
	.sleb128	18
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11463
.L12143:
	.sleb128	18
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12144
.L12146:
	.sleb128	18
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11900
.L12148:
	.sleb128	18
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12149
.L12154:
	.sleb128	19
	.4byte		.L11472
.L12156:
	.sleb128	18
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11458
.L12155:
	.sleb128	19
	.4byte		.L12156
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11448:
	.sleb128	0
.L11444:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11506:
	.sleb128	0
.L11502:

	.section	.debug_loc,,n
	.align	0
.L11460:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locend
.L11465:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo8),30
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),30
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),4
	.d2locend
.L11474:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locend
.L11482:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo16),4
	.d2locend
.L11488:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),31
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),31
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),31
	.d2locend
.L11489:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo28),30
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),30
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),4
	.d2locend
.L11495:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),0
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locend
.L11497:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo40),6
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo28),6
	.d2locend
.L11499:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo36),5
	.d2locend
.L11514:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),0
	.d2locend
.L11524:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo48),3
	.d2locend
.L11530:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locend
.L11534:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo51),4
	.d2locend
.L11536:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locend
.L11544:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locend
.L11550:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locend
.L11552:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locend
.L11558:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),3
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locend
.L11560:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo65),31
	.d2locend
.L11567:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locend
.L11569:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locend
.L11575:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locend
.L11576:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo71),4
	.d2locend
.L11578:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),3
	.d2locend
.L11584:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),4
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),4
	.d2locend
.L11586:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo75),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo79),3
	.d2locend
.L11588:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),0
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locend
.L11594:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locend
.L11596:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locend
.L11602:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),0
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),0
	.d2locend
.L11604:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo96),3
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),3
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),3
	.d2locend
.L11610:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),3
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),0
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),0
	.d2locend
.L11612:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo107),3
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),3
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),3
	.d2locend
.L11618:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),3
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),3
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),3
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),3
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),3
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locend
.L11620:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo124),31
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo114),3
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),31
	.d2locend
.L11626:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),3
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),0
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),0
	.d2locend
.L11628:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo134),3
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo133),3
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),3
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),3
	.d2locend
.L11650:
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),3
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),4
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),4
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),4
	.d2locend
.L11656:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Core_PostInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_IsRunning"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_GetActivatedNo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_Platform_AtomicValueUint16"
	.wrcm.end
	.wrcm.nelem "Os_CoreIndividualShutdown"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_Platform_AtomicDecrementUint16"
	.wrcm.end
	.wrcm.nelem "Os_CoreSyncShutdown"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_Platform_AtomicDecrementUint16","Os_Platform_AtomicValueUint16"
	.wrcm.end
	.wrcm.nelem "Os_CoreBeginShutdown"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_Platform_AtomicDecrementUint16","Os_Platform_AtomicIncrementUint16"
	.wrcm.end
	.wrcm.nelem "Os_CoreSyncPhase2"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_Platform_AtomicIncrementUint16","Os_Platform_AtomicValueUint16"
	.wrcm.end
	.wrcm.nelem "Os_CoreSyncPhase1"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_Platform_AtomicIncrementUint16","Os_Platform_AtomicValueUint16"
	.wrcm.end
	.wrcm.nelem "Os_CoreSyncPhase0"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_Platform_AtomicIncrementUint16","Os_Platform_AtomicValueUint16"
	.wrcm.end
	.wrcm.nelem "Os_Core_GetAppMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_GetStartOsFunc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_SetStarted"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_GetStarted"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.end
	.wrcm.nelem "Os_Core_PreInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_GetKernelStack"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_SetIdleMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Core_Idle"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_Platform_Idle"
	.wrcm.end
	.wrcm.nelem "StartNonAutosarCore"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_PlatformStartCore"
	.wrcm.end
	.wrcm.nelem "StartCore"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_PlatformStartCore"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Core.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Core.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Core.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Core.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Core.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Core.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\core\Os_Core.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
