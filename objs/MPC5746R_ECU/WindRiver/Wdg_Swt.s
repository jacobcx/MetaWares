#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Wdg_Swt.c"
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
# FUNC(uint32, WDG_CODE) Wdg_Swt_Init(P2CONST(Wdg_Swt_ConfigType, AUTOMATIC, WDG_APPL_CONST) Swt_pConfigPtr,
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L421:
	.section	.invalid_TEXT,,c
#$$ld
.L417:
	.0byte		.L415
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Swt.c"
        .d2line         407,24
#$$ld
.L424:

#$$bf	Wdg_Swt_Init,interprocedural,rasave,nostackparams
	.globl		Wdg_Swt_Init
	.d2_cfa_start __cie
Wdg_Swt_Init:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Swt_pConfigPtr=r31 Swt_pConfigPtr=r3
.Llo2:
	mr		r30,r4		# Wdg_Instance=r30 Wdg_Instance=r4
	.d2prologue_end
#                                     CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance
#                                    )
# {
#     SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_06();
	.d2line		411
.Llo3:
	bl		SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_06
#     /* Unlock the possible soft lock condition   */
#     /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#     REG_WRITE32(SWT_SR_ADDR32(Wdg_Instance), SWT_UNLOCK_SEQ1_U32);
	.d2line		415
.Llo5:
	diab.li		r0,50464
	lis		r3,SWT_aBASE_ADDR32@ha
	e_add16i		r3,r3,SWT_aBASE_ADDR32@l
	rlwinm		r5,r30,2,0,29		# Wdg_Instance=r30
	lwzux		r4,r3,r5
	stw		r0,16(r4)
#     /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#     REG_WRITE32(SWT_SR_ADDR32(Wdg_Instance), SWT_UNLOCK_SEQ2_U32);
	.d2line		418
	diab.li		r0,55592
	lis		r3,SWT_aBASE_ADDR32@ha
	e_add16i		r3,r3,SWT_aBASE_ADDR32@l
	lwzux		r4,r3,r5
	stw		r0,16(r4)
#     /* Disable watchdog */
#     /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#     REG_BIT_CLEAR32(SWT_CR_ADDR32(Wdg_Instance), SWT_WDG_ENABLED_U32);
	.d2line		422
	lis		r3,SWT_aBASE_ADDR32@ha
	e_add16i		r3,r3,SWT_aBASE_ADDR32@l
	lwzx		r3,r3,r5
	lwz		r0,0(r3)
	.diab.bclri		r0,31
	stw		r0,0(r3)
#     SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_06();
	.d2line		423
	bl		SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_06
#     
#     /* Set Timer-out register */
#     /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#     REG_WRITE32(SWT_TO_ADDR32(Wdg_Instance), Swt_pConfigPtr->Swt_u32Timeout);
	.d2line		428
	lwz		r0,4(r31)		# Swt_pConfigPtr=r31
	lis		r3,SWT_aBASE_ADDR32@ha
	e_add16i		r3,r3,SWT_aBASE_ADDR32@l
	rlwinm		r5,r30,2,0,29		# Wdg_Instance=r30
	lwzux		r4,r3,r5
	stw		r0,8(r4)
# 
#     /* Set Window register */
#     /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#     REG_WRITE32(SWT_WN_ADDR32(Wdg_Instance), Swt_pConfigPtr->Swt_u32Window);
	.d2line		433
	lwz		r0,8(r31)		# Swt_pConfigPtr=r31
	lis		r3,SWT_aBASE_ADDR32@ha
	e_add16i		r3,r3,SWT_aBASE_ADDR32@l
	lwzx		r3,r3,r5
	stw		r0,12(r3)
#     
#     
# 
# #ifdef WDG_KEYED_SERVICE_USED
#     if (SWT_KEYED_SERVICE_U32 == (Swt_pConfigPtr->Swt_u32Config & SWT_KEYED_SERVICE_U32))
#     {
#         /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#         REG_WRITE32(SWT_SK_ADDR32(Wdg_Instance), Swt_pConfigPtr->Swt_u32InitialKey);        
#         Wdg_Swt_aeCrtServiceMode[Wdg_Instance] = SWT_KEYED_SERVICE_MODE;
#     }
#     else
#     {
#         Wdg_Swt_aeCrtServiceMode[Wdg_Instance] = SWT_FIXED_SERVICE_MODE;
#     }
# #endif
#     SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_06();
	.d2line		450
	bl		SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_06
#     /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#     REG_WRITE32(SWT_CR_ADDR32(Wdg_Instance),(Swt_pConfigPtr->Swt_u32Config));
	.d2line		453
	lwz		r0,0(r31)		# Swt_pConfigPtr=r31
	lis		r3,SWT_aBASE_ADDR32@ha
	e_add16i		r3,r3,SWT_aBASE_ADDR32@l
	se_slwi		r30,2		# Wdg_Instance=r30 Wdg_Instance=r30
.Llo6:
	lwzx		r3,r3,r30
	stw		r0,0(r3)
#     SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_06();
	.d2line		454
	bl		SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_06
#     
#     return (uint32)(Swt_pConfigPtr->Swt_u32Timeout - (Swt_pConfigPtr->Swt_u32Window>>1));
	.d2line		456
	lwz		r4,4(r31)		# Swt_pConfigPtr=r31
	lwz		r3,8(r31)		# Swt_pConfigPtr=r31
	se_srwi		r3,1
	subf		r3,r3,r4
# }
	.d2line		457
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo4:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L425:
	.type		Wdg_Swt_Init,@function
	.size		Wdg_Swt_Init,.-Wdg_Swt_Init
# Number of nodes = 95

# Allocations for Wdg_Swt_Init
#	?a4		Swt_pConfigPtr
#	?a5		Wdg_Instance
#	?a6		$$81
# FUNC(void, WDG_CODE) Wdg_Swt_Trigger(CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         472,22
#$$ld
.L441:

#$$bf	Wdg_Swt_Trigger,interprocedural,rasave,nostackparams
	.globl		Wdg_Swt_Trigger
	.d2_cfa_start __cie
Wdg_Swt_Trigger:
.Llo7:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Wdg_Instance=r31 Wdg_Instance=r3
	.d2prologue_end
# {
# #ifdef WDG_KEYED_SERVICE_USED
#     if (SWT_KEYED_SERVICE_MODE == Wdg_Swt_aeCrtServiceMode[Wdg_Instance])
#     {
#         VAR(uint32, AUTOMATIC) u32KeyedValue;
#         
#         SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_07();
#          /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#          /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#         u32KeyedValue = (uint32) ((((17UL * REG_READ32(SWT_SK_ADDR32(Wdg_Instance)))) + 3UL) & 0x0000FFFFUL);
#         /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#         REG_WRITE32(SWT_SR_ADDR32(Wdg_Instance), u32KeyedValue);
#         u32KeyedValue = ((17UL * u32KeyedValue) + 3UL) & 0x0000FFFFUL;
#         /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#         REG_WRITE32(SWT_SR_ADDR32(Wdg_Instance), u32KeyedValue);
#         SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_07();
#     }
#     else 
#     {
#         if (SWT_FIXED_SERVICE_MODE == Wdg_Swt_aeCrtServiceMode[Wdg_Instance])
#         {
# #endif
#             SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_07();
	.d2line		497
	bl		SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_07
#             /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#             REG_WRITE32(SWT_SR_ADDR32(Wdg_Instance), SWT_FIXED_SERVICE_SEQ1_U32);
	.d2line		500
.Llo8:
	diab.li		r0,42498
	lis		r3,SWT_aBASE_ADDR32@ha
	e_add16i		r3,r3,SWT_aBASE_ADDR32@l
.Llo9:
	se_slwi		r31,2		# Wdg_Instance=r31 Wdg_Instance=r31
.Llo10:
	lwzux		r4,r3,r31
	stw		r0,16(r4)
#             /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#             REG_WRITE32(SWT_SR_ADDR32(Wdg_Instance), SWT_FIXED_SERVICE_SEQ2_U32);
	.d2line		503
	diab.li		r0,46208
	lis		r3,SWT_aBASE_ADDR32@ha
	e_add16i		r3,r3,SWT_aBASE_ADDR32@l
	lwzx		r3,r3,r31
	stw		r0,16(r3)
#             SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_07();
	.d2line		504
	bl		SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_07
# #ifdef WDG_KEYED_SERVICE_USED
#         }
#         else
#         {
#             /*do nothing */
#         }
#     }
# #endif
# }
	.d2line		513
	.d2epilogue_begin
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
.L442:
	.type		Wdg_Swt_Trigger,@function
	.size		Wdg_Swt_Trigger,.-Wdg_Swt_Trigger
# Number of nodes = 28

# Allocations for Wdg_Swt_Trigger
#	?a4		Wdg_Instance
#      Wdg_Swt_CheckHwSettings(P2CONST(Wdg_Swt_ConfigType, AUTOMATIC, WDG_APPL_CONST) Swt_pConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         528,6
#$$ld
.L447:

#$$bf	Wdg_Swt_CheckHwSettings,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Wdg_Swt_CheckHwSettings
	.d2_cfa_start __cie
Wdg_Swt_CheckHwSettings:
.Llo11:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# Swt_pConfigPtr=?a4 Swt_pConfigPtr=r3
	mr		r0,r4		# Wdg_Instance=r0 Wdg_Instance=r4
	.d2prologue_end
#                              CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance
#                             )
# {
#     VAR(Std_ReturnType, AUTOMATIC) response = (Std_ReturnType)E_OK;
	.d2line		532
	diab.li		r5,0		# response=r5
#     
#     /* Returns error if the configuration pointer is NULL*/
#     if (NULL_PTR == Swt_pConfigPtr)
	.d2line		535
.Llo23:
	bc		0,2,.L402	# ne
#     {
#         response = (Std_ReturnType)E_NOT_OK;
	.d2line		537
.Llo13:
	diab.li		r4,1		# response=r4
.Llo14:
	b		.L403
.L402:
#     }
#     else
#     {
#         /* Returns error if the timeout value is grater that the minimum timeout value supported by hardware*/
#         if (Swt_pConfigPtr->Swt_u32Timeout < SWT_MIN_VALUE_TIMEOUT_U32)
	.d2line		542
	lwz		r4,4(r3)		# Swt_pConfigPtr=r3
	cmpli		0,0,r4,256
	bc		0,0,.L404	# ge
#         {
#             response = (Std_ReturnType)E_NOT_OK;
	.d2line		544
	diab.li		r4,1		# response=r4
	b		.L403
.L404:
#         }
#         else
#         {
# 
#             /* Returns error if the hardlock is setup on the hardware*/
#             /* @violates @ref Wdg_Swt_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /* @violates @ref Wdg_Swt_c_REF_6 Violates MISRA 2004 Rule 11.3, Cast from unsigned long to pointer.*/
#             if (SWT_WDG_HARD_LOCK_U32 == (REG_READ32(SWT_CR_ADDR32(Wdg_Instance)) & SWT_WDG_HARD_LOCK_U32))
	.d2line		552
.Llo15:
	lis		r4,SWT_aBASE_ADDR32@ha		# response=r4
	e_add16i		r4,r4,SWT_aBASE_ADDR32@l		# response=r4 response=r4
.Llo16:
	se_slwi		r0,2		# Wdg_Instance=r0 Wdg_Instance=r0
.Llo17:
	lwzx		r4,r4,r0		# response=r4 response=r4
	lwz		r0,0(r4)		# Wdg_Instance=r0 response=r4
.Llo18:
	se_btsti		r0,26		# Wdg_Instance=r0
#             {
# 
#                 response = (Std_ReturnType)E_NOT_OK;
	.d2line		555
	diab.li		r0,1		# Wdg_Instance=r0
	isel		r4,r5,r0,2		# response=r4 response=r5 Wdg_Instance=r0
.L407:
#             }
#             else
#             {
#                 /*do nothing*/
#             }
#             /* Return error if the value of the window frame is grater that the timeout - no trigger can occur*/
#             if (SWT_TRIGGER_MODE_WINDOW_U32 == (Swt_pConfigPtr->Swt_u32Config & SWT_TRIGGER_MODE_WINDOW_U32))
	.d2line		562
.Llo19:
	lwz		r0,0(r3)		# Wdg_Instance=r0 Swt_pConfigPtr=r3
.Llo20:
	se_btsti		r0,24		# Wdg_Instance=r0
	bc		1,2,.L403	# eq
#             {
#                 if (Swt_pConfigPtr->Swt_u32Timeout < Swt_pConfigPtr->Swt_u32Window)
	.d2line		564
.Llo21:
	lwz		r0,4(r3)		# Wdg_Instance=r0 Swt_pConfigPtr=r3
.Llo22:
	lwz		r3,8(r3)		# Swt_pConfigPtr=r3 Swt_pConfigPtr=r3
	se_cmpl		r0,r3		# Wdg_Instance=r0 Swt_pConfigPtr=r3
#                 {
#                     response = (Std_ReturnType)E_NOT_OK;
	.d2line		566
	diab.li		r3,1		# Swt_pConfigPtr=r3
	isel		r4,r3,r4,0		# response=r4 Swt_pConfigPtr=r3 response=r4
.L403:
#                 }
#             }
#         }
#     }
#     return response;
	.d2line		571
.Llo12:
	rlwinm		r3,r4,0,24,31		# Swt_pConfigPtr=r3 response=r4
# }
	.d2line		572
	.d2epilogue_begin
	lwz		r0,20(r1)		# Wdg_Instance=r0
	mtspr		lr,r0		# Wdg_Instance=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L448:
	.type		Wdg_Swt_CheckHwSettings,@function
	.size		Wdg_Swt_CheckHwSettings,.-Wdg_Swt_CheckHwSettings
# Number of nodes = 55

# Allocations for Wdg_Swt_CheckHwSettings
#	?a4		Swt_pConfigPtr
#	?a5		Wdg_Instance
#	?a6		response

# Allocations for module
	.section	.mcal_const,,r
	.0byte		.L457
	.section	.mcal_const,,r
	.type		SWT_aBASE_ADDR32,@object
	.size		SWT_aBASE_ADDR32,16
	.align		2
	.globl		SWT_aBASE_ADDR32
SWT_aBASE_ADDR32:
	.long		-66781184
	.long		-66764800
	.long		-66748416
	.long		-66732032
	.section	.text_vle
#$$ld
.L5:
.L464:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Wdg_IPW_Types.h"
.L462:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L458:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Swt.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L418:
.L426:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Swt.c"
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
	.uleb128	3
	.uleb128	8
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Swt.c"
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
.L415:
	.4byte		.L416-.L414
.L414:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L420-.L415
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Swt.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L417
	.4byte		.L418
	.4byte		.L421
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L429:
	.sleb128	2
	.4byte		.L423-.L415
	.byte		"Wdg_Swt_Init"
	.byte		0
	.4byte		.L426
	.uleb128	407
	.uleb128	24
	.4byte		.L427
	.byte		0x1
	.byte		0x1
	.4byte		.L424
	.4byte		.L425
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L426
	.uleb128	407
	.uleb128	24
	.byte		"Swt_pConfigPtr"
	.byte		0
	.4byte		.L430
	.4byte		.L434
	.sleb128	3
	.4byte		.L426
	.uleb128	407
	.uleb128	24
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L435
	.4byte		.L438
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L423:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L443:
	.sleb128	4
	.4byte		.L440-.L415
	.byte		"Wdg_Swt_Trigger"
	.byte		0
	.4byte		.L426
	.uleb128	472
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L441
	.4byte		.L442
	.sleb128	3
	.4byte		.L426
	.uleb128	472
	.uleb128	22
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L435
	.4byte		.L444
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L440:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L452:
	.sleb128	2
	.4byte		.L446-.L415
	.byte		"Wdg_Swt_CheckHwSettings"
	.byte		0
	.4byte		.L426
	.uleb128	528
	.uleb128	6
	.4byte		.L449
	.byte		0x1
	.byte		0x1
	.4byte		.L447
	.4byte		.L448
	.sleb128	3
	.4byte		.L426
	.uleb128	528
	.uleb128	6
	.byte		"Swt_pConfigPtr"
	.byte		0
	.4byte		.L430
	.4byte		.L453
	.sleb128	3
	.4byte		.L426
	.uleb128	528
	.uleb128	6
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L435
	.4byte		.L454
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L455:
	.sleb128	5
	.4byte		.L426
	.uleb128	532
	.uleb128	36
	.byte		"response"
	.byte		0
	.4byte		.L449
	.4byte		.L456
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L446:
	.section	.debug_info,,n
.L457:
	.sleb128	6
	.byte		0x1
	.4byte		.L458
	.uleb128	294
	.uleb128	26
	.byte		"SWT_aBASE_ADDR32"
	.byte		0
	.4byte		.L459
	.sleb128	5
	.byte		0x3
	.4byte		SWT_aBASE_ADDR32
	.section	.debug_info,,n
	.section	.debug_info,,n
.L433:
	.sleb128	7
	.4byte		.L462
	.uleb128	9682
	.uleb128	5
	.4byte		.L463-.L2
	.uleb128	20
	.section	.debug_info,,n
.L225:
	.sleb128	8
	.byte		"Swt_u32Config"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L226:
	.sleb128	8
	.byte		"Swt_u32Timeout"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L227:
	.sleb128	8
	.byte		"Swt_u32Window"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	8
	.byte		"Swt_u32InitialKey"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	8
	.byte		"Wdg_u32InternalTimerClock"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L463:
	.section	.debug_info,,n
.L437:
	.sleb128	9
	.4byte		.L464
	.uleb128	118
	.uleb128	14
	.4byte		.L465-.L2
	.byte		"Wdg_IPW_InstanceType"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"WDG_IPW_INSTANCE0"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"WDG_IPW_INSTANCE1"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"WDG_IPW_INSTANCE2"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"WDG_IPW_INSTANCE3"
	.byte		0
	.sleb128	3
	.sleb128	0
.L465:
	.section	.debug_info,,n
.L428:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L427:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L428
.L432:
	.sleb128	12
	.byte		"Wdg_Swt_ConfigType"
	.byte		0
	.4byte		.L433
	.section	.debug_info,,n
.L431:
	.sleb128	13
	.4byte		.L432
	.section	.debug_info,,n
.L430:
	.sleb128	14
	.4byte		.L431
.L436:
	.sleb128	12
	.byte		"Wdg_IPW_InstanceType"
	.byte		0
	.4byte		.L437
.L435:
	.sleb128	13
	.4byte		.L436
.L451:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L450:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L451
.L449:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L450
.L461:
	.sleb128	13
	.4byte		.L427
	.section	.debug_info,,n
.L459:
	.sleb128	15
	.4byte		.L460-.L2
	.4byte		.L461
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L460:
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L420:
	.sleb128	0
.L416:

	.section	.debug_loc,,n
	.align	0
.L434:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L438:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),30
	.d2locend
.L444:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locend
.L453:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L454:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo13),4
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo12),0
	.d2locend
.L456:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo19),5
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo24),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Wdg_Swt_CheckHwSettings"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Wdg_Swt_Trigger"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_07","SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_07"
	.wrcm.end
	.wrcm.nelem "Wdg_Swt_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_06","SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_06"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Wdg_Swt.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Wdg_Swt.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Wdg_Swt.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Wdg_Swt.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Wdg_Swt.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Wdg_Swt.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Wdg\ssc\make\..\..\generator\integration_package\src\Wdg_Swt.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
