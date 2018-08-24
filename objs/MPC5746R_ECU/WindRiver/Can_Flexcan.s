#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Can_Flexcan.c"
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
# LOCAL_INLINE FUNC(void, CAN_CODE) Can_FlexCan_DisableInterrupts (VAR(uint8, AUTOMATIC) u8Controller)
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L996:
	.section	.invalid_TEXT,,c
#$$ld
.L992:
	.0byte		.L990
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can_Flexcan.c"
        .d2line         589,35
#$$ld
.L999:

#$$bf	Can_FlexCan_DisableInterrupts,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Can_FlexCan_DisableInterrupts:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8Controller=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# u8Controller=r0 u8Controller=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8RegCount=0U;
	.d2line		591
.Llo2:
	diab.li		r3,0		# u8RegCount=r3
#     VAR(uint8, AUTOMATIC) u8HwOffset=0U;
#     
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[u8Controller].u8ControllerOffset;
	.d2line		595
.Llo3:
	lis		r4,CanStatic_pControlerDescriptors@ha
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)
	rlwinm		r7,r0,0,24,31		# u8Controller=r0
	e_mulli		r7,r7,20
	lbzx		r31,r4,r7
.Llo8:
	mr		r31,r31		# u8HwOffset=r31 u8HwOffset=r31
#     
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     for ( u8RegCount=(uint8)0U; \
.L629:
	.d2line		598
	rlwinm		r6,r3,0,24,31		# u8RegCount=r3
	lis		r4,u8MessageBufferControllerSize@ha
	e_add16i		r4,r4,u8MessageBufferControllerSize@l
	lis		r5,CanStatic_pControlerDescriptors@ha
	lwz		r5,CanStatic_pControlerDescriptors@l(r5)
	rlwinm		r7,r0,0,24,31		# u8Controller=r0
	e_mulli		r7,r7,20
	lbzx		r5,r5,r7
	lbzx		r4,r4,r5
	rlwinm		r4,r4,27,29,31
	se_cmp		r6,r4
	bc		0,0,.L631	# ge
#           u8RegCount < (u8MessageBufferControllerSize[CanStatic_pControlerDescriptors[u8Controller].u8ControllerOffset] >> FLEXCAN_MB_SHIFT5BIT_U8); \
#           u8RegCount++ \
#         )
#     {
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_WRITE32( Can_IflagImask[u8RegCount][u8HwOffset].u32CanImask, (uint32)(0U));
	.d2line		605
	diab.li		r5,0
	lis		r4,(Can_IflagImask+4)@ha
	e_add16i		r4,r4,(Can_IflagImask+4)@l
	rlwinm		r6,r31,3,21,28		# u8HwOffset=r31
	se_add		r4,r6
	rlwinm		r6,r3,5,19,26		# u8RegCount=r3
	lwzx		r4,r4,r6
	stw		r5,0(r4)
#     }
	.d2line		606
	diab.addi		r6,r3,1		# u8RegCount=r3
	se_addi		r3,1		# u8RegCount=r3 u8RegCount=r3
	b		.L629
.L631:
# 
#     SchM_Enter_Can_CAN_EXCLUSIVE_AREA_07();
	.d2line		608
.Llo4:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_07
#     /* Disable BusOff, Error, TxW, RxW interrupts. */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     REG_BIT_CLEAR32( FLEXCAN_CTRL(u8HwOffset), FLEXCAN_CTRL_BOFFMSK_U32);
	.d2line		612
	lis		r3,Can_u32BaseAddress@ha		# u8RegCount=r3
.Llo7:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8RegCount=r3 u8RegCount=r3
.Llo9:
	rlwinm		r31,r31,2,22,29		# u8HwOffset=r31 u8HwOffset=r31
.Llo10:
	lwzx		r4,r3,r31		# u8RegCount=r3
	lwz		r0,4(r4)		# u8Controller=r0
.Llo5:
	.diab.bclri		r0,16		# u8Controller=r0
	stw		r0,4(r4)		# u8Controller=r0
#     
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     REG_BIT_CLEAR32( FLEXCAN_CTRL(u8HwOffset), FLEXCAN_CTRL_ERRMSK_U32);
	.d2line		616
	lwzx		r3,r3,r31		# u8RegCount=r3 u8RegCount=r3
	lwz		r0,4(r3)		# u8Controller=r0 u8RegCount=r3
	.diab.bclri		r0,17		# u8Controller=r0
	stw		r0,4(r3)		# u8RegCount=r3 u8Controller=r0
#     
#     SchM_Exit_Can_CAN_EXCLUSIVE_AREA_07();
	.d2line		618
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_07
# }
	.d2line		619
	.d2epilogue_begin
.Llo6:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8Controller=r0
	mtspr		lr,r0		# u8Controller=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1000:
	.type		Can_FlexCan_DisableInterrupts,@function
	.size		Can_FlexCan_DisableInterrupts,.-Can_FlexCan_DisableInterrupts
# Number of nodes = 87

# Allocations for Can_FlexCan_DisableInterrupts
#	?a4		u8Controller
#	?a5		$$180
#	?a6		$$179
#	?a7		u8RegCount
#	?a8		u8HwOffset
# LOCAL_INLINE FUNC(void, CAN_CODE) Can_FlexCan_EnableInterrupts ( \
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         623,35
#$$ld
.L1012:

#$$bf	Can_FlexCan_EnableInterrupts,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Can_FlexCan_EnableInterrupts:
.Llo11:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo20:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# u8RegCount=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8Controller=r31 u8Controller=r3
.Llo12:
	mr		r30,r4		# pCanControlerDescriptor=r30 pCanControlerDescriptor=r4
	.d2prologue_end
#                                         VAR(uint8, AUTOMATIC) u8Controller, \
#                                         P2CONST(Can_ControlerDescriptorType, AUTOMATIC, CAN_APPL_CONST) pCanControlerDescriptor \
#                                                                )
# {
#     VAR(uint8, AUTOMATIC) u8RegCount=0U;
	.d2line		628
.Llo13:
	diab.li		r0,0		# u8RegCount=r0
#     VAR(uint8, AUTOMATIC) u8HwOffset=0U;
#     
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[u8Controller].u8ControllerOffset;
	.d2line		632
.Llo21:
	lis		r3,CanStatic_pControlerDescriptors@ha
	lwz		r4,CanStatic_pControlerDescriptors@l(r3)
.Llo17:
	rlwinm		r0,r31,0,24,31		# u8RegCount=r0 u8Controller=r31
.Llo22:
	e_mulli		r0,r0,20		# u8RegCount=r0 u8RegCount=r0
	lbzux		r29,r4,r0
.Llo30:
	mr		r29,r29		# u8HwOffset=r29 u8HwOffset=r29
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     if  ( (CAN_CONTROLLERCONFIG_TXPOL_EN_U32 != (CAN_CONTROLLERCONFIG_TXPOL_EN_U32 & CanStatic_pControlerDescriptors[u8Controller].u32Options)) || \
	.d2line		634
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)
	se_add		r3,r0		# u8RegCount=r0
	lwz		r0,16(r3)		# u8RegCount=r0
	rlwinm		r0,r0,0,20,21		# u8RegCount=r0 u8RegCount=r0
	cmpi		0,0,r0,3072		# u8RegCount=r0
	bc		1,2,.L635	# eq
#          (CAN_CONTROLLERCONFIG_RXPOL_EN_U32 != (CAN_CONTROLLERCONFIG_RXPOL_EN_U32 & CanStatic_pControlerDescriptors[u8Controller].u32Options)) \
#         )
#     {
#         /* Enable INTs from MBs. */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         for ( u8RegCount=(uint8)0U; \
	.d2line		640
.Llo18:
	diab.li		r3,0		# u8RegCount=r3
.L636:
.Llo23:
	rlwinm		r0,r3,0,24,31		# u8RegCount=r0 u8RegCount=r3
	lis		r4,u8MessageBufferControllerSize@ha
	e_add16i		r4,r4,u8MessageBufferControllerSize@l
	lis		r5,CanStatic_pControlerDescriptors@ha
	lwz		r5,CanStatic_pControlerDescriptors@l(r5)
	rlwinm		r6,r31,0,24,31		# u8Controller=r31
	e_mulli		r6,r6,20
	lbzx		r5,r5,r6
	lbzx		r4,r4,r5
	rlwinm		r4,r4,27,29,31
	se_cmp		r0,r4		# u8RegCount=r0
	bc		0,0,.L635	# ge
#               u8RegCount < (u8MessageBufferControllerSize[CanStatic_pControlerDescriptors[u8Controller].u8ControllerOffset] >> FLEXCAN_MB_SHIFT5BIT_U8); \
#               u8RegCount++ \
#             )
#         {
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_WRITE32(Can_IflagImask[u8RegCount][u8HwOffset].u32CanImask, Can_ControllerStatuses[u8Controller].u32MBInterruptMask[u8RegCount]);
	.d2line		647
	lis		r4,(Can_ControllerStatuses+12)@ha
	e_add16i		r4,r4,(Can_ControllerStatuses+12)@l
	rlwinm		r0,r3,2,22,29		# u8RegCount=r0 u8RegCount=r3
	se_add		r4,r0		# u8RegCount=r0
	rlwinm		r6,r31,0,24,31		# u8Controller=r31
	e_mulli		r6,r6,232
	add		r0,r4,r6		# u8RegCount=r0
	lwzx		r5,r0,r0		# u8RegCount=r0
	lis		r4,(Can_IflagImask+4)@ha
	e_add16i		r4,r4,(Can_IflagImask+4)@l
	rlwinm		r0,r29,3,21,28		# u8RegCount=r0 u8HwOffset=r29
	se_add		r4,r0		# u8RegCount=r0
	rlwinm		r0,r3,5,19,26		# u8RegCount=r0 u8RegCount=r3
	lwzx		r4,r4,r0
	stw		r5,0(r4)
#         }
	.d2line		648
	diab.addi		r0,r3,1		# u8RegCount=r0 u8RegCount=r3
	se_addi		r3,1		# u8RegCount=r3 u8RegCount=r3
	b		.L636
.L635:
#         /* Mark flag that tells if at least one INT is enabled. */
#     }
# 
#     /*
#       (CAN204) The Can module shall track all individual enabling and disabling of interrupts in other functions (i.e. Can_SetControllerMode), so that the correct interrupt enable state can be restored.
#     */
#     SchM_Enter_Can_CAN_EXCLUSIVE_AREA_08();
	.d2line		655
.Llo14:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_08
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     if ( CAN_CONTROLLERCONFIG_BOPOL_EN_U32 != (CAN_CONTROLLERCONFIG_BOPOL_EN_U32 & CanStatic_pControlerDescriptors[u8Controller].u32Options))
	.d2line		657
	lis		r3,CanStatic_pControlerDescriptors@ha		# u8RegCount=r3
.Llo24:
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# u8RegCount=r3 u8RegCount=r3
.Llo15:
	rlwinm		r31,r31,0,24,31		# u8Controller=r31 u8Controller=r31
	e_mulli		r31,r31,20		# u8Controller=r31 u8Controller=r31
	se_add		r3,r31		# u8RegCount=r3 u8RegCount=r3 u8Controller=r31
	lwz		r0,16(r3)		# u8RegCount=r0 u8RegCount=r3
	se_btsti		r0,19		# u8RegCount=r0
	bc		0,2,.L639	# ne
#     {
#         /* BusOff - enable the interrupt. */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_CTRL(u8HwOffset), FLEXCAN_CTRL_BOFFMSK_U32);
	.d2line		662
.Llo16:
	lis		r3,Can_u32BaseAddress@ha		# u8RegCount=r3
.Llo25:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8RegCount=r3 u8RegCount=r3
	rlwinm		r0,r29,2,22,29		# u8RegCount=r0 u8HwOffset=r29
	lwzx		r3,r3,r0		# u8RegCount=r3 u8RegCount=r3
	lwz		r0,4(r3)		# u8RegCount=r0 u8RegCount=r3
	.diab.bseti		r0,16		# u8RegCount=r0
	stw		r0,4(r3)		# u8RegCount=r3 u8RegCount=r0
.L639:
#         
#         /* Mark flag that tells if at least one INT is enabled. */
#     }
#     if ( CAN_CONTROLLERCONFIG_ERR_EN_U32 == (CAN_CONTROLLERCONFIG_ERR_EN_U32 & pCanControlerDescriptor->u32Options))
	.d2line		666
.Llo26:
	lwz		r0,8(r30)		# u8RegCount=r0 pCanControlerDescriptor=r30
.Llo27:
	se_btsti		r0,14		# u8RegCount=r0
	bc		1,2,.L640	# eq
#     {
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_CTRL(u8HwOffset), FLEXCAN_CTRL_ERRMSK_U32);
	.d2line		670
.Llo19:
	lis		r3,Can_u32BaseAddress@ha		# u8RegCount=r3
.Llo28:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8RegCount=r3 u8RegCount=r3
.Llo31:
	rlwinm		r29,r29,2,22,29		# u8HwOffset=r29 u8HwOffset=r29
.Llo32:
	lwzx		r3,r3,r29		# u8RegCount=r3 u8RegCount=r3
	lwz		r0,4(r3)		# u8RegCount=r0 u8RegCount=r3
	.diab.bseti		r0,17		# u8RegCount=r0
	stw		r0,4(r3)		# u8RegCount=r3 u8RegCount=r0
.L640:
#     }
#     SchM_Exit_Can_CAN_EXCLUSIVE_AREA_08();
	.d2line		672
.Llo29:
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_08
# }
	.d2line		673
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8RegCount=r0
	mtspr		lr,r0		# u8RegCount=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1013:
	.type		Can_FlexCan_EnableInterrupts,@function
	.size		Can_FlexCan_EnableInterrupts,.-Can_FlexCan_EnableInterrupts
# Number of nodes = 148

# Allocations for Can_FlexCan_EnableInterrupts
#	?a4		u8Controller
#	?a5		pCanControlerDescriptor
#	?a6		$$182
#	?a7		$$181
#	?a8		u8RegCount
#	?a9		u8HwOffset
# static FUNC (void, CAN_CODE) Can_FlexCan_InitReceiveMBs( VAR(uint8, AUTOMATIC) Controller, VAR(uint8, AUTOMATIC) u8HwOffset )
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         982,30
#$$ld
.L1027:

#$$bf	Can_FlexCan_InitReceiveMBs,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r27,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
Can_FlexCan_InitReceiveMBs:
.Llo33:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Controller=r3 Controller=r3
	mr		r4,r4		# u8HwOffset=r4 u8HwOffset=r4
	.d2prologue_end
# {
# #if ((CAN_RXFIFO_ENABLE == STD_ON) || (CAN_BCC_SUPPORT_ENABLE == STD_ON))
#     /* Local copy of pointer to the controller descriptor. */
#     VAR(Can_PtrControlerDescriptorType, AUTOMATIC) pCanControlerDescriptor = NULL_PTR;
# #endif/* ((CAN_RXFIFO_ENABLE == STD_ON) || (CAN_BCC_SUPPORT_ENABLE == STD_ON)) */
#     /* Pointer to the MB container structure. */
#     VAR(Can_PtrMBConfigContainerType, AUTOMATIC)   pCanMbConfigContainer = NULL_PTR;
	.d2line		989
	diab.li		r6,0		# pCanMbConfigContainer=r6
#     /* Variable for indexing all the MBs fron hardware unit chain (all controllers). */
#     VAR(uint16, AUTOMATIC)            u16MBGlobalIndex = 0U;
#     /* ID of current MB. */
#     VAR(uint32, AUTOMATIC)            u32MbMessageId = 0U;
#     /* Temporary register value. */
#     VAR(uint32, AUTOMATIC)            u32MbConfig = 0U;
#     /* Variable for indexing the MBs inside a single controller. */
#     VAR(uint8, AUTOMATIC)             u8MbCtrlIndex = 0U;
# 
# #if (CAN_BCC_SUPPORT_ENABLE == STD_ON)
#     /* Variable for calculating the interrupt masks of IMASK1 & IMASK2 register s*/
#     VAR(uint8, AUTOMATIC) u8RxglobalMskUpdate = 0U;
#     VAR(uint8, AUTOMATIC) u8Temp14 = 0U;
#     VAR(uint8, AUTOMATIC) u8Temp15 = 0U;
# #endif /* (CAN_BCC_SUPPORT_ENABLE == STD_ON) */
# 
# #if ((CAN_RXFIFO_ENABLE == STD_ON) || (CAN_BCC_SUPPORT_ENABLE == STD_ON))
#     /* Fill the local pointer copy with address of the Controller Descriptor.  */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     pCanControlerDescriptor = &(Can_pCurrentConfig->ControlerDescriptors[Controller]);
# #endif /* ((CAN_RXFIFO_ENABLE == STD_ON) || (CAN_BCC_SUPPORT_ENABLE == STD_ON)) */
# 
#     pCanMbConfigContainer   = &(Can_pCurrentConfig->MBConfigContainer);
	.d2line		1012
.Llo36:
	lis		r5,Can_pCurrentConfig@ha
	lwz		r5,Can_pCurrentConfig@l(r5)
	se_addi		r5,4
.Llo35:
	mr		r5,r5		# pCanMbConfigContainer=r5 pCanMbConfigContainer=r5
# 
#     /* Parse all MBs that are of type RECEIVE from the chain list, but process only the MBs for controller transmitted as parameter in this function. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     for (u16MBGlobalIndex = 0U; u16MBGlobalIndex < (uint16)Can_pCurrentConfig->uCanFirstHTHIndex; u16MBGlobalIndex++)
.L648:
	.d2line		1016
	rlwinm		r27,r6,0,16,31		# u16MBGlobalIndex=r6
	lis		r7,Can_pCurrentConfig@ha		# u8MbCtrlIndex=r7
.Llo65:
	lwz		r7,Can_pCurrentConfig@l(r7)		# u8MbCtrlIndex=r7 u8MbCtrlIndex=r7
	lbz		r0,20(r7)		# u32MbMessageId=r0 u8MbCtrlIndex=r7
.Llo37:
	se_cmp		r27,r0		# u32MbMessageId=r0
	bc		0,0,.L647	# ge
#     {
#         /* u16MBGlobalIndex variable is incrementing based of existing HOH for MBs. */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#         if ( Controller == (((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8ControllerId))
	.d2line		1020
.Llo38:
	rlwinm		r0,r3,0,24,31		# u32MbMessageId=r0 Controller=r3
.Llo39:
	lwz		r7,0(r5)		# u8MbCtrlIndex=r7 pCanMbConfigContainer=r5
.Llo66:
	rlwinm		r27,r6,5,11,26		# u16MBGlobalIndex=r6
	se_add		r7,r27		# u8MbCtrlIndex=r7 u8MbCtrlIndex=r7
	lbz		r7,1(r7)		# u8MbCtrlIndex=r7 u8MbCtrlIndex=r7
	se_cmp		r0,r7		# u32MbMessageId=r0 u8MbCtrlIndex=r7
	bc		0,2,.L651	# ne
#         {
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             if (CAN_RECEIVE == ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->eMBType )
	.d2line		1023
.Llo40:
	lwz		r7,0(r5)		# u8MbCtrlIndex=r7 pCanMbConfigContainer=r5
.Llo67:
	rlwinm		r27,r6,5,11,26		# u16MBGlobalIndex=r6
	se_add		r7,r27		# u8MbCtrlIndex=r7 u8MbCtrlIndex=r7
	lwz		r0,8(r7)		# u32MbMessageId=r0 u8MbCtrlIndex=r7
.Llo41:
	se_cmpi		r0,0		# u32MbMessageId=r0
	bc		0,2,.L651	# ne
#             {
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                 u8MbCtrlIndex = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
	.d2line		1026
.Llo42:
	lwz		r31,0(r5)		# u32MbMessageId=r31 pCanMbConfigContainer=r5
.Llo43:
	rlwinm		r27,r6,5,11,26		# u16MBGlobalIndex=r6
	se_add		r31,r27		# u32MbMessageId=r31 u32MbMessageId=r31
	lbz		r7,29(r31)		# u8MbCtrlIndex=r7 u32MbMessageId=r31
.Llo68:
	mr		r7,r7		# u8MbCtrlIndex=r7 u8MbCtrlIndex=r7
#                 
#             #if (CAN_RXFIFO_ENABLE == STD_ON)
#                 /* Skip the MB configuration if FIFO is enabled and this is the FIRST RX MB configured . */
#                 if ( (CAN_CONTROLLERCONFIG_RXFIFO_U32 != (pCanControlerDescriptor->u32Options & CAN_CONTROLLERCONFIG_RXFIFO_U32)) ||
#                      (u8MbCtrlIndex != (uint8)0U)
#                    )
#                 {
#             #endif
#                     /* Get the ID of the current MB. */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     u32MbMessageId = (uint32)((pCanMbConfigContainer->pMessageBufferConfigsPtr+u16MBGlobalIndex)->uMessageId);
	.d2line		1037
	lwz		r0,12(r31)		# u32MbMessageId=r0 u32MbMessageId=r31
	mr		r0,r0		# u32MbMessageId=r0 u32MbMessageId=r0
# 
#                     /* Clear variable for every MB. */
#                     u32MbConfig = (uint32)0U;
	.d2line		1040
	diab.li		r30,0		# u32MbConfig=r30
# 
#                 #if (CAN_EXTENDEDID == STD_ON)
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     if ( CAN_STANDARD == (((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdType) )
	.d2line		1044
.Llo57:
	lwz		r31,4(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
.Llo44:
	se_cmpi		r31,1		# u32MbMessageId=r31
.Llo45:
	bc		0,2,.L653	# ne
#                     {
#                 #endif /* (CAN_EXTENDEDID == STD_ON) */
# 
#                     #if (CAN_BCC_SUPPORT_ENABLE == STD_ON)
#                         /* Check if BCC support is enabled in configuration */
#                         if ( CAN_CONTROLLERCONFIG_BCC_EN_U32 == (pCanControlerDescriptor->u32Options & CAN_CONTROLLERCONFIG_BCC_EN_U32) )
#                         {
#                             if((u8MbCtrlIndex != FLEXCAN_MB_14_U8) && (u8MbCtrlIndex != FLEXCAN_MB_15_U8) && (u8RxglobalMskUpdate == 0U))
#                             {
#                                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                 if(CAN_MAXMASKCOUNT !=(((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex))
#                                 {
#                                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RXGMASK(u8HwOffset), (((uint32)((uint32)(Can_pCurrentConfig->pFilterMasks)[((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex] << 18U)) & FLEXCAN_RXGMASK_CONFIG_MASK_U32));
#                                 }
#                                 else
#                                 {
#                                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RXGMASK(u8HwOffset), (uint32)(FLEXCAN_NO_MASK_U32));
#                                 }
#                                 u8RxglobalMskUpdate++;
#                             }
#                             else if((u8MbCtrlIndex == FLEXCAN_MB_14_U8) && (u8Temp14 == 0U))
#                             {
#                                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                 if(CAN_MAXMASKCOUNT !=(((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex))
#                                 {  
#                                      /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                      /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                      /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                      REG_WRITE32(FLEXCAN_RX14MASK(u8HwOffset), (((uint32)((uint32)(Can_pCurrentConfig->pFilterMasks)[((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex] << 18U)) & FLEXCAN_RX14MASK_CONFIG_MASK_U32));
#                                      
#                                 }
#                                 else 
#                                 {
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RX14MASK(u8HwOffset), ((FLEXCAN_NO_MASK_U32) & FLEXCAN_RX14MASK_CONFIG_MASK_U32));
#                                    
#                                 }
#                                 u8Temp14++;
#                             }
#                             else if((u8MbCtrlIndex == FLEXCAN_MB_15_U8) && (u8Temp15 == 0U))
#                             {
#                                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                 if(CAN_MAXMASKCOUNT !=(((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex))
#                                 {  
#                                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RX15MASK(u8HwOffset), (((uint32)((uint32)(Can_pCurrentConfig->pFilterMasks)[((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex] << 18U)) & FLEXCAN_RX15MASK_CONFIG_MASK_U32));  
#                                 }
#                                 else
#                                 {
#                                      /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                      /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                      REG_WRITE32(FLEXCAN_RX15MASK(u8HwOffset), ((FLEXCAN_NO_MASK_U32) & FLEXCAN_RX15MASK_CONFIG_MASK_U32));
#                                
#                                 }
#                                 u8Temp15++;
#                             }
#                             else
#                             {
#                                 /* Already the  RX Global MASK register is updated, its used as acceptance mask for all Rx MBs except for 14 and 15 MB's*/
#                             }
#                         }
#                         else
#                         {
#                     #endif /* (CAN_BCC_SUPPORT_ENABLE == STD_ON) */
#                             
#                             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                             if(CAN_MAXMASKCOUNT !=(((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex))
	.d2line		1120
	lwz		r31,0(r5)		# u32MbMessageId=r31 pCanMbConfigContainer=r5
	rlwinm		r27,r6,5,11,26		# u16MBGlobalIndex=r6
	lbzx		r31,r31,r27		# u32MbMessageId=r31 u32MbMessageId=r31
	cmpi		0,0,r31,255		# u32MbMessageId=r31
	bc		1,2,.L654	# eq
#                             {
#                                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                 REG_WRITE32(FLEXCAN_RXIMR((u8HwOffset), (uint32)(u8MbCtrlIndex)), (uint32)((uint32)(Can_pCurrentConfig->pFilterMasks)[((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex] << 18U));
	.d2line		1125
	lis		r8,Can_pCurrentConfig@ha		# u32MbConfig=r8
	lwz		r31,Can_pCurrentConfig@l(r8)		# u32MbMessageId=r31 u32MbConfig=r8
	lwz		r31,0(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	lwz		r29,0(r5)		# pCanMbConfigContainer=r5
	rlwinm		r27,r6,5,11,26		# u16MBGlobalIndex=r6
	lbzx		r29,r29,r27
	rlwinm		r29,r29,2,22,29
	lwzx		r31,r31,r29		# u32MbMessageId=r31 u32MbMessageId=r31
	se_slwi		r31,18		# u32MbMessageId=r31 u32MbMessageId=r31
	lis		r8,Can_u32BaseAddress@ha		# u32MbConfig=r8
	e_add16i		r8,r8,Can_u32BaseAddress@l		# u32MbConfig=r8 u32MbConfig=r8
	rlwinm		r29,r4,2,22,29		# u8HwOffset=r4
	lwzx		r29,r8,r29		# u32MbConfig=r8
	rlwinm		r28,r7,2,22,29		# u8MbCtrlIndex=r7
	se_add		r29,r28
	stw		r31,2176(r29)		# u32MbMessageId=r31
	b		.L655
.L654:
#               
#                             }
#                             else
#                             {
#                                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                                 REG_WRITE32(FLEXCAN_RXIMR((u8HwOffset), (uint32)(u8MbCtrlIndex)), (uint32)(FLEXCAN_NO_MASK_U32));
	.d2line		1133
	diab.li		r31,-1		# u32MbMessageId=r31
	lis		r8,Can_u32BaseAddress@ha		# u32MbConfig=r8
	e_add16i		r8,r8,Can_u32BaseAddress@l		# u32MbConfig=r8 u32MbConfig=r8
	rlwinm		r29,r4,2,22,29		# u8HwOffset=r4
	lwzx		r29,r8,r29		# u32MbConfig=r8
	rlwinm		r28,r7,2,22,29		# u8MbCtrlIndex=r7
	se_add		r29,r28
	stw		r31,2176(r29)		# u32MbMessageId=r31
.L655:
#                                 
#                             }
#                             
#                     #if (CAN_BCC_SUPPORT_ENABLE == STD_ON)
#                         }
#                     #endif /* (CAN_BCC_SUPPORT_ENABLE == STD_ON) */
# 
#                         /* Copy the Message ID (serves as acceptance filter for Rx MBs). For Standard type, ID is placed on bits 28:18 on ID Reg of the MB structure. */
#                         u32MbMessageId <<= FLEXCAN_STANDARD_ID_SHIFT_U32;
	.d2line		1142
	se_slwi		r0,18		# u32MbMessageId=r0 u32MbMessageId=r0
	mr		r8,r0		# u32MbMessageId=r8 u32MbMessageId=r0
	b		.L656
.L653:
#                 #if (CAN_EXTENDEDID == STD_ON)
#                     }
#                     else
#                     {
#                     #if (CAN_BCC_SUPPORT_ENABLE == STD_ON)
#                         /* Check if BCC support is enabled in configuration */
#                         if ( CAN_CONTROLLERCONFIG_BCC_EN_U32 == (pCanControlerDescriptor->u32Options & CAN_CONTROLLERCONFIG_BCC_EN_U32) )
#                         {
#                             if((u8MbCtrlIndex != FLEXCAN_MB_14_U8) && (u8MbCtrlIndex != FLEXCAN_MB_15_U8) && (u8RxglobalMskUpdate == 0U))
#                             {
#                                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                 if(CAN_MAXMASKCOUNT !=(((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex))
#                                 {            
#                                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RXGMASK(u8HwOffset), (((uint32)((Can_pCurrentConfig->pFilterMasks)[((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex])) & FLEXCAN_RXGMASK_CONFIG_MASK_U32));
#                                 }
#                                 else
#                                 {
#                                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RXGMASK(u8HwOffset), (uint32)(FLEXCAN_NO_MASK_U32));
#                                 } 
#                                  u8RxglobalMskUpdate++;
#                             }
#                             else if((u8MbCtrlIndex == FLEXCAN_MB_14_U8) && (u8Temp14 == 0U))
#                             {
#                                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                 if(CAN_MAXMASKCOUNT !=(((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex))
#                                 {  
#                                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RX14MASK(u8HwOffset), (((uint32)((Can_pCurrentConfig->pFilterMasks)[((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex])) & FLEXCAN_RX14MASK_CONFIG_MASK_U32));
#                                     
#                                 }
#                                 else 
#                                 {
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RX14MASK(u8HwOffset), ((FLEXCAN_NO_MASK_U32) & FLEXCAN_RX14MASK_CONFIG_MASK_U32));
#                                     
#                                 }
#                                 u8Temp14++;
#                             }
#                             else if((u8MbCtrlIndex == FLEXCAN_MB_15_U8) && (u8Temp15 == 0U))
#                             {
#                                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                 if(CAN_MAXMASKCOUNT !=(((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex))
#                                 {
#                                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RX15MASK(u8HwOffset), (((uint32)((Can_pCurrentConfig->pFilterMasks)[((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex])) & FLEXCAN_RX15MASK_CONFIG_MASK_U32));
#                                   
#                                 }
#                                 else 
#                                 {
#                                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                     REG_WRITE32(FLEXCAN_RX15MASK(u8HwOffset), ((FLEXCAN_NO_MASK_U32) & FLEXCAN_RX15MASK_CONFIG_MASK_U32));
#                         
#                                 }
#                                 u8Temp15++;
#                             }
#                             else
#                             {
#                                 /* Already the  RX Global MASK register is updated, its used as acceptance mask for all Rx MBs except for 14 and 15 MB's*/
#                             }
#                         }
#                         else
#                         {
#                     #endif /* (CAN_BCC_SUPPORT_ENABLE == STD_ON) */
#                             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                             if(CAN_MAXMASKCOUNT !=(((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex))
	.d2line		1219
	lwz		r31,0(r5)		# u32MbMessageId=r31 pCanMbConfigContainer=r5
	rlwinm		r27,r6,5,11,26		# u16MBGlobalIndex=r6
	lbzx		r31,r31,r27		# u32MbMessageId=r31 u32MbMessageId=r31
	cmpi		0,0,r31,255		# u32MbMessageId=r31
	bc		1,2,.L657	# eq
#                             {                                   
#                                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                                 REG_WRITE32(FLEXCAN_RXIMR((u8HwOffset), (uint32)(u8MbCtrlIndex)), (uint32)((Can_pCurrentConfig->pFilterMasks)[((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->uIdMaskIndex]));
	.d2line		1224
.Llo58:
	lis		r8,Can_pCurrentConfig@ha		# u32MbConfig=r8
.Llo59:
	lwz		r31,Can_pCurrentConfig@l(r8)		# u32MbMessageId=r31 u32MbConfig=r8
	lwz		r30,0(r31)		# u32MbConfig=r30 u32MbMessageId=r31
	lwz		r31,0(r5)		# u32MbMessageId=r31 pCanMbConfigContainer=r5
	rlwinm		r27,r6,5,11,26		# u16MBGlobalIndex=r6
	lbzx		r31,r31,r27		# u32MbMessageId=r31 u32MbMessageId=r31
	rlwinm		r31,r31,2,22,29		# u32MbMessageId=r31 u32MbMessageId=r31
	se_add		r31,r30		# u32MbMessageId=r31 u32MbMessageId=r31 u32MbConfig=r30
	lwzx		r9,r0,r31		# u32MbMessageId=r0
	lis		r8,Can_u32BaseAddress@ha		# u32MbConfig=r8
	e_add16i		r8,r8,Can_u32BaseAddress@l		# u32MbConfig=r8 u32MbConfig=r8
	rlwinm		r29,r4,2,22,29		# u8HwOffset=r4
	lwzx		r30,r8,r29		# u32MbConfig=r30 u32MbConfig=r8
	rlwinm		r31,r7,2,22,29		# u32MbMessageId=r31 u8MbCtrlIndex=r7
	se_add		r31,r30		# u32MbMessageId=r31 u32MbMessageId=r31 u32MbConfig=r30
	stw		r9,2176(r31)		# u32MbMessageId=r31
	b		.L658
.L657:
#                                 
#                             }
#                             else
#                             {
#                                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                                 REG_WRITE32(FLEXCAN_RXIMR((u8HwOffset), (uint32)(u8MbCtrlIndex)), (uint32)(FLEXCAN_NO_MASK_U32));
	.d2line		1231
.Llo60:
	diab.li		r31,-1		# u32MbMessageId=r31
	lis		r8,Can_u32BaseAddress@ha		# u32MbConfig=r8
.Llo61:
	e_add16i		r8,r8,Can_u32BaseAddress@l		# u32MbConfig=r8 u32MbConfig=r8
	rlwinm		r29,r4,2,22,29		# u8HwOffset=r4
	lwzx		r30,r8,r29		# u32MbConfig=r30 u32MbConfig=r8
	rlwinm		r28,r7,2,22,29		# u8MbCtrlIndex=r7
	se_add		r30,r28		# u32MbConfig=r30 u32MbConfig=r30
	stw		r31,2176(r30)		# u32MbConfig=r30 u32MbMessageId=r31
.L658:
#                              
#                             }
#                     #if (CAN_BCC_SUPPORT_ENABLE == STD_ON)
#                         }
#                     #endif /* (CAN_BCC_SUPPORT_ENABLE == STD_ON) */
# 
#                         /* Set the IDE bit if the ID type is EXTENDED or MIXED. */
#                         u32MbConfig = FLEXCAN_MBCS_IDE_U32 ;
	.d2line		1239
.Llo62:
	diab.li		r30,2097152		# u32MbConfig=r30
.L656:
# 
#                         /* For EXTENDED MB type the ID is placed starting from bits 0 ( unlike STANDARD type when is placed starting to bit 18). */
#                     }
#                 #endif /* (CAN_EXTENDEDID == STD_ON) */
# 
#                     /* Enable the MB as a Rx object. MB is used for Rx & Mark the buffer as empty. */
#                     u32MbConfig |= (FLEXCAN_MBCS_CODERXEMPTY_U32);
	.d2line		1246
.Llo46:
	.diab.bseti		r30,5		# u32MbConfig=r30
	mr		r8,r30		# u32MbConfig=r8 u32MbConfig=r30
# 
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                     REG_WRITE32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex)), (uint32)(u32MbConfig));
	.d2line		1251
	lis		r8,Can_u32BaseAddress@ha		# u32MbConfig=r8
	e_add16i		r8,r8,Can_u32BaseAddress@l		# u32MbConfig=r8 u32MbConfig=r8
	rlwinm		r29,r4,2,22,29		# u8HwOffset=r4
	lwzux		r28,r8,r29		# u32MbConfig=r8
	lis		r8,Can_pCurrentConfig@ha		# u32MbConfig=r8
	lwz		r31,Can_pCurrentConfig@l(r8)		# u32MbMessageId=r31 u32MbConfig=r8
.Llo47:
	lwz		r31,4(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	rlwinm		r27,r6,5,11,26		# u16MBGlobalIndex=r6
	se_add		r31,r27		# u32MbMessageId=r31 u32MbMessageId=r31
	lhz		r31,26(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	se_add		r31,r28		# u32MbMessageId=r31 u32MbMessageId=r31
.Llo48:
	stwx		r30,r0,r31		# u32MbMessageId=r0 u32MbConfig=r30
#                     /* Copy the Message ID (serves as acceptance filter for Rx MBs). */
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                     REG_WRITE32( FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex)), (uint32)((u32MbMessageId) | ((REG_READ32(FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex)))) & 0xE0000000U)));
	.d2line		1256
	lis		r9,Can_u32BaseAddress@ha
	e_add16i		r9,r9,Can_u32BaseAddress@l
	lwzux		r30,r9,r29		# u32MbConfig=r30
.Llo63:
	lwz		r31,Can_pCurrentConfig@l(r8)		# u32MbMessageId=r31 u32MbConfig=r8
.Llo49:
	lwz		r31,4(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	se_add		r31,r27		# u32MbMessageId=r31 u32MbMessageId=r31
	lhz		r31,26(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	se_add		r31,r30		# u32MbMessageId=r31 u32MbMessageId=r31 u32MbConfig=r30
	lwz		r31,4(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	rlwinm		r31,r31,0,0,2		# u32MbMessageId=r31 u32MbMessageId=r31
.Llo50:
	or		r0,r0,r31		# u32MbMessageId=r0 u32MbMessageId=r0 u32MbMessageId=r31
.Llo51:
	lis		r9,Can_u32BaseAddress@ha
	e_add16i		r9,r9,Can_u32BaseAddress@l
	lwzx		r30,r9,r29		# u32MbConfig=r30
	lwz		r31,Can_pCurrentConfig@l(r8)		# u32MbMessageId=r31 u32MbConfig=r8
	lwz		r31,4(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	se_add		r27,r31		# u32MbMessageId=r31
	lhz		r31,26(r27)		# u32MbMessageId=r31
	se_add		r30,r31		# u32MbConfig=r30 u32MbConfig=r30 u32MbMessageId=r31
	stw		r0,4(r30)		# u32MbConfig=r30 u32MbMessageId=r0
#                     
#                     /* Save the mask bit from IMASK register for this MB used by Can_EnableControllerInterrupts() API. */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     if ( CAN_CONTROLLERCONFIG_RXPOL_EN_U32 != (CAN_CONTROLLERCONFIG_RXPOL_EN_U32 & CanStatic_pControlerDescriptors[Controller].u32Options) )
	.d2line		1260
	lis		r8,CanStatic_pControlerDescriptors@ha		# u32MbConfig=r8
	lwz		r31,CanStatic_pControlerDescriptors@l(r8)		# u32MbMessageId=r31 u32MbConfig=r8
	rlwinm		r0,r3,0,24,31		# u32MbMessageId=r0 Controller=r3
	e_mulli		r0,r0,20		# u32MbMessageId=r0 u32MbMessageId=r0
	se_add		r31,r0		# u32MbMessageId=r31 u32MbMessageId=r31 u32MbMessageId=r0
	lwz		r0,16(r31)		# u32MbMessageId=r0 u32MbMessageId=r31
	se_btsti		r0,21		# u32MbMessageId=r0
	bc		0,2,.L659	# ne
#                     {
#                         Can_ControllerStatuses[Controller].u32MBInterruptMask[(uint8)((uint8)u8MbCtrlIndex >> FLEXCAN_MB_SHIFT5BIT_U8)] |= ((uint32)1U << (uint8)(u8MbCtrlIndex & FLEXCAN_MASK_32BITS_U32));
	.d2line		1262
.Llo52:
	lis		r31,(Can_ControllerStatuses+12)@ha		# u32MbMessageId=r31
.Llo53:
	e_add16i		r31,r31,(Can_ControllerStatuses+12)@l		# u32MbMessageId=r31 u32MbMessageId=r31
	rlwinm		r28,r7,29,27,29		# u8MbCtrlIndex=r7
	se_add		r31,r28		# u32MbMessageId=r31 u32MbMessageId=r31
	rlwinm		r0,r3,0,24,31		# u32MbMessageId=r0 Controller=r3
	e_mulli		r0,r0,232		# u32MbMessageId=r0 u32MbMessageId=r0
	lwzx		r29,r31,r0		# u32MbMessageId=r31
	diab.li		r30,1		# u32MbConfig=r30
.Llo64:
	rlwinm		r28,r7,0,27,31		# u8MbCtrlIndex=r7
	slw		r30,r30,r28		# u32MbConfig=r30 u32MbConfig=r30
	or		r29,r29,r30		# u32MbConfig=r30
	stwx		r29,r31,r0		# u32MbMessageId=r31
.L659:
#                     }
#             #if (CAN_RXFIFO_ENABLE == STD_ON)
#                 }
#             #endif /* (CAN_RXFIFO_ENABLE == STD_ON) */
# 
#                 /* At this point "u8MbCtrlIndex" is updated and considering RxFifo if enebaled also. */
#                 Can_ControllerStatuses[Controller].u8FirstTxMBIndex = u8MbCtrlIndex + 1U;
	.d2line		1269
.Llo54:
	diab.addi		r31,r7,1		# u32MbMessageId=r31 u8MbCtrlIndex=r7
.Llo55:
	lis		r7,(Can_ControllerStatuses+218)@ha		# u8MbCtrlIndex=r7
	e_add16i		r7,r7,(Can_ControllerStatuses+218)@l		# u8MbCtrlIndex=r7 u8MbCtrlIndex=r7
	rlwinm		r0,r3,0,24,31		# u32MbMessageId=r0 Controller=r3
	e_mulli		r0,r0,232		# u32MbMessageId=r0 u32MbMessageId=r0
	stbux		r31,r7,r0		# u8MbCtrlIndex=r7 u32MbMessageId=r31
.L651:
#             }
#         }
#     }
	.d2line		1272
.Llo56:
	diab.addi		r27,r6,1		# u16MBGlobalIndex=r6
	se_addi		r6,1		# u16MBGlobalIndex=r6 u16MBGlobalIndex=r6
	b		.L648
.L647:
# }
	.d2line		1273
	.d2epilogue_begin
.Llo34:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# u32MbMessageId=r0
	mtspr		lr,r0		# u32MbMessageId=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1028:
	.type		Can_FlexCan_InitReceiveMBs,@function
	.size		Can_FlexCan_InitReceiveMBs,.-Can_FlexCan_InitReceiveMBs
# Number of nodes = 367

# Allocations for Can_FlexCan_InitReceiveMBs
#	?a4		Controller
#	?a5		u8HwOffset
#	?a6		$$183
#	?a7		pCanMbConfigContainer
#	?a8		u16MBGlobalIndex
#	?a9		u32MbMessageId
#	?a10		u32MbConfig
#	?a11		u8MbCtrlIndex
# static FUNC (void, CAN_CODE) Can_FlexCan_InitTransmitMBs( VAR(uint8, AUTOMATIC) Controller, VAR(uint8, AUTOMATIC) u8HwOffset )
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1287,30
#$$ld
.L1053:

#$$bf	Can_FlexCan_InitTransmitMBs,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
Can_FlexCan_InitTransmitMBs:
.Llo69:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo71:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# pCanControlerDescriptor=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Controller=r3 Controller=r3
	mr		r4,r4		# u8HwOffset=r4 u8HwOffset=r4
	.d2prologue_end
# {
#     /* Local copy of pointer to the controller descriptor. */
#     VAR(Can_PtrControlerDescriptorType, AUTOMATIC) pCanControlerDescriptor = NULL_PTR;
	.d2line		1290
	diab.li		r0,0		# pCanControlerDescriptor=r0
#     /* Pointer to the MB container structure. */
#     VAR(Can_PtrMBConfigContainerType, AUTOMATIC)   pCanMbConfigContainer = NULL_PTR;
#     /* Variable for indexing all the MBs fron hardware unit chain (all controllers). */
#     VAR(uint16, AUTOMATIC)            u16MBGlobalIndex = 0U;
#     /* ID of current MB. */
#     VAR(uint32, AUTOMATIC)            u32MbMessageId = 0U;
#     /* Variable for indexing the MBs inside a single controller. */
#     VAR(uint8, AUTOMATIC)             u8MbCtrlIndex = 0U;
#     
#     /* Fill the local pointer copy with address of the Controller Descriptor.  */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     pCanControlerDescriptor = &(Can_pCurrentConfig->ControlerDescriptors[Controller]);
	.d2line		1302
.Llo72:
	rlwinm		r31,r3,0,24,31		# Controller=r3
	lis		r7,Can_pCurrentConfig@ha
	lwz		r5,Can_pCurrentConfig@l(r7)
	lwz		r5,12(r5)
	rlwinm		r0,r31,4,0,27		# pCanControlerDescriptor=r0
.Llo73:
	se_slwi		r31,2
	subf		r31,r31,r0		# pCanControlerDescriptor=r0
	se_add		r5,r31
	mr		r5,r5		# pCanControlerDescriptor=r5 pCanControlerDescriptor=r5
#     pCanMbConfigContainer   = &(Can_pCurrentConfig->MBConfigContainer);
	.d2line		1303
	lwz		r6,Can_pCurrentConfig@l(r7)
	se_addi		r6,4
.Llo76:
	mr		r6,r6		# pCanMbConfigContainer=r6 pCanMbConfigContainer=r6
# 
#     /* Parse all MBs that are of type TRANSMIT from the chain list, but process only the MBs for controller transmitted as parameter in this function. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     for (u16MBGlobalIndex = (uint16)Can_pCurrentConfig->uCanFirstHTHIndex; u16MBGlobalIndex < (uint16)pCanMbConfigContainer->uMessageBufferConfigCount; u16MBGlobalIndex++)
	.d2line		1307
	lwz		r7,Can_pCurrentConfig@l(r7)
	lbz		r7,20(r7)
.Llo77:
	mr		r7,r7		# u16MBGlobalIndex=r7 u16MBGlobalIndex=r7
.L671:
.Llo74:
	rlwinm		r29,r7,0,16,31		# u16MBGlobalIndex=r7
.Llo75:
	lbz		r0,4(r6)		# pCanControlerDescriptor=r0 pCanMbConfigContainer=r6
	se_cmp		r29,r0		# pCanControlerDescriptor=r0
	bc		0,0,.L670	# ge
#     {
#         /* u16MBGlobalIndex variable is incrementing based of existing HOH for MBs. */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used  */
#         if ( Controller == (((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8ControllerId))
	.d2line		1311
	rlwinm		r8,r3,0,24,31		# Controller=r3
	lwz		r31,0(r6)		# u32MbMessageId=r31 pCanMbConfigContainer=r6
.Llo78:
	rlwinm		r29,r7,5,11,26		# u16MBGlobalIndex=r7
	se_add		r31,r29		# u32MbMessageId=r31 u32MbMessageId=r31
	lbz		r0,1(r31)		# pCanControlerDescriptor=r0 u32MbMessageId=r31
	cmp		0,0,r8,r0		# pCanControlerDescriptor=r0
	bc		0,2,.L674	# ne
#         {
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4 */
#             if (CAN_TRANSMIT == ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->eMBType )
	.d2line		1314
.Llo79:
	lwz		r31,0(r6)		# u32MbMessageId=r31 pCanMbConfigContainer=r6
.Llo80:
	rlwinm		r29,r7,5,11,26		# u16MBGlobalIndex=r7
	se_add		r31,r29		# u32MbMessageId=r31 u32MbMessageId=r31
	lwz		r0,8(r31)		# pCanControlerDescriptor=r0 u32MbMessageId=r31
	se_cmpi		r0,1		# pCanControlerDescriptor=r0
	bc		0,2,.L674	# ne
#             {
#                     /* Enable the MB as an TX object. MB is used for Tx & SRR must be set for Tx buffers. */
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                     REG_WRITE32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex)), (uint32)(FLEXCAN_MBCS_CODETX_U32 | FLEXCAN_MBCS_SRR_U32));
	.d2line		1320
.Llo81:
	e_lis		r0,2112		# pCanControlerDescriptor=r0
	lis		r8,Can_u32BaseAddress@ha
	e_add16i		r8,r8,Can_u32BaseAddress@l
	rlwinm		r30,r4,2,22,29		# u8HwOffset=r4
	lwzx		r8,r8,r30
	lis		r9,Can_pCurrentConfig@ha
	lwz		r31,Can_pCurrentConfig@l(r9)		# u32MbMessageId=r31
.Llo82:
	lwz		r31,4(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	rlwinm		r29,r7,5,11,26		# u16MBGlobalIndex=r7
	se_add		r31,r29		# u32MbMessageId=r31 u32MbMessageId=r31
	lhz		r31,26(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
.Llo83:
	stwx		r0,r8,r31		# pCanControlerDescriptor=r0
# 
#                     /* Configure only PRIO field of MBCS register of every Tx MB. */
#                     if ( CAN_CONTROLLERCONFIG_LPRIO_EN_U32 == (pCanControlerDescriptor->u32Options & CAN_CONTROLLERCONFIG_LPRIO_EN_U32) )
	.d2line		1323
	lwz		r0,8(r5)		# pCanControlerDescriptor=r0 pCanControlerDescriptor=r5
	se_btsti		r0,24		# pCanControlerDescriptor=r0
	bc		1,2,.L676	# eq
#                     {
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used*/
#                         u32MbMessageId = (uint32)((uint32)(((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8LocalPriority) << FLEXCAN_MB_ID_PRIO_SHIFT_U32) ;
	.d2line		1326
	lwz		r31,0(r6)		# u32MbMessageId=r31 pCanMbConfigContainer=r6
.Llo84:
	rlwinm		r29,r7,5,11,26		# u16MBGlobalIndex=r7
	se_add		r31,r29		# u32MbMessageId=r31 u32MbMessageId=r31
	lbz		r0,16(r31)		# pCanControlerDescriptor=r0 u32MbMessageId=r31
	se_slwi		r0,28		# pCanControlerDescriptor=r0 pCanControlerDescriptor=r0
	mr		r0,r0		# u32MbMessageId=r0 u32MbMessageId=r0
# 
#                         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                         REG_WRITE32( FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex)), (uint32)((u32MbMessageId) | ((REG_READ32(FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex)))) & 0xE0000000U) ));
	.d2line		1331
	lis		r8,Can_u32BaseAddress@ha
	e_add16i		r8,r8,Can_u32BaseAddress@l
	rlwinm		r30,r4,2,22,29		# u8HwOffset=r4
	lwzux		r28,r8,r30
	lis		r8,Can_pCurrentConfig@ha
	lwz		r31,Can_pCurrentConfig@l(r8)		# u32MbMessageId=r31
	lwz		r31,4(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	se_add		r31,r29		# u32MbMessageId=r31 u32MbMessageId=r31
	lhz		r31,26(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	se_add		r31,r28		# u32MbMessageId=r31 u32MbMessageId=r31
	lwz		r31,4(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	rlwinm		r31,r31,0,0,2		# u32MbMessageId=r31 u32MbMessageId=r31
	or		r0,r0,r31		# pCanControlerDescriptor=r0 pCanControlerDescriptor=r0 u32MbMessageId=r31
	lis		r9,Can_u32BaseAddress@ha
	e_add16i		r9,r9,Can_u32BaseAddress@l
	lwzx		r30,r9,r30
	lwz		r31,Can_pCurrentConfig@l(r8)		# u32MbMessageId=r31
	lwz		r31,4(r31)		# u32MbMessageId=r31 u32MbMessageId=r31
	se_add		r29,r31		# u32MbMessageId=r31
	lhz		r31,26(r29)		# u32MbMessageId=r31
	se_add		r30,r31		# u32MbMessageId=r31
	stw		r0,4(r30)		# pCanControlerDescriptor=r0
.L676:
# 
#                     }     
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     if ( CAN_CONTROLLERCONFIG_TXPOL_EN_U32 != (CAN_CONTROLLERCONFIG_TXPOL_EN_U32 & CanStatic_pControlerDescriptors[Controller].u32Options) )
	.d2line		1335
.Llo85:
	lis		r8,CanStatic_pControlerDescriptors@ha
	lwz		r0,CanStatic_pControlerDescriptors@l(r8)		# pCanControlerDescriptor=r0
	rlwinm		r31,r3,0,24,31		# u32MbMessageId=r31 Controller=r3
.Llo86:
	e_mulli		r31,r31,20		# u32MbMessageId=r31 u32MbMessageId=r31
	se_add		r31,r0		# u32MbMessageId=r31 u32MbMessageId=r31 pCanControlerDescriptor=r0
	lwz		r0,16(r31)		# pCanControlerDescriptor=r0 u32MbMessageId=r31
	se_btsti		r0,20		# pCanControlerDescriptor=r0
	bc		0,2,.L674	# ne
#                     {
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                         u8MbCtrlIndex = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
	.d2line		1338
.Llo87:
	lwz		r31,0(r6)		# u32MbMessageId=r31 pCanMbConfigContainer=r6
.Llo88:
	rlwinm		r29,r7,5,11,26		# u16MBGlobalIndex=r7
	se_add		r31,r29		# u32MbMessageId=r31 u32MbMessageId=r31
	lbz		r0,29(r31)		# pCanControlerDescriptor=r0 u32MbMessageId=r31
.Llo90:
	mr		r0,r0		# u8MbCtrlIndex=r0 u8MbCtrlIndex=r0
#                         Can_ControllerStatuses[Controller].u32MBInterruptMask[(uint8)((uint8)u8MbCtrlIndex >> FLEXCAN_MB_SHIFT5BIT_U8)] |= ((uint32)1U << (uint8)(u8MbCtrlIndex & FLEXCAN_MASK_32BITS_U32));
	.d2line		1339
	lis		r31,(Can_ControllerStatuses+12)@ha		# u32MbMessageId=r31
	e_add16i		r31,r31,(Can_ControllerStatuses+12)@l		# u32MbMessageId=r31 u32MbMessageId=r31
	rlwinm		r30,r0,29,27,29		# u8MbCtrlIndex=r0
	se_add		r31,r30		# u32MbMessageId=r31 u32MbMessageId=r31
	rlwinm		r8,r3,0,24,31		# Controller=r3
	e_mulli		r8,r8,232
	lwzx		r30,r31,r8		# u32MbMessageId=r31
	diab.li		r29,1
	rlwinm		r0,r0,0,27,31		# u8MbCtrlIndex=r0 u8MbCtrlIndex=r0
	slw		r29,r29,r0		# u8MbCtrlIndex=r0
	or		r30,r30,r29
	stwx		r30,r31,r8		# u32MbMessageId=r31
.L674:
#                     }
# 
#             }
#         }
#     }
	.d2line		1344
.Llo89:
	diab.addi		r29,r7,1		# u16MBGlobalIndex=r7
	se_addi		r7,1		# u16MBGlobalIndex=r7 u16MBGlobalIndex=r7
	b		.L671
.L670:
# 
# }
	.d2line		1346
	.d2epilogue_begin
.Llo70:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# pCanControlerDescriptor=r0
	mtspr		lr,r0		# pCanControlerDescriptor=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1054:
	.type		Can_FlexCan_InitTransmitMBs,@function
	.size		Can_FlexCan_InitTransmitMBs,.-Can_FlexCan_InitTransmitMBs
# Number of nodes = 228

# Allocations for Can_FlexCan_InitTransmitMBs
#	?a4		Controller
#	?a5		u8HwOffset
#	?a6		$$224
#	?a7		$$184
#	?a8		pCanControlerDescriptor
#	?a9		pCanMbConfigContainer
#	?a10		u16MBGlobalIndex
#	?a11		u32MbMessageId
#	?a12		u8MbCtrlIndex
# static FUNC (Can_ReturnType, CAN_CODE) Can_FlexCan_SetControllerToStopMode(  VAR(uint8, AUTOMATIC) Controller,
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1365,40
#$$ld
.L1071:

#$$bf	Can_FlexCan_SetControllerToStopMode,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Can_FlexCan_SetControllerToStopMode:
.Llo91:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
.Llo106:
	stmw		r27,44(r1)		# offset r1+44  0x2c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,68(r1)		# u16MBGlobalIndex=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Controller=r31 Controller=r3
.Llo92:
	mr		r30,r4		# pCanControlerDescriptor=r30 pCanControlerDescriptor=r4
.Llo93:
	mr		r29,r5		# canif_notification_required=r29 canif_notification_required=r5
	.d2prologue_end
#                                                                             P2CONST(Can_ControlerDescriptorType, AUTOMATIC, CAN_APPL_CONST) pCanControlerDescriptor,
#                                                                             VAR(boolean, AUTOMATIC) canif_notification_required
#                                                                           )
# {
#     /* Variable for return status. */
#     VAR(Can_ReturnType, AUTOMATIC)  eReturnValue = CAN_NOT_OK;
	.d2line		1371
	diab.li		r0,1		# eReturnValue=r0
#     VAR(uint16, AUTOMATIC)          u16MBGlobalIndex = 0U;
	.d2line		1372
.Llo107:
	diab.li		r0,0		# u16MBGlobalIndex=r0
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)           u8HwOffset = 0U;
#     /* Temporary variable for MB config register. */
#     VAR(uint32, AUTOMATIC)          u32MbConfig = 0U;
#     /* Timeout counter. */
#     VAR(uint32, AUTOMATIC)          u32TimeoutCount = 0U;
#     VAR(uint32, AUTOMATIC)          u32TempVar = 0U;
#     VAR(uint8 , AUTOMATIC)      u8RegCount1 = 0U;
#     VAR(uint32, AUTOMATIC)      u32TempMCR = 0U;
#     VAR(uint32, AUTOMATIC)      u32TempIMASK[3] = {0U,0U,0U};
	.d2line		1382
	lis		r7,.L683@ha
	e_add16i		r7,r7,.L683@l
	lwz		r4,0(r7)
.Llo95:
	lwz		r5,4(r7)
.Llo98:
	stw		r4,8(r1)
	stw		r5,12(r1)
	lwz		r4,8(r7)
	stw		r4,16(r1)
# 
# 
#     /* Get the hardware offset for this controller. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[Controller].u8ControllerOffset;
	.d2line		1387
	lis		r3,CanStatic_pControlerDescriptors@ha
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)
	rlwinm		r0,r31,0,24,31		# u16MBGlobalIndex=r0 Controller=r31
.Llo108:
	e_mulli		r4,r0,20		# u16MBGlobalIndex=r0
	lbzx		r27,r3,r4
.Llo143:
	mr		r27,r27		# u8HwOffset=r27 u8HwOffset=r27
# 
#     /*
#        (PR-MCAL-3057) The Can driver shall not create a development error if the CanIf requests a transision to a state that was already reached.
#     */
#     if ( CAN_STOPPED == Can_ControllerStatuses[Controller].ControllerState)
	.d2line		1392
	lis		r3,(Can_ControllerStatuses+224)@ha
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l
	e_mulli		r0,r0,232		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r0
	lwzx		r0,r3,r0		# u16MBGlobalIndex=r0
	se_cmpi		r0,0		# u16MBGlobalIndex=r0
	bc		0,2,.L684	# ne
#     {
#         /* If the controller is already in STOP state, return CAN_OK. */
#         eReturnValue = CAN_OK;
	.d2line		1395
.Llo96:
	diab.li		r28,0		# eReturnValue=r28
.Llo102:
	b		.L685
.L684:
#     }
#     else
#     {
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         /* Valid transitions to Stop are only from Start and Wakeup. */
#         if ( CAN_STARTED != Can_ControllerStatuses[Controller].ControllerState)
#         {
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_SET_CONTROLLER_MODE, (uint8)CAN_E_TRANSITION);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#         
#             /*
#               (CAN263) The function Can_SetControllerMode(CAN_T_STOP) shall set the bits inside the CAN hardware such that the CAN controller
#                        stops participating on the network.
#             */
#             SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1414
.Llo103:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_FRZ_U32);
	.d2line		1417
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r5,r27,2,22,29		# u32TempVar=r5 u8HwOffset=r27
	lwzx		r3,r4,r5		# u32TimeoutCount=r3
.Llo150:
	lwz		r0,0(r3)		# u16MBGlobalIndex=r0 u32TimeoutCount=r3
.Llo109:
	.diab.bseti		r0,1		# u16MBGlobalIndex=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 u16MBGlobalIndex=r0
#             
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_HALT_U32);
	.d2line		1421
	lwzx		r3,r4,r5		# u32TimeoutCount=r3
	lwz		r0,0(r3)		# u16MBGlobalIndex=r0 u32TimeoutCount=r3
	.diab.bseti		r0,3		# u16MBGlobalIndex=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 u16MBGlobalIndex=r0
#             SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1422
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06
#             /*
#                (CAN264) The function Can_SetControllerMode(CAN_T_STOP) shall wait for a limited time until the CAN controller is really switched off. Compare to CAN371
#             */
#             /* This means will wait until MCR[FRZ_ACK] is set. */
#             u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		1427
.Llo110:
	diab.li		r3,2000		# u32TimeoutCount=r3
#             u32TempVar = (uint32)0U;
	.d2line		1428
.Llo151:
	diab.li		r5,0		# u32TempVar=r5
.L686:
#             do {
#                 /* ... stay in loop */
#                 u32TimeoutCount--;
	.d2line		1431
.Llo162:
	diab.addi		r0,r3,-1		# u16MBGlobalIndex=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 u32TempVar |= ( (uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset)) & FLEXCAN_MCR_FRZACK_U32);
	.d2line		1434
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r0,r27,2,22,29		# u16MBGlobalIndex=r0 u8HwOffset=r27
	lwzx		r4,r4,r0
	lwz		r0,0(r4)		# u16MBGlobalIndex=r0
.Llo111:
	rlwinm		r0,r0,0,7,7		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r0
	or		r0,r0,r5		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r0 u32TempVar=r5
.Llo112:
	mr		r5,r0		# u32TempVar=r5 u32TempVar=r0
#             } while ((u32TimeoutCount > (uint32)0x0U) && ( FLEXCAN_MCR_FRZACK_U32 != u32TempVar));
	.d2line		1435
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L706	# eq
	diab.li		r0,16777216		# u16MBGlobalIndex=r0
.Llo113:
	se_cmpl		r5,r0		# u32TempVar=r5 u16MBGlobalIndex=r0
	bc		0,2,.L686	# ne
.L706:
#             
#             if (FLEXCAN_MCR_FRZACK_U32 != u32TempVar) /* software timeout */
	.d2line		1437
.Llo114:
	diab.li		r0,16777216		# u16MBGlobalIndex=r0
.Llo115:
	se_cmpl		r5,r0		# u32TempVar=r5 u16MBGlobalIndex=r0
	bc		1,2,.L687	# eq
#             {
#                 /* Backup MCR register */
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 u32TempMCR = (uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset));
	.d2line		1442
.Llo116:
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo152:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r0,r27,2,22,29		# u16MBGlobalIndex=r0 u8HwOffset=r27
	lwzx		r3,r3,r0		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r28,0(r3)		# u32TimeoutCount=r3
.Llo173:
	mr		r28,r28		# u32TempMCR=r28 u32TempMCR=r28
#                 
#                 /* Backup IMASKn registers */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 for (u8RegCount1=(uint8)0; u8RegCount1< (uint8)((uint8)u8MessageBufferControllerSize[CanStatic_pControlerDescriptors[Controller].u8ControllerOffset] >> FLEXCAN_MB_SHIFT5BIT_U8) ;u8RegCount1++)
	.d2line		1446
	diab.li		r3,0		# u8RegCount1=r3
.L688:
.Llo153:
	rlwinm		r0,r3,0,24,31		# u16MBGlobalIndex=r0 u8RegCount1=r3
.Llo117:
	lis		r4,u8MessageBufferControllerSize@ha
	e_add16i		r4,r4,u8MessageBufferControllerSize@l
	lis		r5,CanStatic_pControlerDescriptors@ha		# u32TempVar=r5
.Llo163:
	lwz		r5,CanStatic_pControlerDescriptors@l(r5)		# u32TempVar=r5 u32TempVar=r5
	rlwinm		r6,r31,0,24,31		# Controller=r31
	e_mulli		r6,r6,20
	lbzx		r5,r5,r6		# u32TempVar=r5 u32TempVar=r5
.Llo164:
	lbzx		r4,r4,r5
	rlwinm		r4,r4,27,24,31
	se_cmp		r0,r4		# u16MBGlobalIndex=r0
	bc		0,0,.L690	# ge
#                 {
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     u32TempIMASK[u8RegCount1] = REG_READ32( Can_IflagImask[u8RegCount1][u8HwOffset].u32CanImask);
	.d2line		1450
.Llo118:
	lis		r4,(Can_IflagImask+4)@ha
	e_add16i		r4,r4,(Can_IflagImask+4)@l
	rlwinm		r0,r27,3,21,28		# u16MBGlobalIndex=r0 u8HwOffset=r27
.Llo119:
	se_add		r4,r0		# u16MBGlobalIndex=r0
	rlwinm		r0,r3,5,19,26		# u16MBGlobalIndex=r0 u8RegCount1=r3
.Llo120:
	lwzx		r4,r4,r0
	lwz		r0,0(r4)		# u16MBGlobalIndex=r0
.Llo121:
	diab.addi		r4,r1,8
	rlwinm		r5,r3,2,22,29		# u32TempVar=r5 u8RegCount1=r3
	stwx		r0,r4,r5		# u16MBGlobalIndex=r0
#                 }
	.d2line		1451
	diab.addi		r0,r3,1		# u16MBGlobalIndex=r0 u8RegCount1=r3
.Llo122:
	se_addi		r3,1		# u8RegCount1=r3 u8RegCount1=r3
	b		.L688
.L690:
# 
#                 /* Set the Soft Reset bit (SOFTRST) in MCR */
#                 SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1454
.Llo170:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_SOFTRST_U32);
	.d2line		1457
	lis		r3,Can_u32BaseAddress@ha		# u8RegCount1=r3
.Llo171:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8RegCount1=r3 u8RegCount1=r3
	rlwinm		r0,r27,2,22,29		# u16MBGlobalIndex=r0 u8HwOffset=r27
	lwzx		r3,r3,r0		# u8RegCount1=r3 u8RegCount1=r3
	lwz		r0,0(r3)		# u16MBGlobalIndex=r0 u8RegCount1=r3
.Llo123:
	.diab.bseti		r0,6		# u16MBGlobalIndex=r0
	stw		r0,0(r3)		# u8RegCount1=r3 u16MBGlobalIndex=r0
#                 SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1458
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06
#                 
#                 /* Poll the MCR register until the Soft Reset bit (SOFTRST) bit is cleared */
#                 u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		1461
.Llo124:
	diab.li		r3,2000		# u32TimeoutCount=r3
.L691:
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 while ( (FLEXCAN_MCR_SOFTRST_U32 == ((uint32)(REG_READ32( FLEXCAN_MCR(u8HwOffset))) & FLEXCAN_MCR_SOFTRST_U32)) && \
	.d2line		1464
.Llo154:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r0,r27,2,22,29		# u16MBGlobalIndex=r0 u8HwOffset=r27
	lwzx		r4,r4,r0
	lwz		r0,0(r4)		# u16MBGlobalIndex=r0
.Llo125:
	se_btsti		r0,6		# u16MBGlobalIndex=r0
	bc		1,2,.L692	# eq
.Llo126:
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L692	# eq
#                         (u32TimeoutCount > (uint32)0x0U) \
#                       )
#                 {
#                     /* MCR[SOFT_RST] still set -> reset in progress. */
#                     u32TimeoutCount--;
	.d2line		1469
	diab.addi		r0,r3,-1		# u16MBGlobalIndex=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
	b		.L691
.L692:
#                 }
#                 
#                 /* Set the Soft Reset bit (SOFTRST) again */
#                 SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1473
.Llo155:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_SOFTRST_U32);
	.d2line		1476
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo156:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r0,r27,2,22,29		# u16MBGlobalIndex=r0 u8HwOffset=r27
	lwzx		r3,r3,r0		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# u16MBGlobalIndex=r0 u32TimeoutCount=r3
.Llo127:
	.diab.bseti		r0,6		# u16MBGlobalIndex=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 u16MBGlobalIndex=r0
#                 SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1477
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06
#                 
#                 /* Poll the MCR register until the Soft Reset bit (SOFTRST) bit is cleared */
#                 u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		1480
.Llo128:
	diab.li		r3,2000		# u32TimeoutCount=r3
.L693:
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 while ( (FLEXCAN_MCR_SOFTRST_U32 == ((uint32)(REG_READ32( FLEXCAN_MCR(u8HwOffset))) & FLEXCAN_MCR_SOFTRST_U32)) && \
	.d2line		1483
.Llo157:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r0,r27,2,22,29		# u16MBGlobalIndex=r0 u8HwOffset=r27
	lwzx		r4,r4,r0
	lwz		r0,0(r4)		# u16MBGlobalIndex=r0
.Llo129:
	se_btsti		r0,6		# u16MBGlobalIndex=r0
	bc		1,2,.L694	# eq
.Llo130:
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L694	# eq
#                         (u32TimeoutCount > (uint32)0x0U) \
#                       )
#                 {
#                     /* MCR[SOFT_RST] still set -> reset in progress. */
#                     u32TimeoutCount--;
	.d2line		1488
	diab.addi		r0,r3,-1		# u16MBGlobalIndex=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
	b		.L693
.L694:
#                 }
#                 
#                 /* The soft reset has completed
#                    Reconfigure the Module Control Register (MCR) */
#                 SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1493
.Llo158:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 REG_WRITE32( FLEXCAN_MCR(u8HwOffset), u32TempMCR);
	.d2line		1496
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo159:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r0,r27,2,22,29		# u16MBGlobalIndex=r0 u8HwOffset=r27
	lwzx		r3,r3,r0		# u32TimeoutCount=r3 u32TimeoutCount=r3
	stw		r28,0(r3)		# u32TimeoutCount=r3 u32TempMCR=r28
#                 SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1497
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06
#                 /* Reconfigure all the Interrupt Mask Registers (IMASKn) */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 for (u8RegCount1=(uint8)0; u8RegCount1< (uint8)((uint8)u8MessageBufferControllerSize[CanStatic_pControlerDescriptors[Controller].u8ControllerOffset] >> FLEXCAN_MB_SHIFT5BIT_U8) ;u8RegCount1++)
	.d2line		1500
.Llo160:
	diab.li		r3,0		# u8RegCount1=r3
.L695:
.Llo172:
	rlwinm		r0,r3,0,24,31		# u16MBGlobalIndex=r0 u8RegCount1=r3
.Llo131:
	lis		r4,u8MessageBufferControllerSize@ha
	e_add16i		r4,r4,u8MessageBufferControllerSize@l
	lis		r5,CanStatic_pControlerDescriptors@ha		# u32TempVar=r5
.Llo165:
	lwz		r5,CanStatic_pControlerDescriptors@l(r5)		# u32TempVar=r5 u32TempVar=r5
	rlwinm		r6,r31,0,24,31		# Controller=r31
	e_mulli		r6,r6,20
	lbzx		r5,r5,r6		# u32TempVar=r5 u32TempVar=r5
.Llo166:
	lbzx		r4,r4,r5
	rlwinm		r4,r4,27,24,31
	se_cmp		r0,r4		# u16MBGlobalIndex=r0
	bc		0,0,.L687	# ge
#                 {
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     REG_WRITE32( Can_IflagImask[u8RegCount1][u8HwOffset].u32CanImask, u32TempIMASK[u8RegCount1]);
	.d2line		1504
.Llo132:
	diab.addi		r0,r1,8		# u16MBGlobalIndex=r0
.Llo133:
	rlwinm		r4,r3,2,22,29		# u8RegCount1=r3
	se_add		r0,r4		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r0
	lwzx		r5,r0,r0		# u32TempVar=r5 u16MBGlobalIndex=r0
.Llo167:
	lis		r4,(Can_IflagImask+4)@ha
	e_add16i		r4,r4,(Can_IflagImask+4)@l
	rlwinm		r0,r27,3,21,28		# u16MBGlobalIndex=r0 u8HwOffset=r27
	se_add		r4,r0		# u16MBGlobalIndex=r0
	rlwinm		r0,r3,5,19,26		# u16MBGlobalIndex=r0 u8RegCount1=r3
.Llo134:
	lwzx		r4,r4,r0
	stw		r5,0(r4)		# u32TempVar=r5
#                 }
	.d2line		1505
	diab.addi		r0,r3,1		# u16MBGlobalIndex=r0 u8RegCount1=r3
	se_addi		r3,1		# u8RegCount1=r3 u8RegCount1=r3
	b		.L695
.L687:
#             }
#             
#             eReturnValue = CAN_OK;
	.d2line		1508
.Llo168:
	diab.li		r28,0		# eReturnValue=r28
#             
#             /* Check if Software BusOff Recovery is enabled. */
#             if ( CAN_CONTROLLERCONFIG_BUSOFFSWREC_U32 == (pCanControlerDescriptor->u32Options & CAN_CONTROLLERCONFIG_BUSOFFSWREC_U32) )
	.d2line		1511
.Llo104:
	lwz		r0,8(r30)		# u16MBGlobalIndex=r0 pCanControlerDescriptor=r30
.Llo135:
	se_btsti		r0,31		# u16MBGlobalIndex=r0
	bc		1,2,.L698	# eq
#             {
#                 SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1513
.Llo97:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 REG_BIT_CLEAR32( FLEXCAN_CTRL(u8HwOffset), FLEXCAN_CTRL_BOFFREC_U32);
	.d2line		1516
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo161:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r5,r27,2,22,29		# u32TempVar=r5 u8HwOffset=r27
	lwzx		r4,r3,r5		# u32TimeoutCount=r3
	lwz		r0,4(r4)		# u16MBGlobalIndex=r0
.Llo136:
	.diab.bclri		r0,25		# u16MBGlobalIndex=r0
	stw		r0,4(r4)		# u16MBGlobalIndex=r0
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 REG_BIT_SET32( FLEXCAN_CTRL(u8HwOffset), FLEXCAN_CTRL_BOFFREC_U32);
	.d2line		1519
	lwzx		r3,r3,r5		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,4(r3)		# u16MBGlobalIndex=r0 u32TimeoutCount=r3
	.diab.bseti		r0,25		# u16MBGlobalIndex=r0
	stw		r0,4(r3)		# u32TimeoutCount=r3 u16MBGlobalIndex=r0
#                 SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06();
	.d2line		1520
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06
.L698:
#             }
# 
#             /* Loop through all Tx MBs. -> must abort transmission for all MBs for Tx. */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             for ( u16MBGlobalIndex = 0U; u16MBGlobalIndex < Can_pCurrentConfig->MBConfigContainer.uMessageBufferConfigCount; u16MBGlobalIndex++)
	.d2line		1525
.Llo137:
	diab.li		r3,0		# u16MBGlobalIndex=r3
.L699:
.Llo138:
	rlwinm		r7,r3,0,16,31		# u16MBGlobalIndex=r3
	lis		r4,Can_pCurrentConfig@ha
	lwz		r4,Can_pCurrentConfig@l(r4)
	lbz		r0,8(r4)		# u16MBGlobalIndex=r0
	se_cmp		r7,r0		# u16MBGlobalIndex=r0
	bc		0,0,.L701	# ge
#             {
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                 if ( Controller == (((Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8ControllerId))
	.d2line		1528
	rlwinm		r6,r31,0,24,31		# u32MbConfig=r6 Controller=r31
.Llo144:
	lis		r4,Can_pCurrentConfig@ha
	lwz		r4,Can_pCurrentConfig@l(r4)
	lwz		r4,4(r4)
	rlwinm		r7,r3,5,11,26		# u16MBGlobalIndex=r3
	se_add		r4,r7
	lbz		r0,1(r4)		# u16MBGlobalIndex=r0
	se_cmp		r6,r0		# u32MbConfig=r6 u16MBGlobalIndex=r0
	bc		0,2,.L702	# ne
#                 {
#                     /* Cancel the MB (just in case it is scheduled for Tx). This is a HARD ABORT, confirmation of whether the MB was transmitted or not is not required. */
#                     /*
#                        (CAN282) The function Can_SetControllerMode(CAN_T_STOP) shall cancel pending messages.
#                        (CAN273)After bus-off detection, the Can module shall cancel still pending messages without raising a cancellation notification.
#                     */
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                     u32MbConfig = ( ((uint32)REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex))) & ~FLEXCAN_MBCS_CODE_U32) | FLEXCAN_MBCS_CODETX_U32 );
	.d2line		1538
.Llo145:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r0,r27,2,22,29		# u16MBGlobalIndex=r0 u8HwOffset=r27
	lwzux		r6,r4,r0		# u32MbConfig=r6
.Llo146:
	lis		r4,Can_pCurrentConfig@ha
	lwz		r5,Can_pCurrentConfig@l(r4)		# u32TempVar=r5
.Llo169:
	lwz		r5,4(r5)		# u32TempVar=r5 u32TempVar=r5
	rlwinm		r7,r3,5,11,26		# u16MBGlobalIndex=r3
	se_add		r5,r7		# u32TempVar=r5 u32TempVar=r5
	lhz		r5,26(r5)		# u32TempVar=r5 u32TempVar=r5
	se_add		r5,r6		# u32TempVar=r5 u32TempVar=r5 u32MbConfig=r6
	lwzx		r5,r0,r5		# u32TempVar=r5 u16MBGlobalIndex=r0
	rlwinm		r5,r5,0,8,3		# u32TempVar=r5 u32TempVar=r5
	.diab.bseti		r5,4		# u32TempVar=r5
	mr		r6,r5		# u32MbConfig=r6 u32MbConfig=r5
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                     REG_WRITE32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex)), (uint32)(u32MbConfig));
	.d2line		1542
	lis		r5,Can_u32BaseAddress@ha		# u32TempVar=r5
	e_add16i		r5,r5,Can_u32BaseAddress@l		# u32TempVar=r5 u32TempVar=r5
	lwzx		r0,r5,r0		# u16MBGlobalIndex=r0 u32TempVar=r5
	lwz		r4,Can_pCurrentConfig@l(r4)
	lwz		r4,4(r4)
	se_add		r7,r4
	lhz		r4,26(r7)
	se_add		r0,r4		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r0
	stwx		r6,r0,r0		# u16MBGlobalIndex=r0 u32MbConfig=r6
.L702:
#                 }
#             }
	.d2line		1544
.Llo147:
	diab.addi		r7,r3,1		# u16MBGlobalIndex=r3
	se_addi		r3,1		# u16MBGlobalIndex=r3 u16MBGlobalIndex=r3
	b		.L699
.L701:
# 
#             /*
#             The Can module shall track all individual enabling and disabling of  interrupts
#                 in other functions (i.e. Can_SetControllerMode), so that the correct interrupt enable state can be restored.
#             When Freeze mode (or Autosar equiv Stop mode) need to not participate on network ->
#                 no interrupt is required to be enabled.
#             */
#             /* Check if Ints are enabled by Can_EnableControllerInterrupts. */
#             if ( CAN_INTERRUPT_ENABLED == Can_ControllerStatuses[Controller].eInterruptMode )
	.d2line		1553
.Llo139:
	lis		r3,(Can_ControllerStatuses+220)@ha		# u16MBGlobalIndex=r3
.Llo140:
	e_add16i		r3,r3,(Can_ControllerStatuses+220)@l		# u16MBGlobalIndex=r3 u16MBGlobalIndex=r3
	rlwinm		r0,r31,0,24,31		# u16MBGlobalIndex=r0 Controller=r31
	e_mulli		r0,r0,232		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r0
	lwzx		r0,r3,r0		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r3
	se_cmpi		r0,1		# u16MBGlobalIndex=r0
	bc		0,2,.L685	# ne
#             {
#                 Can_FlexCan_DisableInterrupts(Controller);
	.d2line		1555
.Llo141:
	mr		r3,r31		# Controller=r3 Controller=r31
	bl		Can_FlexCan_DisableInterrupts
.L685:
#             }
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#     }
#     /* @violates @ref Can_Flexcan_c_REF_8 Results boolean operations whose results are maybe variant */
#     if (CAN_OK == eReturnValue)
	.d2line		1563
	se_cmpi		r28,0		# eReturnValue=r28
	bc		0,2,.L704	# ne
#     {
#         /* Set the Stop state to the controller. */
#         Can_ControllerStatuses[Controller].ControllerState = CAN_STOPPED;
	.d2line		1566
.Llo99:
	diab.li		r0,0		# u16MBGlobalIndex=r0
.Llo142:
	lis		r3,(Can_ControllerStatuses+224)@ha		# u16MBGlobalIndex=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# u16MBGlobalIndex=r3 u16MBGlobalIndex=r3
	rlwinm		r6,r31,0,24,31		# u32MbConfig=r6 Controller=r31
.Llo148:
	e_mulli		r6,r6,232		# u32MbConfig=r6 u32MbConfig=r6
.Llo149:
	stwx		r0,r3,r6		# u16MBGlobalIndex=r3 u16MBGlobalIndex=r0
#         /*Do not notify CanIf for bus off events*/
#         if((boolean)TRUE == canif_notification_required)
	.d2line		1568
.Llo100:
	rlwinm		r29,r29,0,24,31		# canif_notification_required=r29 canif_notification_required=r29
	se_cmpi		r29,1		# canif_notification_required=r29
	bc		0,2,.L704	# ne
#         {
#             CanIf_ControllerModeIndication(Controller, CANIF_CS_STOPPED);
	.d2line		1570
.Llo101:
	rlwinm		r3,r31,0,24,31		# u16MBGlobalIndex=r3 Controller=r31
	diab.li		r4,2
	bl		CanIf_ControllerModeIndication
.L704:
#         }   
#     }
#     
#     return eReturnValue;
	.d2line		1574
.Llo94:
	mr		r3,r28		# eReturnValue=r3 eReturnValue=r28
# }
	.d2line		1575
	.d2epilogue_begin
	lmw		r27,44(r1)		# offset r1+44  0x2c
	.d2_cfa_restore_list	3,10
.Llo105:
	lwz		r0,68(r1)		# u16MBGlobalIndex=r0
	mtspr		lr,r0		# u16MBGlobalIndex=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1072:
	.type		Can_FlexCan_SetControllerToStopMode,@function
	.size		Can_FlexCan_SetControllerToStopMode,.-Can_FlexCan_SetControllerToStopMode
# Number of nodes = 480

# Allocations for Can_FlexCan_SetControllerToStopMode
#	?a4		Controller
#	?a5		pCanControlerDescriptor
#	?a6		canif_notification_required
#	?a7		$$190
#	?a8		$$189
#	?a9		$$188
#	?a10		$$187
#	?a11		$$186
#	?a12		$$185
#	?a13		eReturnValue
#	?a14		u16MBGlobalIndex
#	?a15		u8HwOffset
#	?a16		u32MbConfig
#	?a17		u32TimeoutCount
#	?a18		u32TempVar
#	?a19		u8RegCount1
#	?a20		u32TempMCR
#	SP,8		u32TempIMASK
# FUNC (Std_ReturnType, CAN_CODE) Can_FlexCan_ResetController( VAR(uint8, AUTOMATIC) Controller)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3002,33
#$$ld
.L1101:

#$$bf	Can_FlexCan_ResetController,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_ResetController
	.d2_cfa_start __cie
Can_FlexCan_ResetController:
.Llo174:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# Controller=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Controller=r0 Controller=r3
	.d2prologue_end
# {
# 
#     /* Variable for return status. */
#     VAR(Std_ReturnType, AUTOMATIC) eReturnValue = (Std_ReturnType)E_OK;
	.d2line		3006
	diab.li		r31,0		# eReturnValue=r31
#     /* Timeout counter. */
#     VAR(uint32, AUTOMATIC)         u32TimeoutCount = 0U;
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)          u8HwOffset = 0U;
# 
#     /* Get the hardware offset for this controller. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset =  CanStatic_pControlerDescriptors[Controller].u8ControllerOffset;
	.d2line		3014
.Llo190:
	lis		r3,CanStatic_pControlerDescriptors@ha
.Llo175:
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)
.Llo176:
	rlwinm		r0,r0,0,24,31		# Controller=r0 Controller=r0
	e_mulli		r0,r0,20		# Controller=r0 Controller=r0
.Llo177:
	lbzx		r30,r3,r0		# u8HwOffset=r30
	mr		r30,r30		# u8HwOffset=r30 u8HwOffset=r30
# 
#     /* The re-initialization of controller start with a Soft-Reset. Test if Can is not ready -> can be in any of disable, Doze/Stop/Freeze modes. */
#     
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     if ( FLEXCAN_MCR_LPMACK_U32 == ((uint32)(REG_READ32( FLEXCAN_MCR(u8HwOffset))) & FLEXCAN_MCR_LPMACK_U32) )
	.d2line		3020
	lis		r3,Can_u32BaseAddress@ha
	e_add16i		r3,r3,Can_u32BaseAddress@l
	rlwinm		r0,r30,2,22,29		# Controller=r0 u8HwOffset=r30
	lwzx		r3,r3,r0
	lwz		r0,0(r3)		# Controller=r0
.Llo178:
	se_btsti		r0,11		# Controller=r0
	bc		1,2,.L819	# eq
#     {
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_04();
	.d2line		3022
.Llo179:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_04
#         /* Enable Can module. */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_CLEAR32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_MDIS_U32);
	.d2line		3026
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo192:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r0,r30,2,22,29		# Controller=r0 u8HwOffset=r30
	lwzx		r3,r3,r0		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# Controller=r0 u32TimeoutCount=r3
.Llo180:
	.diab.bclri		r0,0		# Controller=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 Controller=r0
#         
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_04();
	.d2line		3028
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_04
#         /* load local time-out variable with configured time-out value*/
#         u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		3030
.Llo181:
	diab.li		r3,2000		# u32TimeoutCount=r3
.L820:
#         
#         /* Wait until exit from low power mode */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         while ( (FLEXCAN_MCR_LPMACK_U32 == ((uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset)) & FLEXCAN_MCR_LPMACK_U32)) && \
	.d2line		3035
.Llo193:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r0,r30,2,22,29		# Controller=r0 u8HwOffset=r30
	lwzx		r4,r4,r0
	lwz		r0,0(r4)		# Controller=r0
.Llo182:
	se_btsti		r0,11		# Controller=r0
	bc		1,2,.L819	# eq
.Llo183:
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L819	# eq
#                 (u32TimeoutCount > (uint32)0x0U) \
#               )
#         {
#             /* MCR[LPM_ACK] still not set -> controller disable is in-progress. */
#             u32TimeoutCount--;
	.d2line		3040
	diab.addi		r0,r3,-1		# Controller=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
	b		.L820
.L819:
#         }
#     }
# 
#     /* Test for Hardware failure. */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     if ( FLEXCAN_MCR_LPMACK_U32 != ((uint32)(REG_READ32( FLEXCAN_MCR(u8HwOffset))) & FLEXCAN_MCR_LPMACK_U32) )
	.d2line		3047
.Llo194:
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo195:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r0,r30,2,22,29		# Controller=r0 u8HwOffset=r30
	lwzx		r3,r3,r0		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# Controller=r0 u32TimeoutCount=r3
.Llo184:
	se_btsti		r0,11		# Controller=r0
	bc		0,2,.L822	# ne
#     {
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_04();
	.d2line		3049
.Llo185:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_04
#         /* Execute Controller Reset. */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_SOFTRST_U32);
	.d2line		3053
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo196:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r0,r30,2,22,29		# Controller=r0 u8HwOffset=r30
	lwzx		r3,r3,r0		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# Controller=r0 u32TimeoutCount=r3
.Llo186:
	.diab.bseti		r0,6		# Controller=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 Controller=r0
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_04();
	.d2line		3054
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_04
#         
#         /* Wait the Reset end off. */
#         u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		3057
.Llo187:
	diab.li		r3,2000		# u32TimeoutCount=r3
.L823:
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         while ( (FLEXCAN_MCR_SOFTRST_U32 == ((uint32)(REG_READ32( FLEXCAN_MCR(u8HwOffset))) & FLEXCAN_MCR_SOFTRST_U32)) && \
	.d2line		3060
.Llo197:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r0,r30,2,22,29		# Controller=r0 u8HwOffset=r30
	lwzx		r4,r4,r0
	lwz		r0,0(r4)		# Controller=r0
.Llo188:
	se_btsti		r0,6		# Controller=r0
	bc		1,2,.L824	# eq
.Llo189:
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L824	# eq
#                 (u32TimeoutCount > (uint32)0x0U) \
#               )
#         {
#             /* MCR[SOFT_RST] still set -> reset in progress. */
#             u32TimeoutCount--;
	.d2line		3065
	diab.addi		r0,r3,-1		# Controller=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
	b		.L823
.L824:
#         }
# 
#         if ( (uint32)0x0U == u32TimeoutCount )
	.d2line		3068
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		0,2,.L826	# ne
#         {
#             eReturnValue = (Std_ReturnType)E_NOT_OK;
	.d2line		3070
.Llo198:
	diab.li		r31,1		# eReturnValue=r31
	b		.L826
.L822:
#         }
#     }
#     else
#     /* software timeout */
#     {
#         eReturnValue = (Std_ReturnType)E_NOT_OK;
	.d2line		3076
.Llo199:
	diab.li		r31,1		# eReturnValue=r31
.L826:
#     }
# 
#     return (eReturnValue);
	.d2line		3079
.Llo200:
	rlwinm		r3,r31,0,24,31		# u32TimeoutCount=r3 eReturnValue=r31
# }
	.d2line		3080
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo191:
	lwz		r0,36(r1)		# Controller=r0
	mtspr		lr,r0		# Controller=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1102:
	.type		Can_FlexCan_ResetController,@function
	.size		Can_FlexCan_ResetController,.-Can_FlexCan_ResetController
# Number of nodes = 130

# Allocations for Can_FlexCan_ResetController
#	?a4		Controller
#	?a5		$$201
#	?a6		$$200
#	?a7		eReturnValue
#	?a8		u32TimeoutCount
#	?a9		u8HwOffset
# FUNC (Std_ReturnType, CAN_CODE) Can_FlexCan_ChangeBaudrate( VAR(uint8, AUTOMATIC) Controller)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3097,33
#$$ld
.L1114:

#$$bf	Can_FlexCan_ChangeBaudrate,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_ChangeBaudrate
	.d2_cfa_start __cie
Can_FlexCan_ChangeBaudrate:
.Llo201:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo207:
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)		# pCanControlerDescriptor=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Controller=r31 Controller=r3
	.d2prologue_end
# {
#     /* Local copy of pointer to the controller descriptor. */
#     VAR(Can_PtrControlerDescriptorType, AUTOMATIC) pCanControlerDescriptor = NULL_PTR;
	.d2line		3100
	diab.li		r0,0		# pCanControlerDescriptor=r0
#     /* Pointer to the MB container structure. */
#     VAR(Can_PtrMBConfigContainerType, AUTOMATIC)   pCanMbConfigContainer = NULL_PTR;
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)           u8HwOffset = 0U;
# 
#     /* Variable for return status. */
#     VAR(Std_ReturnType, AUTOMATIC)  eResetReturn = (Std_ReturnType)E_OK;
#     /* Variable to hold the index of the current baudrate */
#     VAR(uint8, AUTOMATIC)           u8BaudrateIndex = 0U;
#     VAR(uint8, AUTOMATIC)           u8RegCount = 0U;
#     /* Timeout counter. */
#     VAR(uint32, AUTOMATIC)          u32TimeoutCount = 0U;
#     VAR(uint32, AUTOMATIC)          u32ValueControlRegister = 0U;
#     /* Max number of mb */
#     VAR(uint8, AUTOMATIC)           u8MbMax = 0U;
#     VAR(uint32, AUTOMATIC)          u32TempAddr;
#     VAR(uint32, AUTOMATIC)          u32TempAddrMax;
# 
#     /* Fill the local pointer copy with address of the Controller Descriptor.  */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     pCanControlerDescriptor = &(Can_pCurrentConfig->ControlerDescriptors[Controller]);
	.d2line		3121
.Llo208:
	rlwinm		r6,r31,0,24,31		# Controller=r31
	lis		r3,Can_pCurrentConfig@ha		# Controller=r3
	lwz		r4,Can_pCurrentConfig@l(r3)		# Controller=r3
	lwz		r30,12(r4)
	rlwinm		r0,r6,4,0,27		# pCanControlerDescriptor=r0
.Llo209:
	rlwinm		r4,r6,2,0,29
	subf		r4,r4,r0		# pCanControlerDescriptor=r0
	se_add		r4,r30
	mr		r30,r4		# pCanControlerDescriptor=r30 pCanControlerDescriptor=r4
#     pCanMbConfigContainer   = &(Can_pCurrentConfig->MBConfigContainer);
	.d2line		3122
	lwz		r29,Can_pCurrentConfig@l(r3)		# Controller=r3
	se_addi		r29,4
.Llo226:
	mr		r29,r29		# pCanMbConfigContainer=r29 pCanMbConfigContainer=r29
# 
#     /* Get the hardware offset for this controller. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[Controller].u8ControllerOffset;
	.d2line		3126
	lis		r3,CanStatic_pControlerDescriptors@ha		# Controller=r3
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# Controller=r3 Controller=r3
	e_mulli		r6,r6,20
	lbzx		r28,r3,r6		# Controller=r3
.Llo228:
	mr		r28,r28		# u8HwOffset=r28 u8HwOffset=r28
#     
#     /* Reset Controller. */
#     eResetReturn = Can_FlexCan_ResetController( Controller);
	.d2line		3129
	mr		r3,r31		# Controller=r3 Controller=r31
.Llo202:
	bl		Can_FlexCan_ResetController
.Llo210:
	mr		r27,r3		# eResetReturn=r27 eResetReturn=r3
# 
#     /* Get the index of the current baudrate */
#     u8BaudrateIndex = Can_ControllerStatuses[Controller].u8CurrentBaudRateIndex;
	.d2line		3132
.Llo233:
	lis		r3,(Can_ControllerStatuses+228)@ha		# Controller=r3
.Llo203:
	e_add16i		r3,r3,(Can_ControllerStatuses+228)@l		# Controller=r3 Controller=r3
	rlwinm		r6,r31,0,24,31		# Controller=r31
	e_mulli		r6,r6,232
	lbzx		r26,r3,r6		# Controller=r3
.Llo235:
	mr		r26,r26		# u8BaudrateIndex=r26 u8BaudrateIndex=r26
# 
#     if (eResetReturn == (Std_ReturnType)E_OK)
	.d2line		3134
	rlwinm		r3,r27,0,24,31		# Controller=r3 eResetReturn=r27
	se_cmpi		r3,0		# Controller=r3
	bc		0,2,.L834	# ne
#     {
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3136
.Llo204:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#          /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#          /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_MDIS_U32); 
	.d2line		3139
.Llo205:
	lis		r3,Can_u32BaseAddress@ha		# Controller=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# Controller=r3 Controller=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r3,r4		# Controller=r3 Controller=r3
	lwz		r0,0(r3)		# pCanControlerDescriptor=r0 Controller=r3
	.diab.bseti		r0,0		# pCanControlerDescriptor=r0
	stw		r0,0(r3)		# Controller=r3 pCanControlerDescriptor=r0
#         
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3141
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
#         /* Load local time-out variable with configured time-out value*/
#         u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		3143
	diab.li		r3,2000		# u32TimeoutCount=r3
.L835:
#         /* After controller disable, wait until low power mode acknowledgement bit to set*/
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         while ( (FLEXCAN_MCR_LPMACK_U32 != ((uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset)) & FLEXCAN_MCR_LPMACK_U32)) && \
	.d2line		3147
.Llo240:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r5,r28,2,22,29		# u8HwOffset=r28
	lwzx		r4,r4,r5
	lwz		r0,0(r4)		# pCanControlerDescriptor=r0
	se_btsti		r0,11		# pCanControlerDescriptor=r0
	bc		0,2,.L836	# ne
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L836	# eq
#                 (u32TimeoutCount > (uint32)0x0U) \
#               )
#         {
#             /* MCR[LPM_ACK] still not set -> controller disable is in-progress. */
#             u32TimeoutCount--;
	.d2line		3152
	diab.addi		r0,r3,-1		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
	b		.L835
.L836:
#         }
#         
# #if (CAN_DUAL_CLOCK_MODE == STD_ON)
#         if (Can_ControllerStatuses[Controller].CanClockMode == CAN_ALTERNATE)
#         {
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             u32ValueControlRegister = (uint32)(pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].u32ControlRegisterAlternate);
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             u32ValueControlRegister |= (uint32)(CanStatic_pControlerDescriptors[Controller].pStaticControllerBaudrateConfigsPtr[u8BaudrateIndex].u32ControlRegisterAlternate);
#         }
#         else
#         {
# #endif /* (CAN_DUAL_CLOCK_MODE == STD_ON) */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             u32ValueControlRegister = (uint32)(pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].u32ControlRegister);
	.d2line		3167
.Llo241:
	lwz		r3,4(r30)		# u32TimeoutCount=r3 pCanControlerDescriptor=r30
.Llo242:
	rlwinm		r0,r26,3,21,28		# pCanControlerDescriptor=r0 u8BaudrateIndex=r26
	lwzx		r25,r3,r0		# pCanControlerDescriptor=r25 u32TimeoutCount=r3
.Llo267:
	mr		r25,r25		# u32ValueControlRegister=r25 u32ValueControlRegister=r25
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             u32ValueControlRegister |= (uint32)(CanStatic_pControlerDescriptors[Controller].pStaticControllerBaudrateConfigsPtr[u8BaudrateIndex].u32ControlRegister);
	.d2line		3169
	lis		r3,CanStatic_pControlerDescriptors@ha		# u32TimeoutCount=r3
	lwz		r0,CanStatic_pControlerDescriptors@l(r3)		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	rlwinm		r3,r31,0,24,31		# u32TimeoutCount=r3 Controller=r31
	e_mulli		r3,r3,20		# u32TimeoutCount=r3 u32TimeoutCount=r3
	se_add		r3,r0		# u32TimeoutCount=r3 u32TimeoutCount=r3 pCanControlerDescriptor=r0
	lwz		r3,4(r3)		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r0,r26,2,22,29		# pCanControlerDescriptor=r0 u8BaudrateIndex=r26
	lwzx		r0,r3,r0		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	or		r0,r0,r25		# pCanControlerDescriptor=r0 pCanControlerDescriptor=r0 u32ValueControlRegister=r25
	mr		r25,r0		# u32ValueControlRegister=r25 u32ValueControlRegister=r0
# #if (CAN_DUAL_CLOCK_MODE == STD_ON)
#         }
# #endif /* (CAN_DUAL_CLOCK_MODE == STD_ON) */
# 
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3174
.Llo268:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         REG_WRITE32( FLEXCAN_CTRL(u8HwOffset), (uint32)(((uint32)(u32ValueControlRegister & CAN_CLKSRC_CONFIG_MASK_U32)) & FLEXCAN_CTRL_CONFIG_MASK_U32));
	.d2line		3178
.Llo243:
	diab.li		r0,0		# pCanControlerDescriptor=r0
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo244:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r3,r4		# u32TimeoutCount=r3 u32TimeoutCount=r3
	stw		r0,4(r3)		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#         
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3180
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
#     #if (CAN_CBT_ENABLE == STD_ON)
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#         if ((pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerCbtRegister.u32CanCbtEnable) == FLEXCAN_CBT_BTF_U32)
#         {
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             REG_WRITE32( FLEXCAN_CBT(u8HwOffset), (uint32)(((uint32)(pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerCbtRegister.u32CanCbtRegister))));
#         }
#     #endif
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3191
.Llo245:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#         /* Enable access to module - clearing MCR[MDIS] bit. */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_CLEAR32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_MDIS_U32);
	.d2line		3195
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo246:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r3,r4		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	.diab.bclri		r0,0		# pCanControlerDescriptor=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#         
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3197
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
#         
#         u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		3199
.Llo247:
	diab.li		r3,2000		# u32TimeoutCount=r3
.L837:
#         /*Wait until exit from low power mode*/
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         while ( (FLEXCAN_MCR_LPMACK_U32 == ((uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset)) & FLEXCAN_MCR_LPMACK_U32)) && \
	.d2line		3203
.Llo248:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r5,r28,2,22,29		# u8HwOffset=r28
	lwzx		r4,r4,r5
	lwz		r0,0(r4)		# pCanControlerDescriptor=r0
	se_btsti		r0,11		# pCanControlerDescriptor=r0
	bc		1,2,.L838	# eq
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L838	# eq
#                 (u32TimeoutCount > (uint32)0x0U) \
#               )
#         {
#             u32TimeoutCount--;
	.d2line		3207
	diab.addi		r0,r3,-1		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
	b		.L837
.L838:
#         }  
#         
#         /* Enter in freeze mode  */
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3211
.Llo249:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_FRZ_U32);
	.d2line		3214
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r5,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r4,r5		# u32TimeoutCount=r3
.Llo250:
	lwz		r0,0(r3)		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	.diab.bseti		r0,1		# pCanControlerDescriptor=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#         
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_HALT_U32);
	.d2line		3218
	lwzx		r3,r4,r5		# u32TimeoutCount=r3
	lwz		r0,0(r3)		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	.diab.bseti		r0,3		# pCanControlerDescriptor=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#         
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3220
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
#         
#         u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		3222
.Llo251:
	diab.li		r3,2000		# u32TimeoutCount=r3
.L839:
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         while ( (FLEXCAN_MCR_FRZACK_U32 != ((uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset)) & FLEXCAN_MCR_FRZACK_U32)) && \
	.d2line		3225
.Llo252:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r5,r28,2,22,29		# u8HwOffset=r28
	lwzx		r4,r4,r5
	lwz		r0,0(r4)		# pCanControlerDescriptor=r0
	se_btsti		r0,7		# pCanControlerDescriptor=r0
	bc		0,2,.L840	# ne
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L840	# eq
#                 (u32TimeoutCount > (uint32)0x0U) \
#               )
#         {
#             u32TimeoutCount--;
	.d2line		3229
	diab.addi		r0,r3,-1		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
	b		.L839
.L840:
#         }
# 
#     #if (CAN_FD_MODE_ENABLE == STD_ON)
#         /* The configuration for Message Buffer Data Size (MBDS)*/
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         if ((uint32)(FLEXCAN_MCR_FDEN_U32) == (pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerFD.u32CanFdEnable))
#         {
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_RMW32( FLEXCAN_FDCTRL(u8HwOffset), FLEXCAN_FDCTRL_MBDSR_MASK_U32, pCanControlerDescriptor->u32MBBlockSize); 
#         }
#     #endif /* (CAN_FD_MODE_ENABLE == STD_ON) */
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3242
.Llo236:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_SRXDIS_U32);
	.d2line		3245
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo253:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r3,r4		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	.diab.bseti		r0,14		# pCanControlerDescriptor=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#         
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3247
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
#         
#         Can_ControllerStatuses[Controller].ControllerState = CAN_STOPPED;
	.d2line		3249
.Llo254:
	diab.li		r0,0		# pCanControlerDescriptor=r0
	lis		r3,(Can_ControllerStatuses+224)@ha		# u32TimeoutCount=r3
.Llo255:
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r6,r31,0,24,31		# Controller=r31
	e_mulli		r6,r6,232
	stwx		r0,r3,r6		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#     #if (CAN_FD_MODE_ENABLE == STD_ON)
# 
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         if ((uint32)(FLEXCAN_MCR_FDEN_U32) == (pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerFD.u32CanFdEnable))
#         {
#             SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
#             
# #ifdef ERR_IPV_FLEXCAN_0016
#     #if (ERR_IPV_FLEXCAN_0016 == STD_ON)
#             Can_FlexCan_SetFDENBitErrata(u8HwOffset);
#     #endif
# #else
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), (uint32)(FLEXCAN_MCR_FDEN_U32));
# #endif
# 
#             SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
#             
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             REG_WRITE32(FLEXCAN_FDCBT(u8HwOffset), (uint32)(((uint32)(pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerFD.u32CanFdCbtRegister)) ));
#             
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             if (FLEXCAN_FDCTRL_FDRATE_U32 == (pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerFD.u32CanControllerTxBitRateSwitch))
#             {
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 REG_BIT_SET32( FLEXCAN_FDCTRL(u8HwOffset), (uint32)(FLEXCAN_FDCTRL_FDRATE_U32) );
#             }
#             else
#             {
#               /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#               /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 REG_BIT_CLEAR32( FLEXCAN_FDCTRL(u8HwOffset), (uint32)(FLEXCAN_FDCTRL_FDRATE_U32));
#             }
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             REG_RMW32(FLEXCAN_FDCTRL(u8HwOffset), FLEXCAN_FDCTRL_TDCOFF_U32,(uint32)((uint32)(pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerFD.u32CanControllerTrcvDelayCompensation)<<FLEXCAN_FDCTRL_TDCOFF_OFFSET_U8));
#       #ifndef CAN_NOT_SUPPORT_CTRL2_RXFGMASK
#           #if ( (CAN_CONTROLLER_FD_ISO_CANFD == STD_ON) || (CAN_CONTROLLER_FD_PREXCEN == STD_ON) || (CAN_CONTROLLER_FD_EDFLTDIS == STD_ON))
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             /* @violates @ref Can_Flexcan_c_REF_10 Violates MISRA 2004 Required Rule 12.4, The right-hand operand of a logical and or operator shall not contain side effects. */
#             /* @violates @ref Can_Flexcan_c_REF_11 Violates MISRA 2004 Required Rule 10.1, The value of an expression of integer type shall not be implicitly converted to a different */
#             REG_RMW32(FLEXCAN_CTRL2(u8HwOffset), (FLEXCAN_FD_CTRL2_STFCNTEN_U32) | (FLEXCAN_FD_CTRL2_EDFLTDIS_U32) | (FLEXCAN_FD_CTRL2_PREXCEN_U32), ((uint32)(pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerFD.u32CanFdCTRL2Register)));
#           #endif
#       #endif /* defined CAN_NOT_SUPPORT_CTRL2_RXFGMASK */
#         }       
#     #endif
# 
# #ifndef CAN_NOT_SUPPORT_CTRL2_RXFGMASK
#         /* Update the value of the CTRL2[TASD]] bit field */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         REG_RMW32(FLEXCAN_CTRL2(u8HwOffset), FLEXCAN_CTRL2_TASD_U32, (uint32)(((uint32)pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].u8TxArbitrationStartDelay)) << FLEXCAN_CTRL2_TASD_SHIFT_U32);
	.d2line		3311
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r5,r28,2,22,29		# u8HwOffset=r28
	lwzux		r4,r3,r5		# u32TimeoutCount=r3
	lwz		r7,52(r4)
	rlwinm		r7,r7,0,13,7
	lwz		r3,4(r30)		# u32TimeoutCount=r3 pCanControlerDescriptor=r30
.Llo237:
	rlwinm		r26,r26,3,21,28		# u8BaudrateIndex=r26 u8BaudrateIndex=r26
	se_add		r26,r3		# u8BaudrateIndex=r26 u8BaudrateIndex=r26 u32TimeoutCount=r3
	lbz		r3,4(r26)		# u32TimeoutCount=r3 u8BaudrateIndex=r26
	rlwinm		r3,r3,19,5,12		# u32TimeoutCount=r3 u32TimeoutCount=r3
	or		r7,r7,r3		# u32TimeoutCount=r3
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwzux		r4,r3,r5		# u32TimeoutCount=r3
	stw		r7,52(r4)
# #endif /* defined CAN_NOT_SUPPORT_CTRL2_RXFGMASK */
# /*
# * @ errata ERR_IPV_FLEXCAN_0008 software errata FlexCAN: Non-Correctable Errors In FlexCAN Access 
# *        Put Device In Freeze Mode bit not working properly
# */            
# #ifndef CAN_NOT_SUPPORT_CTRL2_RXFGMASK
#     #if (CAN_MEMORY_ECC_SUPPORT == STD_ON) 
#         /* Enable that the MECR register is updated */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_CTRL2(u8HwOffset), FLEXCAN_CTRL2_ECRWRE_U32);
	.d2line		3322
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwzx		r4,r3,r5		# u32TimeoutCount=r3
	lwz		r7,52(r4)
	.diab.bseti		r7,2
	stw		r7,52(r4)
#         /* Enables writes on MECR register */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_CLEAR32( FLEXCAN_MECR(u8HwOffset), FLEXCAN_MECR_ECRWRDIS_U32);
	.d2line		3326
	lwzx		r4,r3,r5		# u32TimeoutCount=r3
	lwz		r7,2784(r4)
	.diab.bclri		r7,0
	stw		r7,2784(r4)
#         /*Disable Error Correction  */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_MECR(u8HwOffset), FLEXCAN_MECR_ECCDIS_U32);
	.d2line		3330
	lwzx		r4,r3,r5		# u32TimeoutCount=r3
	lwz		r7,2784(r4)
	.diab.bseti		r7,23
	stw		r7,2784(r4)
#         /* Disables writes on MECR register */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_MECR(u8HwOffset), FLEXCAN_MECR_ECRWRDIS_U32);
	.d2line		3334
	lwzx		r4,r3,r5		# u32TimeoutCount=r3
	lwz		r7,2784(r4)
	.diab.bseti		r7,0
	stw		r7,2784(r4)
#         /* Disable update on MECR register */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_CLEAR32( FLEXCAN_CTRL2(u8HwOffset), FLEXCAN_CTRL2_ECRWRE_U32);
	.d2line		3338
	lwzx		r3,r3,r5		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r4,52(r3)		# u32TimeoutCount=r3
	.diab.bclri		r4,2
	stw		r4,52(r3)		# u32TimeoutCount=r3
#     #endif
# #endif /* defined CAN_NOT_SUPPORT_CTRL2_RXFGMASK */
# 
#     #ifdef ERR_IPV_FLEXCAN_0015
#     #if(ERR_IPV_FLEXCAN_0015==STD_ON)
#         /* If RFIFO is enabled then the first MBs will be used by the FIFO, initialize the
#         u32CancelMBIndex to the value of Max. MB supported to avoid the false TX-MB cancellation */
#         if ( CAN_CONTROLLERCONFIG_RXFIFO_U32 == (pCanControlerDescriptor->u32Options & CAN_CONTROLLERCONFIG_RXFIFO_U32))
#         {
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             Can_ControllerStatuses[Controller].u32CancelMBIndex = u8MessageBufferControllerSize[CanStatic_pControlerDescriptors[Controller].u8ControllerOffset];
#         }
#         else /* RxFIFO is disabled */
#         {
#             /* Init the Cancelled MB index with a precalculated value - out of range for every controller. */
#             Can_ControllerStatuses[Controller].u32CancelMBIndex = pCanMbConfigContainer->uMessageBufferConfigCount;
#         }
#     #else
#         #error : the define ERR_IPV_FLEXCAN_0015 must not be STD_OFF
#     #endif
# #else
#         /* Init the Cancelled MB index with a precalculated value - out of range for every controller. */
#         Can_ControllerStatuses[Controller].u32CancelMBIndex = pCanMbConfigContainer->uMessageBufferConfigCount;
	.d2line		3361
	lbz		r4,4(r29)		# pCanMbConfigContainer=r29
	lis		r3,(Can_ControllerStatuses+217)@ha		# u32TimeoutCount=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+217)@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	stbux		r4,r3,r6		# u32TimeoutCount=r3
# #endif
#         /* Clear Tx guard flags. */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         for (u8RegCount=(uint8)0; u8RegCount< (uint8)((uint8)u8MessageBufferControllerSize[CanStatic_pControlerDescriptors[Controller].u8ControllerOffset] >> FLEXCAN_MB_SHIFT5BIT_U8) ;u8RegCount++)
	.d2line		3365
	diab.li		r29,0		# pCanMbConfigContainer=r29
.L841:
.Llo227:
	rlwinm		r0,r29,0,24,31		# pCanControlerDescriptor=r0 u8RegCount=r29
	lis		r3,u8MessageBufferControllerSize@ha		# u32TimeoutCount=r3
.Llo256:
	e_add16i		r3,r3,u8MessageBufferControllerSize@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lis		r4,CanStatic_pControlerDescriptors@ha
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)
	rlwinm		r6,r31,0,24,31		# Controller=r31
	e_mulli		r6,r6,20
	lbzx		r4,r4,r6
	lbzx		r3,r3,r4		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r3,r3,27,24,31		# u32TimeoutCount=r3 u32TimeoutCount=r3
	se_cmp		r0,r3		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	bc		0,0,.L843	# ge
#         {
#             SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3367
.Llo257:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             Can_ControllerStatuses[Controller].u32TxGuard[u8RegCount] = (uint32)0x0UL;
	.d2line		3370
	diab.li		r0,0		# pCanControlerDescriptor=r0
	lis		r3,Can_ControllerStatuses@ha		# u32TimeoutCount=r3
.Llo258:
	e_add16i		r3,r3,Can_ControllerStatuses@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r6,r31,0,24,31		# Controller=r31
	e_mulli		r6,r6,232
	se_add		r3,r6		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r4,r29,2,22,29		# u8RegCount=r29
	stwx		r0,r3,r4		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#             
#             SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3372
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
# #ifdef ERR_IPV_FLEXCAN_0015
#     #if(ERR_IPV_FLEXCAN_0015==STD_ON)
#         #if (CAN_MAXMB_SUPPORTED == FLEXCAN_MB_64_U8)
#             Can_ControllerStatuses[Controller].u32TxCancelFlag[u8RegCount] = (PduIdType)0x0UL;
#         #else
#             Can_ControllerStatuses[Controller].u32TxCancelFlag[u8RegCount] = (uint32)0x0UL;
#         #endif
#     #else
#         #error : the define ERR_IPV_FLEXCAN_0015 must not be STD_OFF
#     #endif
# #endif
#         }
	.d2line		3384
.Llo259:
	diab.addi		r0,r29,1		# pCanControlerDescriptor=r0 u8RegCount=r29
	se_addi		r29,1		# u8RegCount=r29 u8RegCount=r29
	b		.L841
.L843:
#         
#         
# #if (CAN_BCC_SUPPORT_ENABLE == STD_ON)
#         /* Check if BCC support is enabled in configuration */
#         if ( CAN_CONTROLLERCONFIG_BCC_EN_U32 != (pCanControlerDescriptor->u32Options & CAN_CONTROLLERCONFIG_BCC_EN_U32) )
#         {
# #endif /* (CAN_BCC_SUPPORT_ENABLE == STD_ON) */
#             SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3392
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#             /* Enable individual MB filter masking. */
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_BCC_U32);
	.d2line		3396
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo260:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r3,r4		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
	.diab.bseti		r0,15		# pCanControlerDescriptor=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#             SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3397
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
# #if (CAN_BCC_SUPPORT_ENABLE == STD_ON)
#         }
# #endif /* (CAN_BCC_SUPPORT_ENABLE == STD_ON) */
# 
#         /* FlexCan uses local priority feature - extend the ID during the arbitration process with PRIO field from MB reg. */
#         if ( CAN_CONTROLLERCONFIG_LPRIO_EN_U32 == (pCanControlerDescriptor->u32Options & CAN_CONTROLLERCONFIG_LPRIO_EN_U32) )
	.d2line		3403
.Llo261:
	lwz		r0,8(r30)		# pCanControlerDescriptor=r0 pCanControlerDescriptor=r30
	se_btsti		r0,24		# pCanControlerDescriptor=r0
	bc		1,2,.L844	# eq
#         {
#             SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3405
.Llo211:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_LPRIOEN_U32);
	.d2line		3408
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo262:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r3,r4		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
.Llo212:
	.diab.bseti		r0,18		# pCanControlerDescriptor=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#             
#             SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3410
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
.L844:
#         }
#         
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3413
.Llo213:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         REG_WRITE32( FLEXCAN_CTRL(u8HwOffset), (uint32)(((uint32)u32ValueControlRegister) & FLEXCAN_CTRL_CONFIG_MASK_U32));
	.d2line		3417
	rlwinm		r0,r25,0,24,21		# pCanControlerDescriptor=r0 u32ValueControlRegister=r25
.Llo214:
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo263:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r3,r4		# u32TimeoutCount=r3 u32TimeoutCount=r3
	stw		r0,4(r3)		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#         
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3419
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
#     #if (CAN_CBT_ENABLE == STD_ON)
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         if ((pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerCbtRegister.u32CanCbtEnable) == FLEXCAN_CBT_BTF_U32)
#         {
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_WRITE32( FLEXCAN_CBT(u8HwOffset), (uint32)(((uint32)(pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerCbtRegister.u32CanCbtRegister))));
#         }
#     #endif
# 
#         /* Loop Back Mode configuration. Clear also the MCR[SRCXDIS] to allow receiving frames transmitted by itself. */
#          /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#         if ( FLEXCAN_CTRL_LPB_U32 == (u32ValueControlRegister & FLEXCAN_CTRL_LPB_U32) )
	.d2line		3433
.Llo215:
	se_btsti		r25,19		# u32ValueControlRegister=r25
	bc		1,2,.L845	# eq
#         {
#             SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3435
.Llo269:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_BIT_CLEAR32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_SRXDIS_U32);
	.d2line		3438
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo264:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r3,r4		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# pCanControlerDescriptor=r0 u32TimeoutCount=r3
.Llo216:
	.diab.bclri		r0,14		# pCanControlerDescriptor=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 pCanControlerDescriptor=r0
#             
#             SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3440
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
.L845:
#         }
#         
#         u32TempAddr = CAN_GET_BASE_ADDRESS(u8HwOffset) + FLEXCAN_MB_OFFSET_U32;
	.d2line		3443
.Llo217:
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo265:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r3,r4		# u32TimeoutCount=r3 u32TimeoutCount=r3
.Llo280:
	diab.addi		r3,r3,128		# u32TempAddr=r3 u32TimeoutCount=r3
#         /* @violates @ref Can_Flexcan_c_REF_11 Violates MISRA 2004 Required Rule 10.1, The value of an expression of integer type shall not be implicitly converted to a different */
#         u32TempAddrMax = u32TempAddr + (uint32)((uint32)u8MessageBufferControllerSize[u8HwOffset] * (uint32)16U);
	.d2line		3445
.Llo266:
	lis		r4,u8MessageBufferControllerSize@ha
	e_add16i		r4,r4,u8MessageBufferControllerSize@l
	rlwinm		r5,r28,0,24,31		# u8HwOffset=r28
	lbzx		r0,r4,r5		# pCanControlerDescriptor=r0
.Llo218:
	rlwinm		r0,r0,4,20,27		# pCanControlerDescriptor=r0 pCanControlerDescriptor=r0
	add		r4,r0,r3		# pCanControlerDescriptor=r0 u32TempAddr=r3
.Llo282:
	mr		r4,r4		# u32TempAddrMax=r4 u32TempAddrMax=r4
.L846:
#         
#         while(u32TempAddr < u32TempAddrMax)
	.d2line		3447
.Llo219:
	se_cmpl		r3,r4		# u32TempAddr=r3 u32TempAddrMax=r4
	bc		0,0,.L847	# ge
#         {
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_WRITE32( u32TempAddr, (uint32)0U);
	.d2line		3451
	diab.li		r0,0		# pCanControlerDescriptor=r0
.Llo220:
	stw		r0,0(r3)		# u32TempAddr=r3 pCanControlerDescriptor=r0
#             u32TempAddr = u32TempAddr + 4U;
	.d2line		3452
	diab.addi		r0,r3,4		# pCanControlerDescriptor=r0 u32TempAddr=r3
.Llo221:
	se_addi		r3,4		# u32TempAddr=r3 u32TempAddr=r3
	b		.L846
.L847:
#         }
#         /* Stage1: init RxFifo ******************************************************************** */
# 
# #if (CAN_RXFIFO_ENABLE == STD_ON)
#         Can_FlexCan_InitRxFiFo(Controller, u8HwOffset);
# #endif /* (CAN_RXFIFO_ENABLE == STD_ON) */
# 
#         /* Stage2: Init Rx and Tx MBs ******************************************************************** */
#         Can_FlexCan_InitReceiveMBs ( Controller, u8HwOffset);
	.d2line		3461
.Llo281:
	mr		r3,r31		# Controller=r3 Controller=r31
	mr		r4,r28		# u8HwOffset=r4 u8HwOffset=r28
	bl		Can_FlexCan_InitReceiveMBs
#     
#         Can_FlexCan_InitTransmitMBs(Controller, u8HwOffset);
	.d2line		3463
	mr		r3,r31		# Controller=r3 Controller=r31
	mr		r4,r28		# u8HwOffset=r4 u8HwOffset=r28
	bl		Can_FlexCan_InitTransmitMBs
# 
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         if(Can_pControlerDescriptors[Controller].u8MaxMBCount > 0U)
	.d2line		3466
	rlwinm		r6,r31,0,24,31		# Controller=r31
	lis		r3,Can_pControlerDescriptors@ha		# Controller=r3
	lwz		r3,Can_pControlerDescriptors@l(r3)		# Controller=r3 Controller=r3
	rlwinm		r0,r6,4,0,27		# pCanControlerDescriptor=r0
.Llo222:
	se_slwi		r6,2
	subf		r6,r6,r0		# pCanControlerDescriptor=r0
	lbzx		r0,r3,r6		# pCanControlerDescriptor=r0 Controller=r3
	se_cmpi		r0,0		# pCanControlerDescriptor=r0
	bc		1,2,.L848	# eq
#         {
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             u8MbMax = Can_pControlerDescriptors[Controller].u8MaxMBCount - 1U;
	.d2line		3469
.Llo223:
	rlwinm		r6,r31,0,24,31		# Controller=r31
	lis		r3,Can_pControlerDescriptors@ha		# Controller=r3
	lwz		r3,Can_pControlerDescriptors@l(r3)		# Controller=r3 Controller=r3
	rlwinm		r0,r6,4,0,27		# pCanControlerDescriptor=r0
.Llo224:
	se_slwi		r6,2
	subf		r6,r6,r0		# pCanControlerDescriptor=r0
	lbzx		r3,r3,r6		# Controller=r3 Controller=r3
	diab.addi		r0,r3,255		# u8MbMax=r0 Controller=r3
.Llo225:
	b		.L849
.L848:
#         }
#         else
#         {
#             u8MbMax = 0U;
	.d2line		3473
.Llo270:
	diab.li		r0,0		# u8MbMax=r0
.L849:
#         }
#         /* Set the number of MBs configured for this controller (Rx + Tx MBs). */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_RMW32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_MAXMB_U32, ((uint32)u8MbMax)) ;
	.d2line		3478
.Llo271:
	lis		r3,Can_u32BaseAddress@ha		# Controller=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# Controller=r3 Controller=r3
	rlwinm		r5,r28,2,22,29		# u8HwOffset=r28
	lwzux		r4,r3,r5		# u8HwOffset=r4 Controller=r3
	lwz		r3,0(r4)		# Controller=r3 u8HwOffset=r4
	rlwinm		r3,r3,0,0,25		# Controller=r3 Controller=r3
	rlwinm		r0,r0,0,24,31		# u8MbMax=r0 u8MbMax=r0
	or		r0,r0,r3		# u8MbMax=r0 u8MbMax=r0 Controller=r3
	lis		r3,Can_u32BaseAddress@ha		# Controller=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# Controller=r3 Controller=r3
	lwzx		r3,r3,r5		# Controller=r3 Controller=r3
	stw		r0,0(r3)		# Controller=r3 u8MbMax=r0
# #ifdef CAN_ENABLE_USER_MODE_SUPPORT
#     #if (STD_ON == CAN_ENABLE_USER_MODE_SUPPORT)
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_CLEAR32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_SUPV_U32);
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
#     #endif
# #endif
# 
# #ifdef ERR_IPV_FLEXCAN_0015
#       #if(ERR_IPV_FLEXCAN_0015==STD_ON)  
#     /* Do not set the Abort Enable bit of the MCR */
#       #else
#         #error : the define ERR_IPV_FLEXCAN_0015 must not be STD_OFF
#       #endif
# #else
#     #if (CAN_HW_TRANSMIT_CANCELLATION == STD_ON)
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3497
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05
#         /* Abort Enable: Tx Cancelation supported and used for this Controller. */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_AEN_U32);
	.d2line		3501
.Llo272:
	lis		r3,Can_u32BaseAddress@ha		# Controller=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# Controller=r3 Controller=r3
	rlwinm		r4,r28,2,22,29		# u8HwOffset=r4 u8HwOffset=r28
	lwzx		r3,r3,r4		# Controller=r3 Controller=r3
	lwz		r0,0(r3)		# u8MbMax=r0 Controller=r3
.Llo273:
	.diab.bseti		r0,19		# u8MbMax=r0
	stw		r0,0(r3)		# Controller=r3 u8MbMax=r0
#         
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05();
	.d2line		3503
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05
#     #endif /* (CAN_HW_TRANSMIT_CANCELLATION==STD_ON) */
# #endif
# 
#         /* Pre-calculated MB INT masks (used in Can_EnableControllerInterrupts) - If events are set for polling mode these bits are not set.
#             Clear all INTs flags  .. for MBs (w1c bits). */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         for (u8RegCount=(uint8)0; u8RegCount< (uint8)((uint8)u8MessageBufferControllerSize[CanStatic_pControlerDescriptors[Controller].u8ControllerOffset] >> FLEXCAN_MB_SHIFT5BIT_U8);u8RegCount++)
	.d2line		3510
.Llo274:
	diab.li		r3,0		# u8RegCount=r3
.L850:
.Llo238:
	rlwinm		r0,r3,0,24,31		# u8MbMax=r0 u8RegCount=r3
.Llo275:
	lis		r4,u8MessageBufferControllerSize@ha		# u8HwOffset=r4
	e_add16i		r4,r4,u8MessageBufferControllerSize@l		# u8HwOffset=r4 u8HwOffset=r4
	lis		r5,CanStatic_pControlerDescriptors@ha
	lwz		r5,CanStatic_pControlerDescriptors@l(r5)
	rlwinm		r6,r31,0,24,31		# Controller=r31
	e_mulli		r6,r6,20
	lbzx		r5,r5,r6
	lbzx		r4,r4,r5		# u8HwOffset=r4 u8HwOffset=r4
	rlwinm		r4,r4,27,24,31		# u8HwOffset=r4 u8HwOffset=r4
	se_cmp		r0,r4		# u8MbMax=r0 u8HwOffset=r4
	bc		0,0,.L852	# ge
#         {
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_WRITE32( Can_IflagImask[u8RegCount][u8HwOffset].u32CanIflag, (uint32)(FLEXCAN_32BITMASK_U32) );
	.d2line		3514
.Llo276:
	diab.li		r0,-1		# u8MbMax=r0
.Llo277:
	lis		r4,Can_IflagImask@ha		# u8HwOffset=r4
	e_add16i		r4,r4,Can_IflagImask@l		# u8HwOffset=r4 u8HwOffset=r4
	rlwinm		r5,r3,5,19,26		# u8RegCount=r3
	se_add		r4,r5		# u8HwOffset=r4 u8HwOffset=r4
	rlwinm		r5,r28,3,21,28		# u8HwOffset=r28
	lwzx		r4,r4,r5		# u8HwOffset=r4 u8HwOffset=r4
	stw		r0,0(r4)		# u8HwOffset=r4 u8MbMax=r0
#         }
	.d2line		3515
	diab.addi		r0,r3,1		# u8MbMax=r0 u8RegCount=r3
.Llo278:
	se_addi		r3,1		# u8RegCount=r3 u8RegCount=r3
	b		.L850
.L852:
#         
# 
#         /* Clear bits for Tx/Rx/BusOff/Err/(w1c bits). */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_WRITE32( FLEXCAN_ESR(u8HwOffset), (uint32)(((uint32)(FLEXCAN_ESR_BOFFINT_U32 | FLEXCAN_ESR_ERRINT_U32 | FLEXCAN_ESR_WAK_INT_U32)) & FLEXCAN_ESR_CONFIG_MASK_U32));
	.d2line		3521
.Llo229:
	diab.li		r0,6		# u8MbMax=r0
.Llo279:
	lis		r3,Can_u32BaseAddress@ha		# u8RegCount=r3
.Llo239:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8RegCount=r3 u8RegCount=r3
.Llo230:
	rlwinm		r28,r28,2,22,29		# u8HwOffset=r28 u8HwOffset=r28
.Llo231:
	lwzux		r4,r3,r28		# u8HwOffset=r4 u8RegCount=r3
.Llo232:
	stw		r0,32(r4)		# u8HwOffset=r4 u8MbMax=r0
# 
#         /* Clear the Error Counters Register. */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_WRITE32( FLEXCAN_ECR(u8HwOffset), (uint32)(((uint32)0UL) & FLEXCAN_ECR_CONFIG_MASK_U32));
	.d2line		3526
	diab.li		r0,0		# u8MbMax=r0
	lis		r3,Can_u32BaseAddress@ha		# u8RegCount=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8RegCount=r3 u8RegCount=r3
	lwzux		r4,r3,r28		# u8HwOffset=r4 u8RegCount=r3
	stw		r0,28(r4)		# u8HwOffset=r4 u8MbMax=r0
# 
# 
#         /* Release the internal lock. Reading the Free Running Timer is not mandatory. If not executed the MB remains locked,
#             unless the CPU reads the C/S word of another MB.*/
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_READ32( FLEXCAN_TIMER(u8HwOffset));
	.d2line		3533
	lis		r3,Can_u32BaseAddress@ha		# u8RegCount=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8RegCount=r3 u8RegCount=r3
	lwzx		r3,r3,r28		# u8RegCount=r3 u8RegCount=r3
	lwz		r0,8(r3)		# u8MbMax=r0 u8RegCount=r3
.L834:
# 
#     } /* (eResetReturn == E_OK) */
#     
#     return eResetReturn;
	.d2line		3537
.Llo206:
	rlwinm		r3,r27,0,24,31		# Controller=r3 eResetReturn=r27
# }
	.d2line		3538
	.d2epilogue_begin
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
.Llo234:
	lwz		r0,52(r1)		# pCanControlerDescriptor=r0
	mtspr		lr,r0		# pCanControlerDescriptor=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1115:
	.type		Can_FlexCan_ChangeBaudrate,@function
	.size		Can_FlexCan_ChangeBaudrate,.-Can_FlexCan_ChangeBaudrate
# Number of nodes = 712

# Allocations for Can_FlexCan_ChangeBaudrate
#	?a4		Controller
#	?a5		$$227
#	?a6		$$226
#	?a7		$$225
#	?a8		$$215
#	?a9		$$214
#	?a10		$$213
#	?a11		$$212
#	?a12		$$211
#	?a13		$$210
#	?a14		$$209
#	?a15		$$208
#	?a16		$$207
#	?a17		$$206
#	?a18		$$205
#	?a19		$$204
#	?a20		$$203
#	?a21		$$202
#	?a22		pCanControlerDescriptor
#	?a23		pCanMbConfigContainer
#	?a24		u8HwOffset
#	?a25		eResetReturn
#	?a26		u8BaudrateIndex
#	?a27		u8RegCount
#	?a28		u32TimeoutCount
#	?a29		u32ValueControlRegister
#	?a30		u8MbMax
#	?a31		u32TempAddr
#	?a32		u32TempAddrMax
# static FUNC (Can_ReturnType, CAN_CODE) Can_FlexCan_SetControllerToStartMode(  VAR(uint8, AUTOMATIC) Controller,
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1593,40
#$$ld
.L1142:

#$$bf	Can_FlexCan_SetControllerToStartMode,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Can_FlexCan_SetControllerToStartMode:
.Llo283:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo297:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# u8HwOffset=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Controller=r31 Controller=r3
	mr		r30,r4		# pCanControlerDescriptor=r30 pCanControlerDescriptor=r4
	.d2prologue_end
#                                                                             P2CONST(Can_ControlerDescriptorType, AUTOMATIC, CAN_APPL_CONST) pCanControlerDescriptor
#                                                                           )
# {
#     /* Variable for return status. */
#     VAR(Can_ReturnType, AUTOMATIC)  eReturnValue = CAN_NOT_OK;
	.d2line		1598
	diab.li		r29,1		# eReturnValue=r29
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)           u8HwOffset = 0U;
	.d2line		1600
.Llo292:
	diab.li		r0,0		# u8HwOffset=r0
#     /* Timeout counter. */
#     VAR(uint32, AUTOMATIC)          u32TimeoutCount = 0U;
#     VAR(uint32, AUTOMATIC)          u32TempVar = 0U;
# 
#     /* Get the hardware offset for this controller. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[Controller].u8ControllerOffset;
	.d2line		1607
.Llo298:
	lis		r3,CanStatic_pControlerDescriptors@ha		# Controller=r3
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# Controller=r3 Controller=r3
	rlwinm		r0,r31,0,24,31		# u8HwOffset=r0 Controller=r31
.Llo299:
	e_mulli		r0,r0,20		# u8HwOffset=r0 u8HwOffset=r0
.Llo300:
	lbzx		r28,r3,r0		# Controller=r3
.Llo301:
	mr		r28,r28		# u8HwOffset=r28 u8HwOffset=r28
#     
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* Valid transitions to Start mode are only from Stop state. */
#     if ( CAN_STOPPED != Can_ControllerStatuses[Controller].ControllerState)
#     {
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_SET_CONTROLLER_MODE, (uint8)CAN_E_TRANSITION);
#     }
#     else
#     {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
#         /* (CAN384) Each time the CAN controller state machine is triggered with the state transition value CAN_T_START, the function
#         Can_SetControllerMode shall re-initialize the CAN controller with the same controller configuration set previously used by functions
#         Can_ChangeBaudrate or Can_Init.*/
#         if ((Std_ReturnType)E_OK == Can_FlexCan_ChangeBaudrate( Controller))
	.d2line		1623
	mr		r3,r31		# Controller=r3 Controller=r31
.Llo284:
	bl		Can_FlexCan_ChangeBaudrate
.Llo285:
	rlwinm		r3,r3,0,24,31		# Controller=r3 Controller=r3
	se_cmpi		r3,0		# Controller=r3
	bc		0,2,.L725	# ne
#         {      
# 
#         /*
#         (CAN261) The function Can_SetControllerMode(CAN_T_START) shall set the hardware registers in a way that makes the CAN controller participating on the network.
#         */
#         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_13();
	.d2line		1629
.Llo286:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_13
# #ifdef CAN_ENABLE_USER_MODE_SUPPORT
# #if (STD_ON == CAN_ENABLE_USER_MODE_SUPPORT)
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_CLEAR32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_SUPV_U32);
# #endif
# #endif
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_CLEAR32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_FRZ_U32);
	.d2line		1639
.Llo287:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r5,r28,2,22,29		# u8HwOffset=r28
	lwzx		r3,r4,r5		# Controller=r3
	lwz		r0,0(r3)		# u8HwOffset=r0 Controller=r3
	.diab.bclri		r0,1		# u8HwOffset=r0
	stw		r0,0(r3)		# Controller=r3 u8HwOffset=r0
#         
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         REG_BIT_CLEAR32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_HALT_U32);
	.d2line		1643
	lwzx		r3,r4,r5		# Controller=r3
	lwz		r0,0(r3)		# u8HwOffset=r0 Controller=r3
	.diab.bclri		r0,3		# u8HwOffset=r0
	stw		r0,0(r3)		# Controller=r3 u8HwOffset=r0
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_13();
	.d2line		1644
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_13
#     
#         /*
#         (CAN196) The function Can_SetControllerMode shall enable interrupts that are needed in the new state.
#         (CAN425)   Enabling of CAN interrupts shall not be executed, when CAN interrupts have been disabled by function CAN_DisableControllerInterrupts.
#          */
# 
#         if ( CAN_INTERRUPT_ENABLED == Can_ControllerStatuses[Controller].eInterruptMode )
	.d2line		1651
	lis		r3,(Can_ControllerStatuses+220)@ha		# Controller=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+220)@l		# Controller=r3 Controller=r3
	rlwinm		r0,r31,0,24,31		# u8HwOffset=r0 Controller=r31
	e_mulli		r0,r0,232		# u8HwOffset=r0 u8HwOffset=r0
	lwzx		r0,r3,r0		# u8HwOffset=r0 Controller=r3
	se_cmpi		r0,1		# u8HwOffset=r0
	bc		0,2,.L726	# ne
#         {
#             Can_FlexCan_EnableInterrupts(Controller, pCanControlerDescriptor);
	.d2line		1653
.Llo293:
	mr		r3,r31		# Controller=r3 Controller=r31
	mr		r4,r30		# pCanControlerDescriptor=r4 pCanControlerDescriptor=r30
	bl		Can_FlexCan_EnableInterrupts
.L726:
#         }
# 
#         /* (CAN262) The function Can_SetControllerMode(CAN_T_START) shall wait for limited time until the CAN controller is fully operational. Compare to CAN371. */
#         u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		1657
	diab.li		r3,2000		# u32TimeoutCount=r3
#         u32TempVar = (uint32)0U;
	.d2line		1658
.Llo303:
	diab.li		r0,0		# u32TempVar=r0
.L727:
#         do {
#             /* ... stay in loop */
#             u32TimeoutCount--;
	.d2line		1661
.Llo289:
	diab.addi		r0,r3,-1		# u32TempVar=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             u32TempVar = ( (uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset)) & (FLEXCAN_MCR_FRZ_U32 | FLEXCAN_MCR_HALT_U32 | FLEXCAN_MCR_NOTRDY_U32));
	.d2line		1664
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r5,r28,2,22,29		# u8HwOffset=r28
	lwzx		r4,r4,r5
	lwz		r0,0(r4)		# u32TempVar=r0
	e_andi.		r0,r0,1476395008		# u32TempVar=r0 u32TempVar=r0
	mr		r0,r0		# u32TempVar=r0 u32TempVar=r0
#         } while ((u32TimeoutCount > (uint32)0x0U) && ( 0x0U != u32TempVar));
	.d2line		1665
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L731	# eq
	se_cmpi		r0,0		# u32TempVar=r0
	bc		0,2,.L727	# ne
.L731:
# 
#             if ((uint32)0x0U == u32TempVar)
	.d2line		1667
	se_cmpi		r0,0		# u32TempVar=r0
	bc		0,2,.L728	# ne
#             {
#                 /* Set the Start State. */
#                 Can_ControllerStatuses[Controller].ControllerState = CAN_STARTED;
	.d2line		1670
.Llo302:
	diab.li		r4,1
	lis		r3,(Can_ControllerStatuses+224)@ha		# u32TimeoutCount=r3
.Llo304:
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r0,r31,0,24,31		# u32TempVar=r0 Controller=r31
.Llo305:
	e_mulli		r0,r0,232		# u32TempVar=r0 u32TempVar=r0
.Llo306:
	stwx		r4,r3,r0		# u32TimeoutCount=r3
#                 eReturnValue = CAN_OK;
	.d2line		1671
	diab.li		r29,0		# eReturnValue=r29
.Llo294:
	b		.L725
.L728:
#             }
#             else
#             /* software timeout */
#             {
#                 eReturnValue = CAN_NOT_OK;
	.d2line		1676
.Llo295:
	diab.li		r29,1		# eReturnValue=r29
.L725:
#             }
#         }
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#     if (CAN_OK == eReturnValue)
	.d2line		1682
.Llo290:
	se_cmpi		r29,0		# eReturnValue=r29
	bc		0,2,.L730	# ne
#     {
#         CanIf_ControllerModeIndication(Controller, CANIF_CS_STARTED);
	.d2line		1684
.Llo291:
	rlwinm		r3,r31,0,24,31		# Controller=r3 Controller=r31
	diab.li		r4,1
	bl		CanIf_ControllerModeIndication
.L730:
#     }
#     
#     return eReturnValue;
	.d2line		1687
.Llo288:
	mr		r3,r29		# eReturnValue=r3 eReturnValue=r29
# }
	.d2line		1688
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo296:
	lwz		r0,36(r1)		# u8HwOffset=r0
	mtspr		lr,r0		# u8HwOffset=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1143:
	.type		Can_FlexCan_SetControllerToStartMode,@function
	.size		Can_FlexCan_SetControllerToStartMode,.-Can_FlexCan_SetControllerToStartMode
# Number of nodes = 135

# Allocations for Can_FlexCan_SetControllerToStartMode
#	?a4		Controller
#	?a5		pCanControlerDescriptor
#	?a6		$$192
#	?a7		$$191
#	?a8		eReturnValue
#	?a9		u8HwOffset
#	?a10		u32TimeoutCount
#	?a11		u32TempVar
# static FUNC (Can_ReturnType, CAN_CODE) Can_FlexCan_SetControllerToSleepMode(  VAR(uint8, AUTOMATIC) Controller )
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1705,40
#$$ld
.L1157:

#$$bf	Can_FlexCan_SetControllerToSleepMode,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Can_FlexCan_SetControllerToSleepMode:
.Llo307:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# Controller=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Controller=r0 Controller=r3
	.d2prologue_end
# {
#     /* Variable for return status. */
#     VAR(Can_ReturnType, AUTOMATIC)  eReturnValue = CAN_NOT_OK;
	.d2line		1708
.Llo308:
	diab.li		r3,1		# eReturnValue=r3
#     
#     /*
#        (PR-MCAL-3057) The Can driver shall not create a development error if the CanIf requests a transision to a state that was already reached.
#     */
#     if ( CAN_SLEEPED == Can_ControllerStatuses[Controller].ControllerState )
	.d2line		1713
.Llo309:
	lis		r3,(Can_ControllerStatuses+224)@ha		# eReturnValue=r3
.Llo313:
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# eReturnValue=r3 eReturnValue=r3
	rlwinm		r4,r0,0,24,31		# Controller=r0
	e_mulli		r4,r4,232
	lwzx		r3,r3,r4		# eReturnValue=r3 eReturnValue=r3
	se_cmpi		r3,2		# eReturnValue=r3
	bc		0,2,.L739	# ne
#     {
#         /* If the controller is already in SLEEP state, return CAN_OK. */
#         eReturnValue = CAN_OK;
	.d2line		1716
.Llo314:
	diab.li		r31,0		# eReturnValue=r31
.Llo315:
	b		.L740
.L739:
#     }
#     else
#     {
#     
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         /* Valid transitions to Sleep state are only from Stop state. */
#         if ( CAN_STOPPED != Can_ControllerStatuses[Controller].ControllerState)
#         {
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_SET_CONTROLLER_MODE, (uint8)CAN_E_TRANSITION);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#             /*[CAN290]If the CAN HW does not support a sleep mode, the function Can_SetControllerMode(CAN_T_SLEEP) shall set the CAN controller to the logical sleep mode*/
#             /*[CAN405] This logical sleep mode shall left only, if function Can_SetControllerMode(CAN_T_WAKEUP) is called.*/
#             eReturnValue = CAN_OK;
	.d2line		1733
.Llo310:
	diab.li		r31,0		# eReturnValue=r31
#             Can_ControllerStatuses[Controller].ControllerState = CAN_SLEEPED;
	.d2line		1734
.Llo316:
	diab.li		r5,2
	lis		r3,(Can_ControllerStatuses+224)@ha		# eReturnValue=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# eReturnValue=r3 eReturnValue=r3
.Llo311:
	rlwinm		r0,r0,0,24,31		# Controller=r0 Controller=r0
	e_mulli		r4,r0,232		# Controller=r0
	stwx		r5,r3,r4		# eReturnValue=r3
#             CanIf_ControllerModeIndication(Controller, CANIF_CS_SLEEP);
	.d2line		1735
	mr		r3,r0		# Controller=r3
	diab.li		r4,0
	bl		CanIf_ControllerModeIndication
.L740:
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#     }
#     return eReturnValue;
	.d2line		1740
.Llo312:
	mr		r3,r31		# eReturnValue=r3 eReturnValue=r31
# }
	.d2line		1741
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo317:
	lwz		r0,36(r1)		# Controller=r0
	mtspr		lr,r0		# Controller=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1158:
	.type		Can_FlexCan_SetControllerToSleepMode,@function
	.size		Can_FlexCan_SetControllerToSleepMode,.-Can_FlexCan_SetControllerToSleepMode
# Number of nodes = 43

# Allocations for Can_FlexCan_SetControllerToSleepMode
#	?a4		Controller
#	?a5		eReturnValue
# static FUNC (Can_ReturnType, CAN_CODE) Can_FlexCan_SetControllerToWakeupMode(  VAR(uint8, AUTOMATIC) Controller )
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1757,40
#$$ld
.L1165:

#$$bf	Can_FlexCan_SetControllerToWakeupMode,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Can_FlexCan_SetControllerToWakeupMode:
.Llo318:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# Controller=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Controller=r0 Controller=r3
	.d2prologue_end
# {
#     /* Variable for return status. */
#     VAR(Can_ReturnType, AUTOMATIC)  eReturnValue = CAN_NOT_OK;
	.d2line		1760
.Llo319:
	diab.li		r3,1		# eReturnValue=r3
#     
#     /*Controllers option for wakeup support(CAN_CONTROLLERCONFIG_WAKSUP_EN_U32) is not necessarly to be checked because if this is not supported,
#     the controller cannot be in state CAN_SLEEPED, so the Det_ReportError will be raised*/
#     if (CAN_STOPPED == Can_ControllerStatuses[Controller].ControllerState)
	.d2line		1764
.Llo320:
	lis		r3,(Can_ControllerStatuses+224)@ha		# eReturnValue=r3
.Llo324:
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# eReturnValue=r3 eReturnValue=r3
	rlwinm		r4,r0,0,24,31		# Controller=r0
	e_mulli		r4,r4,232
	lwzx		r3,r3,r4		# eReturnValue=r3 eReturnValue=r3
	se_cmpi		r3,0		# eReturnValue=r3
	bc		0,2,.L744	# ne
#     {
#         /*CanIf shall be notified only for transitions.
#         [CAN373] The function Can_Mainfunction_Mode shall call the function CanIf_ControllerModeIndication to 
#         notify the upper layer about a successful state transition of the CAN controller, in case the state transition 
#         was triggered by function Can_SetControllerMode 
#         */
#         eReturnValue = CAN_OK;
	.d2line		1771
.Llo325:
	diab.li		r31,0		# eReturnValue=r31
.Llo326:
	b		.L745
.L744:
#     }
#     else
#     {
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         /* 
#             Valid transitions to Wakeup state are only from Sleep state. 
#         */
#         if (CAN_SLEEPED != Can_ControllerStatuses[Controller].ControllerState)
#         {
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_SET_CONTROLLER_MODE, (uint8)CAN_E_TRANSITION);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#             /* When Wakeup is not supported the driver should do nothing and return CAN_OK. */
#             eReturnValue = CAN_OK;
	.d2line		1788
.Llo321:
	diab.li		r31,0		# eReturnValue=r31
#             Can_ControllerStatuses[Controller].ControllerState = CAN_STOPPED;
	.d2line		1789
.Llo327:
	diab.li		r5,0
	lis		r3,(Can_ControllerStatuses+224)@ha		# eReturnValue=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# eReturnValue=r3 eReturnValue=r3
.Llo322:
	rlwinm		r0,r0,0,24,31		# Controller=r0 Controller=r0
	e_mulli		r4,r0,232		# Controller=r0
	stwx		r5,r3,r4		# eReturnValue=r3
#             CanIf_ControllerModeIndication(Controller, CANIF_CS_STOPPED);
	.d2line		1790
	mr		r3,r0		# Controller=r3
	diab.li		r4,2
	bl		CanIf_ControllerModeIndication
.L745:
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#     }
#     
#     return eReturnValue;
	.d2line		1796
.Llo323:
	mr		r3,r31		# eReturnValue=r3 eReturnValue=r31
# }
	.d2line		1797
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo328:
	lwz		r0,36(r1)		# Controller=r0
	mtspr		lr,r0		# Controller=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1166:
	.type		Can_FlexCan_SetControllerToWakeupMode,@function
	.size		Can_FlexCan_SetControllerToWakeupMode,.-Can_FlexCan_SetControllerToWakeupMode
# Number of nodes = 43

# Allocations for Can_FlexCan_SetControllerToWakeupMode
#	?a4		Controller
#	?a5		eReturnValue
# static FUNC (Can_ReturnType, CAN_CODE) Can_FlexCan_UpdateMB( VAR(uint8, AUTOMATIC) u8CtrlId, VAR(uint16, AUTOMATIC) u16MBGlobalIndex ,
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1818,40
#$$ld
.L1173:

#$$bf	Can_FlexCan_UpdateMB,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
Can_FlexCan_UpdateMB:
.Llo329:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# u8CtrlId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# u8CtrlId=r0 u8CtrlId=r3
.Llo330:
	mr		r4,r4		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
.Llo331:
	mr		r5,r5		# PduInfo=r5 PduInfo=r5
	.d2prologue_end
#                                                                 P2CONST(Can_PduType, AUTOMATIC, CAN_APPL_CONST) PduInfo, VAR(boolean, AUTOMATIC) bEnabledFD
#                                                             )
# {
#     /* Variable for return status. */
#     VAR(Can_ReturnType, AUTOMATIC) eReturnValue = CAN_BUSY;
	.d2line		1823
	diab.li		r3,2		# eReturnValue=r3
#     /* Variable for determining the IFLAG register for every MB: IFLAGx */
#     VAR(uint8, AUTOMATIC)          u8IflagRegIndex = 0U;
	.d2line		1825
	diab.li		r3,0		# u8IflagRegIndex=r3
#     /* Variable for determining the mash bit in the IFLAGx register for current MB. */
#     VAR(uint32, AUTOMATIC)         u32TempFlag = 0U;
#     /* Variable for storing the value of IFLAG register. */
#     VAR(uint32, AUTOMATIC)         u32IflagReg = 0U;
#     /* Variable for byte index of the MB data. */
#     VAR(uint8, AUTOMATIC)          u8MbDataByte = 0U;
#     /* Variable for storing the ID of the MB from MB structure. */
#     VAR(uint32, AUTOMATIC)         u32MbMessageId = 0U;
# #if (CAN_FD_MODE_ENABLE == STD_ON)
#     /*maximum threshold values for DLC*/ 
#     CONST(uint8, AUTOMATIC)        u8DataLengthMax[8] = {8U, 12U,16U,20U,24U,32U,48U,64U};
#     /*minimum threshold values for DLC*/ 
#     CONST(uint8, AUTOMATIC)        u8DataLengthMin[8] = {0U, 9U,13U,17U,21U,25U,33U,49U};
#     /*u8DataLengthMax, u8DataLengthMin, u8LengthIndex index counter*/
#     VAR(uint8, AUTOMATIC)          u8DataLengthCount = 0U;
#     /* The length of data which will be filled in MB */
#     VAR(uint8, AUTOMATIC)          u8RealDataLength = (uint8)8U;
# #endif /* (CAN_FD_MODE_ENABLE == STD_ON) */
#     /* Variable for storing the ConfigReg of the MB. */
#     VAR(uint32, AUTOMATIC)         u32MbConfig = 0U;
#     /* DLC offset value is 16*/
#     CONST(uint8, AUTOMATIC)        u8DataLengthOffset =16U;
#     VAR(uint8, AUTOMATIC)          u8MbIndex;
#     /* Pointer to the MB container structure. */
#     VAR(Can_PtrMBConfigContainerType, AUTOMATIC)   pCanMbConfigContainer = NULL_PTR;
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)          u8HwOffset = 0U;
#     
#     /* Get the hardware offset for this controller. Note that hardware offset may not be the same with the controller index from the 'Can_ControlerDescriptorType' structure. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[u8CtrlId].u8ControllerOffset;
	.d2line		1856
	lis		r3,CanStatic_pControlerDescriptors@ha		# u8IflagRegIndex=r3
.Llo344:
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# u8IflagRegIndex=r3 u8IflagRegIndex=r3
	rlwinm		r6,r0,0,24,31		# u8HwOffset=r6 u8CtrlId=r0
.Llo385:
	e_mulli		r6,r6,20		# u8HwOffset=r6 u8HwOffset=r6
	lbzx		r6,r3,r6		# u8HwOffset=r6 u8IflagRegIndex=r3
	mr		r6,r6		# u8HwOffset=r6 u8HwOffset=r6
# 
#     pCanMbConfigContainer   = &(Can_pCurrentConfig->MBConfigContainer);
	.d2line		1858
	lis		r3,Can_pCurrentConfig@ha		# u8IflagRegIndex=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8IflagRegIndex=r3 u8IflagRegIndex=r3
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#     u8MbIndex = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
	.d2line		1860
.Llo345:
	lwz		r3,4(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r31,r4,5,11,26		# u32TempFlag=r31 u16MBGlobalIndex=r4
.Llo353:
	se_add		r3,r31		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 u32TempFlag=r31
	lbz		r30,29(r3)		# u8MbIndex=r30 pCanMbConfigContainer=r3
.Llo380:
	mr		r30,r30		# u8MbIndex=r30 u8MbIndex=r30
#     /* Calculate the index of the IFLAG register and u32TxGuard (index=0 for MB32...MB63, index=1 for MB0...MB31, index=2 for MBO64 ... 96). */
#     u8IflagRegIndex = (uint8)((uint8)u8MbIndex >> FLEXCAN_MB_SHIFT5BIT_U8);
	.d2line		1862
	rlwinm		r7,r30,27,29,31		# u8IflagRegIndex=r7 u8MbIndex=r30
.Llo346:
	mr		r7,r7		# u8IflagRegIndex=r7 u8IflagRegIndex=r7
#     /* Get the content of IFLAG register for which corresponds this MB. */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     u32IflagReg = REG_READ32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanIflag);
	.d2line		1866
	lis		r3,Can_IflagImask@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,Can_IflagImask@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r7,r7,5,19,26		# u8IflagRegIndex=r7 u8IflagRegIndex=r7
	se_add		r3,r7		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 u8IflagRegIndex=r7
	rlwinm		r31,r6,3,21,28		# u32TempFlag=r31 u8HwOffset=r6
.Llo354:
	lwzx		r3,r3,r31		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	lwz		r31,0(r3)		# u32TempFlag=r31 pCanMbConfigContainer=r3
.Llo366:
	mr		r31,r31		# u32IflagReg=r31 u32IflagReg=r31
# 
#     /* Calculate the bit in the IFLAG register. */
#     u32TempFlag = ((uint32)0x01U) << ((uint32)u8MbIndex & FLEXCAN_MASK_32BITS_U32);
	.d2line		1869
.Llo355:
	diab.li		r3,1		# pCanMbConfigContainer=r3
	rlwinm		r7,r30,0,27,31		# u8IflagRegIndex=r7 u8MbIndex=r30
	slw		r3,r3,r7		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 u8IflagRegIndex=r7
.Llo384:
	mr		r3,r3		# u32TempFlag=r3 u32TempFlag=r3
#     
#     /* This MB is not signaled as used by another message. */
#     if ( (uint32)0x0U == (u32IflagReg & u32TempFlag) )
	.d2line		1872
.Llo367:
	and.		r3,r3,r31		# u32IflagReg=?a10 u32TempFlag=?a9
.Llo368:
	bc		0,2,.L749	# ne
#     {
#         /* Is the MB still empty? */
#          /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#          /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#          /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#         if ( FLEXCAN_MBCS_CODETX_U32 == (uint32)(REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBCS_CODE_U32)))
	.d2line		1878
.Llo347:
	lis		r3,Can_u32BaseAddress@ha		# u32IflagReg=r3
.Llo369:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32IflagReg=r3 u32IflagReg=r3
	rlwinm		r31,r6,2,22,29		# u32TempFlag=r31 u8HwOffset=r6
	lwzx		r7,r3,r31		# u8IflagRegIndex=r7 u32IflagReg=r3
.Llo348:
	lis		r3,Can_pCurrentConfig@ha		# u32IflagReg=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# u32IflagReg=r3 u32IflagReg=r3
	lwz		r3,4(r3)		# u32IflagReg=r3 u32IflagReg=r3
	rlwinm		r31,r4,5,11,26		# u32TempFlag=r31 u16MBGlobalIndex=r4
.Llo356:
	se_add		r3,r31		# u32IflagReg=r3 u32IflagReg=r3 u32TempFlag=r31
	lhz		r3,26(r3)		# u32IflagReg=r3 u32IflagReg=r3
	se_add		r3,r7		# u32IflagReg=r3 u32IflagReg=r3 u8IflagRegIndex=r7
	lwzx		r3,r0,r3		# u32IflagReg=r3 u8CtrlId=r0
	rlwinm		r3,r3,0,4,7		# u32IflagReg=r3 u32IflagReg=r3
	diab.li		r7,134217728		# u8IflagRegIndex=r7
	se_cmpl		r3,r7		# u32IflagReg=r3 u8IflagRegIndex=r7
	bc		0,2,.L750	# ne
#         {
#             u32MbMessageId = (uint32)PduInfo->id;
	.d2line		1880
.Llo332:
	lwz		r7,4(r5)		# u8IflagRegIndex=r7 PduInfo=r5
.Llo371:
	mr		r7,r7		# u32MbMessageId=r7 u32MbMessageId=r7
#             u32MbConfig = (FLEXCAN_MBCS_CODETX_U32 | FLEXCAN_MBCS_CODETXEN_U32 | FLEXCAN_MBCS_SRR_U32 );
#             
#         #if (CAN_FD_MODE_ENABLE == STD_ON)
#             if   (((uint8)PduInfo->length)<=(uint8)u8DataLengthMax[0])
#             {
#         #endif /* (CAN_FD_MODE_ENABLE == STD_ON) */
#                 u32MbConfig |= ((uint32)PduInfo->length<<(uint32)u8DataLengthOffset);
	.d2line		1887
.Llo349:
	lbz		r3,10(r5)		# u32IflagReg=r3 PduInfo=r5
.Llo370:
	rlwinm		r3,r3,16,8,15		# u32IflagReg=r3 u32IflagReg=r3
.Llo379:
	e_or2is		r3,3136		# u32IflagReg=r3
	mr		r3,r3		# u32MbConfig=r3 u32MbConfig=r3
#         #if (CAN_FD_MODE_ENABLE == STD_ON)
#                 u8RealDataLength = (uint8)PduInfo->length;
#             }
#             else
#             {
#                 if ((((uint32)PduInfo->id) & (uint32)CAN_FD_ID_DESCRIPTOR) == CAN_FD_ID_DESCRIPTOR )
#                 {
#                     for (u8DataLengthCount=1U; u8DataLengthCount<8U; u8DataLengthCount++)
#                     {       
#                         if ((((uint8)PduInfo->length)<=(uint8)u8DataLengthMax[u8DataLengthCount])&&(((uint8)PduInfo->length)>=(uint8)u8DataLengthMin[u8DataLengthCount]))
#                         {
#                             u32MbConfig |= ((uint32)((uint32)8U+(uint32)u8DataLengthCount)<<((uint32)u8DataLengthOffset));
#                             u8RealDataLength = (uint8)u8DataLengthMax[u8DataLengthCount];
#                         }
#                     }
# 
#                 }
#                 /* else{ Development error detection from upper layer} */
#             }
#             
#             if ((boolean)TRUE == bEnabledFD)
#             {
#                 /*check to see if CanIf bit send from the user enables FD*/
#                 if ((((uint32)PduInfo->id) & (uint32)CAN_FD_ID_DESCRIPTOR) == CAN_FD_ID_DESCRIPTOR )
#                 {
# 
#                     u32MbConfig |= FLEXCAN_MB_EDL_BRS_U32;
#                 
#                 }
#             }
#         #endif /* (CAN_FD_MODE_ENABLE == STD_ON) */
# 
#                     
#             /* Set-up the MB content for Tx. Remember the PduId for reporting when the frame is transmitted. */
#             Can_ControllerStatuses[u8CtrlId].u32TxPduId[u8MbIndex] = PduInfo->swPduHandle;
	.d2line		1922
	lhz		r29,8(r5)		# PduInfo=r5
	lis		r31,(Can_ControllerStatuses+24)@ha		# u32TempFlag=r31
.Llo357:
	e_add16i		r31,r31,(Can_ControllerStatuses+24)@l		# u32TempFlag=r31 u32TempFlag=r31
.Llo381:
	rlwinm		r30,r30,1,23,30		# u8MbIndex=r30 u8MbIndex=r30
	se_add		r31,r30		# u32TempFlag=r31 u32TempFlag=r31 u8MbIndex=r30
.Llo333:
	rlwinm		r0,r0,0,24,31		# u8CtrlId=r0 u8CtrlId=r0
	e_mulli		r0,r0,232		# u8CtrlId=r0 u8CtrlId=r0
.Llo334:
	sthx		r29,r31,r0		# u32TempFlag=r31
# 
#         #if (CAN_EXTENDEDID == STD_ON)
#             if ( (u32MbMessageId & FLEXCAN_MBC_ID_IDE_U32) != (uint32)0U)
	.d2line		1925
	se_btsti		r7,0		# u8IflagRegIndex=r7
	bc		1,2,.L751	# eq
#             {
#                 /* Set the IDE bit in the MBCS register of the MB */
#                 u32MbConfig |= FLEXCAN_MBCS_IDE_U32;
	.d2line		1928
.Llo358:
	.diab.bseti		r3,10		# u32IflagReg=r3
	mr		r0,r3		# u32MbConfig=r0 u32MbConfig=r3
#                 /* Clear the MSB bit of the id - this is used for sending embedded information by CanIf to Can to say if it is an extended or standard message type. */
#                 u32MbMessageId &= (~FLEXCAN_MBC_ID_IDE_U32);
	.d2line		1930
	rlwinm		r0,r7,0,1,31		# u32MbMessageId=r0 u32MbMessageId=r7
	mr		r7,r0		# u32MbMessageId=r7 u32MbMessageId=r0
.Llo350:
	b		.L752
.L751:
#             }
#             else
#             {
#         #endif /* (CAN_EXTENDEDID == STD_ON) */
#                 /* Standard ID - need to shift left 18 bits. */
#             u32MbMessageId <<= FLEXCAN_STANDARD_ID_SHIFT_U32;
	.d2line		1936
.Llo351:
	rlwinm		r0,r7,18,0,13		# u32MbMessageId=r0 u32MbMessageId=r7
	mr		r7,r0		# u32MbMessageId=r7 u32MbMessageId=r0
.L752:
#         #if (CAN_EXTENDEDID == STD_ON)
#             }
#         #endif /* (CAN_EXTENDEDID == STD_ON) */
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#             REG_WRITE32( FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex)), (uint32)((u32MbMessageId) | ((REG_READ32(FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex)))) & 0xE0000000U) ));
	.d2line		1943
.Llo352:
	lis		r7,Can_u32BaseAddress@ha		# u32MbMessageId=r7
.Llo372:
	e_add16i		r7,r7,Can_u32BaseAddress@l		# u32MbMessageId=r7 u32MbMessageId=r7
	rlwinm		r31,r6,2,22,29		# u32TempFlag=r31 u8HwOffset=r6
.Llo359:
	lwzux		r29,r7,r31		# u32MbMessageId=r7
	lis		r8,Can_pCurrentConfig@ha
	lwz		r7,Can_pCurrentConfig@l(r8)		# u32MbMessageId=r7
	lwz		r7,4(r7)		# u32MbMessageId=r7 u32MbMessageId=r7
	rlwinm		r30,r4,5,11,26		# u8MbIndex=r30 u16MBGlobalIndex=r4
.Llo382:
	se_add		r7,r30		# u32MbMessageId=r7 u32MbMessageId=r7 u8MbIndex=r30
	lhz		r7,26(r7)		# u32MbMessageId=r7 u32MbMessageId=r7
	se_add		r7,r29		# u32MbMessageId=r7 u32MbMessageId=r7
	lwz		r7,4(r7)		# u32MbMessageId=r7 u32MbMessageId=r7
	rlwinm		r7,r7,0,0,2		# u32MbMessageId=r7 u32MbMessageId=r7
.Llo373:
	or		r0,r0,r7		# u32MbMessageId=r0 u32MbMessageId=r0 u32MbMessageId=r7
.Llo374:
	lis		r7,Can_u32BaseAddress@ha		# u32MbMessageId=r7
	e_add16i		r7,r7,Can_u32BaseAddress@l		# u32MbMessageId=r7 u32MbMessageId=r7
	lwzx		r31,r7,r31		# u32TempFlag=r31 u32MbMessageId=r7
	lwz		r7,Can_pCurrentConfig@l(r8)		# u32MbMessageId=r7
	lwz		r7,4(r7)		# u32MbMessageId=r7 u32MbMessageId=r7
	se_add		r30,r7		# u8MbIndex=r30 u8MbIndex=r30 u32MbMessageId=r7
	lhz		r7,26(r30)		# u32MbMessageId=r7 u8MbIndex=r30
	se_add		r31,r7		# u32TempFlag=r31 u32TempFlag=r31 u32MbMessageId=r7
	stw		r0,4(r31)		# u32TempFlag=r31 u32MbMessageId=r0
#                 /* Copy the data into the MB memory. The driver will not read from a null pointer SDU. */
#                 for ( u8MbDataByte = (uint8)0U; u8MbDataByte < PduInfo->length; u8MbDataByte++)
	.d2line		1945
	diab.li		r7,0		# u8MbDataByte=r7
.L753:
.Llo360:
	rlwinm		r0,r7,0,24,31		# u32MbMessageId=r0 u8MbDataByte=r7
.Llo375:
	lbz		r31,10(r5)		# u32TempFlag=r31 PduInfo=r5
.Llo361:
	se_cmp		r0,r31		# u32MbMessageId=r0 u32TempFlag=r31
	bc		0,0,.L755	# ge
#                 {
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     /* @violates @ref Can_Flexcan_c_REF_11 Violates MISRA 2004 Required Rule 10.1, The value of an expression of integer type shall not be implicitly converted to a different */
#                     REG_WRITE8(FLEXCAN_MB_DATA((uint32)(u8HwOffset), (uint32)(u16MBGlobalIndex), (uint32)(u8MbDataByte)), (uint8)((PduInfo->sdu)[u8MbDataByte]));
	.d2line		1951
.Llo362:
	lwz		r31,0(r5)		# u32TempFlag=r31 PduInfo=r5
.Llo363:
	rlwinm		r0,r7,0,24,31		# u32MbMessageId=r0 u8MbDataByte=r7
.Llo376:
	se_add		r31,r0		# u32TempFlag=r31 u32TempFlag=r31 u32MbMessageId=r0
.Llo364:
	lbzx		r30,r0,r31		# u8MbIndex=r30 u32MbMessageId=r0
.Llo383:
	lis		r8,Can_u32BaseAddress@ha
	e_add16i		r8,r8,Can_u32BaseAddress@l
	rlwinm		r31,r6,2,22,29		# u32TempFlag=r31 u8HwOffset=r6
	lwzx		r29,r8,r31
	lis		r8,Can_pCurrentConfig@ha
	lwz		r31,Can_pCurrentConfig@l(r8)		# u32TempFlag=r31
.Llo365:
	lwz		r28,4(r31)		# u32TempFlag=r31
	rlwinm		r31,r4,5,11,26		# u32TempFlag=r31 u16MBGlobalIndex=r4
	se_add		r31,r28		# u32TempFlag=r31 u32TempFlag=r31
	lhz		r31,26(r31)		# u32TempFlag=r31 u32TempFlag=r31
	se_add		r29,r31		# u32TempFlag=r31
	add		r31,r29,r0		# u32TempFlag=r31 u32MbMessageId=r0
	stb		r30,8(r31)		# u32TempFlag=r31 u8MbIndex=r30
#                 }
	.d2line		1952
	diab.addi		r0,r7,1		# u32MbMessageId=r0 u8MbDataByte=r7
.Llo377:
	se_addi		r7,1		# u8MbDataByte=r7 u8MbDataByte=r7
	b		.L753
.L755:
# 
#             #if (CAN_FD_MODE_ENABLE == STD_ON)
#                 if ((boolean)TRUE == bEnabledFD)
#                 {
#                     for ( u8MbDataByte = PduInfo->length; u8MbDataByte < u8RealDataLength ; u8MbDataByte++)
#                     {
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                         /* @violates @ref Can_Flexcan_c_REF_11 Violates MISRA 2004 Required Rule 10.1, The value of an expression of integer type shall not be implicitly converted to a different */
#                         REG_WRITE8(FLEXCAN_MB_DATA((u8HwOffset), (uint32)(u16MBGlobalIndex), (uint32)(u8MbDataByte)), (uint8)(Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr[u16MBGlobalIndex].u8FdPaddingValue));
#                     }
#                 }
#             #endif /* (CAN_FD_MODE_ENABLE == STD_ON) */
#                 /* Transmit the Data - now the data should be on Can Bus. Configure the DLC. */
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 REG_WRITE32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex)), (uint32)(u32MbConfig));
	.d2line		1971
.Llo337:
	lis		r5,Can_u32BaseAddress@ha		# PduInfo=r5
.Llo339:
	e_add16i		r5,r5,Can_u32BaseAddress@l		# PduInfo=r5 PduInfo=r5
.Llo386:
	rlwinm		r6,r6,2,22,29		# u8HwOffset=r6 u8HwOffset=r6
.Llo387:
	lwzx		r0,r5,r6		# u32MbMessageId=r0 PduInfo=r5
.Llo378:
	lis		r5,Can_pCurrentConfig@ha		# PduInfo=r5
	lwz		r5,Can_pCurrentConfig@l(r5)		# PduInfo=r5 PduInfo=r5
	lwz		r5,4(r5)		# PduInfo=r5 PduInfo=r5
.Llo338:
	rlwinm		r4,r4,5,11,26		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	se_add		r4,r5		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4 PduInfo=r5
	lhz		r4,26(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	se_add		r0,r4		# u32MbMessageId=r0 u32MbMessageId=r0 u16MBGlobalIndex=r4
	stwx		r3,r0,r0		# u32MbMessageId=r0 u32MbConfig=r3
#                 eReturnValue = CAN_OK;
	.d2line		1972
	diab.li		r3,0		# eReturnValue=r3
.Llo340:
	b		.L757
.L750:
# 
#         }
#         else
#         /* MB not empty anymore, preempting code has grabbed it before we managed to set the guard bit. Clear the guard bit. */
#         {
#             /*
#                (CAN213) The function Can_Write shall perform no actions if the hardware transmit object is busy with another transmit request for an L-PDU that has higher priority than that for the current request:
#                   - The transmission of the L-PDU with higher priority shall not be cancelled and the function Can_Write is left without any actions.
#                   - The function Can_Write shall return CAN_BUSY.
#             */
#             /* MB not TX empty anymore, preempting code has grabbed it before we managed to set the guard bit. Clear the guard, end of critical section. */
#             eReturnValue = CAN_BUSY;
	.d2line		1984
.Llo335:
	diab.li		r3,2		# eReturnValue=r3
.Llo341:
	b		.L757
.L749:
#         }
#     }
#     else /* else of "if((uint32)0x0U==(u32IflagReg&u32TempFlag))" */
#     /* MB is locked because it has the IFLAG bit set. */
#     {
#         /*
#         The fact that the return value of the function is the same irrespective of whether the MB is locked out or busy with a lower prio message is a deficiency in the AutoSAR spec.
#         CanIf has no way of telling whether the message was cancelled or not in the special case and a priority inversion can occur.
#         */
#         /*
#            (CAN214) The function Can_Write shall return CAN_BUSY if a preemptive call of Can_Write has been issued, that could not be
#                     handled reentrant (i.e. a call with the same HTH).
#         */
#         eReturnValue = CAN_BUSY;
	.d2line		1998
.Llo342:
	diab.li		r3,2		# eReturnValue=r3
.L757:
#     }
#     
#     (void)bEnabledFD;   /* Prevent compiler warning when CAN_FD is disabled */
#     return eReturnValue;
	.d2line		2002
.Llo336:
	mr		r3,r3		# eReturnValue=r3 eReturnValue=r3
# }
	.d2line		2003
	.d2epilogue_begin
.Llo343:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u32MbMessageId=r0
	mtspr		lr,r0		# u32MbMessageId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1174:
	.type		Can_FlexCan_UpdateMB,@function
	.size		Can_FlexCan_UpdateMB,.-Can_FlexCan_UpdateMB
# Number of nodes = 309

# Allocations for Can_FlexCan_UpdateMB
#	?a4		u8CtrlId
#	?a5		u16MBGlobalIndex
#	?a6		PduInfo
#	not allocated	bEnabledFD
#	?a7		eReturnValue
#	?a8		u8IflagRegIndex
#	?a9		u32TempFlag
#	?a10		u32IflagReg
#	?a11		u8MbDataByte
#	?a12		u32MbMessageId
#	?a13		u32MbConfig
#	not allocated	u8DataLengthOffset
#	?a14		u8MbIndex
#	?a15		pCanMbConfigContainer
#	?a16		u8HwOffset
# static FUNC (void, CAN_CODE) Can_FlexCan_ProcessTxPoll( CONST(uint8, AUTOMATIC) controller, CONST(uint16, AUTOMATIC) u16MBGlobalIndex )
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         2023,30
#$$ld
.L1205:

#$$bf	Can_FlexCan_ProcessTxPoll,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Can_FlexCan_ProcessTxPoll:
.Llo388:
	stwu		r1,-112(r1)		
	.d2_cfa_def_cfa_offset	112
	mfspr		r0,lr
.Llo431:
	stmw		r25,84(r1)		# offset r1+84  0x54
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,116(r1)		# u32IflagReg=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# controller=r31 controller=r3
.Llo389:
	mr		r30,r4		# u16MBGlobalIndex=r30 u16MBGlobalIndex=r4
	.d2prologue_end
# {
#     /* Pointer to the MBs structure configuration. */
#     VAR(Can_PtrMBConfigContainerType, AUTOMATIC) pCanMbConfigContainer = NULL_PTR;
	.d2line		2026
.Llo390:
	diab.li		r0,0		# pCanMbConfigContainer=r0
# #if (CAN_HW_TRANSMIT_CANCELLATION == STD_ON)    
#     /* Unique identifier of a PDU within a software module */
#     VAR(PduIdType, AUTOMATIC) u32PduId;
#     /* Store the basic information about a PDU */
#     VAR(PduInfoType, AUTOMATIC) CbkPduInfo;
#     /* Variable for storing the ConfigReg of the MB. */
#     VAR(uint32, AUTOMATIC)           u32MbConfig = 0U;
#     /* Variable for storing the data. */
#     VAR(uint8, AUTOMATIC)            u8CanMbData[64];
#     /* Index for data byte of MB. */
#     VAR(uint8, AUTOMATIC)            u8DatabyteIndex = 0U;
#     
# #endif /* (CAN_HW_TRANSMIT_CANCELLATION == STD_ON) */
#     /* Variable for indexing the MBs. */
#     VAR(uint8, AUTOMATIC)            u8MbIndex = 0U;
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)            u8HwOffset = 0U;
#     /* Variable for determining the IFLAG register for every MB: IFLAGx */
#     VAR(uint8, AUTOMATIC)            u8IflagRegIndex = 0U;
#     /* Variable for determining the mash bit in the IFLAGx register for current MB. */
#     VAR(uint32, AUTOMATIC)           u32TempFlag = 0U;
#     /* Variable for storing the value of IFLAG register. */
#     VAR(uint32, AUTOMATIC)           u32IflagReg = 0U;
# #if (CAN_TXPOLL_SUPPORTED == STD_OFF)
#     /* Variable for storing the value of IMASKx register. */
#     VAR(uint32, AUTOMATIC)           u32ImaskReg = 0U;
# #endif
#  #if (CAN_HW_TRANSMIT_CANCELLATION == STD_ON)
#     #if (CAN_FD_MODE_ENABLE == STD_ON)
#        CONST(uint8, AUTOMATIC)            u8LengthIndex[8] = {8U,12U,16U,20U,24U,32U,48U,64U};
#     #endif
#  #endif
#  
# #if (CAN_HW_TRANSMIT_CANCELLATION == STD_ON)
#         u8CanMbData[0U]=0U;
	.d2line		2061
.Llo396:
	stb		r0,16(r1)		# pCanMbConfigContainer=r0
# #endif /* (CAN_HW_TRANSMIT_CANCELLATION == STD_ON) */   
# 
#     /* Get the address of the MBConfigContainer in local pointer */
#     pCanMbConfigContainer = &(Can_pCurrentConfig->MBConfigContainer);
	.d2line		2065
	lis		r3,Can_pCurrentConfig@ha		# pCanMbConfigContainer=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	addi		r29,r3,4		# pCanMbConfigContainer=r3
#     /* Get the hardware offset for this controller. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used*/
#     u8HwOffset = CanStatic_pControlerDescriptors[controller].u8ControllerOffset;
	.d2line		2068
	lis		r4,CanStatic_pControlerDescriptors@ha
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)
	rlwinm		r0,r31,0,24,31		# pCanMbConfigContainer=r0 controller=r31
	e_mulli		r0,r0,20		# pCanMbConfigContainer=r0 pCanMbConfigContainer=r0
.Llo399:
	lbzx		r27,r4,r0		# u8HwOffset=r27
.Llo424:
	mr		r27,r27		# u8HwOffset=r27 u8HwOffset=r27
# 
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8MbIndex = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
	.d2line		2071
.Llo400:
	lwz		r3,4(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r4,r30,5,11,26		# u16MBGlobalIndex=r30
	se_add		r3,r4		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	lbz		r28,29(r3)		# u8MbIndex=r28 pCanMbConfigContainer=r3
.Llo421:
	mr		r28,r28		# u8MbIndex=r28 u8MbIndex=r28
#     
#     /* Calculate the index of the IFLAG/IMASK register. */
#     u8IflagRegIndex = (uint8)((uint8)u8MbIndex >> FLEXCAN_MB_SHIFT5BIT_U8) ;
	.d2line		2074
	rlwinm		r26,r28,27,29,31		# u8IflagRegIndex=r26 u8MbIndex=r28
.Llo428:
	mr		r26,r26		# u8IflagRegIndex=r26 u8IflagRegIndex=r26
#     
#     /* Get the content of IFLAG register for which corresponds this MB. */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     u32IflagReg = REG_READ32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanIflag);
	.d2line		2079
	lis		r3,Can_IflagImask@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,Can_IflagImask@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r4,r26,5,19,26		# u8IflagRegIndex=r26
	se_add		r3,r4		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r5,r27,3,21,28		# u8HwOffset=r27
	lwzx		r3,r3,r5		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	lwz		r0,0(r3)		# pCanMbConfigContainer=r0 pCanMbConfigContainer=r3
.Llo432:
	mr		r0,r0		# u32IflagReg=r0 u32IflagReg=r0
# 
#     /* Calculate the bit in the IFLAG/IMASK register allocated to a MB */
#     u32TempFlag = ((uint32)0x01U) << ((uint32)u8MbIndex & FLEXCAN_MASK_32BITS_U32);
	.d2line		2082
	diab.li		r25,1		# u32TempFlag=r25
	rlwinm		r4,r28,0,27,31		# u8MbIndex=r28
	slw		r25,r25,r4		# u32TempFlag=r25 u32TempFlag=r25
	mr		r25,r25		# u32TempFlag=r25 u32TempFlag=r25
# #ifndef ERR_IPV_FLEXCAN_0015      
#     /* Check the interrupt flag of the current MB. */
#     if ( (uint32)0x0U != (u32IflagReg & u32TempFlag) )
	.d2line		2085
	and.		r0,r0,r25		# u32IflagReg=?a16 u32TempFlag=?a15
.Llo433:
	bc		1,2,.L765	# eq
#     {
# #endif
# #if (CAN_TXPOLL_SUPPORTED == STD_OFF)
#         /*Get the content of IMASK register for which corresponds this MB. */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         u32ImaskReg = REG_READ32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanImask);
# 
#         /* Check for spurious interrupt. */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used*/
#         if ( ((uint32)CAN_CONTROLLERCONFIG_TXPOL_EN_U32 == (CAN_CONTROLLERCONFIG_TXPOL_EN_U32 & CanStatic_pControlerDescriptors[controller].u32Options) )
#         || ((uint32)u32TempFlag == (u32ImaskReg & u32TempFlag)) )
#         {
# #endif
#             /* The interrupt flag is set, message was either transmitted or cancelled.
#                 This code does not check whether the u32TxGuard is set.
#                 It does not have to do the check as it only operates on MBs with the interrupt flag set and CanWrite does not
#                 operate on MBs which have the interrupt flag set.
#                 Set the u32TxGuard. */
#             /*
#                 (CAN031) The function Can_MainFunction_Write shall perform the polling of TX confirmation and TX cancellation confirmation when CanTxProcessing is set to POLLING.
#             */  
# 
#     #ifdef ERR_IPV_FLEXCAN_0015
#         #if(ERR_IPV_FLEXCAN_0015==STD_ON)
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#             if  ( (((uint32)(REG_READ32( FLEXCAN_MB((u8HwOffset), (u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBCS_CODE_U32))) == FLEXCAN_MBCS_CODETX_U32) && \
#                    ( 0U != ((((uint32)0x01U) << (uint32)u8MbIndex) &  Can_ControllerStatuses[controller].u32TxCancelFlag[u8IflagRegIndex] )) \
#                 )
#             {
#             #if (CAN_MAXMB_SUPPORTED == FLEXCAN_MB_64_U8)
#                 Can_ControllerStatuses[controller].u32TxCancelFlag[u8IflagRegIndex] &= (PduIdType)(~(((uint32)0x01U) << ((uint32)u8MbIndex)));
#             #else
#                 Can_ControllerStatuses[controller].u32TxCancelFlag[u8IflagRegIndex] &= ~(((uint32)0x01U) << ((uint32)u8MbIndex));
#             #endif
#         #else
#              #error : the define ERR_IPV_FLEXCAN_0015 must not be STD_OFF
#         #endif
#     #else
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 switch ( (uint32)(REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBCS_CODE_U32)) )
	.d2line		2130
.Llo401:
	lis		r3,Can_u32BaseAddress@ha		# pCanMbConfigContainer=r3
.Llo402:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r5,r27,2,22,29		# u8HwOffset=r27
	lwzx		r0,r3,r5		# u32IflagReg=r0 pCanMbConfigContainer=r3
.Llo434:
	lis		r3,Can_pCurrentConfig@ha		# pCanMbConfigContainer=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	lwz		r3,4(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r4,r30,5,11,26		# u16MBGlobalIndex=r30
	se_add		r3,r4		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	lhz		r3,26(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	se_add		r0,r3		# u32IflagReg=r0 u32IflagReg=r0 pCanMbConfigContainer=r3
	lwzx		r6,r0,r0		# u32IflagReg=r0
	rlwinm		r6,r6,0,4,7
	diab.li		r7,134217728
	se_cmp		r6,r7
	bc		1,2,.L773	# eq
.Llo435:
	e_lis		r7,2304
	se_cmp		r6,r7
	bc		1,2,.L767	# eq
	b		.L765
.L767:
#                 {
#     #endif
#                             
#     #if (CAN_HW_TRANSMIT_CANCELLATION == STD_ON)
#                     /* The frame was aborted (cancelled). */
# 
#         #ifdef ERR_IPV_FLEXCAN_0015
#             #if(ERR_IPV_FLEXCAN_0015==STD_ON)
#             /*  {workaround - errata  specific code} */
#             #else
#                 #error : the define ERR_IPV_FLEXCAN_0015 must not be STD_OFF
#             #endif
#         #else
#                     case ( FLEXCAN_MBCS_CODETX_U32 | FLEXCAN_MBCS_CODETXABORT_U32):
#                     {
#         #endif
#                         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_03();
	.d2line		2147
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_03
#                         /* The interrupt flag is set, message was either transmitted or cancelled.
#                             This code does not check whether the u32TxGuard is set.
#                             It does not have to do the check as it only operates on MBs with the interrupt flag set and CanWrite does not
#                             operate on MBs which have the interrupt flag set.
#                             Set the u32TxGuard. */
# 
#                         Can_ControllerStatuses[controller].u32TxGuard[u8IflagRegIndex] |= u32TempFlag;
	.d2line		2154
	lis		r3,Can_ControllerStatuses@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,Can_ControllerStatuses@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r0,r31,0,24,31		# u32IflagReg=r0 controller=r31
.Llo436:
	e_mulli		r0,r0,232		# u32IflagReg=r0 u32IflagReg=r0
	se_add		r3,r0		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 u32IflagReg=r0
	rlwinm		r4,r26,2,22,29		# u8IflagRegIndex=r26
	lwzx		r0,r3,r4		# u32IflagReg=r0 pCanMbConfigContainer=r3
	or		r0,r0,r25		# u32IflagReg=r0 u32IflagReg=r0 u32TempFlag=r25
	stwx		r0,r3,r4		# pCanMbConfigContainer=r3 u32IflagReg=r0
#                         
#                         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_03();
	.d2line		2156
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_03
#                         /* Check if Can_Write is currently trying to cancel this MB. If so, tell it that there is no need as the MB has just transmitted (or cancelled). */
#                         if ( (Can_HwHandleType)u8MbIndex == Can_ControllerStatuses[controller].u32CancelMBIndex)
	.d2line		2158
.Llo437:
	rlwinm		r4,r28,0,24,31		# u8MbIndex=r28
	lis		r3,(Can_ControllerStatuses+217)@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+217)@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r0,r31,0,24,31		# u32IflagReg=r0 controller=r31
.Llo438:
	e_mulli		r0,r0,232		# u32IflagReg=r0 u32IflagReg=r0
	se_add		r0,r3		# u32IflagReg=r0 u32IflagReg=r0 pCanMbConfigContainer=r3
	lbzx		r0,r0,r0		# u32IflagReg=r0 u32IflagReg=r0
	se_cmp		r4,r0		# u32IflagReg=r0
	bc		0,2,.L768	# ne
#                         {
#                             Can_ControllerStatuses[controller].u32CancelMBIndex = pCanMbConfigContainer->uMessageBufferConfigCount;
	.d2line		2160
.Llo439:
	lbz		r4,4(r29)		# pCanMbConfigContainer=r29
	lis		r3,(Can_ControllerStatuses+217)@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+217)@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r0,r31,0,24,31		# u32IflagReg=r0 controller=r31
.Llo440:
	e_mulli		r0,r0,232		# u32IflagReg=r0 u32IflagReg=r0
.Llo441:
	stbux		r4,r3,r0		# pCanMbConfigContainer=r3
.L768:
#                         }
# 
#                         /* Read Control and Status Register of the MB. */
#                         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                         u32MbConfig = (uint32)REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex)));
	.d2line		2167
.Llo403:
	lis		r3,Can_u32BaseAddress@ha		# pCanMbConfigContainer=r3
.Llo404:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r5,r27,2,22,29		# u8HwOffset=r27
	lwzx		r0,r3,r5		# u32IflagReg=r0 pCanMbConfigContainer=r3
.Llo442:
	lis		r3,Can_pCurrentConfig@ha		# pCanMbConfigContainer=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	lwz		r3,4(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r4,r30,5,11,26		# u8DatabyteIndex=r4 u16MBGlobalIndex=r30
.Llo417:
	se_add		r3,r4		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 u8DatabyteIndex=r4
	lhz		r3,26(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	se_add		r0,r3		# u32IflagReg=r0 u32IflagReg=r0 pCanMbConfigContainer=r3
	lwzx		r0,r0,r0		# u32IflagReg=r0 u32IflagReg=r0
.Llo414:
	mr		r0,r0		# u32MbConfig=r0 u32MbConfig=r0
# 
#                         /* Transfer the DLC. */
#                         
#                         CbkPduInfo.SduLength = (PduLengthType)((u32MbConfig & FLEXCAN_MBCS_LENGTH_U32) >> FLEXCAN_MBCS_LENGTH_SHIFT_U32);
	.d2line		2171
	rlwinm		r3,r0,16,28,31		# pCanMbConfigContainer=r3 u32MbConfig=r0
	sth		r3,12(r1)		# pCanMbConfigContainer=r3
#                         
#                     #if (CAN_FD_MODE_ENABLE == STD_ON)
#                         if   (((uint8)CbkPduInfo.SduLength)>=(uint8)FLEXCAN_DATA_LENGTH_MIN_U8)
#                         {
#                            CbkPduInfo.SduLength = u8LengthIndex[(uint8)CbkPduInfo.SduLength - FLEXCAN_DATA_LENGTH_OFFSET_U8];
#                         }
#                     #endif
# 
#                         /*
#                         (CAN276) The function Can_Write shall store the swPduHandle that is given inside the parameter PduInfo until the Can module
#                             calls the CanIf_TXConfirmation for this request where the swPduHandle is given as parameter.
#                         */
#                         u32PduId = Can_ControllerStatuses[controller].u32TxPduId[u8MbIndex];
	.d2line		2184
	lis		r3,(Can_ControllerStatuses+24)@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+24)@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
.Llo422:
	rlwinm		r28,r28,1,23,30		# u8MbIndex=r28 u8MbIndex=r28
	se_add		r3,r28		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 u8MbIndex=r28
	rlwinm		r4,r31,0,24,31		# u8DatabyteIndex=r4 controller=r31
	e_mulli		r4,r4,232		# u8DatabyteIndex=r4 u8DatabyteIndex=r4
.Llo418:
	lhzx		r29,r3,r4		# pCanMbConfigContainer=r29 pCanMbConfigContainer=r3
.Llo413:
	mr		r29,r29		# u32PduId=r29 u32PduId=r29
# 
#                         /*
#                         (CAN059) Data mapping by CAN to memory is defined in a way that the CAN data byte which is sent out first is array element 0,
#                             the CAN data byte which is sent out last is array element 7.
#                         */
#                         for ( u8DatabyteIndex = (uint8)0U; u8DatabyteIndex < CbkPduInfo.SduLength; u8DatabyteIndex++)
	.d2line		2190
	diab.li		r4,0		# u8DatabyteIndex=r4
.L769:
.Llo405:
	rlwinm		r6,r4,0,24,31		# u8DatabyteIndex=r4
	lhz		r3,12(r1)		# pCanMbConfigContainer=r3
.Llo406:
	se_cmp		r6,r3		# pCanMbConfigContainer=r3
	bc		0,0,.L771	# ge
#                         {
#                             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                             /* @violates @ref Can_Flexcan_c_REF_12 Violates MISRA 2004 Required Rule 10.3, The value of a complex expression of integer type shall only be cast to. */
#                             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                             u8CanMbData[u8DatabyteIndex] = REG_READ8(FLEXCAN_MB_DATA((u8HwOffset), (uint32)(u16MBGlobalIndex), (u8DatabyteIndex))) ;
	.d2line		2196
.Llo407:
	lis		r3,Can_u32BaseAddress@ha		# pCanMbConfigContainer=r3
.Llo408:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r5,r27,2,22,29		# u8HwOffset=r27
	lwzx		r5,r3,r5		# pCanMbConfigContainer=r3
	lis		r3,Can_pCurrentConfig@ha		# pCanMbConfigContainer=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	lwz		r3,4(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r6,r30,5,11,26		# u16MBGlobalIndex=r30
	se_add		r3,r6		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	lhz		r3,26(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	se_add		r5,r3		# pCanMbConfigContainer=r3
	rlwinm		r6,r4,0,24,31		# u8DatabyteIndex=r4
	se_add		r5,r6
	lbz		r5,8(r5)
	diab.addi		r3,r1,16		# pCanMbConfigContainer=r3
	stbx		r5,r3,r6		# pCanMbConfigContainer=r3
#                         }
	.d2line		2197
	diab.addi		r6,r4,1		# u8DatabyteIndex=r4
	se_addi		r4,1		# u8DatabyteIndex=r4 u8DatabyteIndex=r4
	b		.L769
.L771:
# 
#                         /* @violates @ref Can_Flexcan_c_REF_4 Violates MISRA 2004 Required Rule 1.2, Taking address of near auto variable */
#                         CbkPduInfo.SduDataPtr= u8CanMbData;
	.d2line		2200
.Llo391:
	diab.addi		r3,r1,16		# pCanMbConfigContainer=r3
.Llo409:
	stw		r3,8(r1)		# pCanMbConfigContainer=r3
# 
#                         /* Clear the interrupt flag - w1c. */
#                         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */   
#                         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                         REG_WRITE32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanIflag, u32TempFlag);  
	.d2line		2205
	lis		r3,Can_IflagImask@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,Can_IflagImask@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r4,r26,5,19,26		# u8DatabyteIndex=r4 u8IflagRegIndex=r26
.Llo419:
	se_add		r3,r4		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 u8DatabyteIndex=r4
	rlwinm		r5,r27,3,21,28		# u8HwOffset=r27
	lwzx		r3,r3,r5		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	stw		r25,0(r3)		# pCanMbConfigContainer=r3 u32TempFlag=r25
#     
#                         /* Clear the cancellation code. */
#                         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                         REG_WRITE32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex)), (uint32)((u32MbConfig & (uint32)(~FLEXCAN_MBCS_CODE_U32)) | FLEXCAN_MBCS_CODETX_U32));  
	.d2line		2211
.Llo415:
	rlwinm		r0,r0,0,8,3		# u32MbConfig=r0 u32MbConfig=r0
	.diab.bseti		r0,4		# u32MbConfig=r0
	lis		r3,Can_u32BaseAddress@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	rlwinm		r27,r27,2,22,29		# u8HwOffset=r27 u8HwOffset=r27
.Llo425:
	lwzx		r3,r3,r27		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	lis		r4,Can_pCurrentConfig@ha		# u8DatabyteIndex=r4
	lwz		r4,Can_pCurrentConfig@l(r4)		# u8DatabyteIndex=r4 u8DatabyteIndex=r4
	lwz		r4,4(r4)		# u8DatabyteIndex=r4 u8DatabyteIndex=r4
.Llo397:
	rlwinm		r30,r30,5,11,26		# u16MBGlobalIndex=r30 u16MBGlobalIndex=r30
	se_add		r30,r4		# u16MBGlobalIndex=r30 u16MBGlobalIndex=r30 u8DatabyteIndex=r4
	lhz		r4,26(r30)		# u8DatabyteIndex=r4 u16MBGlobalIndex=r30
.Llo420:
	stwx		r0,r3,r4		# pCanMbConfigContainer=r3 u32MbConfig=r0
# 
#                         SchM_Enter_Can_CAN_EXCLUSIVE_AREA_03();
	.d2line		2213
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_03
#                         /* Release the MB, from now on the MB is free for Tx -> Clear u32TxGuard. */
#                         Can_ControllerStatuses[controller].u32TxGuard[u8IflagRegIndex] &= (uint32)(~u32TempFlag);
	.d2line		2215
.Llo410:
	lis		r3,Can_ControllerStatuses@ha		# pCanMbConfigContainer=r3
.Llo411:
	e_add16i		r3,r3,Can_ControllerStatuses@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
.Llo392:
	rlwinm		r31,r31,0,24,31		# controller=r31 controller=r31
	e_mulli		r31,r31,232		# controller=r31 controller=r31
	se_add		r3,r31		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 controller=r31
	rlwinm		r26,r26,2,22,29		# u8IflagRegIndex=r26 u8IflagRegIndex=r26
.Llo429:
	lwzx		r0,r3,r26		# u32MbConfig=r0 pCanMbConfigContainer=r3
.Llo416:
	andc		r0,r0,r25		# u32MbConfig=r0 u32MbConfig=r0 u32TempFlag=r25
	stwx		r0,r3,r26		# pCanMbConfigContainer=r3 u32MbConfig=r0
# 
#                         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_03();
	.d2line		2217
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_03
#                         /*
#                         (CAN058) The Can module interacts among other modules (eg. Diagnostic Event Manager (DEM), Development Error Tracer (DET)) with the CanIf module in a direct way.
#                             The driver only sees the CanIf module as origin and destination.
#                         */
#                         /* @violates @ref Can_Flexcan_c_REF_4 Violates MISRA 2004 Required Rule 1.2, Taking address of near auto variable */
#                         CanIf_CancelTxConfirmation(u32PduId , &CbkPduInfo);
	.d2line		2223
.Llo412:
	rlwinm		r3,r29,0,16,31		# pCanMbConfigContainer=r3 u32PduId=r29
	diab.addi		r4,r1,8		# u8DatabyteIndex=r4
	bl		CanIf_CancelTxConfirmation
	b		.L765
.L773:
# 
#         #ifdef ERR_IPV_FLEXCAN_0015
#             #if(ERR_IPV_FLEXCAN_0015==STD_ON)
#                    /*  {workaround - errata  specific code} */
#             #else
#                 #error : the define ERR_IPV_FLEXCAN_0015==STD_ON must not be STD_OFF
#             #endif
#         #else
#                     }
#                         break;
#         #endif
# 
#     #endif /* (CAN_HW_TRANSMIT_CANCELLATION == STD_ON) */
# 
#         #ifdef ERR_IPV_FLEXCAN_0015
#             #if(ERR_IPV_FLEXCAN_0015==STD_ON)
#                 }
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                 else if((((uint32)(REG_READ32( FLEXCAN_MB((u8HwOffset), (u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBCS_CODE_U32))) == FLEXCAN_MBCS_CODETX_U32) && ((uint32)0x0U != (u32IflagReg & u32TempFlag)))
#             #else
#                 #error : the define ERR_IPV_FLEXCAN_0015 must not be STD_OFF
#             #endif
#         #else
#                         /* Frame was transmitted */
#                     case ( FLEXCAN_MBCS_CODETX_U32 ):
#         #endif
#                 {
#                     /* Clear the interrupt flag - w1c. */
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     REG_WRITE32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanIflag, u32TempFlag);  
	.d2line		2256
.Llo393:
	lis		r3,Can_IflagImask@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,Can_IflagImask@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
.Llo430:
	rlwinm		r26,r26,5,19,26		# u8IflagRegIndex=r26 u8IflagRegIndex=r26
	se_add		r3,r26		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 u8IflagRegIndex=r26
.Llo426:
	rlwinm		r27,r27,3,21,28		# u8HwOffset=r27 u8HwOffset=r27
.Llo427:
	lwzx		r3,r3,r27		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	stw		r25,0(r3)		# pCanMbConfigContainer=r3 u32TempFlag=r25
# 
#                     /*
#                         (CAN058) The Can module interacts among other modules (eg. Diagnostic Event Manager (DEM), Development Error Tracer (DET)) with the CanIf module in a direct way.
#                                 The driver only sees the CanIf module as origin and destination.
#                     */
#                     CanIf_TxConfirmation( Can_ControllerStatuses[controller].u32TxPduId[u8MbIndex]);
	.d2line		2262
	lis		r3,(Can_ControllerStatuses+24)@ha		# pCanMbConfigContainer=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+24)@l		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
.Llo423:
	rlwinm		r28,r28,1,23,30		# u8MbIndex=r28 u8MbIndex=r28
	se_add		r3,r28		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3 u8MbIndex=r28
.Llo394:
	rlwinm		r31,r31,0,24,31		# controller=r31 controller=r31
	e_mulli		r31,r31,232		# controller=r31 controller=r31
.Llo395:
	lhzx		r3,r3,r31		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	bl		CanIf_TxConfirmation
.L765:
#                 }
#         #ifdef ERR_IPV_FLEXCAN_0015
#             #if(ERR_IPV_FLEXCAN_0015==STD_ON)
#                 else /* error condition, this should never occur */
#                 {
#                     /*This is left blank in oreder to respect MISRA rule 14.10*/
#                 }
#             #else
#                 #error : the define ERR_IPV_FLEXCAN_0015  not be STD_OFF
#             #endif
#         #else
#                         break;
#                     default: 
#                         break;
# 
#                 } /* end switch */
#         #endif
#             
#     /*Support for spurious interrupt*/
#     #if (CAN_TXPOLL_SUPPORTED == STD_OFF)
#         }
#         else
#         {
#             /*Clear interrupt status flag when spurious interrupt is detected*/
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             REG_WRITE32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanIflag, u32TempFlag);
#         }
#     #endif
# #ifndef ERR_IPV_FLEXCAN_0015
#     } /*if ( (uint32)0x0U != (u32IflagReg & u32TempFlag) )*/
# #endif
# }/*Can_FlexCan_ProcessTxPoll*/
	.d2line		2295
	.d2epilogue_begin
.Llo398:
	lmw		r25,84(r1)		# offset r1+84  0x54
	.d2_cfa_restore_list	2,10
	lwz		r0,116(r1)		# u32IflagReg=r0
	mtspr		lr,r0		# u32IflagReg=lr
	diab.addi		r1,r1,112		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1206:
	.type		Can_FlexCan_ProcessTxPoll,@function
	.size		Can_FlexCan_ProcessTxPoll,.-Can_FlexCan_ProcessTxPoll
# Number of nodes = 383

# Allocations for Can_FlexCan_ProcessTxPoll
#	?a4		controller
#	?a5		u16MBGlobalIndex
#	?a6		$$194
#	?a7		$$193
#	?a8		pCanMbConfigContainer
#	?a9		u32PduId
#	SP,8		CbkPduInfo
#	?a10		u32MbConfig
#	SP,16		u8CanMbData
#	?a11		u8DatabyteIndex
#	?a12		u8MbIndex
#	?a13		u8HwOffset
#	?a14		u8IflagRegIndex
#	?a15		u32TempFlag
#	?a16		u32IflagReg
# static FUNC (void, CAN_CODE) Can_FlexCan_ProcessRxNormal( CONST(uint8, AUTOMATIC) controller, CONST(uint16, AUTOMATIC) u16MBGlobalIndex )
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         2313,30
#$$ld
.L1239:

#$$bf	Can_FlexCan_ProcessRxNormal,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Can_FlexCan_ProcessRxNormal:
.Llo443:
	stwu		r1,-112(r1)		
	.d2_cfa_def_cfa_offset	112
	mfspr		r0,lr
.Llo474:
	stmw		r27,92(r1)		# offset r1+92  0x5c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,116(r1)		# u32IflagReg=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# controller=r0 controller=r3
.Llo475:
	mr		r3,r4		# u16MBGlobalIndex=r3 u16MBGlobalIndex=r4
	.d2prologue_end
# {
# 
#     VAR(uint32, AUTOMATIC) u32TimeoutCount = 0U;/* Timeout counter. */
	.d2line		2316
.Llo444:
	diab.li		r4,0		# u32TimeoutCount=r4
#     /* Variable for indexing the MBs. */
#     VAR(Can_HwHandleType, AUTOMATIC)      u8MbIndex = 0U;
#     /* Number of data bytes. */
#     VAR(uint8, AUTOMATIC)      u8MbDataLength = 0U;
#     /* Physical data bytes. */
#     VAR(uint8, AUTOMATIC)      u8CanMbData[64];
#     /* Index for data byte of MB. */
#     VAR(uint8, AUTOMATIC)      u8DatabyteIndex = 0U;
#     /* Variable for storing the Hrh. */
#     VAR(Can_HwHandleType, AUTOMATIC)      u32MbHrh = 0U;
#     /* Variables for storing the CanID. */
#     VAR(Can_IdType, AUTOMATIC) u32MbMessageId = 0U;
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)      u8HwOffset = 0U;
#     /* Variable for determining the IFLAG register for every MB: IFLAGx. */
#     VAR(uint8, AUTOMATIC)      u8IflagRegIndex = 0U;
#     /* Variable for determining the mash bit in the IFLAGx register for current MB. */
#     VAR(uint32, AUTOMATIC)     u32TempFlag = 0U;
#     /* Variable for storing the value of IFLAG register. */
#     VAR(uint32, AUTOMATIC)     u32IflagReg = 0U;
#     /* Variable for storing the ConfigReg of the MB. */
#     VAR(uint32, AUTOMATIC)     u32MbConfig = 0U;
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* Variable for detect overflow event */
#     /* VAR(boolean, AUTOMATIC)  bMbOver = (VAR(boolean, AUTOMATIC))FALSE;  */
# #endif
# #if (CAN_FD_MODE_ENABLE == STD_ON)
#     CONST(uint8, AUTOMATIC) u8LengthIndex[8] = { 8U, 12U, 16U, 20U, 24U, 32U, 48U, 64U};
# #endif
# #if (CAN_RXPOLL_SUPPORTED == STD_OFF)
#     /* Variable for storing the value of IMASKx register. */
#     VAR(uint32, AUTOMATIC)     u32ImaskReg = 0U;
# #endif
# 
#     /* Pointer to the MB container structure. */
#     VAR(Can_PtrMBConfigContainerType, AUTOMATIC)   pCanMbConfigContainer = NULL_PTR;
	.d2line		2352
.Llo449:
	diab.li		r5,0		# u8MbIndex=r5
# 
#     pCanMbConfigContainer   = &(Can_pCurrentConfig->MBConfigContainer);
	.d2line		2354
.Llo457:
	lis		r4,Can_pCurrentConfig@ha		# u32TimeoutCount=r4
.Llo453:
	lwz		r4,Can_pCurrentConfig@l(r4)		# u32TimeoutCount=r4 u32TimeoutCount=r4
.Llo493:
	addi		r29,r4,4		# u32TimeoutCount=r4
#     
#     u8CanMbData[0U]=0U;
	.d2line		2356
	stb		r5,8(r1)		# u8MbIndex=r5
#     /* Get the hardware offset for this controller. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[controller].u8ControllerOffset;
	.d2line		2359
	lis		r5,CanStatic_pControlerDescriptors@ha		# u8MbIndex=r5
	lwz		r5,CanStatic_pControlerDescriptors@l(r5)		# u8MbIndex=r5 u8MbIndex=r5
.Llo445:
	rlwinm		r0,r0,0,24,31		# controller=r0 controller=r0
	e_mulli		r0,r0,20		# controller=r0 controller=r0
.Llo446:
	lbzx		r6,r5,r0		# u8HwOffset=r6 u8MbIndex=r5
.Llo470:
	mr		r6,r6		# u8HwOffset=r6 u8HwOffset=r6
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8MbIndex = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
	.d2line		2361
	lwz		r4,4(r4)		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4
.Llo454:
	rlwinm		r28,r3,5,11,26		# u16MBGlobalIndex=r3
	se_add		r4,r28		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4
	lbz		r5,29(r4)		# u8MbIndex=r5 pCanMbConfigContainer=r4
	mr		r5,r5		# u8MbIndex=r5 u8MbIndex=r5
#     /* while(u8MbIndex <= mbindex_end) */
#     {
#         /* Calculate the Index of the IFLAG register. */
#         u8IflagRegIndex = (uint8)((uint8)u8MbIndex >> FLEXCAN_MB_SHIFT5BIT_U8);
	.d2line		2365
	rlwinm		r7,r5,27,29,31		# u8IflagRegIndex=r7 u8MbIndex=r5
.Llo471:
	mr		r7,r7		# u8IflagRegIndex=r7 u8IflagRegIndex=r7
#         
#         /* Get the content of IFLAG register for which corresponds this MB. */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         u32IflagReg = REG_READ32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanIflag);
	.d2line		2370
	lis		r4,Can_IflagImask@ha		# pCanMbConfigContainer=r4
	e_add16i		r4,r4,Can_IflagImask@l		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4
	rlwinm		r0,r7,5,19,26		# controller=r0 u8IflagRegIndex=r7
.Llo447:
	se_add		r4,r0		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4 controller=r0
	rlwinm		r0,r6,3,21,28		# controller=r0 u8HwOffset=r6
.Llo448:
	lwzx		r4,r4,r0		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4
	lwz		r0,0(r4)		# controller=r0 pCanMbConfigContainer=r4
.Llo476:
	mr		r0,r0		# u32IflagReg=r0 u32IflagReg=r0
# 
#         /* Calculate the Flag value. */
#         u32TempFlag = ((uint32)0x1U) << ((uint32)u8MbIndex & FLEXCAN_MASK_32BITS_U32);
	.d2line		2373
	diab.li		r31,1		# u32TempFlag=r31
.Llo473:
	rlwinm		r5,r5,0,27,31		# u8MbIndex=r5 u8MbIndex=r5
	slw		r31,r31,r5		# u32TempFlag=r31 u32TempFlag=r31 u8MbIndex=r5
	mr		r31,r31		# u32TempFlag=r31 u32TempFlag=r31
# 
#         /* Check the interrupt flag. */
#         if ( (uint32)0x0U != (u32IflagReg & u32TempFlag) )
	.d2line		2376
	and.		r0,r0,r31		# u32IflagReg=?a16 u32TempFlag=?a15
.Llo477:
	bc		1,2,.L781	# eq
#         {
# #if (CAN_RXPOLL_SUPPORTED == STD_OFF)
#             /*Get the content of IMASK register for which corresponds this MB. */
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             u32ImaskReg = REG_READ32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanImask);
# 
#             /* Check for spurious interrupt in Interrupt mode */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used*/
#             if ( ((uint32)CAN_CONTROLLERCONFIG_RXPOL_EN_U32 == (CAN_CONTROLLERCONFIG_RXPOL_EN_U32 & CanStatic_pControlerDescriptors[controller].u32Options) )
#             || ((uint32)u32TempFlag == (u32ImaskReg & u32TempFlag)) )
#             {   
# #endif
#                 u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		2390
.Llo458:
	diab.li		r5,2000		# u32TimeoutCount=r5
.L783:
#                 /*Check and wait if the BUSY code is set during the move-in process*/
#                 do
#                 {
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     u32MbConfig = (uint32)REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex)));
	.d2line		2397
.Llo455:
	lis		r4,Can_u32BaseAddress@ha		# pCanMbConfigContainer=r4
	e_add16i		r4,r4,Can_u32BaseAddress@l		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4
	rlwinm		r0,r6,2,22,29		# u32IflagReg=r0 u8HwOffset=r6
.Llo478:
	lwzx		r0,r4,r0		# u32IflagReg=r0 pCanMbConfigContainer=r4
	lis		r4,Can_pCurrentConfig@ha		# pCanMbConfigContainer=r4
	lwz		r4,Can_pCurrentConfig@l(r4)		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4
	lwz		r4,4(r4)		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4
	rlwinm		r28,r3,5,11,26		# u16MBGlobalIndex=r3
	se_add		r4,r28		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4
	lhz		r4,26(r4)		# pCanMbConfigContainer=r4 pCanMbConfigContainer=r4
	se_add		r0,r4		# u32IflagReg=r0 u32IflagReg=r0 pCanMbConfigContainer=r4
	lwzx		r4,r0,r0		# pCanMbConfigContainer=r4 u32IflagReg=r0
	mr		r4,r4		# u32MbConfig=r4 u32MbConfig=r4
#                     u32TimeoutCount--;
	.d2line		2398
	diab.addi		r0,r5,-1		# u32IflagReg=r0 u32TimeoutCount=r5
.Llo479:
	diab.addi		r5,r5,-1		# u32TimeoutCount=r5 u32TimeoutCount=r5
#                 }
	.d2line		2399
	se_btsti		r4,7		# pCanMbConfigContainer=r4
	bc		1,2,.L788	# eq
	se_cmpi		r5,0		# u32TimeoutCount=r5
	bc		0,2,.L783	# ne
.L788:
#                 while ((FLEXCAN_MBCS_CODERXBUSY_U32 == (u32MbConfig & FLEXCAN_MBCS_CODERXBUSY_U32)) && (u32TimeoutCount > (uint32)0x0U));
# 
#         #if (CAN_DEV_ERROR_DETECT == STD_ON)
#                 /* CAN395: If the development error detection for the Can module is enabled, the Can module shall raise the error CAN_E_DATALOST in
#                         case of OVERWRITE or OVERRUN event detection.*/
#                 /* Check if a MBs used to receive data was overwrite */
# 
#                 if(FLEXCAN_MBCS_CODERXOVRR_U32 == (u32MbConfig & FLEXCAN_MBCS_CODE_U32))
#                 {
#                     /* bMbOver = (VAR(boolean, AUTOMATIC))TRUE; */
#                     
#                     (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_MAIN_FUNCTION_READ, (uint8)CAN_E_DATALOST);
#                 }
# 
#         #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#                 /* Create a local copy of the MB to ensure that it is locked out for minimum amount of time.
#                     Read the DLC; this read access also locks the MB. */
#                 u8MbDataLength = (uint8)( (u32MbConfig & FLEXCAN_MBCS_LENGTH_U32) >> FLEXCAN_MBCS_LENGTH_SHIFT_U32);
	.d2line		2417
.Llo456:
	rlwinm		r5,r4,16,28,31		# u32TimeoutCount=r5 u32MbConfig=r4
.Llo459:
	mr		r5,r5		# u8MbDataLength=r5 u8MbDataLength=r5
#                 
#             #if (CAN_FD_MODE_ENABLE == STD_ON)
#                 if   ((((uint8)u8MbDataLength)>=(uint8)FLEXCAN_DATA_LENGTH_MIN_U8) && (((uint8)u8MbDataLength)<=(uint8)FLEXCAN_DATA_LENGTH_MAX_U8))
#                 {
#                    u8MbDataLength = u8LengthIndex[(uint8)u8MbDataLength - FLEXCAN_DATA_LENGTH_OFFSET_U8];
#                 }
#             #endif
# 
#                 /* Prevents that a buffer overflow to be generated by a CAN bus error affecting length field */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 if( u8MbDataLength > ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8MBPayloadLength )
	.d2line		2428
	rlwinm		r0,r5,0,24,31		# u32IflagReg=r0 u8MbDataLength=r5
.Llo480:
	lwz		r30,0(r29)		# pCanMbConfigContainer=r29
	rlwinm		r28,r3,5,11,26		# u16MBGlobalIndex=r3
	se_add		r30,r28
	lbz		r30,28(r30)
	se_cmp		r0,r30		# u32IflagReg=r0
	bc		0,1,.L784	# le
#                 {
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     u8MbDataLength = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8MBPayloadLength;
	.d2line		2431
.Llo481:
	lwz		r5,0(r29)		# u8MbDataLength=r5 pCanMbConfigContainer=r29
	rlwinm		r28,r3,5,11,26		# u16MBGlobalIndex=r3
	se_add		r5,r28		# u8MbDataLength=r5 u8MbDataLength=r5
	lbz		r5,28(r5)		# u8MbDataLength=r5 u8MbDataLength=r5
	mr		r5,r5		# u8MbDataLength=r5 u8MbDataLength=r5
.L784:
#                 }
#                 
#                 /* Get the ID of the message.
#                   For extended IDs the most significant bit mus tbe set - according to Can_IdType requirement - chapter8.2.4 of SWS CAN.*/
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 u32MbMessageId = ((uint32)0x0U == (u32MbConfig & (uint32)FLEXCAN_MBCS_IDE_U32)) ? \
	.d2line		2439
	se_btsti		r4,10		# u32MbConfig=r4
	bc		0,2,.L789	# ne
.Llo489:
	lis		r4,Can_u32BaseAddress@ha		# u32MbConfig=r4
.Llo490:
	e_add16i		r4,r4,Can_u32BaseAddress@l		# u32MbConfig=r4 u32MbConfig=r4
	rlwinm		r0,r6,2,22,29		# u32IflagReg=r0 u8HwOffset=r6
.Llo482:
	lwzx		r0,r4,r0		# u32IflagReg=r0 u32MbConfig=r4
	lis		r4,Can_pCurrentConfig@ha		# u32MbConfig=r4
	lwz		r4,Can_pCurrentConfig@l(r4)		# u32MbConfig=r4 u32MbConfig=r4
	lwz		r4,4(r4)		# u32MbConfig=r4 u32MbConfig=r4
	rlwinm		r28,r3,5,11,26		# u16MBGlobalIndex=r3
	se_add		r4,r28		# u32MbConfig=r4 u32MbConfig=r4
	lhz		r4,26(r4)		# u32MbConfig=r4 u32MbConfig=r4
	se_add		r4,r0		# u32MbConfig=r4 u32MbConfig=r4 u32IflagReg=r0
	lwz		r4,4(r4)		# u32MbConfig=r4 u32MbConfig=r4
	rlwinm		r4,r4,14,21,31		# u32MbConfig=r4 u32MbConfig=r4
.Llo465:
	b		.L790
.L789:
.Llo466:
	lis		r4,Can_u32BaseAddress@ha		# u32MbConfig=r4
.Llo491:
	e_add16i		r4,r4,Can_u32BaseAddress@l		# u32MbConfig=r4 u32MbConfig=r4
	rlwinm		r0,r6,2,22,29		# u32IflagReg=r0 u8HwOffset=r6
.Llo483:
	lwzx		r0,r4,r0		# u32IflagReg=r0 u32MbConfig=r4
	lis		r4,Can_pCurrentConfig@ha		# u32MbConfig=r4
	lwz		r4,Can_pCurrentConfig@l(r4)		# u32MbConfig=r4 u32MbConfig=r4
	lwz		r4,4(r4)		# u32MbConfig=r4 u32MbConfig=r4
	rlwinm		r28,r3,5,11,26		# u16MBGlobalIndex=r3
	se_add		r4,r28		# u32MbConfig=r4 u32MbConfig=r4
	lhz		r4,26(r4)		# u32MbConfig=r4 u32MbConfig=r4
	se_add		r4,r0		# u32MbConfig=r4 u32MbConfig=r4 u32IflagReg=r0
	lwz		r4,4(r4)		# u32MbConfig=r4 u32MbConfig=r4
	rlwinm		r4,r4,0,3,31		# u32MbConfig=r4 u32MbConfig=r4
.Llo467:
	.diab.bseti		r4,0		# u32MbConfig=r4
.L790:
.Llo484:
	mr		r4,r4		# u32MbMessageId=r4 u32MbMessageId=r4
#                                  (Can_IdType)((uint32)((REG_READ32( FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBID_ID_STANDARD_U32)) >> (uint32)(18U))) : \
#                                  (Can_IdType)((uint32)(REG_READ32( FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBID_ID_EXTENDED_U32)) | FLEXCAN_MBC_ID_IDE_U32);
# 
#                 /* Get the ID of the message.
#                   For FD the most significant bit mus tbe set - according to Can_IdType requirement - chapter8.2.4 of SWS CAN.*/
#             #if (CAN_FD_MODE_ENABLE == STD_ON) 
#                 u32MbMessageId = ((uint32)0x0U == ((uint32)(u32MbConfig & (uint32)(FLEXCAN_FD_MB_MESSAGE_U32)))) ? (u32MbMessageId) : (u32MbMessageId | CAN_FD_ID_DESCRIPTOR); /* value if condition is true */
#             #endif
#             
#                 /*
#                    (CAN060) Data mapping by CAN to memory is defined in a way that the CAN data byte which is sent out first is array element 0,
#                            the CAN data byte which is sent out last is array element 7.
#                    (CAN299) The Can module shall copy the L-SDU in a shadow buffer after reception, if the RX buffer cannot be protected (locked)
#                            by CAN Hardware against overwriting by a newly received message.
#                    (CAN300) The Can module shall copy the L-SDU in a shadow buffer, if the CAN Hardware is not globally accessible.
#                 */
# 
#                 for ( u8DatabyteIndex = (uint8)0U; u8DatabyteIndex < u8MbDataLength; u8DatabyteIndex++)
	.d2line		2457
.Llo492:
	diab.li		r30,0		# u8DatabyteIndex=r30
.L785:
.Llo462:
	rlwinm		r27,r30,0,24,31		# u8DatabyteIndex=r30
	rlwinm		r0,r5,0,24,31		# u32IflagReg=r0 u8MbDataLength=r5
.Llo485:
	se_cmp		r27,r0		# u32IflagReg=r0
	bc		0,0,.L787	# ge
#                 {
#                     /* Copy the data  */
#                     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     /* @violates @ref Can_Flexcan_c_REF_12 Violates MISRA 2004 Required Rule 10.3, The value of a complex expression of integer type shall only be cast to. */
#                     u8CanMbData[u8DatabyteIndex] = REG_READ8(FLEXCAN_MB_DATA((uint32)(u8HwOffset), (uint32)(u16MBGlobalIndex),(u8DatabyteIndex))) ;
	.d2line		2464
.Llo486:
	lis		r8,Can_u32BaseAddress@ha
	e_add16i		r8,r8,Can_u32BaseAddress@l
	rlwinm		r0,r6,2,22,29		# u32IflagReg=r0 u8HwOffset=r6
.Llo487:
	lwzx		r0,r8,r0		# u32IflagReg=r0
	lis		r8,Can_pCurrentConfig@ha
	lwz		r28,Can_pCurrentConfig@l(r8)
	lwz		r27,4(r28)
	rlwinm		r28,r3,5,11,26		# u16MBGlobalIndex=r3
	se_add		r28,r27
	lhz		r28,26(r28)
	se_add		r0,r28		# u32IflagReg=r0 u32IflagReg=r0
	rlwinm		r27,r30,0,24,31		# u8DatabyteIndex=r30
	add		r28,r0,r27		# u32IflagReg=r0
	lbz		r0,8(r28)		# u32IflagReg=r0
	diab.addi		r28,r1,8
	stbx		r0,r28,r27		# u32IflagReg=r0
#                 }
	.d2line		2465
	diab.addi		r27,r30,1		# u8DatabyteIndex=r30
	se_addi		r30,1		# u8DatabyteIndex=r30 u8DatabyteIndex=r30
	b		.L785
.L787:
# 
#                 /* Determine Hrh of the message. */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 u32MbHrh = (Can_HwHandleType)((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u32HWObjID;
	.d2line		2469
.Llo450:
	lwz		r0,0(r29)		# u32IflagReg=r0 pCanMbConfigContainer=r29
.Llo451:
	rlwinm		r3,r3,5,11,26		# u16MBGlobalIndex=r3 u16MBGlobalIndex=r3
	se_add		r3,r0		# u16MBGlobalIndex=r3 u16MBGlobalIndex=r3 u32IflagReg=r0
	lwz		r3,20(r3)		# u16MBGlobalIndex=r3 u16MBGlobalIndex=r3
.Llo452:
	mr		r3,r3		# u32MbHrh=r3 u32MbHrh=r3
# 
#                 /* Clear the interrupt flag - w1c. */
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 REG_WRITE32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanIflag, u32TempFlag);
	.d2line		2474
	lis		r30,Can_IflagImask@ha		# u8DatabyteIndex=r30
.Llo463:
	e_add16i		r30,r30,Can_IflagImask@l		# u8DatabyteIndex=r30 u8DatabyteIndex=r30
.Llo472:
	rlwinm		r7,r7,5,19,26		# u8IflagRegIndex=r7 u8IflagRegIndex=r7
	se_add		r7,r30		# u8IflagRegIndex=r7 u8IflagRegIndex=r7 u8DatabyteIndex=r30
	rlwinm		r0,r6,3,21,28		# u32IflagReg=r0 u8HwOffset=r6
.Llo488:
	lwzx		r7,r7,r0		# u8IflagRegIndex=r7 u8IflagRegIndex=r7
	stw		r31,0(r7)		# u8IflagRegIndex=r7 u32TempFlag=r31
#                 
#                 /* Release the internal lock. Reading the Free Running Timer is not mandatory. If not executed the MB remains locked,
#                     unless the CPU reads the C/S word of another MB.*/
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 REG_READ32( FLEXCAN_TIMER(u8HwOffset));
	.d2line		2480
	lis		r7,Can_u32BaseAddress@ha		# u8IflagRegIndex=r7
	e_add16i		r7,r7,Can_u32BaseAddress@l		# u8IflagRegIndex=r7 u8IflagRegIndex=r7
	rlwinm		r6,r6,2,22,29		# u8HwOffset=r6 u8HwOffset=r6
	lwzx		r6,r7,r6		# u8HwOffset=r6 u8IflagRegIndex=r7
	lwz		r0,8(r6)		# u32IflagReg=r0 u8HwOffset=r6
#                 
#             #if (CAN_LPDU_NOTIFICATION_ENABLE == STD_ON)
#                  /*[CAN444] If the L-PDU callout returns false, the L-PDU shall not be processed any further. */
#                  
#                 /* @violates @ref Can_Flexcan_c_REF_4 Violates MISRA 2004 Required Rule 1.2, Taking address of near auto variable */
#                 if ((boolean)TRUE == CanLPduReceiveCalloutFunction((uint8)u32MbHrh, u32MbMessageId, u8MbDataLength, u8CanMbData))
#                 {
#             #endif
#                          /* @violates @ref Can_Flexcan_c_REF_4 Violates MISRA 2004 Required Rule 1.2, Taking address of near auto variable */
#                         CanIf_RxIndication( u32MbHrh, u32MbMessageId, u8MbDataLength, u8CanMbData);
	.d2line		2490
	rlwinm		r3,r3,0,24,31		# u32MbHrh=r3 u32MbHrh=r3
.Llo460:
	rlwinm		r5,r5,0,24,31		# u8MbDataLength=r5 u8MbDataLength=r5
.Llo461:
	diab.addi		r6,r1,8		# u8HwOffset=r6
.Llo468:
	mr		r4,r4		# u32MbMessageId=r4 u32MbMessageId=r4
.Llo469:
	bl		CanIf_RxIndication
.L781:
#                 #if (CAN_DEV_ERROR_DETECT == STD_ON)
#                     /* If the overflow event occurs */
#                     /* if ((VAR(boolean, AUTOMATIC))TRUE == bMbOver) */
#                     /* { */
#                         /* u8MbIndex = mbindex_end; */
#                     /* } */
#                 #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#             #if (CAN_LPDU_NOTIFICATION_ENABLE == STD_ON)
#                 }
#             #endif
# 
#         #if (CAN_RXPOLL_SUPPORTED == STD_OFF)
#             }
#             else
#             {
#                 /*Clear interrupt status flag when spurious interrupt is detected*/
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 REG_WRITE32(Can_IflagImask[u8IflagRegIndex][u8HwOffset].u32CanIflag, u32TempFlag);
#                 
#             }
#         #endif      
#         }/*if ( (uint32)0x0U != (u32IflagReg & u32TempFlag) )*/
# 
#     } /* end while */
# }
	.d2line		2516
	.d2epilogue_begin
.Llo464:
	lmw		r27,92(r1)		# offset r1+92  0x5c
	.d2_cfa_restore_list	3,10
	lwz		r0,116(r1)		# u32IflagReg=r0
	mtspr		lr,r0		# u32IflagReg=lr
	diab.addi		r1,r1,112		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1240:
	.type		Can_FlexCan_ProcessRxNormal,@function
	.size		Can_FlexCan_ProcessRxNormal,.-Can_FlexCan_ProcessRxNormal
# Number of nodes = 343

# Allocations for Can_FlexCan_ProcessRxNormal
#	?a4		controller
#	?a5		u16MBGlobalIndex
#	?a6		$$195
#	?a7		u32TimeoutCount
#	?a8		u8MbIndex
#	?a9		u8MbDataLength
#	SP,8		u8CanMbData
#	?a10		u8DatabyteIndex
#	?a11		u32MbHrh
#	?a12		u32MbMessageId
#	?a13		u8HwOffset
#	?a14		u8IflagRegIndex
#	?a15		u32TempFlag
#	?a16		u32IflagReg
#	?a17		u32MbConfig
#	?a18		pCanMbConfigContainer
# FUNC (void, CAN_CODE) Can_FlexCan_InitVariables( void )
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2834,23
#$$ld
.L1275:

#$$bf	Can_FlexCan_InitVariables,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Can_FlexCan_InitVariables
	.d2_cfa_start __cie
Can_FlexCan_InitVariables:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
#     /* Index CAN controllers from configuration. */
#     VAR(uint8, AUTOMATIC) u8CtrlIndex = 0U;
	.d2line		2838
	diab.li		r3,0		# u8CtrlIndex=r3
# #if (CAN_TX_RX_INTR_SUPPORTED == STD_ON)
#     VAR(uint8, AUTOMATIC) u8MbIndex = 0U;
#     VAR(uint16, AUTOMATIC) u16MBGlobalIndex = 0U;
# 
#     /* Pointer to the MB container structure. */
#     VAR(Can_PtrMBConfigContainerType, AUTOMATIC)   pCanMbConfigContainer = NULL_PTR;
#     
#     pCanMbConfigContainer   = &(Can_pCurrentConfig->MBConfigContainer);
# #endif
# 
#     /* Init all global varibales/statuses for all controllers. */
#     for ( u8CtrlIndex = 0U; u8CtrlIndex < (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured; u8CtrlIndex++)
.L800:
	.d2line		2850
.Llo494:
	rlwinm		r6,r3,0,24,31		# u8CtrlIndex=r3
	lis		r4,CanStatic_pCurrentConfig@ha
	lwz		r4,CanStatic_pCurrentConfig@l(r4)
	lbz		r0,0(r4)
	se_cmp		r6,r0
	bc		0,0,.L799	# ge
#     {
#         /* Init INT Disable nesting indicator. It is incremented after every call of Can_DisableControllerInterrupts().
#            The function Can_EnableControllerInterrupts() shall perform no action when Can_DisableControllerInterrupts() has not been called before. */
#         Can_ControllerStatuses[u8CtrlIndex].s8IntDisableLevel = (sint8)0;
	.d2line		2854
	diab.li		r5,0
	lis		r4,(Can_ControllerStatuses+216)@ha
	e_add16i		r4,r4,(Can_ControllerStatuses+216)@l
	rlwinm		r6,r3,0,24,31		# u8CtrlIndex=r3
	e_mulli		r7,r6,232
	stbux		r5,r4,r7
#         /* Set to null the first Tx MB index for every controller. */
#         Can_ControllerStatuses[u8CtrlIndex].u8FirstTxMBIndex = (uint8)0U;
	.d2line		2856
	lis		r4,(Can_ControllerStatuses+218)@ha
	e_add16i		r4,r4,(Can_ControllerStatuses+218)@l
	stbux		r5,r4,r7
# 
#         /* Set  interrupt mode status to interrupt enabled mode.
#            This is needed in order to support the implementation of requirements CAN425 and CAN426 into Can_SetControllerMode API. */
#         Can_ControllerStatuses[u8CtrlIndex].eInterruptMode= CAN_INTERRUPT_ENABLED;
	.d2line		2860
	diab.li		r0,1
	lis		r4,(Can_ControllerStatuses+220)@ha
	e_add16i		r4,r4,(Can_ControllerStatuses+220)@l
	stwx		r0,r4,r7
# 
#         /* Set the controller state to STOP after power-up */
#         Can_ControllerStatuses[u8CtrlIndex].ControllerState = CAN_STOPPED;
	.d2line		2863
	lis		r4,(Can_ControllerStatuses+224)@ha
	e_add16i		r4,r4,(Can_ControllerStatuses+224)@l
	stwx		r5,r4,r7
# 
#         /* Set the controller current baudrate index as default */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#         Can_ControllerStatuses[u8CtrlIndex].u8CurrentBaudRateIndex = (uint8)(Can_pControlerDescriptors[u8CtrlIndex].u8DefaultBaudRateIndex);
	.d2line		2867
	lis		r4,Can_pControlerDescriptors@ha
	lwz		r4,Can_pControlerDescriptors@l(r4)
	rlwinm		r0,r6,4,0,27
	se_slwi		r6,2
	subf		r6,r6,r0
	se_add		r4,r6
	lbz		r0,2(r4)
	lis		r4,(Can_ControllerStatuses+228)@ha
	e_add16i		r4,r4,(Can_ControllerStatuses+228)@l
	stbx		r0,r4,r7
#         
# #if (CAN_DUAL_CLOCK_MODE == STD_ON)
#         /* Set the controller clock mode to normal clock */
#         Can_ControllerStatuses[u8CtrlIndex].CanClockMode = CAN_NORMAL;
# #endif /* (CAN_DUAL_CLOCK_MODE == STD_ON) */
#     }
	.d2line		2873
	diab.addi		r6,r3,1		# u8CtrlIndex=r3
	se_addi		r3,1		# u8CtrlIndex=r3 u8CtrlIndex=r3
	b		.L800
.L799:
# #if (CAN_TX_RX_INTR_SUPPORTED == STD_ON)
#     /* Map tu16MBGlobalIndex (the index of HOH in the HOW array) into the u16MBMapping array*/
#     for ( u16MBGlobalIndex = 0U; u16MBGlobalIndex < pCanMbConfigContainer->uMessageBufferConfigCount; u16MBGlobalIndex++)
#     {
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         u8MbIndex = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         u8CtrlIndex = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8ControllerId;
#         Can_ControllerStatuses[u8CtrlIndex].u16MBMapping[u8MbIndex] = u16MBGlobalIndex;
#     }
# #endif /* (CAN_TX_RX_INTR_SUPPORTED == STD_ON) */
# }
	.d2line		2885
	.d2epilogue_begin
.Llo495:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1276:
	.type		Can_FlexCan_InitVariables,@function
	.size		Can_FlexCan_InitVariables,.-Can_FlexCan_InitVariables
# Number of nodes = 83

# Allocations for Can_FlexCan_InitVariables
#	?a4		$$228
#	?a5		u8CtrlIndex
# FUNC (void, CAN_CODE) Can_FlexCan_Init( VAR(uint8, AUTOMATIC) Controller )
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2902,23
#$$ld
.L1282:

#$$bf	Can_FlexCan_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		Can_FlexCan_Init
	.d2_cfa_start __cie
Can_FlexCan_Init:
.Llo496:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# Controller=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Controller=r0 Controller=r3
	.d2prologue_end
# {
# 
#     VAR(uint8, AUTOMATIC)  u8HwOffset = 0U;/* Hardware Can controller offset. */
	.d2line		2905
	diab.li		r3,0		# u8HwOffset=r3
# 
#     VAR(uint32, AUTOMATIC)         u32TimeoutCount = 0U;/* Timeout counter. */
# 
#      /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used  */
#     /* Get the hardware offset for this controller. */
#     u8HwOffset = CanStatic_pControlerDescriptors[Controller].u8ControllerOffset;
	.d2line		2911
.Llo497:
	lis		r3,CanStatic_pControlerDescriptors@ha		# u8HwOffset=r3
.Llo512:
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# u8HwOffset=r3 u8HwOffset=r3
.Llo498:
	rlwinm		r0,r0,0,24,31		# Controller=r0 Controller=r0
	e_mulli		r0,r0,20		# Controller=r0 Controller=r0
.Llo499:
	lbzx		r4,r3,r0		# u8HwOffset=r4 u8HwOffset=r3
	mr		r4,r4		# u8HwOffset=r4 u8HwOffset=r4
# 
#     /* Enter Freeze mode after enabling, Self-Reception disabled, individual MB filter masks set. */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     REG_WRITE32( FLEXCAN_MCR(u8HwOffset), (uint32)(FLEXCAN_RESERVED_MASK((uint32)(FLEXCAN_MCR_MDIS_U32 | FLEXCAN_MCR_FRZ_U32 | FLEXCAN_MCR_HALT_U32 | FLEXCAN_MCR_SRXDIS_U32), FLEXCAN_MCR_NULL_MASK_U32, FLEXCAN_MCR_RESERVED_MASK_U32 )));
	.d2line		2916
	e_lis		r0,-10222		# Controller=r0
.Llo500:
	lis		r3,Can_u32BaseAddress@ha		# u8HwOffset=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8HwOffset=r3 u8HwOffset=r3
	rlwinm		r6,r4,2,22,29		# u8HwOffset=r4
	lwzx		r3,r3,r6		# u8HwOffset=r3 u8HwOffset=r3
	stw		r0,0(r3)		# u8HwOffset=r3 Controller=r0
# 
# 
#     /* load local time-out variable with configured time-out value*/
#     u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		2920
	diab.li		r3,2000		# u32TimeoutCount=r3
.L806:
#     
#     /* Wait until enter to low power mode */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     while ( (FLEXCAN_MCR_LPMACK_U32 != ((uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset)) & FLEXCAN_MCR_LPMACK_U32)) && \
	.d2line		2925
.Llo501:
	lis		r5,Can_u32BaseAddress@ha
.Llo513:
	e_add16i		r5,r5,Can_u32BaseAddress@l
	rlwinm		r6,r4,2,22,29		# u8HwOffset=r4
	lwzx		r5,r5,r6
	lwz		r0,0(r5)		# Controller=r0
.Llo502:
	se_btsti		r0,11		# Controller=r0
	bc		0,2,.L807	# ne
.Llo503:
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L807	# eq
#             (u32TimeoutCount > (uint32)0x0U) \
#           )
#     {
#         u32TimeoutCount--;
	.d2line		2929
	diab.addi		r0,r3,-1		# Controller=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
	b		.L806
.L807:
#     }
# 
# 
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     REG_BIT_CLEAR32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_MDIS_U32);
	.d2line		2935
.Llo517:
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo518:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r6,r4,2,22,29		# u8HwOffset=r4
	lwzx		r3,r3,r6		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# Controller=r0 u32TimeoutCount=r3
.Llo504:
	.diab.bclri		r0,0		# Controller=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 Controller=r0
#        
#     
#     /* load local time-out variable with configured time-out value*/
#     u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		2939
	diab.li		r3,2000		# u32TimeoutCount=r3
.L808:
#     
#     /* Wait until exit from low power mode */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     while ( (FLEXCAN_MCR_LPMACK_U32 == ((uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset)) & FLEXCAN_MCR_LPMACK_U32)) && \
	.d2line		2944
.Llo505:
	lis		r5,Can_u32BaseAddress@ha
	e_add16i		r5,r5,Can_u32BaseAddress@l
	rlwinm		r6,r4,2,22,29		# u8HwOffset=r4
	lwzx		r5,r5,r6
	lwz		r0,0(r5)		# Controller=r0
.Llo506:
	se_btsti		r0,11		# Controller=r0
	bc		1,2,.L809	# eq
.Llo507:
	se_cmpi		r3,0		# u32TimeoutCount=r3
	bc		1,2,.L809	# eq
#             (u32TimeoutCount > (uint32)0x0U) \
#           )
#     {
# 
#         u32TimeoutCount--;
	.d2line		2949
	diab.addi		r0,r3,-1		# Controller=r0 u32TimeoutCount=r3
	diab.addi		r3,r3,-1		# u32TimeoutCount=r3 u32TimeoutCount=r3
	b		.L808
.L809:
#     }        
# 
#     /*
#        (CAN259) The function Can_Init shall set all CAN controllers in the state CANIF_CS_STOPPED.
#        (CAN260) The function Can_ChangeBaudrate shall maintain the CAN controller in the state CANIF_CS_STOPPED.
#              The function Can_ChangeBaudrate shall ensure that any settings that will cause the CAN controller to participate in the network are not set.
#     */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_FRZ_U32);
	.d2line		2959
.Llo519:
	lis		r5,Can_u32BaseAddress@ha		# u32TimeoutCount=r5
.Llo520:
	e_add16i		r5,r5,Can_u32BaseAddress@l		# u32TimeoutCount=r5 u32TimeoutCount=r5
	rlwinm		r6,r4,2,22,29		# u8HwOffset=r4
	lwzx		r3,r5,r6		# u32TimeoutCount=r3 u32TimeoutCount=r5
	lwz		r0,0(r3)		# Controller=r0 u32TimeoutCount=r3
.Llo508:
	.diab.bseti		r0,1		# Controller=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 Controller=r0
#     
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_HALT_U32);
	.d2line		2963
	lwzx		r3,r5,r6		# u32TimeoutCount=r3 u32TimeoutCount=r5
	lwz		r0,0(r3)		# Controller=r0 u32TimeoutCount=r3
	.diab.bseti		r0,3		# Controller=r0
	stw		r0,0(r3)		# u32TimeoutCount=r3 Controller=r0
#             
#     u32TimeoutCount = (uint32)CAN_TIMEOUT_DURATION;
	.d2line		2965
	diab.li		r5,2000		# u32TimeoutCount=r5
.L810:
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     while ( (FLEXCAN_MCR_FRZACK_U32 != ((uint32)REG_READ32( FLEXCAN_MCR(u8HwOffset)) & FLEXCAN_MCR_FRZACK_U32)) && \
	.d2line		2968
.Llo509:
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
	rlwinm		r6,r4,2,22,29		# u8HwOffset=r4
	lwzx		r3,r3,r6		# u32TimeoutCount=r3 u32TimeoutCount=r3
	lwz		r0,0(r3)		# Controller=r0 u32TimeoutCount=r3
.Llo510:
	se_btsti		r0,7		# Controller=r0
	bc		0,2,.L811	# ne
.Llo511:
	se_cmpi		r5,0		# u32TimeoutCount=r5
	bc		1,2,.L811	# eq
#             (u32TimeoutCount > (uint32)0x0U) \
#           )
#     {
#         u32TimeoutCount--;
	.d2line		2972
	diab.addi		r0,r5,-1		# Controller=r0 u32TimeoutCount=r5
	diab.addi		r5,r5,-1		# u32TimeoutCount=r5 u32TimeoutCount=r5
	b		.L810
.L811:
#     }
# #ifdef CAN_ENABLE_USER_MODE_SUPPORT
# #if (STD_ON == CAN_ENABLE_USER_MODE_SUPPORT)
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
# /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     REG_BIT_CLEAR32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_SUPV_U32);
# #endif
# #endif
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     REG_BIT_SET32( FLEXCAN_MCR(u8HwOffset), FLEXCAN_MCR_SRXDIS_U32);
	.d2line		2983
.Llo514:
	lis		r3,Can_u32BaseAddress@ha		# u32TimeoutCount=r3
.Llo521:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32TimeoutCount=r3 u32TimeoutCount=r3
.Llo515:
	rlwinm		r4,r4,2,22,29		# u8HwOffset=r4 u8HwOffset=r4
	lwzx		r4,r3,r4		# u8HwOffset=r4 u32TimeoutCount=r3
	lwz		r3,0(r4)		# u32TimeoutCount=r3 u8HwOffset=r4
	.diab.bseti		r3,14		# u32TimeoutCount=r3
	stw		r3,0(r4)		# u8HwOffset=r4 u32TimeoutCount=r3
# }
	.d2line		2984
	.d2epilogue_begin
	lwz		r0,20(r1)		# Controller=r0
	mtspr		lr,r0		# Controller=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo516:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1283:
	.type		Can_FlexCan_Init,@function
	.size		Can_FlexCan_Init,.-Can_FlexCan_Init
# Number of nodes = 136

# Allocations for Can_FlexCan_Init
#	?a4		Controller
#	?a5		$$199
#	?a6		$$198
#	?a7		$$197
#	?a8		$$196
#	?a9		u8HwOffset
#	?a10		u32TimeoutCount
# FUNC (Can_ReturnType, CAN_CODE) Can_FlexCan_SetControllerMode( VAR(uint8, AUTOMATIC) Controller,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3562,33
#$$ld
.L1292:

#$$bf	Can_FlexCan_SetControllerMode,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_SetControllerMode
	.d2_cfa_start __cie
Can_FlexCan_SetControllerMode:
.Llo522:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# Transition=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Controller=r3 Controller=r3
	mr		r4,r4		# pCanControlerDescriptor=r4 pCanControlerDescriptor=r4
	mr		r0,r5		# Transition=r0 Transition=r5
.Llo533:
	mr		r5,r6		# canif_notification_required=r5 canif_notification_required=r6
	.d2prologue_end
#                                                            P2CONST(Can_ControlerDescriptorType, AUTOMATIC, CAN_APPL_CONST) pCanControlerDescriptor,
#                                                            VAR(Can_StateTransitionType, AUTOMATIC) Transition,
#                                                            VAR(boolean, AUTOMATIC) canif_notification_required)
# {
# 
#     /* Variable for return status. */
#     VAR(Can_ReturnType, AUTOMATIC)  eReturnValue = CAN_NOT_OK;
	.d2line		3569
.Llo534:
	diab.li		r7,1		# eReturnValue=r7
#     
#     /*
#       (CAN017) The function Can_SetControllerMode shall perform software triggered state transitions of the CAN controller State machine.
#     */
#     switch (Transition)
	.d2line		3574
.Llo538:
	mr.		r6,r0		# Transition=r6 Transition=?a6
.Llo536:
	bc		1,2,.L873	# eq
.Llo535:
	se_cmpi		r6,1
	bc		1,2,.L871	# eq
	se_cmpi		r6,2
	bc		1,2,.L874	# eq
.Llo530:
	se_cmpi		r6,3
	bc		1,2,.L875	# eq
	b		.L872
.L871:
#     {
#         /* CANIF_CS_STARTED -> CANIF_CS_STOPPED. */
#         /*
#            (CAN283) The function Can_SetControllerMode(CAN_T_STOP) shall not call a cancellation notification.
#         */
#         case (CAN_T_STOP):
#             eReturnValue = Can_FlexCan_SetControllerToStopMode(Controller, pCanControlerDescriptor, canif_notification_required);
	.d2line		3581
	mr		r3,r3		# Controller=r3 Controller=r3
.Llo523:
	mr		r4,r4		# pCanControlerDescriptor=r4 pCanControlerDescriptor=r4
.Llo531:
	mr		r5,r5		# canif_notification_required=r5 canif_notification_required=r5
.Llo537:
	bl		Can_FlexCan_SetControllerToStopMode
	mr		r7,r3		# eReturnValue=r7 eReturnValue=r3
	b		.L872
.L873:
#             break;
# 
#         /* CANIF_CS_STOPPED -> CANIF_CS_STARTED. */
#         case (CAN_T_START):
#             eReturnValue = Can_FlexCan_SetControllerToStartMode(Controller, pCanControlerDescriptor);
	.d2line		3586
.Llo524:
	mr		r3,r3		# Controller=r3 Controller=r3
.Llo525:
	mr		r4,r4		# pCanControlerDescriptor=r4 pCanControlerDescriptor=r4
.Llo532:
	bl		Can_FlexCan_SetControllerToStartMode
	mr		r7,r3		# eReturnValue=r7 eReturnValue=r3
	b		.L872
.L874:
#             break;
#             
#         /* CANIF_CS_STOPPED -> CANIF_CS_SLEEP. */
#         case (CAN_T_SLEEP):
#             eReturnValue = Can_FlexCan_SetControllerToSleepMode(Controller);
	.d2line		3591
.Llo526:
	mr		r3,r3		# Controller=r3 Controller=r3
.Llo527:
	bl		Can_FlexCan_SetControllerToSleepMode
	mr		r7,r3		# eReturnValue=r7 eReturnValue=r3
	b		.L872
.L875:
#             break;
# 
#         /* CANIF_CS_SLEEP -> CANIF_CS_STOPPED */
#         case (CAN_T_WAKEUP):
#             eReturnValue = Can_FlexCan_SetControllerToWakeupMode(Controller);
	.d2line		3596
.Llo528:
	mr		r3,r3		# Controller=r3 Controller=r3
.Llo529:
	bl		Can_FlexCan_SetControllerToWakeupMode
	mr		r7,r3		# eReturnValue=r7 eReturnValue=r3
.L872:
#             break;
#                 
#             /* Unknown transition requested. */
#             default:
#                 /*
#                    (CAN200) If development error detection for the Can module is enabled: if an invalid transition has been requested, the function Can_SetControllerMode shall raise the error CAN_E_TRANSITION and return CAN_NOT_OK.
#                 */
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#                 
#                 (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_SET_CONTROLLER_MODE, (uint8)CAN_E_TRANSITION);
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#                 break;
# 
#         } /* end switch */
# 
#     return (eReturnValue);
	.d2line		3612
	mr		r3,r7		# eReturnValue=r3 eReturnValue=r7
# }
	.d2line		3613
	.d2epilogue_begin
	lwz		r0,20(r1)		# Transition=r0
	mtspr		lr,r0		# Transition=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo539:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1293:
	.type		Can_FlexCan_SetControllerMode,@function
	.size		Can_FlexCan_SetControllerMode,.-Can_FlexCan_SetControllerMode
# Number of nodes = 45

# Allocations for Can_FlexCan_SetControllerMode
#	?a4		Controller
#	?a5		pCanControlerDescriptor
#	?a6		Transition
#	?a7		canif_notification_required
#	?a8		eReturnValue
# FUNC (void, CAN_CODE) Can_FlexCan_DisableControllerInterrupts( VAR(uint8, AUTOMATIC) Controller)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3630,23
#$$ld
.L1305:

#$$bf	Can_FlexCan_DisableControllerInterrupts,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_DisableControllerInterrupts
	.d2_cfa_start __cie
Can_FlexCan_DisableControllerInterrupts:
.Llo540:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Controller=r31 Controller=r3
	.d2prologue_end
# {
# 
#     SchM_Enter_Can_CAN_EXCLUSIVE_AREA_00();
	.d2line		3633
.Llo541:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_00
#     /*
#        (CAN202) When Can_DisableControllerInterrupts has been called several times, Can_EnableControllerInterrupts must be called
#                 as many times before the interrupts are re-enabled.
#     */
#     Can_ControllerStatuses[Controller].s8IntDisableLevel++;
	.d2line		3638
.Llo542:
	lis		r4,(Can_ControllerStatuses+216)@ha
	e_add16i		r4,r4,(Can_ControllerStatuses+216)@l
	rlwinm		r0,r31,0,24,31		# Controller=r31
	e_mulli		r0,r0,232
	lbzux		r3,r4,r0
	se_addi		r3,1
	stb		r3,0(r4)
# 
#     /* If nesting level is zero or below zero; <0 needed for reentrancy. */
#     /*
#        (CAN049) The function Can_DisableControllerInterrupts shall disable all interrupts for this CAN controller only at the first call of this function.
#     */
#     if ( (sint8)1 == Can_ControllerStatuses[Controller].s8IntDisableLevel )
	.d2line		3644
	lbzx		r0,r0,r4
	extsb		r0,r0
	se_cmpi		r0,1
	bc		0,2,.L883	# ne
#     {
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_00();
	.d2line		3646
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_00
#         /* Switch to disabled mode. */
#         Can_ControllerStatuses[Controller].eInterruptMode = CAN_INTERRUPT_DISABLED;
	.d2line		3648
	diab.li		r4,0
	lis		r3,(Can_ControllerStatuses+220)@ha		# Controller=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+220)@l		# Controller=r3 Controller=r3
	rlwinm		r0,r31,0,24,31		# Controller=r31
	e_mulli		r0,r0,232
	stwx		r4,r3,r0		# Controller=r3
#         Can_FlexCan_DisableInterrupts(Controller);
	.d2line		3649
	mr		r3,r31		# Controller=r3 Controller=r31
	bl		Can_FlexCan_DisableInterrupts
	b		.L882
.L883:
#     }
#     else
#     {
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_00();
	.d2line		3653
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_00
.L882:
#     }
# }
	.d2line		3655
	.d2epilogue_begin
.Llo543:
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
.L1306:
	.type		Can_FlexCan_DisableControllerInterrupts,@function
	.size		Can_FlexCan_DisableControllerInterrupts,.-Can_FlexCan_DisableControllerInterrupts
# Number of nodes = 48

# Allocations for Can_FlexCan_DisableControllerInterrupts
#	?a4		Controller
#	?a5		$$216
# FUNC (void, CAN_CODE) Can_FlexCan_EnableControllerInterrupts( VAR(uint8, AUTOMATIC) Controller,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3672,23
#$$ld
.L1311:

#$$bf	Can_FlexCan_EnableControllerInterrupts,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_EnableControllerInterrupts
	.d2_cfa_start __cie
Can_FlexCan_EnableControllerInterrupts:
.Llo544:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Controller=r31 Controller=r3
.Llo545:
	mr		r29,r4		# pCanControlerDescriptor=r29 pCanControlerDescriptor=r4
	.d2prologue_end
#                                                           P2CONST(Can_ControlerDescriptorType, AUTOMATIC, CAN_APPL_CONST) pCanControlerDescriptor )
# {
#     /* Variable that tells if disable ints was called at least once before. */
#     VAR(uint8, AUTOMATIC)   u8DisCalledBefore = 0U;
	.d2line		3676
.Llo546:
	diab.li		r30,0		# u8DisCalledBefore=r30
# 
# 
#     /*
#        (CAN202) When Can_DisableControllerInterrupts has been called several times, Can_EnableControllerInterrupts must be called as many
#                times before the interrupts are re-enabled.
#     */
#     SchM_Enter_Can_CAN_EXCLUSIVE_AREA_01();
	.d2line		3683
.Llo550:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_01
#     
#     if ( Can_ControllerStatuses[Controller].s8IntDisableLevel > (sint8)0 )
	.d2line		3685
.Llo548:
	lis		r3,(Can_ControllerStatuses+216)@ha
	e_add16i		r3,r3,(Can_ControllerStatuses+216)@l
	rlwinm		r0,r31,0,24,31		# Controller=r31
	e_mulli		r0,r0,232
	se_add		r0,r3
	lbzx		r0,r0,r0
	extsb		r0,r0
	se_cmpi		r0,0
	bc		0,1,.L888	# le
#     {
#         /* When s8IntDisableLevel is greater than 0  means Can_DisableControllerInterrupts was called at least once before this call of current function. */
#         
#         /* Decrement the nesting level. */
#         Can_ControllerStatuses[Controller].s8IntDisableLevel--;
	.d2line		3690
.Llo549:
	lis		r4,(Can_ControllerStatuses+216)@ha
	e_add16i		r4,r4,(Can_ControllerStatuses+216)@l
	rlwinm		r0,r31,0,24,31		# Controller=r31
	e_mulli		r0,r0,232
	lbzux		r3,r4,r0
	diab.addi		r3,r3,-1
	stb		r3,0(r4)
# 
#         u8DisCalledBefore = (uint8)0x1U;
	.d2line		3692
	diab.li		r30,1		# u8DisCalledBefore=r30
.L888:
#     }
# 
#     /* Can_DisableControllerInterrupts and Can_EnableControllerInterrupts do not modify the software flags. */
# 
#     /*
#        (CAN208) The function Can_EnableControllerInterrupts shall perform no action when Can_DisableControllerInterrupts has not been called before.
#     */
#     if ( ((sint8)0 == Can_ControllerStatuses[Controller].s8IntDisableLevel) && ((uint8)0x1U == u8DisCalledBefore) )
	.d2line		3700
	lis		r3,(Can_ControllerStatuses+216)@ha
	e_add16i		r3,r3,(Can_ControllerStatuses+216)@l
	rlwinm		r0,r31,0,24,31		# Controller=r31
	e_mulli		r0,r0,232
	se_add		r0,r3
	lbzx		r0,r0,r0
	extsb		r0,r0
	se_cmpi		r0,0
	bc		0,2,.L889	# ne
	rlwinm		r30,r30,0,24,31		# u8DisCalledBefore=r30 u8DisCalledBefore=r30
	se_cmpi		r30,1		# u8DisCalledBefore=r30
	bc		0,2,.L889	# ne
#     {
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_01();
	.d2line		3702
.Llo551:
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_01
#         /* Switch to enabled mode. */
#         Can_ControllerStatuses[Controller].eInterruptMode = CAN_INTERRUPT_ENABLED;
	.d2line		3704
	diab.li		r4,1
	lis		r3,(Can_ControllerStatuses+220)@ha		# Controller=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+220)@l		# Controller=r3 Controller=r3
	rlwinm		r0,r31,0,24,31		# Controller=r31
	e_mulli		r0,r0,232
	stwx		r4,r3,r0		# Controller=r3
#         Can_FlexCan_EnableInterrupts(Controller, pCanControlerDescriptor);
	.d2line		3705
	mr		r3,r31		# Controller=r3 Controller=r31
	mr		r4,r29		# pCanControlerDescriptor=r4 pCanControlerDescriptor=r29
	bl		Can_FlexCan_EnableInterrupts
	b		.L887
.L889:
#     }
#     else
#     {
#         SchM_Exit_Can_CAN_EXCLUSIVE_AREA_01();
	.d2line		3709
.Llo552:
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_01
.L887:
#     }
# }
	.d2line		3711
	.d2epilogue_begin
.Llo547:
	lmw		r29,20(r1)		# offset r1+20  0x14
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
.L1312:
	.type		Can_FlexCan_EnableControllerInterrupts,@function
	.size		Can_FlexCan_EnableControllerInterrupts,.-Can_FlexCan_EnableControllerInterrupts
# Number of nodes = 73

# Allocations for Can_FlexCan_EnableControllerInterrupts
#	?a4		Controller
#	?a5		pCanControlerDescriptor
#	?a6		$$217
#	?a7		u8DisCalledBefore
# FUNC (void, CAN_CODE) Can_FlexCan_Cancel( VAR(uint8, AUTOMATIC) controller,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3732,23
#$$ld
.L1320:

#$$bf	Can_FlexCan_Cancel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,cr0,lr
	.globl		Can_FlexCan_Cancel
	.d2_cfa_start __cie
Can_FlexCan_Cancel:
.Llo553:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# u16MBGlobalIndex=r0
	.d2_cfa_offset    108,-1
	mr		r5,r3		# controller=r5 controller=r3
	mr		r0,r4		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r4
	.d2prologue_end
#                                           VAR(uint16, AUTOMATIC) u16MBGlobalIndex )
# {
#     VAR(uint8, AUTOMATIC)  u8MbIndex = 0U;
	.d2line		3735
.Llo561:
	diab.li		r3,0		# u8MbIndex=r3
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)  u8HwOffset = 0U;
#     /* Some temporary variables for registers read/write.  */
#     /* Configuration register for current MB. */
#     VAR(uint32, AUTOMATIC) u32MbConfig = 0U;
#     
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8MbIndex = ((Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
	.d2line		3743
.Llo554:
	lis		r4,Can_pCurrentConfig@ha
	lwz		r3,Can_pCurrentConfig@l(r4)		# u8MbIndex=r3
.Llo563:
	lwz		r3,4(r3)		# u8MbIndex=r3 u8MbIndex=r3
	rlwinm		r7,r0,5,11,26		# u16MBGlobalIndex=r0
	se_add		r3,r7		# u8MbIndex=r3 u8MbIndex=r3
	lbz		r8,29(r3)		# u8MbIndex=r8 u8MbIndex=r3
.Llo564:
	mr		r3,r8		# u8MbIndex=r3 u8MbIndex=r8
#     /* Tell the interrupt routine that cancellation of this MB is in progress. */
#     Can_ControllerStatuses[controller].u32CancelMBIndex = (Can_HwHandleType)u8MbIndex;
	.d2line		3745
.Llo565:
	lis		r3,(Can_ControllerStatuses+217)@ha		# u8MbIndex=r3
	e_add16i		r3,r3,(Can_ControllerStatuses+217)@l		# u8MbIndex=r3 u8MbIndex=r3
.Llo555:
	rlwinm		r5,r5,0,24,31		# controller=r5 controller=r5
	e_mulli		r6,r5,232		# u8HwOffset=r6 controller=r5
.Llo569:
	se_add		r3,r6		# u8MbIndex=r3 u8MbIndex=r3 u8HwOffset=r6
	stbx		r8,r0,r3		# u16MBGlobalIndex=r0 u8MbIndex=r8
#     /* Get the hardware offset for this controller. Note that hardware offset may not be the same with the controller index from the 'Can_ControlerDescriptorType' structure. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used*/
#     u8HwOffset = CanStatic_pControlerDescriptors[controller].u8ControllerOffset;
	.d2line		3748
	lis		r3,CanStatic_pControlerDescriptors@ha		# u8MbIndex=r3
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# u8MbIndex=r3 u8MbIndex=r3
	e_mulli		r5,r5,20		# controller=r5 controller=r5
.Llo556:
	lbzx		r6,r3,r5		# u8HwOffset=r6 u8MbIndex=r3
	mr		r6,r6		# u8HwOffset=r6 u8HwOffset=r6
# 
#     /* Check if the MB is still full. */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     if ( (uint32)(REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBCS_CODE_U32)) == (uint32)(FLEXCAN_MBCS_CODETX_U32 | FLEXCAN_MBCS_CODETXEN_U32) )
	.d2line		3754
	lis		r3,Can_u32BaseAddress@ha		# u8MbIndex=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8MbIndex=r3 u8MbIndex=r3
	rlwinm		r5,r6,2,22,29		# controller=r5 u8HwOffset=r6
.Llo557:
	lwzx		r5,r3,r5		# controller=r5 u8MbIndex=r3
	lwz		r3,Can_pCurrentConfig@l(r4)		# u8MbIndex=r3
	lwz		r3,4(r3)		# u8MbIndex=r3 u8MbIndex=r3
	se_add		r7,r3		# u8MbIndex=r3
	lhz		r3,26(r7)		# u8MbIndex=r3
	se_add		r3,r5		# u8MbIndex=r3 u8MbIndex=r3 controller=r5
	lwzx		r3,r0,r3		# u8MbIndex=r3 u16MBGlobalIndex=r0
	rlwinm		r3,r3,0,4,7		# u8MbIndex=r3 u8MbIndex=r3
	e_lis		r4,3072
	se_cmpl		r3,r4		# u8MbIndex=r3
	bc		0,2,.L894	# ne
#     {
# 
#   #ifdef ERR_IPV_FLEXCAN_0015
#     #if(ERR_IPV_FLEXCAN_0015==STD_ON)
#         /* MB still full -> deactivate it. */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#         u32MbConfig = ( REG_READ32( FLEXCAN_MB((u8HwOffset), (u16MBGlobalIndex))) & (uint32)(~FLEXCAN_MBCS_CODE_U32)) | FLEXCAN_MBCS_CODETX_U32;
#         #if (CAN_MAXMB_SUPPORTED == FLEXCAN_MB_64_U8)
#             Can_ControllerStatuses[controller].u32TxCancelFlag[(u8MbIndex >> FLEXCAN_MB_SHIFT5BIT_U8)] |= (PduIdType)(((uint32)0x01U) << ((uint32)u8MbIndex));
#         #else
#             Can_ControllerStatuses[controller].u32TxCancelFlag[(u8MbIndex >> FLEXCAN_MB_SHIFT5BIT_U8)] |= ((uint32)0x01U) << ((uint32)u8MbIndex);
#         #endif
#      #else
#         #error : the define ERR_IPV_FLEXCAN_0015 must not be STD_OFF
#      #endif
#   #else
#         /* MB still full -> cancel it. */     
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         u32MbConfig = ( REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)(~FLEXCAN_MBCS_CODE_U32)) | FLEXCAN_MBCS_CODETX_U32 | FLEXCAN_MBCS_CODETXABORT_U32;
	.d2line		3777
.Llo558:
	lis		r3,Can_u32BaseAddress@ha		# u8MbIndex=r3
.Llo566:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8MbIndex=r3 u8MbIndex=r3
.Llo570:
	rlwinm		r6,r6,2,22,29		# u8HwOffset=r6 u8HwOffset=r6
	lwzux		r4,r3,r6		# u32MbConfig=r4 u8MbIndex=r3
.Llo571:
	lis		r5,Can_pCurrentConfig@ha		# controller=r5
.Llo559:
	lwz		r3,Can_pCurrentConfig@l(r5)		# u8MbIndex=r3 controller=r5
	lwz		r3,4(r3)		# u8MbIndex=r3 u8MbIndex=r3
.Llo562:
	rlwinm		r0,r0,5,11,26		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r0
	se_add		r3,r0		# u8MbIndex=r3 u8MbIndex=r3 u16MBGlobalIndex=r0
	lhz		r3,26(r3)		# u8MbIndex=r3 u8MbIndex=r3
	se_add		r3,r4		# u8MbIndex=r3 u8MbIndex=r3 u32MbConfig=r4
	lwzx		r3,r0,r3		# u8MbIndex=r3 u16MBGlobalIndex=r0
	rlwinm		r3,r3,0,8,3		# u8MbIndex=r3 u8MbIndex=r3
	e_ori		r3,r3,150994944		# u8MbIndex=r3 u8MbIndex=r3
.Llo567:
	mr		r4,r3		# u32MbConfig=r4 u32MbConfig=r3
# #endif
#         /* Send command to abort the message */
#         /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#         /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         REG_WRITE32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex)), (uint32)(u32MbConfig));
	.d2line		3783
	lis		r3,Can_u32BaseAddress@ha		# u8MbIndex=r3
.Llo568:
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8MbIndex=r3 u8MbIndex=r3
	lwzx		r6,r3,r6		# u8HwOffset=r6 u8MbIndex=r3
	lwz		r3,Can_pCurrentConfig@l(r5)		# u8MbIndex=r3 controller=r5
	lwz		r3,4(r3)		# u8MbIndex=r3 u8MbIndex=r3
	se_add		r3,r0		# u8MbIndex=r3 u8MbIndex=r3 u16MBGlobalIndex=r0
	lhz		r0,26(r3)		# u16MBGlobalIndex=r0 u8MbIndex=r3
	se_add		r0,r6		# u16MBGlobalIndex=r0 u16MBGlobalIndex=r0 u8HwOffset=r6
	stwx		r4,r0,r0		# u16MBGlobalIndex=r0 u32MbConfig=r4
.L894:
#     }
# }
	.d2line		3785
	.d2epilogue_begin
.Llo560:
	lwz		r0,20(r1)		# u16MBGlobalIndex=r0
	mtspr		lr,r0		# u16MBGlobalIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1321:
	.type		Can_FlexCan_Cancel,@function
	.size		Can_FlexCan_Cancel,.-Can_FlexCan_Cancel
# Number of nodes = 125

# Allocations for Can_FlexCan_Cancel
#	?a4		controller
#	?a5		u16MBGlobalIndex
#	?a6		u8MbIndex
#	?a7		u8HwOffset
#	?a8		u32MbConfig
# FUNC(void, CAN_CODE) Can_FlexCan_AbortMb( VAR(Can_HwHandleType, AUTOMATIC) Hth )
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3802,22
#$$ld
.L1333:

#$$bf	Can_FlexCan_AbortMb,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,cr0,lr
	.globl		Can_FlexCan_AbortMb
	.d2_cfa_start __cie
Can_FlexCan_AbortMb:
.Llo572:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Hth=r0 Hth=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8Controller;
#     /* Variable for indexing all the MBs fron hardware unit chain (all controllers). */
#     VAR(uint16, AUTOMATIC)            u16MBGlobalIndex = 0U;
	.d2line		3806
	diab.li		r3,0		# u16MBGlobalIndex=r3
#     /* Pointer to the MB container structure. */
#     VAR(Can_PtrMBConfigContainerType, AUTOMATIC)   pCanMbConfigContainer = NULL_PTR;
#     
#     pCanMbConfigContainer   = &(Can_pCurrentConfig->MBConfigContainer);
	.d2line		3810
.Llo573:
	lis		r4,Can_pCurrentConfig@ha
	lwz		r3,Can_pCurrentConfig@l(r4)		# u16MBGlobalIndex=r3
.Llo578:
	se_addi		r3,4		# u16MBGlobalIndex=r3 u16MBGlobalIndex=r3
.Llo579:
	mr		r3,r3		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
#     
#     u16MBGlobalIndex = (uint16)Can_pCurrentConfig->uCanFirstHTHIndex;
	.d2line		3812
	lwz		r4,Can_pCurrentConfig@l(r4)
	lbz		r4,20(r4)
.Llo580:
	mr		r4,r4		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
.L898:
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     while ( (u16MBGlobalIndex < pCanMbConfigContainer->uMessageBufferConfigCount) && \
	.d2line		3814
.Llo574:
	rlwinm		r6,r4,0,16,31		# u16MBGlobalIndex=r4
	lbz		r5,4(r3)		# pCanMbConfigContainer=r3
	se_cmp		r6,r5
	bc		0,0,.L899	# ge
	lwz		r5,0(r3)		# pCanMbConfigContainer=r3
	rlwinm		r6,r4,5,11,26		# u16MBGlobalIndex=r4
	se_add		r5,r6
	lwz		r6,20(r5)
	rlwinm		r5,r0,0,24,31		# Hth=r0
	se_cmpl		r6,r5
	bc		1,2,.L899	# eq
#             (((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u32HWObjID != Hth) \
#           )
#     {
#         u16MBGlobalIndex++;
	.d2line		3818
	diab.addi		r6,r4,1		# u16MBGlobalIndex=r4
	se_addi		r4,1		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	b		.L898
.L899:
#     }
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8Controller = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8ControllerId;
	.d2line		3821
.Llo575:
	lwz		r5,0(r3)		# pCanMbConfigContainer=r3
	rlwinm		r6,r4,5,11,26		# u16MBGlobalIndex=r4
	se_add		r5,r6
	lbz		r0,1(r5)		# Hth=r0
.Llo576:
	mr		r0,r0		# u8Controller=r0 u8Controller=r0
#     
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* Test if controller is in valid range. */
#     if ( (u8Controller >= (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured) ||
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#          (FLEXCAN_NULL_OFFSET_U8 == (CanStatic_pControlerDescriptors[u8Controller].u8ControllerOffset)) )
#     {
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_ABORT_MB, (uint8)CAN_E_PARAM_CONTROLLER);
#     }
#     else
#     {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
#     
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
# #if ((CAN_ABORT_ONLY_ONE_MB==STD_OFF) && (CAN_MULTIPLEXED_TRANSMISSION==STD_ON))
#         
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         while ( u16MBGlobalIndex < pCanMbConfigContainer->uMessageBufferConfigCount )
#         {
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             if (((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u32HWObjID == Hth)
#             {
#                 Can_FlexCan_Cancel( u8Controller, u16MBGlobalIndex);
#             }
#             u16MBGlobalIndex++;
#         }
# #else /* CAN_ABORT_ONLY_ONE_MB==STD_OFF */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used*/
#         if ( (u16MBGlobalIndex < pCanMbConfigContainer->uMessageBufferConfigCount))
	.d2line		3852
	rlwinm		r6,r4,0,16,31		# u16MBGlobalIndex=r4
	lbz		r3,4(r3)		# pCanMbConfigContainer=r3 pCanMbConfigContainer=r3
	se_cmp		r6,r3		# pCanMbConfigContainer=r3
	bc		0,0,.L897	# ge
#         {
#             Can_FlexCan_Cancel( u8Controller, u16MBGlobalIndex);
	.d2line		3854
.Llo581:
	mr		r3,r0		# u8Controller=r3 u8Controller=r0
.Llo582:
	mr		r4,r4		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
.Llo583:
	bl		Can_FlexCan_Cancel
.L897:
#         }
# #endif   /* CAN_ABORT_ONLY_ONE_MB==STD_ON */
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# }
	.d2line		3861
	.d2epilogue_begin
.Llo577:
	lwz		r0,20(r1)		# Hth=r0
	mtspr		lr,r0		# Hth=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1334:
	.type		Can_FlexCan_AbortMb,@function
	.size		Can_FlexCan_AbortMb,.-Can_FlexCan_AbortMb
# Number of nodes = 70

# Allocations for Can_FlexCan_AbortMb
#	?a4		Hth
#	?a5		u8Controller
#	?a6		u16MBGlobalIndex
#	?a7		pCanMbConfigContainer
# FUNC (Can_ReturnType, CAN_CODE) Can_FlexCan_Write( Can_HwHandleType Hth,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3910,33
#$$ld
.L1345:

#$$bf	Can_FlexCan_Write,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_Write
	.d2_cfa_start __cie
Can_FlexCan_Write:
.Llo584:
	stwu		r1,-80(r1)		
	.d2_cfa_def_cfa_offset	80
	mfspr		r0,lr
.Llo601:
	stmw		r18,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	18,31,1,1
	stw		r0,84(r1)		# u8CtrlId=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Hth=r31 Hth=r3
	mr		r30,r4		# PduInfo=r30 PduInfo=r4
	.d2prologue_end
#                                                    P2CONST(Can_PduType, AUTOMATIC, CAN_APPL_CONST) PduInfo )
# {
# 
#     /* Variable for return status. */
#     VAR(Can_ReturnType, AUTOMATIC) eReturnValue = CAN_BUSY;
	.d2line		3915
	diab.li		r0,2		# eReturnValue=r0
#     /* Variable for keeping the controller Id. */
#     VAR(uint8, AUTOMATIC)          u8CtrlId = 0U;
	.d2line		3917
.Llo602:
	diab.li		r0,0		# u8CtrlId=r0
#     /* Variable for indexing the MBs. */
#     VAR(uint8, AUTOMATIC)          u8MbIndex = 0U;
#     /* General purpose variable */
# #if ((CAN_MULTIPLEXED_TRANSMISSION == STD_ON) && (CAN_HW_TRANSMIT_CANCELLATION == STD_ON))
#     /* Variables for keeping track of the lowest prio message. */
#     VAR(uint8, AUTOMATIC)          u8MbLprioIndex = 0U;
#     VAR(uint16, AUTOMATIC)         u16MbLprioGlobalIndex = 0U;
	.d2line		3924
.Llo650:
	diab.li		r26,0
#     VAR(uint32, AUTOMATIC)         u32MbLprioId = 0U;
	.d2line		3925
.Llo621:
	diab.li		r25,0
#     VAR(boolean, AUTOMATIC)        bExitMplxTX = (boolean)FALSE;
	.d2line		3926
.Llo622:
	diab.li		r24,0
# #endif /* ((CAN_MULTIPLEXED_TRANSMISSION == STD_ON) && (CAN_HW_TRANSMIT_CANCELLATION == STD_ON)) */
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)          u8HwOffset = 0U;
#     /* Variable for determining the IFLAG register for every MB: IFLAGx */
#     VAR(uint8, AUTOMATIC)          u8IflagRegIndex = 0U;
#     /* Variable for determining the mash bit in the IFLAGx register for current MB. */
#     VAR(uint32, AUTOMATIC)         u32TempFlag = 0U;
#     VAR(uint16, AUTOMATIC)         u16MBGlobalIndex = 0U;
#     /* Pointer to the MB container structure. */
#     VAR(Can_PtrMBConfigContainerType, AUTOMATIC)   pCanMbConfigContainer = NULL_PTR;
# 
# #if (CAN_FD_MODE_ENABLE == STD_ON)
#     /*variable for current baudrate index*/  
#     VAR(uint8, AUTOMATIC) u8BaudrateIndex = 0U;
#     P2CONST(Can_ControlerDescriptorType, AUTOMATIC, CAN_APPL_CONST) pCanControlerDescriptor;
# #endif
# #if (CAN_HW_TRANSMIT_CANCELLATION == STD_ON)
#     /* Variable for storing the ID of the MB from MB structure. */
#     VAR(uint32, AUTOMATIC)         u32MbMessageId = 0U;
#     /*variable for current baudrate index*/  
#     VAR(uint32, AUTOMATIC) u32ExtendedFdErase = 0U;       
	.d2line		3947
.Llo623:
	mr		r18,r0		# u32ExtendedFdErase=r18 u32ExtendedFdErase=r0
# #endif
#     pCanMbConfigContainer   = &(Can_pCurrentConfig->MBConfigContainer);
	.d2line		3949
	lis		r3,Can_pCurrentConfig@ha
.Llo585:
	lwz		r21,Can_pCurrentConfig@l(r3)
	diab.addi		r21,r21,4
.Llo643:
	mr		r21,r21		# pCanMbConfigContainer=r21 pCanMbConfigContainer=r21
#     
#     /* Calculate the MB index. When transmit multiplex is enabled search any MB to be free, MBs that have the same ObjectID
#     When Multiplex is disabled ,you can have more than one controller, everyone having MBs configured. In this case the index of the MB is different from the
#             one in the plugin */
#     u16MBGlobalIndex = (uint16)Can_pCurrentConfig->uCanFirstHTHIndex;
	.d2line		3954
	lwz		r3,Can_pCurrentConfig@l(r3)
	lbz		r22,20(r3)
.Llo636:
	mr		r22,r22		# u16MBGlobalIndex=r22 u16MBGlobalIndex=r22
.L905:
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     while ( (u16MBGlobalIndex < pCanMbConfigContainer->uMessageBufferConfigCount) && \
	.d2line		3956
.Llo586:
	rlwinm		r4,r22,0,16,31		# u16MBGlobalIndex=r22
.Llo588:
	lbz		r0,4(r21)		# u8CtrlId=r0 pCanMbConfigContainer=r21
.Llo603:
	se_cmp		r4,r0		# u8CtrlId=r0
	bc		0,0,.L906	# ge
.Llo604:
	lwz		r3,0(r21)		# pCanMbConfigContainer=r21
	rlwinm		r4,r22,5,11,26		# u16MBGlobalIndex=r22
	se_add		r3,r4
	lwz		r0,20(r3)		# u8CtrlId=r0
.Llo605:
	rlwinm		r3,r31,0,24,31		# Hth=r31
	se_cmpl		r0,r3		# u8CtrlId=r0
	bc		1,2,.L906	# eq
#             (((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u32HWObjID != Hth) \
#           )
#     {
#         u16MBGlobalIndex++;
	.d2line		3960
.Llo606:
	diab.addi		r4,r22,1		# u16MBGlobalIndex=r22
	diab.addi		r22,r22,1		# u16MBGlobalIndex=r22 u16MBGlobalIndex=r22
	b		.L905
.L906:
#     }
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8CtrlId = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8ControllerId;
	.d2line		3963
	lwz		r3,0(r21)		# pCanMbConfigContainer=r21
	rlwinm		r4,r22,5,11,26		# u16MBGlobalIndex=r22
	se_add		r3,r4
	lbz		r28,1(r3)		# u8CtrlId=r28
.Llo607:
	mr		r28,r28		# u8CtrlId=r28 u8CtrlId=r28
# #if (CAN_FD_MODE_ENABLE == STD_ON)       
#      /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     pCanControlerDescriptor = &Can_pCurrentConfig->ControlerDescriptors[u8CtrlId];
#     /* Get the index of the current baudrate */
#     u8BaudrateIndex = Can_ControllerStatuses[u8CtrlId].u8CurrentBaudRateIndex;  
# #endif
# #if ((CAN_MULTIPLEXED_TRANSMISSION == STD_ON) && (CAN_HW_TRANSMIT_CANCELLATION == STD_ON) )
# 
#     /* Define variable for keeping track of the lowest prio message. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8MbLprioIndex = Can_pCurrentConfig->ControlerDescriptors[u8CtrlId].u8MaxMBCount - (uint8)0x1U;
	.d2line		3974
	rlwinm		r0,r28,0,24,31		# u8CtrlId=r0 u8CtrlId=r28
	lis		r3,Can_pCurrentConfig@ha
	lwz		r3,Can_pCurrentConfig@l(r3)
	lwz		r3,12(r3)
	rlwinm		r4,r0,4,0,27		# u8CtrlId=r0
	rlwinm		r5,r0,2,0,29		# u8CtrlId=r0
	subf		r5,r5,r4
	lbzx		r27,r3,r5		# u8MbLprioIndex=r27
.Llo619:
	diab.addi		r27,r27,255		# u8MbLprioIndex=r27 u8MbLprioIndex=r27
# #endif /* ((CAN_MULTIPLEXED_TRANSMISSION == STD_ON) && (CAN_HW_TRANSMIT_CANCELLATION == STD_ON) ) */
#     /* Get the hardware offset for this controller. Note that hardware offset may not be the same with the controller index from the 'Can_ControlerDescriptorType' structure. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[u8CtrlId].u8ControllerOffset;
	.d2line		3978
	lis		r3,CanStatic_pControlerDescriptors@ha
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)
	e_mulli		r0,r0,20		# u8CtrlId=r0 u8CtrlId=r0
	lbzx		r23,r3,r0
.Llo624:
	mr		r23,r23		# u8HwOffset=r23 u8HwOffset=r23
.L907:
#     
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
# #if (CAN_FD_MODE_ENABLE == STD_ON) 
#     /* Report error if length > 8 bytes. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     if ( \
#             ((PduInfo->length) > ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8MBPayloadLength) || \
#             (((pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerFD.u32CanFdEnable) != (uint32)CAN_FD_ENABLE_U32) && ((PduInfo->length) > (uint8)8U) ) || \
#             (( (((uint32)PduInfo->id) & (uint32)CAN_FD_ID_DESCRIPTOR) != CAN_FD_ID_DESCRIPTOR) && ( (PduInfo->length) > (uint8)8U )) \
#        )
#     {
#         /*
#            (CAN218) If development error detection for the Can module is enabled: The function Can_Write shall raise the
#                    error CAN_E_PARAM_DLC if the length is more than 8 byte.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_WRITE, (uint8)CAN_E_PARAM_DLC);
#         eReturnValue = CAN_NOT_OK;
#     }
# #else /* if(CAN_FD_MODE_ENABLE == STD_OFF) */
#     if ( (PduInfo->length) > 8U )
#     {
#         /*
#            (CAN218) If development error detection for the Can module is enabled: The function Can_Write shall raise the
#                    error CAN_E_PARAM_DLC if the length is more than 8 byte.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_WRITE, (uint8)CAN_E_PARAM_DLC);
#         eReturnValue = CAN_NOT_OK;
#     }
# #endif /* (CAN_FD_MODE_ENABLE == STD_ON) */
#     else
#     {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
# 
#     #if (CAN_MULTIPLEXED_TRANSMISSION == STD_ON)
#         /* Need to find a free MB for transmission. This do-while block is executed only when multiplex transmission is ON because the data can be stored in any MB
#                 that has the same ObjectID. */
#         do
#         {
#     #endif /* (CAN_MULTIPLEXED_TRANSMISSION == STD_ON) */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             u8MbIndex = ((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
	.d2line		4022
.Llo593:
	lwz		r3,0(r21)		# u8CtrlId=r3 pCanMbConfigContainer=r21
	rlwinm		r5,r22,5,11,26		# PduInfo=r5 u16MBGlobalIndex=r22
	se_add		r3,r5		# u8CtrlId=r3 u8CtrlId=r3 PduInfo=r5
	lbz		r3,29(r3)		# u8CtrlId=r3 u8CtrlId=r3
.Llo611:
	mr		r3,r3		# u8MbIndex=r3 u8MbIndex=r3
#      
#             /* Is the MB empty?
#                  This test is a bit early; the u32TxGuard is not set yet and someone else can grab this MB before we reserve it
#                  but it saves setting the guard on full or cancelled MBs only to discover they are not empty and clearing the guard again. */
#             /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#             /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             if ( FLEXCAN_MBCS_CODETX_U32 == (uint32)(REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBCS_CODE_U32)) )
	.d2line		4030
	lis		r4,Can_u32BaseAddress@ha		# u16MBGlobalIndex=r4
	e_add16i		r4,r4,Can_u32BaseAddress@l		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r0,r23,2,22,29		# u8CtrlId=r0 u8HwOffset=r23
	lwzx		r0,r4,r0		# u8CtrlId=r0 u16MBGlobalIndex=r4
	lis		r4,Can_pCurrentConfig@ha		# u16MBGlobalIndex=r4
	lwz		r4,Can_pCurrentConfig@l(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	lwz		r4,4(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	se_add		r5,r4		# PduInfo=r5 PduInfo=r5 u16MBGlobalIndex=r4
	lhz		r4,26(r5)		# u16MBGlobalIndex=r4 PduInfo=r5
	se_add		r0,r4		# u8CtrlId=r0 u8CtrlId=r0 u16MBGlobalIndex=r4
	lwzx		r0,r0,r0		# u8CtrlId=r0 u8CtrlId=r0
	rlwinm		r0,r0,0,4,7		# u8CtrlId=r0 u8CtrlId=r0
	diab.li		r4,134217728		# u16MBGlobalIndex=r4
	se_cmpl		r0,r4		# u8CtrlId=r0 u16MBGlobalIndex=r4
	bc		0,2,.L908	# ne
#             {
#                 /*
#                    (CAN212) The function Can_Write shall perform following actions if the hardware transmit object is free: The mutex for that HTH is set to 'signaled';
#                          the ID, DLC and SDU are put in a format appropriate for the hardware; All necessary control operations to initiate the transmit are done;
#                          The mutex for that HTH is released; The function returns with CAN_OK.
#                 */
# 
#                 /* Calculate the index of the IFLAG register and u32TxGuard (index=0 for MB32...MB63, index=1 for MB0...MB31, index=2 for MBO64 ... 96). */
#                 u8IflagRegIndex = (uint8)((uint8)u8MbIndex >> FLEXCAN_MB_SHIFT5BIT_U8);
	.d2line		4039
.Llo594:
	rlwinm		r20,r3,27,29,31		# u8IflagRegIndex=r20 u8MbIndex=r3
.Llo629:
	mr		r20,r20		# u8IflagRegIndex=r20 u8IflagRegIndex=r20
#                                     
#                 /* Calculate the bit in the IFLAG register. */
#                 u32TempFlag = ((uint32)0x01U) << ((uint32)u8MbIndex & FLEXCAN_MASK_32BITS_U32);
	.d2line		4042
	diab.li		r19,1		# u32TempFlag=r19
.Llo635:
	rlwinm		r3,r3,0,27,31		# u8MbIndex=r3 u8MbIndex=r3
	slw		r19,r19,r3		# u32TempFlag=r19 u32TempFlag=r19 u8MbIndex=r3
	mr		r19,r19		# u32TempFlag=r19 u32TempFlag=r19
#                 
#                 SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02();
	.d2line		4044
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02
#                 /* Test the GUARD MASK and the INTERRUPT FLAG.
#                      Cannot operate on locked out MBs (re-entry).. also cannot operate on MBs for which the Tx confirmation has not been sent yet.
#                      Below is read-modify-write cycle for u32TxGuard flag which may be interrupted -> must use SchM_Enter_Can_CAN_EXCLUSIVE_AREA_XX() for preventing broken u32TxGuard value. */
# 
#                 if ( (uint32)0x0U == (Can_ControllerStatuses[u8CtrlId].u32TxGuard[u8IflagRegIndex] & u32TempFlag) )
	.d2line		4049
.Llo612:
	lis		r3,Can_ControllerStatuses@ha		# u8MbIndex=r3
.Llo613:
	e_add16i		r3,r3,Can_ControllerStatuses@l		# u8MbIndex=r3 u8MbIndex=r3
	rlwinm		r0,r28,0,24,31		# u8CtrlId=r0 u8CtrlId=r28
	e_mulli		r0,r0,232		# u8CtrlId=r0 u8CtrlId=r0
	se_add		r3,r0		# u8MbIndex=r3 u8MbIndex=r3 u8CtrlId=r0
	rlwinm		r4,r20,2,22,29		# u16MBGlobalIndex=r4 u8IflagRegIndex=r20
	lwzx		r0,r3,r4		# u8CtrlId=r0 u8MbIndex=r3
	and.		r0,r0,r19		# u32TempFlag=?a24
	bc		0,2,.L909	# ne
#                 {
#                     /* Interrupt flag is not set for this MB this meaning MB is not in progress. */
#                     /* The mutex for that HTH is set to 'signaled': The guard is 0, the MB is not locked out at the moment -> lock it out. */
#                     Can_ControllerStatuses[u8CtrlId].u32TxGuard[u8IflagRegIndex] |= u32TempFlag;
	.d2line		4053
.Llo614:
	lis		r3,Can_ControllerStatuses@ha		# u8MbIndex=r3
.Llo615:
	e_add16i		r3,r3,Can_ControllerStatuses@l		# u8MbIndex=r3 u8MbIndex=r3
	rlwinm		r0,r28,0,24,31		# u8CtrlId=r0 u8CtrlId=r28
	e_mulli		r0,r0,232		# u8CtrlId=r0 u8CtrlId=r0
	se_add		r3,r0		# u8MbIndex=r3 u8MbIndex=r3 u8CtrlId=r0
	rlwinm		r4,r20,2,22,29		# u16MBGlobalIndex=r4 u8IflagRegIndex=r20
	lwzx		r0,r3,r4		# u8CtrlId=r0 u8MbIndex=r3
	or		r0,r0,r19		# u8CtrlId=r0 u8CtrlId=r0 u32TempFlag=r19
	stwx		r0,r3,r4		# u8MbIndex=r3 u8CtrlId=r0
# 
#                     /* u32TxGuard was set without any risk of broken data - now can free the Critical section. */
#                     SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02();
	.d2line		4056
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02
#                     
#                 #if (CAN_FD_MODE_ENABLE == STD_ON)
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     if ((pCanControlerDescriptor->pControllerBaudrateConfigsPtr[u8BaudrateIndex].ControllerFD.u32CanFdEnable) == (uint32)FLEXCAN_MCR_FDEN_U32)
#                     {
#                         /* Write data into the Message buffer for transition*/
#                         eReturnValue = Can_FlexCan_UpdateMB(u8CtrlId, u16MBGlobalIndex, PduInfo, (VAR(boolean, AUTOMATIC))TRUE);
#                     }
#                     else
#                     {
#                 #endif /* (CAN_FD_MODE_ENABLE == STD_ON) */
#                         /* Write data into the Message buffer for transition*/
#                         eReturnValue = Can_FlexCan_UpdateMB(u8CtrlId, u16MBGlobalIndex, PduInfo, (VAR(boolean, AUTOMATIC))FALSE);
	.d2line		4069
.Llo616:
	mr		r3,r28		# u8CtrlId=r3 u8CtrlId=r28
	mr		r5,r30		# PduInfo=r5 PduInfo=r30
	mr		r4,r22		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r22
	diab.li		r6,0
	bl		Can_FlexCan_UpdateMB
.Llo595:
	mr		r29,r3		# eReturnValue=r29 eReturnValue=r3
#                 #if (CAN_FD_MODE_ENABLE == STD_ON)
#                     }
#                 #endif /* (CAN_FD_MODE_ENABLE == STD_ON) */
#                     SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02();
	.d2line		4073
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02
#                     Can_ControllerStatuses[u8CtrlId].u32TxGuard[u8IflagRegIndex] &= (uint32)(~u32TempFlag);
	.d2line		4074
.Llo596:
	lis		r3,Can_ControllerStatuses@ha		# u8CtrlId=r3
	e_add16i		r3,r3,Can_ControllerStatuses@l		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r0,r28,0,24,31		# u8CtrlId=r0 u8CtrlId=r28
	e_mulli		r0,r0,232		# u8CtrlId=r0 u8CtrlId=r0
	se_add		r3,r0		# u8CtrlId=r3 u8CtrlId=r3 u8CtrlId=r0
	rlwinm		r20,r20,2,22,29		# u8IflagRegIndex=r20 u8IflagRegIndex=r20
.Llo630:
	lwzx		r0,r3,r20		# u8CtrlId=r0 u8CtrlId=r3
	andc		r0,r0,r19		# u8CtrlId=r0 u8CtrlId=r0 u32TempFlag=r19
	stwx		r0,r3,r20		# u8CtrlId=r3 u8CtrlId=r0
#                     SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02();
	.d2line		4075
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02
	b		.L911
.L909:
#                 }
#                 else /* else of "if((uint32)0x0U==(Can_ControllerStatuses[u8CtrlId].u32TxGuard[0]&u32TempFlag))" */
#                 {
# 
#                     SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02();
	.d2line		4080
.Llo631:
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02
#                     /* MB is locked out because software flag (Guart bit) is set. */
#                     eReturnValue = CAN_BUSY;
	.d2line		4082
	diab.li		r29,2		# eReturnValue=r29
# 
#                 #if ((CAN_HW_TRANSMIT_CANCELLATION == STD_ON) && (CAN_MULTIPLEXED_TRANSMISSION == STD_ON))
#                     /* Do not Cancel the locked out message when TXMUX is enabled. */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     u8MbLprioIndex = Can_pControlerDescriptors[u8CtrlId].u8MaxMBCount;
	.d2line		4087
.Llo597:
	rlwinm		r0,r28,0,24,31		# u8CtrlId=r0 u8CtrlId=r28
	lis		r3,Can_pControlerDescriptors@ha		# u8MbIndex=r3
.Llo617:
	lwz		r3,Can_pControlerDescriptors@l(r3)		# u8MbIndex=r3 u8MbIndex=r3
	rlwinm		r4,r0,4,0,27		# u16MBGlobalIndex=r4 u8CtrlId=r0
	se_slwi		r0,2		# u8CtrlId=r0 u8CtrlId=r0
	subf		r0,r0,r4		# u8CtrlId=r0 u8CtrlId=r0 u16MBGlobalIndex=r4
	lbzx		r27,r3,r0		# u8MbLprioIndex=r27 u8MbIndex=r3
	mr		r27,r27		# u8MbLprioIndex=r27 u8MbLprioIndex=r27
#                     bExitMplxTX = (boolean)TRUE;
	.d2line		4088
	diab.li		r24,1		# bExitMplxTX=r24
	b		.L911
.L908:
#                 #endif /* ((CAN_HW_TRANSMIT_CANCELLATION == STD_ON) && (CAN_MULTIPLEXED_TRANSMISSION == STD_ON)) */
#                 }
#             }
#             else /* else of "if(FLEXCAN_MBCS_CODETX_U32==(uint32)(REG_READ32( FLEXCAN_MB((u8HwOffset), (u8MbIndex))) & (uint32)(FLEXCAN_MBCS_CODE_U32)))" */
#             /* MB is not empty */
#             {
#                     /*
#                        (CAN286) The Can module shall initiate a cancellation, when all available hardware transmit objects are busy and an L-PDU with
#                                 higher priority is requested to be transmitted.
#                     */
# 
#         #if (CAN_HW_TRANSMIT_CANCELLATION == STD_ON)
#                 /* Keep track of the lowest prio message (highest ID). */
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 u32MbMessageId = (((uint32)REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)FLEXCAN_MBCS_IDE_U32) != (uint32)FLEXCAN_MBCS_IDE_U32) ? /* condition to test */
	.d2line		4105
.Llo598:
	lis		r4,Can_u32BaseAddress@ha		# u16MBGlobalIndex=r4
	e_add16i		r4,r4,Can_u32BaseAddress@l		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r0,r23,2,22,29		# u8CtrlId=r0 u8HwOffset=r23
	lwzx		r0,r4,r0		# u8CtrlId=r0 u16MBGlobalIndex=r4
	lis		r4,Can_pCurrentConfig@ha		# u16MBGlobalIndex=r4
	lwz		r4,Can_pCurrentConfig@l(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	lwz		r4,4(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r5,r22,5,11,26		# PduInfo=r5 u16MBGlobalIndex=r22
	se_add		r4,r5		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4 PduInfo=r5
	lhz		r4,26(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	se_add		r0,r4		# u8CtrlId=r0 u8CtrlId=r0 u16MBGlobalIndex=r4
	lwzx		r0,r0,r0		# u8CtrlId=r0 u8CtrlId=r0
	se_btsti		r0,10		# u8CtrlId=r0
	bc		0,2,.L918	# ne
.Llo651:
	lis		r4,Can_u32BaseAddress@ha		# u16MBGlobalIndex=r4
	e_add16i		r4,r4,Can_u32BaseAddress@l		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r0,r23,2,22,29		# u8CtrlId=r0 u8HwOffset=r23
	lwzx		r0,r4,r0		# u8CtrlId=r0 u16MBGlobalIndex=r4
	lis		r4,Can_pCurrentConfig@ha		# u16MBGlobalIndex=r4
	lwz		r4,Can_pCurrentConfig@l(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	lwz		r4,4(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r5,r22,5,11,26		# PduInfo=r5 u16MBGlobalIndex=r22
	se_add		r4,r5		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4 PduInfo=r5
	lhz		r4,26(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	se_add		r4,r0		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4 u8CtrlId=r0
	lwz		r0,4(r4)		# u8CtrlId=r0 u16MBGlobalIndex=r4
	rlwinm		r0,r0,14,21,31		# u8CtrlId=r0 u8CtrlId=r0
.Llo644:
	b		.L919
.L918:
.Llo645:
	lis		r4,Can_u32BaseAddress@ha		# u16MBGlobalIndex=r4
	e_add16i		r4,r4,Can_u32BaseAddress@l		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r0,r23,2,22,29		# u8CtrlId=r0 u8HwOffset=r23
	lwzx		r0,r4,r0		# u8CtrlId=r0 u16MBGlobalIndex=r4
	lis		r4,Can_pCurrentConfig@ha		# u16MBGlobalIndex=r4
	lwz		r4,Can_pCurrentConfig@l(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	lwz		r4,4(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r5,r22,5,11,26		# PduInfo=r5 u16MBGlobalIndex=r22
	se_add		r4,r5		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4 PduInfo=r5
	lhz		r4,26(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	se_add		r4,r0		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4 u8CtrlId=r0
	lwz		r0,4(r4)		# u8CtrlId=r0 u16MBGlobalIndex=r4
	rlwinm		r0,r0,0,3,31		# u8CtrlId=r0 u8CtrlId=r0
.L919:
.Llo646:
	mr		r4,r0		# u32MbMessageId=r4 u32MbMessageId=r0
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 (uint32)((REG_READ32( FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBID_ID_STANDARD_U32)) >> (uint32)(18U)) : /* value if condition is true */
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 (uint32)(REG_READ32( FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MBGlobalIndex))) & (uint32)(FLEXCAN_MBID_ID_EXTENDED_U32)); /* value if condition is false */
# 
#                 u32ExtendedFdErase = ((uint32)PduInfo->id & (uint32)FLEXCAN_MBID_ID_EXTENDED_U32 & (~(uint32)CAN_FD_ID_DESCRIPTOR));
	.d2line		4115
	lwz		r18,4(r30)		# u8CtrlId=r18 PduInfo=r30
	rlwinm		r18,r18,0,3,31		# u8CtrlId=r18 u8CtrlId=r18
.Llo652:
	mr		r18,r18		# u32ExtendedFdErase=r18 u32ExtendedFdErase=r18
#             #if (CAN_MULTIPLEXED_TRANSMISSION == STD_ON)
#                 /*
#                    (CAN402) The Can module shall support multiplexed transmission mechanisms for devices where either
#                             - Multiple transmit hardware objects, which are grouped to a transmit entity can be filled over the same register set,
#                             and the microcontroller stores the L-PDU into a free buffer autonomously,
#                             or
#                             - The Hardware provides registers or functions to identify a free transmit hardware object within a transmit entity.
#                     (CAN403) The Can module shall support multiplexed transmission for devices, which send L-PDUs in order of L-PDU priority.
#                 */           
#                 if ( ((uint32)u32MbLprioId < (uint32)u32MbMessageId)
	.d2line		4125
	se_cmpl		r25,r4		# u32MbLprioId=r25 u32MbMessageId=r4
#                     #if (CAN_IDENTICAL_ID_CANCELLATION == STD_ON)
#                           || ((uint32)u32MbLprioId == (uint32)u32MbMessageId)
#                     #endif /* (CAN_IDENTICAL_ID_CANCELLATION == STD_ON) */
#                     )
#                 {
#                     /* Create a copy of the lowest priority ID and the index of MB which holds it. */
#                     /* MISRA-C:2004 12.1 VIOLATION: Refer to REF 1 above */
#                     u32MbLprioId = u32MbMessageId;
	.d2line		4133
	isel		r25,r25,r0,1		# u32MbLprioId=r25 u32MbLprioId=r25 u32MbLprioId=r0
#                     u8MbLprioIndex = u8MbIndex;
	.d2line		4134
	isel		r27,r27,r3,1		# u8MbLprioIndex=r27 u8MbLprioIndex=r27 u8MbIndex=r3
#                     u16MbLprioGlobalIndex = u16MBGlobalIndex;
	.d2line		4135
	isel		r26,r26,r22,1		# u16MbLprioGlobalIndex=r26 u16MbLprioGlobalIndex=r26 u16MBGlobalIndex=r22
.L912:
#                 }
# 
#             #else /* (CAN_MULTIPLEXED_TRANSMISSION == STD_OFF) */
#                     /* If cancellation is enabled and TxMux is disabled, make now the cancellation if it's the case.
#                          Check the priority of the current message that is already in the MB (temp_id) with the priority of the new message (PduInfo). */
#                          
#                 if ( ((uint32)u32MbMessageId > (uint32)u32ExtendedFdErase)
#                     #if (CAN_IDENTICAL_ID_CANCELLATION == STD_ON)
#                         || ((uint32)u32MbMessageId == (uint32)u32ExtendedFdErase)
#                     #endif
#                     )
#                 {
#                     /*
#                        (CAN215) The function Can_Write shall perform following actions if the hardware transmit object is busy with another
#                     transmit request for an L-PDU that has lower priority than that for the current request:
#                     - The transmission of the L-PDU with lower priority shall be cancelled (asynchronously).
#                     - The function CAN_Write shall return CAN_BUSY.
#                     */
#                     Can_FlexCan_Cancel( u8CtrlId, u16MBGlobalIndex);
#                 }
#             #endif /* (CAN_MULTIPLEXED_TRANSMISSION == STD_OFF) */
# 
#         #endif /* (CAN_HW_TRANSMIT_CANCELLATION == STD_ON) */
#                     /* MB is not empty. */
#                     eReturnValue = CAN_BUSY;
	.d2line		4160
.Llo618:
	diab.li		r29,2		# eReturnValue=r29
.L911:
#             }
# 
# 
#     #if (CAN_MULTIPLEXED_TRANSMISSION == STD_ON)
#         #if (CAN_HW_TRANSMIT_CANCELLATION == STD_ON)
#             if ((boolean)TRUE == bExitMplxTX)
	.d2line		4166
.Llo599:
	rlwinm		r0,r24,0,24,31		# u8CtrlId=r0 bExitMplxTX=r24
	se_cmpi		r0,1		# u8CtrlId=r0
	bc		1,2,.L914	# eq
#             {
#                 break;
#             }
#         #endif /* (CAN_HW_TRANSMIT_CANCELLATION == STD_ON) */
#         
#             u16MBGlobalIndex++;
	.d2line		4172
	diab.addi		r4,r22,1		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r22
	diab.addi		r22,r22,1		# u16MBGlobalIndex=r22 u16MBGlobalIndex=r22
#             
#         } while ( (u16MBGlobalIndex < pCanMbConfigContainer->uMessageBufferConfigCount) &&
	.d2line		4174
	rlwinm		r4,r22,0,16,31		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r22
	lbz		r0,4(r21)		# u8CtrlId=r0 pCanMbConfigContainer=r21
	se_cmp		r4,r0		# u16MBGlobalIndex=r4 u8CtrlId=r0
	bc		0,0,.L914	# ge
	lwz		r3,0(r21)		# u8CtrlId=r3 pCanMbConfigContainer=r21
	rlwinm		r4,r22,5,11,26		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r22
	se_add		r3,r4		# u8CtrlId=r3 u8CtrlId=r3 u16MBGlobalIndex=r4
	lwz		r0,20(r3)		# u8CtrlId=r0 u8CtrlId=r3
	rlwinm		r3,r31,0,24,31		# u8CtrlId=r3 Hth=r31
	se_cmpl		r0,r3		# u8CtrlId=r0 u8CtrlId=r3
	bc		0,2,.L914	# ne
	se_cmpi		r29,2		# eReturnValue=r29
	bc		1,2,.L907	# eq
.L914:
#                    /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                   (((pCanMbConfigContainer->pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u32HWObjID == Hth) &&
#                   (CAN_BUSY == eReturnValue)
#                 );
#     #endif /* (CAN_MULTIPLEXED_TRANSMISSION == STD_ON) */
# 
#     #if ((CAN_HW_TRANSMIT_CANCELLATION == STD_ON) && (CAN_MULTIPLEXED_TRANSMISSION == STD_ON))
#         /* Was the message scheduled for transmission? */
#         if ( CAN_OK != eReturnValue )
	.d2line		4183
	se_cmpi		r29,0		# eReturnValue=r29
	bc		1,2,.L915	# eq
#         {
#             /* Did the search find a lower priority message? */
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             if ( u8MbLprioIndex < Can_pControlerDescriptors[u8CtrlId].u8MaxMBCount)
	.d2line		4187
.Llo587:
	rlwinm		r0,r28,0,24,31		# u8CtrlId=r0 u8CtrlId=r28
	rlwinm		r4,r27,0,24,31		# u16MBGlobalIndex=r4 u8MbLprioIndex=r27
.Llo637:
	lis		r3,Can_pControlerDescriptors@ha		# u8CtrlId=r3
	lwz		r3,Can_pControlerDescriptors@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r5,r0,4,0,27		# PduInfo=r5 u8CtrlId=r0
.Llo589:
	se_slwi		r0,2		# u8CtrlId=r0 u8CtrlId=r0
	subf		r0,r0,r5		# u8CtrlId=r0 u8CtrlId=r0 PduInfo=r5
	lbzx		r0,r3,r0		# u8CtrlId=r0 u8CtrlId=r3
	se_cmp		r4,r0		# u16MBGlobalIndex=r4 u8CtrlId=r0
	bc		0,0,.L915	# ge
#             {
#                 /* Calculate the index of the u32TxGuard (index = 0 for MB32...MB63, index = 1 fro MB0...MB31). */
#                 u8IflagRegIndex = (uint8)(u8MbLprioIndex >> FLEXCAN_MB_SHIFT5BIT_U8) ;
	.d2line		4190
.Llo590:
	rlwinm		r31,r27,27,29,31		# Hth=r31 u8MbLprioIndex=r27
.Llo632:
	mr		r31,r31		# u8IflagRegIndex=r31 u8IflagRegIndex=r31
#                 /* Calculate the iflag value. */
#                 u32TempFlag = ((uint32)0x01U) << ((uint32)u8MbLprioIndex & FLEXCAN_MASK_32BITS_U32);
	.d2line		4192
	diab.li		r30,1		# PduInfo=r30
.Llo591:
	rlwinm		r27,r27,0,27,31		# u8MbLprioIndex=r27 u8MbLprioIndex=r27
	slw		r30,r30,r27		# PduInfo=r30 PduInfo=r30 u8MbLprioIndex=r27
.Llo592:
	mr		r30,r30		# u32TempFlag=r30 u32TempFlag=r30
# 
#                 SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02();
	.d2line		4194
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02
#                 /* Cancel the lowest prio message providing it is of lower priority than the current message.
#                   Lock the lowest prio MB out, no need to check if it is already locked (it was not locked during the search so it cannot be locked now). */
#                 Can_ControllerStatuses[u8CtrlId].u32TxGuard[u8IflagRegIndex] |= u32TempFlag;
	.d2line		4197
	lis		r3,Can_ControllerStatuses@ha		# u8CtrlId=r3
	e_add16i		r3,r3,Can_ControllerStatuses@l		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r0,r28,0,24,31		# u8CtrlId=r0 u8CtrlId=r28
	e_mulli		r0,r0,232		# u8CtrlId=r0 u8CtrlId=r0
	se_add		r3,r0		# u8CtrlId=r3 u8CtrlId=r3 u8CtrlId=r0
	rlwinm		r4,r31,2,22,29		# u16MBGlobalIndex=r4 u8IflagRegIndex=r31
	lwzx		r0,r3,r4		# u8CtrlId=r0 u8CtrlId=r3
	or		r0,r0,r30		# u8CtrlId=r0 u8CtrlId=r0 u32TempFlag=r30
	stwx		r0,r3,r4		# u8CtrlId=r3 u8CtrlId=r0
#                 
#                 SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02();
	.d2line		4199
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02
# 
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* Check if the current message is standard to shift accordingly. */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 u32MbMessageId = ((REG_READ32( FLEXCAN_MB((u8HwOffset), (uint32)(u16MbLprioGlobalIndex))) & (uint32)FLEXCAN_MBCS_IDE_U32) != (uint32)FLEXCAN_MBCS_IDE_U32) ? /* condition to test */
	.d2line		4205
	lis		r3,Can_u32BaseAddress@ha		# u8CtrlId=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r0,r23,2,22,29		# u8CtrlId=r0 u8HwOffset=r23
	lwzx		r0,r3,r0		# u8CtrlId=r0 u8CtrlId=r3
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lwz		r3,4(r3)		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r4,r26,5,11,26		# u16MBGlobalIndex=r4 u16MbLprioGlobalIndex=r26
.Llo638:
	se_add		r3,r4		# u8CtrlId=r3 u8CtrlId=r3 u16MBGlobalIndex=r4
	lhz		r3,26(r3)		# u8CtrlId=r3 u8CtrlId=r3
	se_add		r0,r3		# u8CtrlId=r0 u8CtrlId=r0 u8CtrlId=r3
	lwzx		r0,r0,r0		# u8CtrlId=r0 u8CtrlId=r0
	se_btsti		r0,10		# u8CtrlId=r0
	bc		0,2,.L921	# ne
.Llo620:
	lis		r3,Can_u32BaseAddress@ha		# u8CtrlId=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8CtrlId=r3 u8CtrlId=r3
.Llo625:
	rlwinm		r23,r23,2,22,29		# u8HwOffset=r23 u8HwOffset=r23
.Llo626:
	lwzx		r0,r3,r23		# u8CtrlId=r0 u8CtrlId=r3
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lwz		r3,4(r3)		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r4,r26,5,11,26		# u16MBGlobalIndex=r4 u16MbLprioGlobalIndex=r26
.Llo639:
	se_add		r3,r4		# u8CtrlId=r3 u8CtrlId=r3 u16MBGlobalIndex=r4
	lhz		r3,26(r3)		# u8CtrlId=r3 u8CtrlId=r3
	se_add		r3,r0		# u8CtrlId=r3 u8CtrlId=r3 u8CtrlId=r0
	lwz		r0,4(r3)		# u8CtrlId=r0 u8CtrlId=r3
	rlwinm		r0,r0,14,21,31		# u8CtrlId=r0 u8CtrlId=r0
.Llo647:
	b		.L922
.L921:
.Llo640:
	lis		r3,Can_u32BaseAddress@ha		# u8CtrlId=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u8CtrlId=r3 u8CtrlId=r3
.Llo627:
	rlwinm		r23,r23,2,22,29		# u8HwOffset=r23 u8HwOffset=r23
.Llo628:
	lwzx		r0,r3,r23		# u8CtrlId=r0 u8CtrlId=r3
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lwz		r4,4(r3)		# u16MBGlobalIndex=r4 u8CtrlId=r3
.Llo641:
	rlwinm		r3,r26,5,11,26		# u8CtrlId=r3 u16MbLprioGlobalIndex=r26
	se_add		r3,r4		# u8CtrlId=r3 u8CtrlId=r3 u16MBGlobalIndex=r4
	lhz		r3,26(r3)		# u8CtrlId=r3 u8CtrlId=r3
	se_add		r3,r0		# u8CtrlId=r3 u8CtrlId=r3 u8CtrlId=r0
	lwz		r0,4(r3)		# u8CtrlId=r0 u8CtrlId=r3
	rlwinm		r0,r0,0,3,31		# u8CtrlId=r0 u8CtrlId=r0
.L922:
.Llo642:
	mr		r0,r0		# u32MbMessageId=r0 u32MbMessageId=r0
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 (uint32)((REG_READ32( FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MbLprioGlobalIndex))) & (uint32)(FLEXCAN_MBID_ID_STANDARD_U32)) >> (uint32)(18U)) : /* value if condition is true */
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 (uint32)(REG_READ32( FLEXCAN_MB_ID((u8HwOffset), (uint32)(u16MbLprioGlobalIndex))) & (uint32)(FLEXCAN_MBID_ID_EXTENDED_U32)); /* value if condition is false */
# 
#                 /* Check the priority of the current message is greater that the one requested to send. */
#         
#                 if  ( ((uint32)u32MbMessageId > (uint32)u32ExtendedFdErase)
	.d2line		4217
	cmpl		0,0,r0,r18		# u32MbMessageId=r0 u32ExtendedFdErase=r18
	bc		1,0,.L917	# lt
#                     #if (CAN_IDENTICAL_ID_CANCELLATION == STD_ON)
#                         || ((uint32)u32MbMessageId == (uint32)u32ExtendedFdErase)
#                     #endif
#                     )
#                 {
#                     /* Message currently in the MB has lower priority, cancel it.
#                           If the message is transmitted in the meantime, the MB will be blocked until the interrupt flag is cleared.
#                           However an interrupt may come in reaction to the flag and send Tx confirmation -> Can_Cancel must check that. */
#                     Can_FlexCan_Cancel( u8CtrlId, u16MbLprioGlobalIndex);
	.d2line		4226
.Llo648:
	mr		r3,r28		# u8CtrlId=r3 u8CtrlId=r28
	mr		r4,r26		# u16MbLprioGlobalIndex=r4 u16MbLprioGlobalIndex=r26
	bl		Can_FlexCan_Cancel
.L917:
#                 }
#                 SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02();
	.d2line		4228
.Llo608:
	bl		SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02
#                 /* Unlock the MB u32TxGuard. */
#                 Can_ControllerStatuses[u8CtrlId].u32TxGuard[u8IflagRegIndex] &= (uint32)(~u32TempFlag);
	.d2line		4230
	lis		r3,Can_ControllerStatuses@ha		# u8CtrlId=r3
.Llo609:
	e_add16i		r3,r3,Can_ControllerStatuses@l		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r28,r28,0,24,31		# u8CtrlId=r28 u8CtrlId=r28
	e_mulli		r28,r28,232		# u8CtrlId=r28 u8CtrlId=r28
	se_add		r3,r28		# u8CtrlId=r3 u8CtrlId=r3 u8CtrlId=r28
.Llo633:
	rlwinm		r31,r31,2,22,29		# u8IflagRegIndex=r31 u8IflagRegIndex=r31
.Llo634:
	lwzx		r0,r3,r31		# u32MbMessageId=r0 u8CtrlId=r3
.Llo649:
	andc		r0,r0,r30		# u32MbMessageId=r0 u32MbMessageId=r0 u32TempFlag=r30
	stwx		r0,r3,r31		# u8CtrlId=r3 u32MbMessageId=r0
#                 
#                 SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02();
	.d2line		4232
	bl		SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02
.L915:
# 
#             }
#         }
#     #endif /* ((CAN_HW_TRANSMIT_CANCELLATION == STD_ON) && (CAN_MULTIPLEXED_TRANSMISSION == STD_ON)) */
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
#     return (eReturnValue);
	.d2line		4241
.Llo610:
	mr		r3,r29		# eReturnValue=r3 eReturnValue=r29
# }
	.d2line		4242
	.d2epilogue_begin
	lmw		r18,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
.Llo600:
	lwz		r0,84(r1)		# u8CtrlId=r0
	mtspr		lr,r0		# u8CtrlId=lr
	diab.addi		r1,r1,80		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1346:
	.type		Can_FlexCan_Write,@function
	.size		Can_FlexCan_Write,.-Can_FlexCan_Write
# Number of nodes = 568

# Allocations for Can_FlexCan_Write
#	?a4		Hth
#	?a5		PduInfo
#	?a6		$$231
#	?a7		$$230
#	?a8		$$229
#	?a9		$$223
#	?a10		$$222
#	?a11		$$221
#	?a12		$$220
#	?a13		$$219
#	?a14		$$218
#	?a15		eReturnValue
#	?a16		u8CtrlId
#	?a17		u8MbIndex
#	?a18		u8MbLprioIndex
#	?a19		u16MbLprioGlobalIndex
#	?a20		u32MbLprioId
#	?a21		bExitMplxTX
#	?a22		u8HwOffset
#	?a23		u8IflagRegIndex
#	?a24		u32TempFlag
#	?a25		u16MBGlobalIndex
#	?a26		pCanMbConfigContainer
#	?a27		u32MbMessageId
#	?a28		u32ExtendedFdErase
# FUNC (void, CAN_CODE) Can_FlexCan_MainFunctionWrite(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         4294,23
#$$ld
.L1380:

#$$bf	Can_FlexCan_MainFunctionWrite,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_MainFunctionWrite
	.d2_cfa_start __cie
Can_FlexCan_MainFunctionWrite:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo653:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8CtrlId=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
#     /* Variable for indexing the controllers. */
#     VAR(uint8, AUTOMATIC)   u8CtrlId = 0U;
	.d2line		4298
	diab.li		r0,0		# u8CtrlId=r0
#     
#     VAR(uint16, AUTOMATIC)   u16CtrlGlobalIndex;
# 
#     /* Loop through all configured controller descriptors. */
#     for ( u16CtrlGlobalIndex = Can_pCurrentConfig->uCanFirstHTHIndex; u16CtrlGlobalIndex < Can_pCurrentConfig->MBConfigContainer.uMessageBufferConfigCount; u16CtrlGlobalIndex++)
	.d2line		4303
.Llo654:
	lis		r3,Can_pCurrentConfig@ha
	lwz		r3,Can_pCurrentConfig@l(r3)
	lbz		r31,20(r3)
.Llo663:
	mr		r31,r31		# u16CtrlGlobalIndex=r31 u16CtrlGlobalIndex=r31
.L938:
	rlwinm		r4,r31,0,16,31		# u8CtrlId=r4 u16CtrlGlobalIndex=r31
.Llo655:
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lbz		r0,8(r3)		# u8CtrlId=r0 u8CtrlId=r3
	se_cmp		r4,r0		# u8CtrlId=r4 u8CtrlId=r0
	bc		0,0,.L937	# ge
#     {
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         u8CtrlId = Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr[u16CtrlGlobalIndex].u8ControllerId;
	.d2line		4306
.Llo656:
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
.Llo657:
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lwz		r3,4(r3)		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r4,r31,5,11,26		# u8CtrlId=r4 u16CtrlGlobalIndex=r31
	se_add		r3,r4		# u8CtrlId=r3 u8CtrlId=r3 u8CtrlId=r4
	lbz		r4,1(r3)		# u8CtrlId=r4 u8CtrlId=r3
	mr		r4,r4		# u8CtrlId=r4 u8CtrlId=r4
#         
#         /* Check whether the controller is enabled and whether Tx polling is used for this controller. */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         if ( (FLEXCAN_NULL_OFFSET_U8 != CanStatic_pControlerDescriptors[u8CtrlId].u8ControllerOffset) &&
	.d2line		4310
	lis		r3,CanStatic_pControlerDescriptors@ha		# u8CtrlId=r3
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r0,r4,0,24,31		# u8CtrlId=r0 u8CtrlId=r4
	e_mulli		r0,r0,20		# u8CtrlId=r0 u8CtrlId=r0
	lbzx		r0,r3,r0		# u8CtrlId=r0 u8CtrlId=r3
	cmpi		0,0,r0,255		# u8CtrlId=r0
	bc		1,2,.L941	# eq
.Llo658:
	lis		r3,CanStatic_pControlerDescriptors@ha		# u8CtrlId=r3
.Llo659:
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r0,r4,0,24,31		# u8CtrlId=r0 u8CtrlId=r4
	e_mulli		r0,r0,20		# u8CtrlId=r0 u8CtrlId=r0
	se_add		r3,r0		# u8CtrlId=r3 u8CtrlId=r3 u8CtrlId=r0
	lwz		r0,16(r3)		# u8CtrlId=r0 u8CtrlId=r3
	se_btsti		r0,20		# u8CtrlId=r0
	bc		1,2,.L941	# eq
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lwz		r0,4(r3)		# u8CtrlId=r0 u8CtrlId=r3
	rlwinm		r3,r31,5,11,26		# u8CtrlId=r3 u16CtrlGlobalIndex=r31
	se_add		r3,r0		# u8CtrlId=r3 u8CtrlId=r3 u8CtrlId=r0
	lwz		r0,8(r3)		# u8CtrlId=r0 u8CtrlId=r3
	se_cmpi		r0,1		# u8CtrlId=r0
	bc		0,2,.L941	# ne
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#              ((uint32)0U != (CAN_CONTROLLERCONFIG_TXPOL_EN_U32 & (CanStatic_pControlerDescriptors[u8CtrlId].u32Options))) &&
#               /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#              (CAN_TRANSMIT == (Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr[u16CtrlGlobalIndex].eMBType ))
#            )
#         {
#             /* Enabled & TxPoll used. Process Tx interrupt flags. */
#             Can_FlexCan_ProcessTxPoll(u8CtrlId, u16CtrlGlobalIndex);
	.d2line		4318
	mr		r3,r4		# u8CtrlId=r3 u8CtrlId=r4
	mr		r4,r31		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r31
.Llo660:
	bl		Can_FlexCan_ProcessTxPoll
.L941:
#         }
#     }
	.d2line		4320
.Llo661:
	diab.addi		r3,r31,1		# u8CtrlId=r3 u16CtrlGlobalIndex=r31
	se_addi		r31,1		# u16CtrlGlobalIndex=r31 u16CtrlGlobalIndex=r31
	b		.L938
.L937:
#     
# }
	.d2line		4322
	.d2epilogue_begin
.Llo662:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8CtrlId=r0
	mtspr		lr,r0		# u8CtrlId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1381:
	.type		Can_FlexCan_MainFunctionWrite,@function
	.size		Can_FlexCan_MainFunctionWrite,.-Can_FlexCan_MainFunctionWrite
# Number of nodes = 80

# Allocations for Can_FlexCan_MainFunctionWrite
#	?a4		u8CtrlId
#	?a5		u16CtrlGlobalIndex
# FUNC (void, CAN_CODE) Can_FlexCan_MainFunctionMultipleWritePoll( VAR(uint8, AUTOMATIC) writepoll)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         4337,23
#$$ld
.L1389:

#$$bf	Can_FlexCan_MainFunctionMultipleWritePoll,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_MainFunctionMultipleWritePoll
	.d2_cfa_start __cie
Can_FlexCan_MainFunctionMultipleWritePoll:
.Llo664:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo668:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# u8CtrlId=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# writepoll=r31 writepoll=r3
	.d2prologue_end
# {
#     /* Variable for indexing the controllers. */
#     VAR(uint8, AUTOMATIC)  u8CtrlId = 0U;
	.d2line		4340
	diab.li		r0,0		# u8CtrlId=r0
#     /* First MB to process. */
#     VAR(uint16, AUTOMATIC)  u16CtrlGlobalIndex = 0U;
# 
#     if ( NULL_PTR != Can_pCurrentConfig )
	.d2line		4344
.Llo669:
	lis		r3,Can_pCurrentConfig@ha
.Llo665:
	lwz		r0,Can_pCurrentConfig@l(r3)		# u8CtrlId=r0
.Llo670:
	se_cmpi		r0,0		# u8CtrlId=r0
	bc		1,2,.L945	# eq
#     {
#         #if (CAN_DEV_ERROR_DETECT == STD_ON)
#             /* Test whether the driver is already initialised. */
#             if ( CAN_UNINIT == Can_eDriverStatus )
#             {
#                 /*
#                    (CAN179) If development error detection for the module Can is enabled: The function Can_MainFunction_Write shall raise
#                            the error CAN_E_UNINIT if the driver is not yet initialized.
#                 */
#                 
#                 (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_MAIN_FUNCTION_WRITE, (uint8)CAN_E_UNINIT);
#             }
#             else
#             {
#         #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#                 
#                 /* Parse through all TX configured message buffer */
#                 for ( u16CtrlGlobalIndex = Can_pCurrentConfig->uCanFirstHTHIndex; u16CtrlGlobalIndex < Can_pCurrentConfig->MBConfigContainer.uMessageBufferConfigCount; u16CtrlGlobalIndex++)
	.d2line		4362
.Llo666:
	lis		r3,Can_pCurrentConfig@ha
	lwz		r3,Can_pCurrentConfig@l(r3)
	lbz		r30,20(r3)
.Llo676:
	mr		r30,r30		# u16CtrlGlobalIndex=r30 u16CtrlGlobalIndex=r30
.L947:
	rlwinm		r4,r30,0,16,31		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r30
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
.Llo671:
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lbz		r0,8(r3)		# u8CtrlId=r0 u8CtrlId=r3
	se_cmp		r4,r0		# u16CtrlGlobalIndex=r4 u8CtrlId=r0
	bc		0,0,.L945	# ge
#                 {
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     u8CtrlId = Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr[u16CtrlGlobalIndex].u8ControllerId;
	.d2line		4365
.Llo672:
	lis		r4,Can_pCurrentConfig@ha		# u16CtrlGlobalIndex=r4
	lwz		r3,Can_pCurrentConfig@l(r4)		# u8CtrlId=r3 u16CtrlGlobalIndex=r4
.Llo673:
	lwz		r3,4(r3)		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r5,r30,5,11,26		# u16CtrlGlobalIndex=r30
	se_add		r3,r5		# u8CtrlId=r3 u8CtrlId=r3
	lbz		r3,1(r3)		# u8CtrlId=r3 u8CtrlId=r3
	mr		r3,r3		# u8CtrlId=r3 u8CtrlId=r3
#                     
#                     /*  Poll only the Tx MB which is referenced by Can_FlexCan_MainFunctionMultipleWritePoll */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     if ((writepoll == Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr[u16CtrlGlobalIndex].u32CanMainFuncRWPeriodRef) &&
	.d2line		4369
	rlwinm		r0,r31,0,24,31		# u8CtrlId=r0 writepoll=r31
	lwz		r4,Can_pCurrentConfig@l(r4)		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r4
	lwz		r4,4(r4)		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r4
	se_add		r5,r4		# u16CtrlGlobalIndex=r4
	lbz		r4,24(r5)		# u16CtrlGlobalIndex=r4
	se_cmp		r0,r4		# u8CtrlId=r0 u16CtrlGlobalIndex=r4
	bc		0,2,.L950	# ne
	lis		r4,CanStatic_pControlerDescriptors@ha		# u16CtrlGlobalIndex=r4
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r4
	rlwinm		r0,r3,0,24,31		# u8CtrlId=r0 u8CtrlId=r3
	e_mulli		r0,r0,20		# u8CtrlId=r0 u8CtrlId=r0
	lbzx		r0,r4,r0		# u8CtrlId=r0 u16CtrlGlobalIndex=r4
	cmpi		0,0,r0,255		# u8CtrlId=r0
	bc		1,2,.L950	# eq
	lis		r4,CanStatic_pControlerDescriptors@ha		# u16CtrlGlobalIndex=r4
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r4
	rlwinm		r0,r3,0,24,31		# u8CtrlId=r0 u8CtrlId=r3
	e_mulli		r0,r0,20		# u8CtrlId=r0 u8CtrlId=r0
	se_add		r4,r0		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r4 u8CtrlId=r0
	lwz		r0,16(r4)		# u8CtrlId=r0 u16CtrlGlobalIndex=r4
	se_btsti		r0,20		# u8CtrlId=r0
	bc		1,2,.L950	# eq
	lis		r4,Can_pCurrentConfig@ha		# u16CtrlGlobalIndex=r4
	lwz		r4,Can_pCurrentConfig@l(r4)		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r4
	lwz		r0,4(r4)		# u8CtrlId=r0 u16CtrlGlobalIndex=r4
	rlwinm		r4,r30,5,11,26		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r30
	se_add		r4,r0		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r4 u8CtrlId=r0
	lwz		r0,8(r4)		# u8CtrlId=r0 u16CtrlGlobalIndex=r4
	se_cmpi		r0,1		# u8CtrlId=r0
	bc		0,2,.L950	# ne
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                         (FLEXCAN_NULL_OFFSET_U8 != CanStatic_pControlerDescriptors[u8CtrlId].u8ControllerOffset) &&
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                         ((uint32)0U != (CAN_CONTROLLERCONFIG_TXPOL_EN_U32 & (CanStatic_pControlerDescriptors[u8CtrlId].u32Options))) &&
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                         (CAN_TRANSMIT == (Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr[u16CtrlGlobalIndex].eMBType )))
#                     {
#                         /* Enabled & TxPoll used. Process Tx interrupt flags. */
#                         Can_FlexCan_ProcessTxPoll(u8CtrlId, u16CtrlGlobalIndex);
	.d2line		4378
	mr		r3,r3		# u8CtrlId=r3 u8CtrlId=r3
.Llo674:
	mr		r4,r30		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r30
	bl		Can_FlexCan_ProcessTxPoll
.L950:
#                     }
#                 }
	.d2line		4380
.Llo675:
	diab.addi		r4,r30,1		# u16CtrlGlobalIndex=r4 u16CtrlGlobalIndex=r30
	se_addi		r30,1		# u16CtrlGlobalIndex=r30 u16CtrlGlobalIndex=r30
	b		.L947
.L945:
#         #if (CAN_DEV_ERROR_DETECT == STD_ON)
#             }
#         #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#     }
# }
	.d2line		4385
	.d2epilogue_begin
.Llo667:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8CtrlId=r0
	mtspr		lr,r0		# u8CtrlId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1390:
	.type		Can_FlexCan_MainFunctionMultipleWritePoll,@function
	.size		Can_FlexCan_MainFunctionMultipleWritePoll,.-Can_FlexCan_MainFunctionMultipleWritePoll
# Number of nodes = 102

# Allocations for Can_FlexCan_MainFunctionMultipleWritePoll
#	?a4		writepoll
#	?a5		u8CtrlId
#	?a6		u16CtrlGlobalIndex
# FUNC (void, CAN_CODE) Can_FlexCan_MainFunctionRead( void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         4457,23
#$$ld
.L1399:

#$$bf	Can_FlexCan_MainFunctionRead,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_MainFunctionRead
	.d2_cfa_start __cie
Can_FlexCan_MainFunctionRead:
.Llo677:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
#     /* Variable for indexing the controllers. */
#     VAR(uint8, AUTOMATIC)  u8CtrlId = 0U;
	.d2line		4461
	diab.li		r31,0		# u8CtrlId=r31
# #if (CAN_RXFIFO_ENABLE == STD_ON)
#     /* First MB to process. */
#     VAR(uint8, AUTOMATIC)  u8MbIndex = 0U;
# #endif
#     VAR(uint16, AUTOMATIC)  u16MBGlobalIndex = 0U;
#     
#     /* Loop through all configured controller descriptors. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     for ( u16MBGlobalIndex = 0U; u16MBGlobalIndex < (uint16)Can_pCurrentConfig->uCanFirstHTHIndex; u16MBGlobalIndex++)
.L955:
	.d2line		4470
.Llo678:
	rlwinm		r4,r31,0,16,31		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r31
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
.Llo679:
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lbz		r0,20(r3)		# u8CtrlId=r3
	se_cmp		r4,r0		# u16MBGlobalIndex=r4
	bc		0,0,.L954	# ge
#     {
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         u8CtrlId = Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr[u16MBGlobalIndex].u8ControllerId;
	.d2line		4473
.Llo680:
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
.Llo681:
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lwz		r3,4(r3)		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r4,r31,5,11,26		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r31
	se_add		r3,r4		# u8CtrlId=r3 u8CtrlId=r3 u16MBGlobalIndex=r4
	lbz		r3,1(r3)		# u8CtrlId=r3 u8CtrlId=r3
	mr		r3,r3		# u8CtrlId=r3 u8CtrlId=r3
#         
#         /*
#            (CAN108) The function Can_MainFunction_Read shall perform the polling of RX indications when CanRxProcessing is set to POLLING.
#         */
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         if ( (FLEXCAN_NULL_OFFSET_U8 != CanStatic_pControlerDescriptors[u8CtrlId].u8ControllerOffset) &&
	.d2line		4479
	lis		r4,CanStatic_pControlerDescriptors@ha		# u16MBGlobalIndex=r4
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r0,r3,0,24,31		# u8CtrlId=r3
	e_mulli		r0,r0,20
	lbzx		r0,r4,r0		# u16MBGlobalIndex=r4
	cmpi		0,0,r0,255
	bc		1,2,.L958	# eq
	lis		r4,CanStatic_pControlerDescriptors@ha		# u16MBGlobalIndex=r4
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r0,r3,0,24,31		# u8CtrlId=r3
	e_mulli		r0,r0,20
	se_add		r4,r0		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	lwz		r0,16(r4)		# u16MBGlobalIndex=r4
	se_btsti		r0,21
	bc		1,2,.L958	# eq
#              /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#              ((uint32)0U != (CAN_CONTROLLERCONFIG_RXPOL_EN_U32 & (CanStatic_pControlerDescriptors[u8CtrlId].u32Options)))
#            )
#         {
#         #if (CAN_RXFIFO_ENABLE == STD_ON)
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             u8MbIndex = ((Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
#             /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             if ( (CAN_CONTROLLERCONFIG_RXFIFO_U32 == ((Can_pControlerDescriptors[u8CtrlId].u32Options) & CAN_CONTROLLERCONFIG_RXFIFO_U32)) &&
#                  (u8MbIndex == (uint8)0U)
#                )
#             {
#                 for (u8MbIndex = (uint8)FLEXCAN_FIFOFRAME_INT_INDEX_U8; u8MbIndex <= (uint8)FLEXCAN_FIFOOVERFLOW_INT_INDEX_U8; u8MbIndex++)
#                 {
#                     Can_FlexCan_ProcessRxFifo(u8CtrlId, u8MbIndex);
#                 }
#             }
#             else
#             {
#         #endif /* (CAN_RXFIFO_ENABLE == STD_ON) */
#         
#                 Can_FlexCan_ProcessRxNormal(u8CtrlId, u16MBGlobalIndex);
	.d2line		4501
	mr		r3,r3		# u8CtrlId=r3 u8CtrlId=r3
.Llo682:
	mr		r4,r31		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r31
	bl		Can_FlexCan_ProcessRxNormal
.L958:
#                 
#         #if (CAN_RXFIFO_ENABLE == STD_ON)
#             }
#         #endif /* (CAN_RXFIFO_ENABLE == STD_ON) */
#         }
#     }    
	.d2line		4507
.Llo683:
	diab.addi		r4,r31,1		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r31
	se_addi		r31,1		# u16MBGlobalIndex=r31 u16MBGlobalIndex=r31
	b		.L955
.L954:
# }
	.d2line		4508
	.d2epilogue_begin
.Llo684:
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
.L1400:
	.type		Can_FlexCan_MainFunctionRead,@function
	.size		Can_FlexCan_MainFunctionRead,.-Can_FlexCan_MainFunctionRead
# Number of nodes = 66

# Allocations for Can_FlexCan_MainFunctionRead
#	?a4		u8CtrlId
#	?a5		u16MBGlobalIndex
# FUNC (void, CAN_CODE) Can_FlexCan_MainFunctionMultipleReadPoll( VAR(uint8, AUTOMATIC) readpoll)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         4525,23
#$$ld
.L1408:

#$$bf	Can_FlexCan_MainFunctionMultipleReadPoll,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_MainFunctionMultipleReadPoll
	.d2_cfa_start __cie
Can_FlexCan_MainFunctionMultipleReadPoll:
.Llo685:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo689:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# u8CtrlId=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# readpoll=r31 readpoll=r3
	.d2prologue_end
# {
#     /* Variable for indexing the controllers. */
#     VAR(uint8, AUTOMATIC)  u8CtrlId = 0U;
	.d2line		4528
	diab.li		r0,0		# u8CtrlId=r0
# #if (CAN_RXFIFO_ENABLE == STD_ON)
#     /* First MB to process. */
#     VAR(uint8, AUTOMATIC)  u8MbIndex = 0U;
# #endif /* (CAN_RXFIFO_ENABLE == STD_ON) */
#     VAR(uint16, AUTOMATIC)  u16MBGlobalIndex = 0U;
#     
#     if ( NULL_PTR != Can_pCurrentConfig )
	.d2line		4535
.Llo690:
	lis		r3,Can_pCurrentConfig@ha
.Llo686:
	lwz		r0,Can_pCurrentConfig@l(r3)		# u8CtrlId=r0
.Llo691:
	se_cmpi		r0,0		# u8CtrlId=r0
	bc		1,2,.L962	# eq
#     {
#         #if (CAN_DEV_ERROR_DETECT == STD_ON)
#             /* Test whether the driver is already initialised. */
#             if ( CAN_UNINIT == Can_eDriverStatus )
#             {
#                 /*
#                    (CAN181) If development error detection for the Can module is enabled: The function Can_MainFunction_Read shall raise the
#                            error CAN_E_UNINIT if the driver not yet initialized.
#                 */               
#                 (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_MAIN_FUNCTION_READ, (uint8)CAN_E_UNINIT);
#             }
#             else
#             {
#         #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
#                 /* Loop through all configured controller descriptors. */
#                 for ( u16MBGlobalIndex = 0U; u16MBGlobalIndex < Can_pCurrentConfig->uCanFirstHTHIndex; u16MBGlobalIndex++)
	.d2line		4552
.Llo687:
	diab.li		r30,0		# u16MBGlobalIndex=r30
.L964:
.Llo697:
	rlwinm		r4,r30,0,16,31		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r30
	lis		r3,Can_pCurrentConfig@ha		# u8CtrlId=r3
.Llo692:
	lwz		r3,Can_pCurrentConfig@l(r3)		# u8CtrlId=r3 u8CtrlId=r3
	lbz		r0,20(r3)		# u8CtrlId=r0 u8CtrlId=r3
	se_cmp		r4,r0		# u16MBGlobalIndex=r4 u8CtrlId=r0
	bc		0,0,.L962	# ge
#                 {
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     u8CtrlId = Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr[u16MBGlobalIndex].u8ControllerId;
	.d2line		4555
.Llo693:
	lis		r4,Can_pCurrentConfig@ha		# u16MBGlobalIndex=r4
	lwz		r3,Can_pCurrentConfig@l(r4)		# u8CtrlId=r3 u16MBGlobalIndex=r4
.Llo694:
	lwz		r3,4(r3)		# u8CtrlId=r3 u8CtrlId=r3
	rlwinm		r5,r30,5,11,26		# u16MBGlobalIndex=r30
	se_add		r3,r5		# u8CtrlId=r3 u8CtrlId=r3
	lbz		r3,1(r3)		# u8CtrlId=r3 u8CtrlId=r3
	mr		r3,r3		# u8CtrlId=r3 u8CtrlId=r3
#                     
#                     /*
#                        (CAN108) The function Can_MainFunction_Read shall perform the polling of RX indications when CanRxProcessing is set to POLLING.
#                     */
#                     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     if ( (readpoll == Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr[u16MBGlobalIndex].u32CanMainFuncRWPeriodRef) &&
	.d2line		4561
	rlwinm		r0,r31,0,24,31		# u8CtrlId=r0 readpoll=r31
	lwz		r4,Can_pCurrentConfig@l(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	lwz		r4,4(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	se_add		r5,r4		# u16MBGlobalIndex=r4
	lbz		r4,24(r5)		# u16MBGlobalIndex=r4
	se_cmp		r0,r4		# u8CtrlId=r0 u16MBGlobalIndex=r4
	bc		0,2,.L967	# ne
	lis		r4,CanStatic_pControlerDescriptors@ha		# u16MBGlobalIndex=r4
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r0,r3,0,24,31		# u8CtrlId=r0 u8CtrlId=r3
	e_mulli		r0,r0,20		# u8CtrlId=r0 u8CtrlId=r0
	lbzx		r0,r4,r0		# u8CtrlId=r0 u16MBGlobalIndex=r4
	cmpi		0,0,r0,255		# u8CtrlId=r0
	bc		1,2,.L967	# eq
	lis		r4,CanStatic_pControlerDescriptors@ha		# u16MBGlobalIndex=r4
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4
	rlwinm		r0,r3,0,24,31		# u8CtrlId=r0 u8CtrlId=r3
	e_mulli		r0,r0,20		# u8CtrlId=r0 u8CtrlId=r0
	se_add		r4,r0		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r4 u8CtrlId=r0
	lwz		r0,16(r4)		# u8CtrlId=r0 u16MBGlobalIndex=r4
	se_btsti		r0,21		# u8CtrlId=r0
	bc		1,2,.L967	# eq
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                         (FLEXCAN_NULL_OFFSET_U8 != CanStatic_pControlerDescriptors[u8CtrlId].u8ControllerOffset) &&
#                          /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4,pointer arithmetic other than array indexing used */
#                          ((uint32)0U != (CAN_CONTROLLERCONFIG_RXPOL_EN_U32 & (CanStatic_pControlerDescriptors[u8CtrlId].u32Options)))
#                        )
#                     {
#                     #if (CAN_RXFIFO_ENABLE == STD_ON)
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                         u8MbIndex = ((Can_pCurrentConfig->MBConfigContainer.pMessageBufferConfigsPtr) + u16MBGlobalIndex)->u8HWMBIndex;
#                         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                         if ( (CAN_CONTROLLERCONFIG_RXFIFO_U32 == ((Can_pControlerDescriptors[u8CtrlId].u32Options) & CAN_CONTROLLERCONFIG_RXFIFO_U32)) &&
#                              (u8MbIndex == (uint8)0U)
#                            )
#                         {
#                             for (u8MbIndex = (uint8)FLEXCAN_FIFOFRAME_INT_INDEX_U8; u8MbIndex <= (uint8)FLEXCAN_FIFOOVERFLOW_INT_INDEX_U8; u8MbIndex++)
#                             {
#                                 Can_FlexCan_ProcessRxFifo(u8CtrlId, u8MbIndex);
#                             }
#                         }
#                         else
#                         {
#                     #endif /* (CAN_RXFIFO_ENABLE == STD_ON) */
#                     
#                             Can_FlexCan_ProcessRxNormal(u8CtrlId, u16MBGlobalIndex);
	.d2line		4585
	mr		r3,r3		# u8CtrlId=r3 u8CtrlId=r3
.Llo695:
	mr		r4,r30		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r30
	bl		Can_FlexCan_ProcessRxNormal
.L967:
#                             
#                     #if (CAN_RXFIFO_ENABLE == STD_ON)
#                         }
#                     #endif /* (CAN_RXFIFO_ENABLE == STD_ON) */
#                     }
#                 }
	.d2line		4591
.Llo696:
	diab.addi		r4,r30,1		# u16MBGlobalIndex=r4 u16MBGlobalIndex=r30
	se_addi		r30,1		# u16MBGlobalIndex=r30 u16MBGlobalIndex=r30
	b		.L964
.L962:
#                 
#         #if (CAN_DEV_ERROR_DETECT == STD_ON)
#             }
#         #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#     }
# }
	.d2line		4597
	.d2epilogue_begin
.Llo688:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8CtrlId=r0
	mtspr		lr,r0		# u8CtrlId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1409:
	.type		Can_FlexCan_MainFunctionMultipleReadPoll,@function
	.size		Can_FlexCan_MainFunctionMultipleReadPoll,.-Can_FlexCan_MainFunctionMultipleReadPoll
# Number of nodes = 84

# Allocations for Can_FlexCan_MainFunctionMultipleReadPoll
#	?a4		readpoll
#	?a5		u8CtrlId
#	?a6		u16MBGlobalIndex
# FUNC (void, CAN_CODE) Can_FlexCan_MainFunctionMode( void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         4611,23
#$$ld
.L1418:

#$$bf	Can_FlexCan_MainFunctionMode,interprocedural,rasave,nostackparams
	.globl		Can_FlexCan_MainFunctionMode
	.d2_cfa_start __cie
Can_FlexCan_MainFunctionMode:
.Llo698:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Variable for indexing the controllers. */
#     VAR(uint8, AUTOMATIC)  u8CtrlIndex = 0U;
	.d2line		4614
	diab.li		r31,0		# u8CtrlIndex=r31
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC)  u8HwOffset = 0U;
#     /* Old and new MCR status Register*/
#     
#     VAR(uint32, AUTOMATIC)  u32NewMcr = 0U;
# 
#     /* Loop through all configured controller descriptors. */
#     for ( u8CtrlIndex = (uint8)0U; u8CtrlIndex < (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured; u8CtrlIndex++)
.L972:
	.d2line		4622
	rlwinm		r0,r31,0,24,31		# u8HwOffset=r0 u8CtrlIndex=r31
.Llo700:
	lis		r3,CanStatic_pCurrentConfig@ha		# u32NewMcr=r3
.Llo720:
	lwz		r3,CanStatic_pCurrentConfig@l(r3)		# u32NewMcr=r3 u32NewMcr=r3
	lbz		r3,0(r3)		# u32NewMcr=r3 u32NewMcr=r3
	se_cmp		r0,r3		# u8HwOffset=r0 u32NewMcr=r3
	bc		0,0,.L971	# ge
#     {
#         /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#         if ( (FLEXCAN_NULL_OFFSET_U8 != CanStatic_pControlerDescriptors[u8CtrlIndex].u8ControllerOffset) )
	.d2line		4625
.Llo701:
	lis		r3,CanStatic_pControlerDescriptors@ha		# u32NewMcr=r3
.Llo721:
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# u32NewMcr=r3 u32NewMcr=r3
	rlwinm		r0,r31,0,24,31		# u8HwOffset=r0 u8CtrlIndex=r31
.Llo702:
	e_mulli		r0,r0,20		# u8HwOffset=r0 u8HwOffset=r0
	lbzx		r0,r3,r0		# u8HwOffset=r0 u32NewMcr=r3
	cmpi		0,0,r0,255		# u8HwOffset=r0
	bc		1,2,.L975	# eq
#         {
#             
#             if(CAN_SLEEPED != Can_ControllerStatuses[u8CtrlIndex].ControllerState)
	.d2line		4628
.Llo703:
	lis		r3,(Can_ControllerStatuses+224)@ha		# u32NewMcr=r3
.Llo722:
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# u32NewMcr=r3 u32NewMcr=r3
	rlwinm		r0,r31,0,24,31		# u8HwOffset=r0 u8CtrlIndex=r31
.Llo704:
	e_mulli		r0,r0,232		# u8HwOffset=r0 u8HwOffset=r0
	lwzx		r0,r3,r0		# u8HwOffset=r0 u32NewMcr=r3
	se_cmpi		r0,2		# u8HwOffset=r0
	bc		1,2,.L975	# eq
#             {   
#                 /* Get the hardware offset for this controller. */
# 
#                 /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 u8HwOffset = CanStatic_pControlerDescriptors[u8CtrlIndex].u8ControllerOffset;
	.d2line		4633
.Llo705:
	lis		r3,CanStatic_pControlerDescriptors@ha		# u32NewMcr=r3
.Llo723:
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# u32NewMcr=r3 u32NewMcr=r3
	rlwinm		r0,r31,0,24,31		# u8HwOffset=r0 u8CtrlIndex=r31
.Llo706:
	e_mulli		r0,r0,20		# u8HwOffset=r0 u8HwOffset=r0
	lbzx		r0,r3,r0		# u8HwOffset=r0 u32NewMcr=r3
	mr		r0,r0		# u8HwOffset=r0 u8HwOffset=r0
#                 /*
#                     (CAN373) The function Can_Mainfunction_Mode shall call the function CanIf_ControllerModeIndication to notify the upper layer about a successful
#                              state transition of the CAN controller, in case the state transition was triggered by function Can_SetControllerMode.
#                 */
#                 
#                 /* We have to look for all the possible transitions*/
#                 
#                 /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#                 /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#                  u32NewMcr = (uint32)(REG_READ32( FLEXCAN_MCR(u8HwOffset)) & FLEXCAN_MCR_NOTRDY_U32);
	.d2line		4643
	lis		r3,Can_u32BaseAddress@ha		# u32NewMcr=r3
	e_add16i		r3,r3,Can_u32BaseAddress@l		# u32NewMcr=r3 u32NewMcr=r3
	rlwinm		r0,r0,2,22,29		# u8HwOffset=r0 u8HwOffset=r0
.Llo707:
	lwzx		r3,r3,r0		# u32NewMcr=r3 u32NewMcr=r3
	lwz		r4,0(r3)		# u32NewMcr=r4 u32NewMcr=r3
	rlwinm		r4,r4,0,4,4		# u32NewMcr=r4 u32NewMcr=r4
	mr		r4,r4		# u32NewMcr=r4 u32NewMcr=r4
#                  
#                  
#                 /*Check if logical state is synchronized with hardware state*/ 
#                 if((FLEXCAN_MCR_NOTRDY_U32 == u32NewMcr) && (CAN_STARTED == Can_ControllerStatuses[u8CtrlIndex].ControllerState))
	.d2line		4647
	diab.li		r0,134217728		# u8HwOffset=r0
.Llo708:
	se_cmpl		r4,r0		# u32NewMcr=r4 u8HwOffset=r0
	bc		0,2,.L977	# ne
.Llo709:
	lis		r3,(Can_ControllerStatuses+224)@ha		# u32NewMcr=r3
.Llo724:
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# u32NewMcr=r3 u32NewMcr=r3
	rlwinm		r0,r31,0,24,31		# u8HwOffset=r0 u8CtrlIndex=r31
.Llo710:
	e_mulli		r0,r0,232		# u8HwOffset=r0 u8HwOffset=r0
	lwzx		r0,r3,r0		# u8HwOffset=r0 u32NewMcr=r3
	se_cmpi		r0,1		# u8HwOffset=r0
	bc		0,2,.L977	# ne
#                 {
#                     Can_ControllerStatuses[u8CtrlIndex].ControllerState = CAN_STOPPED;
	.d2line		4649
.Llo711:
	diab.li		r0,0		# u8HwOffset=r0
.Llo712:
	lis		r3,(Can_ControllerStatuses+224)@ha		# u32NewMcr=r3
.Llo725:
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# u32NewMcr=r3 u32NewMcr=r3
	rlwinm		r4,r31,0,24,31		# u32NewMcr=r4 u8CtrlIndex=r31
	e_mulli		r5,r4,232		# u32NewMcr=r4
	stwx		r0,r3,r5		# u32NewMcr=r3 u8HwOffset=r0
#                     CanIf_ControllerModeIndication(u8CtrlIndex, CANIF_CS_STOPPED);
	.d2line		4650
	mr		r3,r4		# u32NewMcr=r3
.Llo726:
	diab.li		r4,2		# u32NewMcr=r4
	bl		CanIf_ControllerModeIndication
.Llo713:
	b		.L975
.L977:
#                 }
#                 else if ((FLEXCAN_MCR_NOTRDY_U32 != u32NewMcr) && (CAN_STOPPED == Can_ControllerStatuses[u8CtrlIndex].ControllerState))
	.d2line		4652
.Llo727:
	diab.li		r0,134217728		# u8HwOffset=r0
.Llo714:
	se_cmpl		r4,r0		# u32NewMcr=r4 u8HwOffset=r0
	bc		1,2,.L975	# eq
.Llo715:
	lis		r3,(Can_ControllerStatuses+224)@ha		# u32NewMcr=r3
.Llo728:
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# u32NewMcr=r3 u32NewMcr=r3
	rlwinm		r0,r31,0,24,31		# u8HwOffset=r0 u8CtrlIndex=r31
.Llo716:
	e_mulli		r0,r0,232		# u8HwOffset=r0 u8HwOffset=r0
	lwzx		r0,r3,r0		# u8HwOffset=r0 u32NewMcr=r3
	se_cmpi		r0,0		# u8HwOffset=r0
	bc		0,2,.L975	# ne
#                 {
#                     Can_ControllerStatuses[u8CtrlIndex].ControllerState = CAN_STARTED;
	.d2line		4654
.Llo717:
	diab.li		r4,1		# u32NewMcr=r4
.Llo729:
	lis		r3,(Can_ControllerStatuses+224)@ha		# u8HwOffset=r3
.Llo718:
	e_add16i		r3,r3,(Can_ControllerStatuses+224)@l		# u8HwOffset=r3 u8HwOffset=r3
	rlwinm		r0,r31,0,24,31		# u8HwOffset=r0 u8CtrlIndex=r31
	e_mulli		r5,r0,232		# u8HwOffset=r0
	stwx		r4,r3,r5		# u8HwOffset=r3 u32NewMcr=r4
#                     CanIf_ControllerModeIndication(u8CtrlIndex, CANIF_CS_STARTED);
	.d2line		4655
	mr		r3,r0		# u8HwOffset=r3
.Llo719:
	bl		CanIf_ControllerModeIndication
.L975:
#                 }   
#                 else
#                 {
#                 /* deliberately left blank to avoid MISRA violation (Rule 14.10 ) */
#                 }
#             }
#         }
#     }
	.d2line		4663
.Llo730:
	diab.addi		r0,r31,1		# u8HwOffset=r0 u8CtrlIndex=r31
	se_addi		r31,1		# u8CtrlIndex=r31 u8CtrlIndex=r31
	b		.L972
.L971:
# }
	.d2line		4664
	.d2epilogue_begin
.Llo699:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8HwOffset=r0
	mtspr		lr,r0		# u8HwOffset=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1419:
	.type		Can_FlexCan_MainFunctionMode,@function
	.size		Can_FlexCan_MainFunctionMode,.-Can_FlexCan_MainFunctionMode
# Number of nodes = 134

# Allocations for Can_FlexCan_MainFunctionMode
#	?a4		u8CtrlIndex
#	?a5		u8HwOffset
#	?a6		u32NewMcr
# FUNC (void, CAN_CODE) Can_FlexCan_ProcessBusOff( CONST(uint8, AUTOMATIC) controller)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         4680,23
#$$ld
.L1429:

#$$bf	Can_FlexCan_ProcessBusOff,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Can_FlexCan_ProcessBusOff
	.d2_cfa_start __cie
Can_FlexCan_ProcessBusOff:
.Llo731:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# controller=r4 controller=r3
	.d2prologue_end
# {
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC) u8HwOffset = 0U;
	.d2line		4683
	diab.li		r3,0		# u8HwOffset=r3
# 
# 
#     /* Get the hardware offset for this controller. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[controller].u8ControllerOffset;
	.d2line		4688
.Llo732:
	lis		r3,CanStatic_pControlerDescriptors@ha		# u8HwOffset=r3
.Llo737:
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# u8HwOffset=r3 u8HwOffset=r3
.Llo733:
	rlwinm		r4,r4,0,24,31		# controller=r4 controller=r4
	e_mulli		r4,r4,20		# controller=r4 controller=r4
.Llo734:
	lbzx		r3,r3,r4		# u8HwOffset=r3 u8HwOffset=r3
	mr		r3,r3		# u8HwOffset=r3 u8HwOffset=r3
# 
#     /* Clear the ESR[BOFF_INT] bus off interrupt flag (w1c). */
#     /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     REG_WRITE32( FLEXCAN_ESR(u8HwOffset), (FLEXCAN_ESR_BOFFINT_U32 & FLEXCAN_ESR_CONFIG_MASK_U32));
	.d2line		4693
	diab.li		r4,4		# controller=r4
.Llo735:
	lis		r5,Can_u32BaseAddress@ha
	e_add16i		r5,r5,Can_u32BaseAddress@l
	rlwinm		r3,r3,2,22,29		# u8HwOffset=r3 u8HwOffset=r3
	lwzx		r3,r5,r3		# u8HwOffset=r3
	stw		r4,32(r3)		# u8HwOffset=r3 controller=r4
# }
	.d2line		4694
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo736:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1430:
	.type		Can_FlexCan_ProcessBusOff,@function
	.size		Can_FlexCan_ProcessBusOff,.-Can_FlexCan_ProcessBusOff
# Number of nodes = 25

# Allocations for Can_FlexCan_ProcessBusOff
#	?a4		controller
#	?a5		u8HwOffset
# FUNC (Std_ReturnType, CAN_CODE) Can_FlexCan_CheckBusOff( VAR(uint8, AUTOMATIC) controller)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         4713,33
#$$ld
.L1437:

#$$bf	Can_FlexCan_CheckBusOff,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Can_FlexCan_CheckBusOff
	.d2_cfa_start __cie
Can_FlexCan_CheckBusOff:
.Llo738:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo744:
	stw		r0,20(r1)		# u8HwOffset=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# controller=r0 controller=r3
	.d2prologue_end
# {
# 
#     /* Return value. */
#     VAR(uint8, AUTOMATIC) eReturnValue = (uint8)E_NOT_OK;
	.d2line		4717
.Llo745:
	diab.li		r5,1		# eReturnValue=r5
#     /* Controller hardware offset on chip. */
#     VAR(uint8, AUTOMATIC) u8HwOffset = 0U;
	.d2line		4719
.Llo742:
	diab.li		r3,0		# u8HwOffset=r3
# 
#     /* Get the hardware offset for this controller. */
#     /* @violates @ref Can_Flexcan_c_REF_6 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#     u8HwOffset = CanStatic_pControlerDescriptors[controller].u8ControllerOffset;
	.d2line		4723
.Llo739:
	lis		r4,CanStatic_pControlerDescriptors@ha
	lwz		r4,CanStatic_pControlerDescriptors@l(r4)
.Llo740:
	rlwinm		r0,r0,0,24,31		# controller=r0 controller=r0
	e_mulli		r0,r0,20		# controller=r0 controller=r0
	lbzx		r0,r4,r0		# controller=r0
.Llo741:
	mr		r0,r0		# u8HwOffset=r0 u8HwOffset=r0
# 
#     /* Check Busoff flag if it's set. */
#      /* @violates @ref Can_Flexcan_c_REF_2 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#      /* @violates @ref Can_Flexcan_c_REF_9 Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed */
#     if ( FLEXCAN_ESR_BOFFINT_U32 == (FLEXCAN_ESR_BOFFINT_U32 & (uint32)REG_READ32( FLEXCAN_ESR(u8HwOffset))) )
	.d2line		4728
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	rlwinm		r0,r0,2,22,29		# u8HwOffset=r0 u8HwOffset=r0
	lwzx		r4,r4,r0
	lwz		r0,32(r4)		# u8HwOffset=r0
	se_btsti		r0,29		# u8HwOffset=r0
#     {
#         /* Controller is in BusOff state. */
#         eReturnValue = (uint8)E_OK;
	isel		r3,r5,r3,2		# eReturnValue=r3 eReturnValue=r5 u8HwOffset=r3
.L987:
#     }
# 
#     return (eReturnValue);
	.d2line		4734
.Llo743:
	rlwinm		r3,r3,0,24,31		# eReturnValue=r3 eReturnValue=r3
# }
	.d2line		4735
	.d2epilogue_begin
	lwz		r0,20(r1)		# u8HwOffset=r0
	mtspr		lr,r0		# u8HwOffset=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1438:
	.type		Can_FlexCan_CheckBusOff,@function
	.size		Can_FlexCan_CheckBusOff,.-Can_FlexCan_CheckBusOff
# Number of nodes = 35

# Allocations for Can_FlexCan_CheckBusOff
#	?a4		controller
#	?a5		eReturnValue
#	?a6		u8HwOffset

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L1445
	.section	.mcal_bss,,b
	.0byte		.L1462
	.section	.mcal_bss,,b
	.type		Can_ControllerStatuses,@object
	.size		Can_ControllerStatuses,464
	.align		2
	.globl		Can_ControllerStatuses
Can_ControllerStatuses:
	.space		464
	.section	.mcal_const,,r
	.0byte		.L1468
	.section	.mcal_const,,r
	.type		u8MessageBufferControllerSize,@object
	.size		u8MessageBufferControllerSize,4
	.align		2
	.globl		u8MessageBufferControllerSize
u8MessageBufferControllerSize:
	.byte		96
	.byte		96
	.byte		64
	.byte		64
	.section	.mcal_const,,r
	.0byte		.L1471
	.section	.mcal_const,,r
	.type		Can_u32BaseAddress,@object
	.size		Can_u32BaseAddress,16
	.align		2
	.globl		Can_u32BaseAddress
Can_u32BaseAddress:
	.long		-1376256
	.long		-68468736
	.long		-1343488
	.long		-68435968
	.section	.mcal_const,,r
	.0byte		.L1475
	.section	.mcal_const,,r
	.type		Can_IflagImask,@object
	.size		Can_IflagImask,96
	.align		2
	.globl		Can_IflagImask
Can_IflagImask:
	.long		-1376208
	.long		-1376216
	.long		-68468688
	.long		-68468696
	.long		-1343440
	.long		-1343448
	.long		-68435920
	.long		-68435928
	.long		-1376212
	.long		-1376220
	.long		-68468692
	.long		-68468700
	.long		-1343444
	.long		-1343452
	.long		-68435924
	.long		-68435932
	.long		-1376140
	.long		-1376148
	.long		-68468620
	.long		-68468628
	.long		-1343372
	.long		-1343380
	.long		-68435852
	.long		-68435860
	.section	.text_vle
	.type		.L683,@object
	.size		.L683,12
	.align		2
#	static		__static_init1
.L683:
	.space		12
	.section	.text_vle
#$$ld
.L5:
.L1544:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L1541:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L1481:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Can_Flexcan.h"
.L1463:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can_Flexcan.c"
.L1446:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Can.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L993:
.L1001:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can_Flexcan.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	14
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
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	16
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
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can_Flexcan.c"
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
.L990:
	.4byte		.L991-.L989
.L989:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L995-.L990
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can_Flexcan.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L992
	.4byte		.L993
	.4byte		.L996
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1002:
	.sleb128	2
	.4byte		.L998-.L990
	.byte		"Can_FlexCan_DisableInterrupts"
	.byte		0
	.4byte		.L1001
	.uleb128	589
	.uleb128	35
	.byte		0x1
	.4byte		.L999
	.4byte		.L1000
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L1001
	.uleb128	589
	.uleb128	35
	.byte		"u8Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1005
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1006:
	.sleb128	4
	.4byte		.L1001
	.uleb128	591
	.uleb128	27
	.byte		"u8RegCount"
	.byte		0
	.4byte		.L1003
	.4byte		.L1007
.L1008:
	.sleb128	4
	.4byte		.L1001
	.uleb128	592
	.uleb128	27
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1009
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L998:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1014:
	.sleb128	2
	.4byte		.L1011-.L990
	.byte		"Can_FlexCan_EnableInterrupts"
	.byte		0
	.4byte		.L1001
	.uleb128	623
	.uleb128	35
	.byte		0x1
	.4byte		.L1012
	.4byte		.L1013
	.sleb128	3
	.4byte		.L1001
	.uleb128	623
	.uleb128	35
	.byte		"u8Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1015
	.sleb128	3
	.4byte		.L1001
	.uleb128	623
	.uleb128	35
	.byte		"pCanControlerDescriptor"
	.byte		0
	.4byte		.L1016
	.4byte		.L1020
.L1021:
	.sleb128	4
	.4byte		.L1001
	.uleb128	628
	.uleb128	27
	.byte		"u8RegCount"
	.byte		0
	.4byte		.L1003
	.4byte		.L1022
.L1023:
	.sleb128	4
	.4byte		.L1001
	.uleb128	629
	.uleb128	27
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1024
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1011:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1029:
	.sleb128	2
	.4byte		.L1026-.L990
	.byte		"Can_FlexCan_InitReceiveMBs"
	.byte		0
	.4byte		.L1001
	.uleb128	982
	.uleb128	30
	.byte		0x1
	.4byte		.L1027
	.4byte		.L1028
	.sleb128	3
	.4byte		.L1001
	.uleb128	982
	.uleb128	30
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1030
	.sleb128	3
	.4byte		.L1001
	.uleb128	982
	.uleb128	30
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1031
.L1032:
	.sleb128	4
	.4byte		.L1001
	.uleb128	989
	.uleb128	52
	.byte		"pCanMbConfigContainer"
	.byte		0
	.4byte		.L1033
	.4byte		.L1038
.L1039:
	.sleb128	4
	.4byte		.L1001
	.uleb128	991
	.uleb128	39
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1042
.L1043:
	.sleb128	4
	.4byte		.L1001
	.uleb128	993
	.uleb128	39
	.byte		"u32MbMessageId"
	.byte		0
	.4byte		.L1044
	.4byte		.L1046
.L1047:
	.sleb128	4
	.4byte		.L1001
	.uleb128	995
	.uleb128	39
	.byte		"u32MbConfig"
	.byte		0
	.4byte		.L1044
	.4byte		.L1048
.L1049:
	.sleb128	4
	.4byte		.L1001
	.uleb128	997
	.uleb128	39
	.byte		"u8MbCtrlIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1050
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1026:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1055:
	.sleb128	2
	.4byte		.L1052-.L990
	.byte		"Can_FlexCan_InitTransmitMBs"
	.byte		0
	.4byte		.L1001
	.uleb128	1287
	.uleb128	30
	.byte		0x1
	.4byte		.L1053
	.4byte		.L1054
	.sleb128	3
	.4byte		.L1001
	.uleb128	1287
	.uleb128	30
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1056
	.sleb128	3
	.4byte		.L1001
	.uleb128	1287
	.uleb128	30
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1057
.L1058:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1290
	.uleb128	52
	.byte		"pCanControlerDescriptor"
	.byte		0
	.4byte		.L1059
	.4byte		.L1060
.L1061:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1292
	.uleb128	52
	.byte		"pCanMbConfigContainer"
	.byte		0
	.4byte		.L1033
	.4byte		.L1062
.L1063:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1294
	.uleb128	39
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1064
.L1065:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1296
	.uleb128	39
	.byte		"u32MbMessageId"
	.byte		0
	.4byte		.L1044
	.4byte		.L1066
.L1067:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1298
	.uleb128	39
	.byte		"u8MbCtrlIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1068
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1052:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1075:
	.sleb128	5
	.4byte		.L1070-.L990
	.byte		"Can_FlexCan_SetControllerToStopMode"
	.byte		0
	.4byte		.L1001
	.uleb128	1365
	.uleb128	40
	.4byte		.L1073
	.byte		0x1
	.4byte		.L1071
	.4byte		.L1072
	.sleb128	3
	.4byte		.L1001
	.uleb128	1365
	.uleb128	40
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1076
	.sleb128	3
	.4byte		.L1001
	.uleb128	1365
	.uleb128	40
	.byte		"pCanControlerDescriptor"
	.byte		0
	.4byte		.L1016
	.4byte		.L1077
	.sleb128	3
	.4byte		.L1001
	.uleb128	1365
	.uleb128	40
	.byte		"canif_notification_required"
	.byte		0
	.4byte		.L1078
	.4byte		.L1079
.L1080:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1371
	.uleb128	37
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L1073
	.4byte		.L1081
.L1082:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1372
	.uleb128	37
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1083
.L1084:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1374
	.uleb128	37
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1085
.L1086:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1376
	.uleb128	37
	.byte		"u32MbConfig"
	.byte		0
	.4byte		.L1044
	.4byte		.L1087
.L1088:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1378
	.uleb128	37
	.byte		"u32TimeoutCount"
	.byte		0
	.4byte		.L1044
	.4byte		.L1089
.L1090:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1379
	.uleb128	37
	.byte		"u32TempVar"
	.byte		0
	.4byte		.L1044
	.4byte		.L1091
.L1092:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1380
	.uleb128	33
	.byte		"u8RegCount1"
	.byte		0
	.4byte		.L1003
	.4byte		.L1093
.L1094:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1381
	.uleb128	33
	.byte		"u32TempMCR"
	.byte		0
	.4byte		.L1044
	.4byte		.L1095
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1096:
	.sleb128	6
	.4byte		.L1001
	.uleb128	1382
	.uleb128	33
	.byte		"u32TempIMASK"
	.byte		0
	.4byte		.L1097
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1070:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1104:
	.sleb128	7
	.4byte		.L1100-.L990
	.byte		"Can_FlexCan_ResetController"
	.byte		0
	.4byte		.L1001
	.uleb128	3002
	.uleb128	33
	.4byte		.L1103
	.byte		0x1
	.byte		0x1
	.4byte		.L1101
	.4byte		.L1102
	.sleb128	3
	.4byte		.L1001
	.uleb128	3002
	.uleb128	33
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1105
.L1106:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3006
	.uleb128	36
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L1103
	.4byte		.L1107
.L1108:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3008
	.uleb128	36
	.byte		"u32TimeoutCount"
	.byte		0
	.4byte		.L1044
	.4byte		.L1109
.L1110:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3010
	.uleb128	36
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1111
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1100:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1116:
	.sleb128	7
	.4byte		.L1113-.L990
	.byte		"Can_FlexCan_ChangeBaudrate"
	.byte		0
	.4byte		.L1001
	.uleb128	3097
	.uleb128	33
	.4byte		.L1103
	.byte		0x1
	.byte		0x1
	.4byte		.L1114
	.4byte		.L1115
	.sleb128	3
	.4byte		.L1001
	.uleb128	3097
	.uleb128	33
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1117
.L1118:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3100
	.uleb128	52
	.byte		"pCanControlerDescriptor"
	.byte		0
	.4byte		.L1059
	.4byte		.L1119
.L1120:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3102
	.uleb128	52
	.byte		"pCanMbConfigContainer"
	.byte		0
	.4byte		.L1033
	.4byte		.L1121
.L1122:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3104
	.uleb128	37
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1123
.L1124:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3107
	.uleb128	37
	.byte		"eResetReturn"
	.byte		0
	.4byte		.L1103
	.4byte		.L1125
.L1126:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3109
	.uleb128	37
	.byte		"u8BaudrateIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1127
.L1128:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3110
	.uleb128	37
	.byte		"u8RegCount"
	.byte		0
	.4byte		.L1003
	.4byte		.L1129
.L1130:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3112
	.uleb128	37
	.byte		"u32TimeoutCount"
	.byte		0
	.4byte		.L1044
	.4byte		.L1131
.L1132:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3113
	.uleb128	37
	.byte		"u32ValueControlRegister"
	.byte		0
	.4byte		.L1044
	.4byte		.L1133
.L1134:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3115
	.uleb128	37
	.byte		"u8MbMax"
	.byte		0
	.4byte		.L1003
	.4byte		.L1135
.L1136:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3116
	.uleb128	37
	.byte		"u32TempAddr"
	.byte		0
	.4byte		.L1044
	.4byte		.L1137
.L1138:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3117
	.uleb128	37
	.byte		"u32TempAddrMax"
	.byte		0
	.4byte		.L1044
	.4byte		.L1139
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1113:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1144:
	.sleb128	5
	.4byte		.L1141-.L990
	.byte		"Can_FlexCan_SetControllerToStartMode"
	.byte		0
	.4byte		.L1001
	.uleb128	1593
	.uleb128	40
	.4byte		.L1073
	.byte		0x1
	.4byte		.L1142
	.4byte		.L1143
	.sleb128	3
	.4byte		.L1001
	.uleb128	1593
	.uleb128	40
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1145
	.sleb128	3
	.4byte		.L1001
	.uleb128	1593
	.uleb128	40
	.byte		"pCanControlerDescriptor"
	.byte		0
	.4byte		.L1016
	.4byte		.L1146
.L1147:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1598
	.uleb128	37
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L1073
	.4byte		.L1148
.L1149:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1600
	.uleb128	37
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1150
.L1151:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1602
	.uleb128	37
	.byte		"u32TimeoutCount"
	.byte		0
	.4byte		.L1044
	.4byte		.L1152
.L1153:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1603
	.uleb128	37
	.byte		"u32TempVar"
	.byte		0
	.4byte		.L1044
	.4byte		.L1154
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1141:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1159:
	.sleb128	5
	.4byte		.L1156-.L990
	.byte		"Can_FlexCan_SetControllerToSleepMode"
	.byte		0
	.4byte		.L1001
	.uleb128	1705
	.uleb128	40
	.4byte		.L1073
	.byte		0x1
	.4byte		.L1157
	.4byte		.L1158
	.sleb128	3
	.4byte		.L1001
	.uleb128	1705
	.uleb128	40
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1160
.L1161:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1708
	.uleb128	37
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L1073
	.4byte		.L1162
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1156:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1167:
	.sleb128	5
	.4byte		.L1164-.L990
	.byte		"Can_FlexCan_SetControllerToWakeupMode"
	.byte		0
	.4byte		.L1001
	.uleb128	1757
	.uleb128	40
	.4byte		.L1073
	.byte		0x1
	.4byte		.L1165
	.4byte		.L1166
	.sleb128	3
	.4byte		.L1001
	.uleb128	1757
	.uleb128	40
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1168
.L1169:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1760
	.uleb128	37
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L1073
	.4byte		.L1170
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1164:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1175:
	.sleb128	5
	.4byte		.L1172-.L990
	.byte		"Can_FlexCan_UpdateMB"
	.byte		0
	.4byte		.L1001
	.uleb128	1818
	.uleb128	40
	.4byte		.L1073
	.byte		0x1
	.4byte		.L1173
	.4byte		.L1174
	.sleb128	3
	.4byte		.L1001
	.uleb128	1818
	.uleb128	40
	.byte		"u8CtrlId"
	.byte		0
	.4byte		.L1003
	.4byte		.L1176
	.sleb128	3
	.4byte		.L1001
	.uleb128	1818
	.uleb128	40
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1177
	.sleb128	3
	.4byte		.L1001
	.uleb128	1818
	.uleb128	40
	.byte		"PduInfo"
	.byte		0
	.4byte		.L1178
	.4byte		.L1182
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L1001
	.uleb128	1818
	.uleb128	40
	.byte		"bEnabledFD"
	.byte		0
	.4byte		.L1078
	.sleb128	2
	.byte		0x90
	.uleb128	6
.L1183:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1823
	.uleb128	36
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L1073
	.4byte		.L1184
.L1185:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1825
	.uleb128	36
	.byte		"u8IflagRegIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1186
.L1187:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1827
	.uleb128	36
	.byte		"u32TempFlag"
	.byte		0
	.4byte		.L1044
	.4byte		.L1188
.L1189:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1829
	.uleb128	36
	.byte		"u32IflagReg"
	.byte		0
	.4byte		.L1044
	.4byte		.L1190
.L1191:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1831
	.uleb128	36
	.byte		"u8MbDataByte"
	.byte		0
	.4byte		.L1003
	.4byte		.L1192
.L1193:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1833
	.uleb128	36
	.byte		"u32MbMessageId"
	.byte		0
	.4byte		.L1044
	.4byte		.L1194
.L1195:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1845
	.uleb128	36
	.byte		"u32MbConfig"
	.byte		0
	.4byte		.L1044
	.4byte		.L1196
.L1197:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1848
	.uleb128	36
	.byte		"u8MbIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1198
.L1199:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1850
	.uleb128	52
	.byte		"pCanMbConfigContainer"
	.byte		0
	.4byte		.L1033
	.4byte		.L1200
.L1201:
	.sleb128	4
	.4byte		.L1001
	.uleb128	1852
	.uleb128	36
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1202
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1172:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1207:
	.sleb128	2
	.4byte		.L1204-.L990
	.byte		"Can_FlexCan_ProcessTxPoll"
	.byte		0
	.4byte		.L1001
	.uleb128	2023
	.uleb128	30
	.byte		0x1
	.4byte		.L1205
	.4byte		.L1206
	.sleb128	3
	.4byte		.L1001
	.uleb128	2023
	.uleb128	30
	.byte		"controller"
	.byte		0
	.4byte		.L1208
	.4byte		.L1209
	.sleb128	3
	.4byte		.L1001
	.uleb128	2023
	.uleb128	30
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1210
	.4byte		.L1211
.L1212:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2026
	.uleb128	50
	.byte		"pCanMbConfigContainer"
	.byte		0
	.4byte		.L1033
	.4byte		.L1213
.L1214:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2029
	.uleb128	31
	.byte		"u32PduId"
	.byte		0
	.4byte		.L1215
	.4byte		.L1216
.L1217:
	.sleb128	6
	.4byte		.L1001
	.uleb128	2031
	.uleb128	33
	.byte		"CbkPduInfo"
	.byte		0
	.4byte		.L1218
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1220:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2033
	.uleb128	38
	.byte		"u32MbConfig"
	.byte		0
	.4byte		.L1044
	.4byte		.L1221
.L1222:
	.sleb128	6
	.4byte		.L1001
	.uleb128	2035
	.uleb128	38
	.byte		"u8CanMbData"
	.byte		0
	.4byte		.L1223
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L1225:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2037
	.uleb128	38
	.byte		"u8DatabyteIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1226
.L1227:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2041
	.uleb128	38
	.byte		"u8MbIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1228
.L1229:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2043
	.uleb128	38
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1230
.L1231:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2045
	.uleb128	38
	.byte		"u8IflagRegIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1232
.L1233:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2047
	.uleb128	38
	.byte		"u32TempFlag"
	.byte		0
	.4byte		.L1044
	.4byte		.L1234
.L1235:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2049
	.uleb128	38
	.byte		"u32IflagReg"
	.byte		0
	.4byte		.L1044
	.4byte		.L1236
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1204:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1241:
	.sleb128	2
	.4byte		.L1238-.L990
	.byte		"Can_FlexCan_ProcessRxNormal"
	.byte		0
	.4byte		.L1001
	.uleb128	2313
	.uleb128	30
	.byte		0x1
	.4byte		.L1239
	.4byte		.L1240
	.sleb128	3
	.4byte		.L1001
	.uleb128	2313
	.uleb128	30
	.byte		"controller"
	.byte		0
	.4byte		.L1208
	.4byte		.L1242
	.sleb128	3
	.4byte		.L1001
	.uleb128	2313
	.uleb128	30
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1210
	.4byte		.L1243
.L1244:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2316
	.uleb128	28
	.byte		"u32TimeoutCount"
	.byte		0
	.4byte		.L1044
	.4byte		.L1245
.L1246:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2318
	.uleb128	43
	.byte		"u8MbIndex"
	.byte		0
	.4byte		.L1247
	.4byte		.L1248
.L1249:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2320
	.uleb128	32
	.byte		"u8MbDataLength"
	.byte		0
	.4byte		.L1003
	.4byte		.L1250
.L1251:
	.sleb128	6
	.4byte		.L1001
	.uleb128	2322
	.uleb128	32
	.byte		"u8CanMbData"
	.byte		0
	.4byte		.L1252
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1254:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2324
	.uleb128	32
	.byte		"u8DatabyteIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1255
.L1256:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2326
	.uleb128	43
	.byte		"u32MbHrh"
	.byte		0
	.4byte		.L1247
	.4byte		.L1257
.L1258:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2328
	.uleb128	32
	.byte		"u32MbMessageId"
	.byte		0
	.4byte		.L1259
	.4byte		.L1260
.L1261:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2330
	.uleb128	32
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1262
.L1263:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2332
	.uleb128	32
	.byte		"u8IflagRegIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1264
.L1265:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2334
	.uleb128	32
	.byte		"u32TempFlag"
	.byte		0
	.4byte		.L1044
	.4byte		.L1266
.L1267:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2336
	.uleb128	32
	.byte		"u32IflagReg"
	.byte		0
	.4byte		.L1044
	.4byte		.L1268
.L1269:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2338
	.uleb128	32
	.byte		"u32MbConfig"
	.byte		0
	.4byte		.L1044
	.4byte		.L1270
.L1271:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2352
	.uleb128	52
	.byte		"pCanMbConfigContainer"
	.byte		0
	.4byte		.L1033
	.4byte		.L1272
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1238:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1277:
	.sleb128	9
	.4byte		.L1274-.L990
	.byte		"Can_FlexCan_InitVariables"
	.byte		0
	.4byte		.L1001
	.uleb128	2834
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1275
	.4byte		.L1276
.L1278:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2838
	.uleb128	27
	.byte		"u8CtrlIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1279
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1274:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1284:
	.sleb128	9
	.4byte		.L1281-.L990
	.byte		"Can_FlexCan_Init"
	.byte		0
	.4byte		.L1001
	.uleb128	2902
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1282
	.4byte		.L1283
	.sleb128	3
	.4byte		.L1001
	.uleb128	2902
	.uleb128	23
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1285
.L1286:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2905
	.uleb128	28
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1287
.L1288:
	.sleb128	4
	.4byte		.L1001
	.uleb128	2907
	.uleb128	36
	.byte		"u32TimeoutCount"
	.byte		0
	.4byte		.L1044
	.4byte		.L1289
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1281:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1294:
	.sleb128	7
	.4byte		.L1291-.L990
	.byte		"Can_FlexCan_SetControllerMode"
	.byte		0
	.4byte		.L1001
	.uleb128	3562
	.uleb128	33
	.4byte		.L1073
	.byte		0x1
	.byte		0x1
	.4byte		.L1292
	.4byte		.L1293
	.sleb128	3
	.4byte		.L1001
	.uleb128	3562
	.uleb128	33
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1295
	.sleb128	3
	.4byte		.L1001
	.uleb128	3562
	.uleb128	33
	.byte		"pCanControlerDescriptor"
	.byte		0
	.4byte		.L1016
	.4byte		.L1296
	.sleb128	3
	.4byte		.L1001
	.uleb128	3562
	.uleb128	33
	.byte		"Transition"
	.byte		0
	.4byte		.L1297
	.4byte		.L1299
	.sleb128	3
	.4byte		.L1001
	.uleb128	3562
	.uleb128	33
	.byte		"canif_notification_required"
	.byte		0
	.4byte		.L1078
	.4byte		.L1300
.L1301:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3569
	.uleb128	37
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L1073
	.4byte		.L1302
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1291:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1307:
	.sleb128	9
	.4byte		.L1304-.L990
	.byte		"Can_FlexCan_DisableControllerInterrupts"
	.byte		0
	.4byte		.L1001
	.uleb128	3630
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1305
	.4byte		.L1306
	.sleb128	3
	.4byte		.L1001
	.uleb128	3630
	.uleb128	23
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1308
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1304:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1313:
	.sleb128	9
	.4byte		.L1310-.L990
	.byte		"Can_FlexCan_EnableControllerInterrupts"
	.byte		0
	.4byte		.L1001
	.uleb128	3672
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1311
	.4byte		.L1312
	.sleb128	3
	.4byte		.L1001
	.uleb128	3672
	.uleb128	23
	.byte		"Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1314
	.sleb128	3
	.4byte		.L1001
	.uleb128	3672
	.uleb128	23
	.byte		"pCanControlerDescriptor"
	.byte		0
	.4byte		.L1016
	.4byte		.L1315
.L1316:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3676
	.uleb128	29
	.byte		"u8DisCalledBefore"
	.byte		0
	.4byte		.L1003
	.4byte		.L1317
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1310:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1322:
	.sleb128	9
	.4byte		.L1319-.L990
	.byte		"Can_FlexCan_Cancel"
	.byte		0
	.4byte		.L1001
	.uleb128	3732
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1320
	.4byte		.L1321
	.sleb128	3
	.4byte		.L1001
	.uleb128	3732
	.uleb128	23
	.byte		"controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1323
	.sleb128	3
	.4byte		.L1001
	.uleb128	3732
	.uleb128	23
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1324
.L1325:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3735
	.uleb128	28
	.byte		"u8MbIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1326
.L1327:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3737
	.uleb128	28
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1328
.L1329:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3740
	.uleb128	28
	.byte		"u32MbConfig"
	.byte		0
	.4byte		.L1044
	.4byte		.L1330
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1319:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1335:
	.sleb128	9
	.4byte		.L1332-.L990
	.byte		"Can_FlexCan_AbortMb"
	.byte		0
	.4byte		.L1001
	.uleb128	3802
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1333
	.4byte		.L1334
	.sleb128	3
	.4byte		.L1001
	.uleb128	3802
	.uleb128	22
	.byte		"Hth"
	.byte		0
	.4byte		.L1247
	.4byte		.L1336
.L1337:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3804
	.uleb128	27
	.byte		"u8Controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1338
.L1339:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3806
	.uleb128	39
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1340
.L1341:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3808
	.uleb128	52
	.byte		"pCanMbConfigContainer"
	.byte		0
	.4byte		.L1033
	.4byte		.L1342
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1332:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1347:
	.sleb128	7
	.4byte		.L1344-.L990
	.byte		"Can_FlexCan_Write"
	.byte		0
	.4byte		.L1001
	.uleb128	3910
	.uleb128	33
	.4byte		.L1073
	.byte		0x1
	.byte		0x1
	.4byte		.L1345
	.4byte		.L1346
	.sleb128	3
	.4byte		.L1001
	.uleb128	3910
	.uleb128	33
	.byte		"Hth"
	.byte		0
	.4byte		.L1247
	.4byte		.L1348
	.sleb128	3
	.4byte		.L1001
	.uleb128	3910
	.uleb128	33
	.byte		"PduInfo"
	.byte		0
	.4byte		.L1178
	.4byte		.L1349
.L1350:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3915
	.uleb128	36
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L1073
	.4byte		.L1351
.L1352:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3917
	.uleb128	36
	.byte		"u8CtrlId"
	.byte		0
	.4byte		.L1003
	.4byte		.L1353
.L1354:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3919
	.uleb128	36
	.byte		"u8MbIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1355
.L1356:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3923
	.uleb128	36
	.byte		"u8MbLprioIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1357
.L1358:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3924
	.uleb128	36
	.byte		"u16MbLprioGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1359
.L1360:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3925
	.uleb128	36
	.byte		"u32MbLprioId"
	.byte		0
	.4byte		.L1044
	.4byte		.L1361
.L1362:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3926
	.uleb128	36
	.byte		"bExitMplxTX"
	.byte		0
	.4byte		.L1078
	.4byte		.L1363
.L1364:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3929
	.uleb128	36
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1365
.L1366:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3931
	.uleb128	36
	.byte		"u8IflagRegIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1367
.L1368:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3933
	.uleb128	36
	.byte		"u32TempFlag"
	.byte		0
	.4byte		.L1044
	.4byte		.L1369
.L1370:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3934
	.uleb128	36
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1371
.L1372:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3936
	.uleb128	52
	.byte		"pCanMbConfigContainer"
	.byte		0
	.4byte		.L1033
	.4byte		.L1373
.L1374:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3945
	.uleb128	36
	.byte		"u32MbMessageId"
	.byte		0
	.4byte		.L1044
	.4byte		.L1375
.L1376:
	.sleb128	4
	.4byte		.L1001
	.uleb128	3947
	.uleb128	28
	.byte		"u32ExtendedFdErase"
	.byte		0
	.4byte		.L1044
	.4byte		.L1377
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1344:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1382:
	.sleb128	9
	.4byte		.L1379-.L990
	.byte		"Can_FlexCan_MainFunctionWrite"
	.byte		0
	.4byte		.L1001
	.uleb128	4294
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1380
	.4byte		.L1381
.L1383:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4298
	.uleb128	29
	.byte		"u8CtrlId"
	.byte		0
	.4byte		.L1003
	.4byte		.L1384
.L1385:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4300
	.uleb128	30
	.byte		"u16CtrlGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1386
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1379:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1391:
	.sleb128	9
	.4byte		.L1388-.L990
	.byte		"Can_FlexCan_MainFunctionMultipleWritePoll"
	.byte		0
	.4byte		.L1001
	.uleb128	4337
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1389
	.4byte		.L1390
	.sleb128	3
	.4byte		.L1001
	.uleb128	4337
	.uleb128	23
	.byte		"writepoll"
	.byte		0
	.4byte		.L1003
	.4byte		.L1392
.L1393:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4340
	.uleb128	28
	.byte		"u8CtrlId"
	.byte		0
	.4byte		.L1003
	.4byte		.L1394
.L1395:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4342
	.uleb128	29
	.byte		"u16CtrlGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1396
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1388:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1401:
	.sleb128	9
	.4byte		.L1398-.L990
	.byte		"Can_FlexCan_MainFunctionRead"
	.byte		0
	.4byte		.L1001
	.uleb128	4457
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1399
	.4byte		.L1400
.L1402:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4461
	.uleb128	28
	.byte		"u8CtrlId"
	.byte		0
	.4byte		.L1003
	.4byte		.L1403
.L1404:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4466
	.uleb128	29
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1405
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1398:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1410:
	.sleb128	9
	.4byte		.L1407-.L990
	.byte		"Can_FlexCan_MainFunctionMultipleReadPoll"
	.byte		0
	.4byte		.L1001
	.uleb128	4525
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1408
	.4byte		.L1409
	.sleb128	3
	.4byte		.L1001
	.uleb128	4525
	.uleb128	23
	.byte		"readpoll"
	.byte		0
	.4byte		.L1003
	.4byte		.L1411
.L1412:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4528
	.uleb128	28
	.byte		"u8CtrlId"
	.byte		0
	.4byte		.L1003
	.4byte		.L1413
.L1414:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4533
	.uleb128	29
	.byte		"u16MBGlobalIndex"
	.byte		0
	.4byte		.L1040
	.4byte		.L1415
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1407:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1420:
	.sleb128	9
	.4byte		.L1417-.L990
	.byte		"Can_FlexCan_MainFunctionMode"
	.byte		0
	.4byte		.L1001
	.uleb128	4611
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1418
	.4byte		.L1419
.L1421:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4614
	.uleb128	28
	.byte		"u8CtrlIndex"
	.byte		0
	.4byte		.L1003
	.4byte		.L1422
.L1423:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4616
	.uleb128	28
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1424
.L1425:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4619
	.uleb128	29
	.byte		"u32NewMcr"
	.byte		0
	.4byte		.L1044
	.4byte		.L1426
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1417:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1431:
	.sleb128	9
	.4byte		.L1428-.L990
	.byte		"Can_FlexCan_ProcessBusOff"
	.byte		0
	.4byte		.L1001
	.uleb128	4680
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1429
	.4byte		.L1430
	.sleb128	3
	.4byte		.L1001
	.uleb128	4680
	.uleb128	23
	.byte		"controller"
	.byte		0
	.4byte		.L1208
	.4byte		.L1432
.L1433:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4683
	.uleb128	27
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1434
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1428:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1439:
	.sleb128	7
	.4byte		.L1436-.L990
	.byte		"Can_FlexCan_CheckBusOff"
	.byte		0
	.4byte		.L1001
	.uleb128	4713
	.uleb128	33
	.4byte		.L1103
	.byte		0x1
	.byte		0x1
	.4byte		.L1437
	.4byte		.L1438
	.sleb128	3
	.4byte		.L1001
	.uleb128	4713
	.uleb128	33
	.byte		"controller"
	.byte		0
	.4byte		.L1003
	.4byte		.L1440
.L1441:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4717
	.uleb128	27
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L1003
	.4byte		.L1442
.L1443:
	.sleb128	4
	.4byte		.L1001
	.uleb128	4719
	.uleb128	27
	.byte		"u8HwOffset"
	.byte		0
	.4byte		.L1003
	.4byte		.L1444
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1436:
	.section	.debug_info,,n
.L1445:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L1446
	.uleb128	815
	.uleb128	57
	.byte		"Can_pCurrentConfig"
	.byte		0
	.4byte		.L1447
	.section	.debug_info,,n
.L1451:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L1446
	.uleb128	816
	.uleb128	70
	.byte		"Can_pControlerDescriptors"
	.byte		0
	.4byte		.L1016
.L1452:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L1446
	.uleb128	818
	.uleb128	63
	.byte		"CanStatic_pCurrentConfig"
	.byte		0
	.4byte		.L1453
.L1457:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L1446
	.uleb128	819
	.uleb128	76
	.byte		"CanStatic_pControlerDescriptors"
	.byte		0
	.4byte		.L1458
	.section	.debug_info,,n
.L1462:
	.sleb128	11
	.byte		0x1
	.4byte		.L1463
	.uleb128	263
	.uleb128	40
	.byte		"Can_ControllerStatuses"
	.byte		0
	.4byte		.L1464
	.sleb128	5
	.byte		0x3
	.4byte		Can_ControllerStatuses
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1468:
	.sleb128	11
	.byte		0x1
	.4byte		.L1463
	.uleb128	276
	.uleb128	25
	.byte		"u8MessageBufferControllerSize"
	.byte		0
	.4byte		.L1469
	.sleb128	5
	.byte		0x3
	.4byte		u8MessageBufferControllerSize
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1471:
	.sleb128	11
	.byte		0x1
	.4byte		.L1463
	.uleb128	308
	.uleb128	26
	.byte		"Can_u32BaseAddress"
	.byte		0
	.4byte		.L1472
	.sleb128	5
	.byte		0x3
	.4byte		Can_u32BaseAddress
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1475:
	.sleb128	11
	.byte		0x1
	.4byte		.L1463
	.uleb128	338
	.uleb128	32
	.byte		"Can_IflagImask"
	.byte		0
	.4byte		.L1476
	.sleb128	5
	.byte		0x3
	.4byte		Can_IflagImask
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1480:
	.sleb128	12
	.4byte		.L1481
	.uleb128	174
	.uleb128	5
	.4byte		.L1482-.L2
	.uleb128	8
	.section	.debug_info,,n
.L626:
	.sleb128	13
	.byte		"u32CanIflag"
	.byte		0
	.4byte		.L1474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L627:
	.sleb128	13
	.byte		"u32CanImask"
	.byte		0
	.4byte		.L1474
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1482:
.L1467:
	.sleb128	12
	.4byte		.L1481
	.uleb128	174
	.uleb128	5
	.4byte		.L1483-.L2
	.uleb128	232
.L617:
	.sleb128	13
	.byte		"u32TxGuard"
	.byte		0
	.4byte		.L1484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L618:
	.sleb128	13
	.byte		"u32MBInterruptMask"
	.byte		0
	.4byte		.L1486
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L619:
	.sleb128	13
	.byte		"u32TxPduId"
	.byte		0
	.4byte		.L1488
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L620:
	.sleb128	13
	.byte		"s8IntDisableLevel"
	.byte		0
	.4byte		.L1490
	.sleb128	3
	.byte		0x23
	.uleb128	216
	.byte		0x1
.L621:
	.sleb128	13
	.byte		"u32CancelMBIndex"
	.byte		0
	.4byte		.L1493
	.sleb128	3
	.byte		0x23
	.uleb128	217
	.byte		0x1
.L622:
	.sleb128	13
	.byte		"u8FirstTxMBIndex"
	.byte		0
	.4byte		.L1494
	.sleb128	3
	.byte		0x23
	.uleb128	218
	.byte		0x1
.L623:
	.sleb128	13
	.byte		"eInterruptMode"
	.byte		0
	.4byte		.L1495
	.sleb128	3
	.byte		0x23
	.uleb128	220
	.byte		0x1
.L624:
	.sleb128	13
	.byte		"ControllerState"
	.byte		0
	.4byte		.L1497
	.sleb128	3
	.byte		0x23
	.uleb128	224
	.byte		0x1
.L625:
	.sleb128	13
	.byte		"u8CurrentBaudRateIndex"
	.byte		0
	.4byte		.L1003
	.sleb128	3
	.byte		0x23
	.uleb128	228
	.byte		0x1
	.sleb128	0
.L1483:
.L1450:
	.sleb128	12
	.4byte		.L1446
	.uleb128	288
	.uleb128	5
	.4byte		.L1499-.L2
	.uleb128	368
.L341:
	.sleb128	13
	.byte		"pFilterMasks"
	.byte		0
	.4byte		.L1500
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L342:
	.sleb128	13
	.byte		"MBConfigContainer"
	.byte		0
	.4byte		.L1035
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L343:
	.sleb128	13
	.byte		"ControlerDescriptors"
	.byte		0
	.4byte		.L1016
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L344:
	.sleb128	13
	.byte		"u32CanMaxObjectId"
	.byte		0
	.4byte		.L1044
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L345:
	.sleb128	13
	.byte		"uCanFirstHTHIndex"
	.byte		0
	.4byte		.L1504
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L346:
	.sleb128	13
	.byte		"u8ControllerIdMapping"
	.byte		0
	.4byte		.L1505
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L347:
	.sleb128	13
	.byte		"eObjectTypeMapping"
	.byte		0
	.4byte		.L1507
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
	.sleb128	0
.L1499:
.L1456:
	.sleb128	12
	.4byte		.L1446
	.uleb128	288
	.uleb128	5
	.4byte		.L1512-.L2
	.uleb128	8
.L339:
	.sleb128	13
	.byte		"u8ControllersConfigured"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L340:
	.sleb128	13
	.byte		"StaticControlerDescriptors"
	.byte		0
	.4byte		.L1458
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1512:
.L1461:
	.sleb128	12
	.4byte		.L1446
	.uleb128	288
	.uleb128	5
	.4byte		.L1513-.L2
	.uleb128	20
.L334:
	.sleb128	13
	.byte		"u8ControllerOffset"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L335:
	.sleb128	13
	.byte		"pStaticControllerBaudrateConfigsPtr"
	.byte		0
	.4byte		.L1514
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L336:
	.sleb128	13
	.byte		"Can_ErrorNotification"
	.byte		0
	.4byte		.L1519
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L337:
	.sleb128	13
	.byte		"u8NumberOfMB"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L338:
	.sleb128	13
	.byte		"u32Options"
	.byte		0
	.4byte		.L1474
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1513:
.L1019:
	.sleb128	12
	.4byte		.L1446
	.uleb128	288
	.uleb128	5
	.4byte		.L1524-.L2
	.uleb128	12
.L329:
	.sleb128	13
	.byte		"u8MaxMBCount"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L330:
	.sleb128	13
	.byte		"u8MaxBaudRateCount"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L331:
	.sleb128	13
	.byte		"u8DefaultBaudRateIndex"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L332:
	.sleb128	13
	.byte		"pControllerBaudrateConfigsPtr"
	.byte		0
	.4byte		.L1525
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L333:
	.sleb128	13
	.byte		"u32Options"
	.byte		0
	.4byte		.L1474
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1524:
.L1037:
	.sleb128	12
	.4byte		.L1446
	.uleb128	288
	.uleb128	5
	.4byte		.L1530-.L2
	.uleb128	8
.L327:
	.sleb128	13
	.byte		"pMessageBufferConfigsPtr"
	.byte		0
	.4byte		.L1531
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L328:
	.sleb128	13
	.byte		"uMessageBufferConfigCount"
	.byte		0
	.4byte		.L1504
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1530:
.L1535:
	.sleb128	12
	.4byte		.L1446
	.uleb128	288
	.uleb128	5
	.4byte		.L1536-.L2
	.uleb128	32
.L316:
	.sleb128	13
	.byte		"uIdMaskIndex"
	.byte		0
	.4byte		.L1247
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L317:
	.sleb128	13
	.byte		"u8ControllerId"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L318:
	.sleb128	13
	.byte		"uIdType"
	.byte		0
	.4byte		.L1537
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L319:
	.sleb128	13
	.byte		"eMBType"
	.byte		0
	.4byte		.L1510
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L320:
	.sleb128	13
	.byte		"uMessageId"
	.byte		0
	.4byte		.L1259
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L321:
	.sleb128	13
	.byte		"u8LocalPriority"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L322:
	.sleb128	13
	.byte		"u32HWObjID"
	.byte		0
	.4byte		.L1044
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L323:
	.sleb128	13
	.byte		"u32CanMainFuncRWPeriodRef"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L324:
	.sleb128	13
	.byte		"u16MBOffsetAddr"
	.byte		0
	.4byte		.L1210
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L325:
	.sleb128	13
	.byte		"u8MBPayloadLength"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L326:
	.sleb128	13
	.byte		"u8HWMBIndex"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L1536:
.L1518:
	.sleb128	12
	.4byte		.L1446
	.uleb128	288
	.uleb128	5
	.4byte		.L1539-.L2
	.uleb128	4
.L315:
	.sleb128	13
	.byte		"u32ControlRegister"
	.byte		0
	.4byte		.L1474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L1539:
.L1529:
	.sleb128	12
	.4byte		.L1446
	.uleb128	288
	.uleb128	5
	.4byte		.L1540-.L2
	.uleb128	8
.L312:
	.sleb128	13
	.byte		"u32ControlRegister"
	.byte		0
	.4byte		.L1474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L313:
	.sleb128	13
	.byte		"u8TxArbitrationStartDelay"
	.byte		0
	.4byte		.L1208
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L314:
	.sleb128	13
	.byte		"u16ControllerBaudRate"
	.byte		0
	.4byte		.L1210
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1540:
	.section	.debug_info,,n
.L1181:
	.sleb128	14
	.4byte		.L1541
	.uleb128	63
	.uleb128	1
	.4byte		.L1542-.L2
	.byte		"Can_PduType_s"
	.byte		0
	.uleb128	12
.L308:
	.sleb128	13
	.byte		"sdu"
	.byte		0
	.4byte		.L1543
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L309:
	.sleb128	13
	.byte		"id"
	.byte		0
	.4byte		.L1259
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L310:
	.sleb128	13
	.byte		"swPduHandle"
	.byte		0
	.4byte		.L1215
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L311:
	.sleb128	13
	.byte		"length"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L1542:
.L1219:
	.sleb128	14
	.4byte		.L1544
	.uleb128	6997
	.uleb128	5
	.4byte		.L1545-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L304:
	.sleb128	13
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L1543
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L305:
	.sleb128	13
	.byte		"SduLength"
	.byte		0
	.4byte		.L1546
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1545:
	.section	.debug_info,,n
.L1496:
	.sleb128	15
	.4byte		.L1481
	.uleb128	174
	.uleb128	5
	.4byte		.L1547-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	16
	.byte		"CAN_INTERRUPT_DISABLED"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"CAN_INTERRUPT_ENABLED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1547:
.L1498:
	.sleb128	15
	.4byte		.L1446
	.uleb128	264
	.uleb128	5
	.4byte		.L1548-.L2
	.uleb128	4
	.sleb128	16
	.byte		"CAN_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"CAN_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"CAN_SLEEPED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1548:
.L1538:
	.sleb128	15
	.4byte		.L1446
	.uleb128	236
	.uleb128	5
	.4byte		.L1549-.L2
	.uleb128	4
	.sleb128	16
	.byte		"CAN_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"CAN_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"CAN_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1549:
.L1511:
	.sleb128	15
	.4byte		.L1446
	.uleb128	223
	.uleb128	5
	.4byte		.L1550-.L2
	.uleb128	4
	.sleb128	16
	.byte		"CAN_RECEIVE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"CAN_TRANSMIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1550:
.L1298:
	.sleb128	15
	.4byte		.L1541
	.uleb128	63
	.uleb128	1
	.4byte		.L1551-.L2
	.uleb128	4
	.sleb128	16
	.byte		"CAN_T_START"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"CAN_T_STOP"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"CAN_T_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"CAN_T_WAKEUP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1551:
.L1074:
	.sleb128	15
	.4byte		.L1541
	.uleb128	57
	.uleb128	1
	.4byte		.L1552-.L2
	.uleb128	4
	.sleb128	16
	.byte		"CAN_OK"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"CAN_NOT_OK"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"CAN_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1552:
	.section	.debug_info,,n
.L1004:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L1003:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L1004
.L1018:
	.sleb128	18
	.byte		"Can_ControlerDescriptorType"
	.byte		0
	.4byte		.L1019
	.section	.debug_info,,n
.L1017:
	.sleb128	19
	.4byte		.L1018
	.section	.debug_info,,n
.L1016:
	.sleb128	20
	.4byte		.L1017
.L1036:
	.sleb128	18
	.byte		"Can_MBConfigContainerType"
	.byte		0
	.4byte		.L1037
.L1035:
	.sleb128	19
	.4byte		.L1036
.L1034:
	.sleb128	20
	.4byte		.L1035
.L1033:
	.sleb128	18
	.byte		"Can_PtrMBConfigContainerType"
	.byte		0
	.4byte		.L1034
.L1041:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L1040:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L1041
.L1045:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L1044:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L1045
.L1059:
	.sleb128	18
	.byte		"Can_PtrControlerDescriptorType"
	.byte		0
	.4byte		.L1016
.L1073:
	.sleb128	18
	.byte		"Can_ReturnType"
	.byte		0
	.4byte		.L1074
.L1078:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L1004
	.section	.debug_info,,n
.L1097:
	.sleb128	21
	.4byte		.L1098
	.4byte		.L1044
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L1098:
.L1103:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L1003
.L1180:
	.sleb128	18
	.byte		"Can_PduType"
	.byte		0
	.4byte		.L1181
.L1179:
	.sleb128	19
	.4byte		.L1180
.L1178:
	.sleb128	20
	.4byte		.L1179
.L1208:
	.sleb128	19
	.4byte		.L1003
.L1210:
	.sleb128	19
	.4byte		.L1040
.L1215:
	.sleb128	18
	.byte		"PduIdType"
	.byte		0
	.4byte		.L1040
.L1218:
	.sleb128	18
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L1219
.L1223:
	.sleb128	21
	.4byte		.L1224
	.4byte		.L1003
	.sleb128	22
	.uleb128	63
	.sleb128	0
.L1224:
.L1247:
	.sleb128	18
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L1003
.L1252:
	.sleb128	21
	.4byte		.L1253
	.4byte		.L1003
	.sleb128	22
	.uleb128	63
	.sleb128	0
.L1253:
.L1259:
	.sleb128	18
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L1044
.L1297:
	.sleb128	18
	.byte		"Can_StateTransitionType"
	.byte		0
	.4byte		.L1298
.L1449:
	.sleb128	18
	.byte		"Can_ConfigType"
	.byte		0
	.4byte		.L1450
.L1448:
	.sleb128	19
	.4byte		.L1449
.L1447:
	.sleb128	20
	.4byte		.L1448
.L1455:
	.sleb128	18
	.byte		"CanStatic_ConfigType"
	.byte		0
	.4byte		.L1456
.L1454:
	.sleb128	19
	.4byte		.L1455
.L1453:
	.sleb128	20
	.4byte		.L1454
.L1460:
	.sleb128	18
	.byte		"CanStatic_ControlerDescriptorType"
	.byte		0
	.4byte		.L1461
.L1459:
	.sleb128	19
	.4byte		.L1460
.L1458:
	.sleb128	20
	.4byte		.L1459
.L1466:
	.sleb128	18
	.byte		"Can_ControllerStatusType"
	.byte		0
	.4byte		.L1467
	.section	.debug_info,,n
.L1464:
	.sleb128	23
	.4byte		.L1465-.L2
	.4byte		.L1466
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L1465:
.L1469:
	.sleb128	23
	.4byte		.L1470-.L2
	.4byte		.L1208
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L1470:
.L1474:
	.sleb128	19
	.4byte		.L1044
.L1472:
	.sleb128	23
	.4byte		.L1473-.L2
	.4byte		.L1474
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L1473:
.L1479:
	.sleb128	18
	.byte		"Can_MaskFlag"
	.byte		0
	.4byte		.L1480
.L1478:
	.sleb128	19
	.4byte		.L1479
.L1476:
	.sleb128	23
	.4byte		.L1477-.L2
	.4byte		.L1478
	.sleb128	22
	.uleb128	2
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L1477:
.L1484:
	.sleb128	23
	.4byte		.L1485-.L2
	.4byte		.L1044
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L1485:
.L1486:
	.sleb128	23
	.4byte		.L1487-.L2
	.4byte		.L1044
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L1487:
.L1488:
	.sleb128	23
	.4byte		.L1489-.L2
	.4byte		.L1215
	.sleb128	22
	.uleb128	95
	.sleb128	0
.L1489:
.L1492:
	.sleb128	17
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L1491:
	.sleb128	18
	.byte		"sint8"
	.byte		0
	.4byte		.L1492
	.section	.debug_info,,n
.L1490:
	.sleb128	24
	.4byte		.L1491
.L1493:
	.sleb128	24
	.4byte		.L1247
.L1494:
	.sleb128	24
	.4byte		.L1003
.L1495:
	.sleb128	18
	.byte		"Can_InterruptStateType"
	.byte		0
	.4byte		.L1496
.L1497:
	.sleb128	18
	.byte		"Can_ControllerStateType"
	.byte		0
	.4byte		.L1498
.L1503:
	.sleb128	19
	.4byte		.L1259
.L1502:
	.sleb128	20
	.4byte		.L1503
.L1501:
	.sleb128	19
	.4byte		.L1502
.L1500:
	.sleb128	18
	.byte		"Can_IdPtrType"
	.byte		0
	.4byte		.L1501
.L1504:
	.sleb128	19
	.4byte		.L1247
.L1505:
	.sleb128	23
	.4byte		.L1506-.L2
	.4byte		.L1208
	.sleb128	22
	.uleb128	68
	.sleb128	0
.L1506:
.L1510:
	.sleb128	18
	.byte		"Can_ObjType"
	.byte		0
	.4byte		.L1511
.L1509:
	.sleb128	19
	.4byte		.L1510
.L1507:
	.sleb128	23
	.4byte		.L1508-.L2
	.4byte		.L1509
	.sleb128	22
	.uleb128	68
	.sleb128	0
.L1508:
.L1517:
	.sleb128	18
	.byte		"CanStatic_ControllerBaudrateConfigType"
	.byte		0
	.4byte		.L1518
.L1516:
	.sleb128	19
	.4byte		.L1517
.L1515:
	.sleb128	20
	.4byte		.L1516
.L1514:
	.sleb128	19
	.4byte		.L1515
	.section	.debug_info,,n
.L1522:
	.sleb128	25
	.4byte		.L1523-.L2
	.byte		0x1
	.sleb128	0
.L1523:
.L1521:
	.sleb128	20
	.4byte		.L1522
.L1520:
	.sleb128	18
	.byte		"Can_PCallBackType"
	.byte		0
	.4byte		.L1521
.L1519:
	.sleb128	19
	.4byte		.L1520
.L1528:
	.sleb128	18
	.byte		"Can_ControllerBaudrateConfigType"
	.byte		0
	.4byte		.L1529
.L1527:
	.sleb128	19
	.4byte		.L1528
.L1526:
	.sleb128	20
	.4byte		.L1527
.L1525:
	.sleb128	19
	.4byte		.L1526
.L1534:
	.sleb128	18
	.byte		"Can_MBConfigObjectType"
	.byte		0
	.4byte		.L1535
.L1533:
	.sleb128	19
	.4byte		.L1534
.L1532:
	.sleb128	20
	.4byte		.L1533
.L1531:
	.sleb128	19
	.4byte		.L1532
.L1537:
	.sleb128	18
	.byte		"CanIdType"
	.byte		0
	.4byte		.L1538
.L1543:
	.sleb128	20
	.4byte		.L1003
.L1546:
	.sleb128	18
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L1040
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L995:
	.sleb128	0
.L991:

	.section	.debug_loc,,n
	.align	0
.L1005:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L1007:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),3
	.d2locend
.L1009:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locend
.L1015:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),31
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),31
	.d2locend
.L1020:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),30
	.d2locend
.L1022:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locend
.L1024:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo19),29
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),29
	.d2locend
.L1030:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L1031:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),4
	.d2locend
.L1038:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo34),5
	.d2locend
.L1042:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo34),6
	.d2locend
.L1046:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),0
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),31
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),31
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),31
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),31
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),31
	.d2locend
.L1048:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),30
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),8
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),8
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo63),30
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo52),8
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo54),30
	.d2locend
.L1050:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo38),7
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo40),7
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo42),7
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo34),7
	.d2locend
.L1056:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locend
.L1057:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),4
	.d2locend
.L1060:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),0
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),0
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo70),5
	.d2locend
.L1062:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo70),6
	.d2locend
.L1064:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo70),7
	.d2locend
.L1066:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),31
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),31
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),31
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),31
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),31
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),31
	.d2locend
.L1068:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo89),0
	.d2locend
.L1076:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),3
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),31
	.d2locend
.L1077:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo95),4
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),30
	.d2locend
.L1079:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo98),5
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo99),29
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),29
	.d2locend
.L1081:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),28
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),28
	.d2locend
.L1083:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),0
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo96),0
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),0
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),0
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),0
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),0
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),0
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),0
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),0
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),0
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),0
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),0
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),0
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo97),0
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),0
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),3
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),3
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo101),0
	.d2locend
.L1085:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo141),27
	.d2locend
.L1087:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),6
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),6
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),6
	.d2locend
.L1089:
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo110),3
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo116),3
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),3
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),3
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo128),3
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),3
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),3
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo137),3
	.d2locend
.L1091:
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo116),5
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),5
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),5
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),5
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo147),5
	.d2locend
.L1093:
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo170),3
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo124),3
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo97),3
	.d2locend
.L1095:
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo172),28
	.d2locend
.L1105:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),3
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),0
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),0
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),0
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),0
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),0
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),0
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),0
	.d2locend
.L1107:
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),31
	.d2locend
.L1109:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo181),3
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),3
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo185),3
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo187),3
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo198),3
	.d2locend
.L1111:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo198),30
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo200),30
	.d2locend
.L1117:
	.d2locreg	%offsetof(.Llo201), %offsetof(.Llo202),3
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo204),3
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),31
	.d2locend
.L1119:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),0
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),0
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo211),30
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),0
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),0
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo217),0
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),0
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo221),0
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo223),0
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo225),0
	.d2locend
.L1121:
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo227),29
	.d2locend
.L1123:
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo229),28
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),28
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo206),4
	.d2locend
.L1125:
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo233),3
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo234),27
	.d2locend
.L1127:
	.d2locreg	%offsetof(.Llo235), %offsetof(.Llo236),26
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo227),26
	.d2locend
.L1129:
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo211),29
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo229),3
	.d2locreg	%offsetof(.Llo239), %offsetof(.Llo206),3
	.d2locend
.L1131:
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo241),3
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),3
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),3
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo247),3
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo249),3
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo251),3
	.d2locreg	%offsetof(.Llo252), %offsetof(.Llo236),3
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo254),3
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo227),3
	.d2locreg	%offsetof(.Llo256), %offsetof(.Llo257),3
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo259),3
	.d2locreg	%offsetof(.Llo260), %offsetof(.Llo261),3
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo213),3
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo215),3
	.d2locreg	%offsetof(.Llo264), %offsetof(.Llo217),3
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo266),3
	.d2locend
.L1133:
	.d2locreg	%offsetof(.Llo267), %offsetof(.Llo268),25
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo269),25
	.d2locend
.L1135:
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo270),0
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo272),0
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo274),0
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),0
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),0
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo206),0
	.d2locend
.L1137:
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo281),3
	.d2locend
.L1139:
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo281),4
	.d2locend
.L1145:
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo284),3
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),3
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo288),31
	.d2locend
.L1146:
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo285),4
	.d2locreg	%offsetof(.Llo286), %offsetof(.Llo289),30
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo291),30
	.d2locend
.L1148:
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo293),29
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo295),29
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo296),29
	.d2locend
.L1150:
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo298),0
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo300),0
	.d2locreg	%offsetof(.Llo301), %offsetof(.Llo302),28
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo291),28
	.d2locend
.L1152:
	.d2locreg	%offsetof(.Llo303), %offsetof(.Llo302),3
	.d2locreg	%offsetof(.Llo304), %offsetof(.Llo295),3
	.d2locend
.L1154:
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo302),0
	.d2locreg	%offsetof(.Llo305), %offsetof(.Llo306),0
	.d2locend
.L1160:
	.d2locreg	%offsetof(.Llo307), %offsetof(.Llo308),3
	.d2locreg	%offsetof(.Llo309), %offsetof(.Llo310),0
	.d2locreg	%offsetof(.Llo311), %offsetof(.Llo312),0
	.d2locend
.L1162:
	.d2locreg	%offsetof(.Llo313), %offsetof(.Llo314),3
	.d2locreg	%offsetof(.Llo315), %offsetof(.Llo310),31
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo317),31
	.d2locend
.L1168:
	.d2locreg	%offsetof(.Llo318), %offsetof(.Llo319),3
	.d2locreg	%offsetof(.Llo320), %offsetof(.Llo321),0
	.d2locreg	%offsetof(.Llo322), %offsetof(.Llo323),0
	.d2locend
.L1170:
	.d2locreg	%offsetof(.Llo324), %offsetof(.Llo325),3
	.d2locreg	%offsetof(.Llo326), %offsetof(.Llo321),31
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),31
	.d2locend
.L1176:
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo330),3
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo332),0
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo334),0
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo336),0
	.d2locend
.L1177:
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo337),4
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo336),4
	.d2locend
.L1182:
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo337),5
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo336),5
	.d2locend
.L1184:
	.d2locreg	%offsetof(.Llo340), %offsetof(.Llo335),3
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo342),3
	.d2locreg	%offsetof(.Llo336), %offsetof(.Llo343),3
	.d2locend
.L1186:
	.d2locreg	%offsetof(.Llo344), %offsetof(.Llo345),3
	.d2locreg	%offsetof(.Llo346), %offsetof(.Llo347),7
	.d2locreg	%offsetof(.Llo348), %offsetof(.Llo332),7
	.d2locreg	%offsetof(.Llo349), %offsetof(.Llo350),7
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo352),7
	.d2locend
.L1188:
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo354),31
	.d2locreg	%offsetof(.Llo355), %offsetof(.Llo347),31
	.d2locreg	%offsetof(.Llo356), %offsetof(.Llo332),31
	.d2locreg	%offsetof(.Llo357), %offsetof(.Llo358),31
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo360),31
	.d2locreg	%offsetof(.Llo361), %offsetof(.Llo362),31
	.d2locreg	%offsetof(.Llo363), %offsetof(.Llo364),31
	.d2locreg	%offsetof(.Llo365), %offsetof(.Llo337),31
	.d2locend
.L1190:
	.d2locreg	%offsetof(.Llo366), %offsetof(.Llo355),31
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo368),3
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo332),3
	.d2locreg	%offsetof(.Llo370), %offsetof(.Llo340),3
	.d2locend
.L1192:
	.d2locreg	%offsetof(.Llo360), %offsetof(.Llo335),7
	.d2locend
.L1194:
	.d2locreg	%offsetof(.Llo371), %offsetof(.Llo350),7
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo352),7
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo373),7
	.d2locreg	%offsetof(.Llo374), %offsetof(.Llo360),0
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo362),0
	.d2locreg	%offsetof(.Llo376), %offsetof(.Llo377),0
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo335),0
	.d2locend
.L1196:
	.d2locreg	%offsetof(.Llo379), %offsetof(.Llo340),3
	.d2locend
.L1198:
	.d2locreg	%offsetof(.Llo380), %offsetof(.Llo332),30
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo358),30
	.d2locreg	%offsetof(.Llo382), %offsetof(.Llo360),30
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo337),30
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo336),30
	.d2locend
.L1200:
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo384),3
	.d2locend
.L1202:
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo337),6
	.d2locreg	%offsetof(.Llo386), %offsetof(.Llo387),6
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo336),6
	.d2locend
.L1209:
	.d2locreg	%offsetof(.Llo388), %offsetof(.Llo389),3
	.d2locreg	%offsetof(.Llo390), %offsetof(.Llo391),31
	.d2locreg	%offsetof(.Llo392), %offsetof(.Llo393),31
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),31
	.d2locend
.L1211:
	.d2locreg	%offsetof(.Llo388), %offsetof(.Llo390),4
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo391),30
	.d2locreg	%offsetof(.Llo397), %offsetof(.Llo398),30
	.d2locend
.L1213:
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo399),0
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo401),3
	.d2locreg	%offsetof(.Llo402), %offsetof(.Llo403),29
	.d2locreg	%offsetof(.Llo404), %offsetof(.Llo405),3
	.d2locreg	%offsetof(.Llo406), %offsetof(.Llo407),3
	.d2locreg	%offsetof(.Llo408), %offsetof(.Llo391),3
	.d2locreg	%offsetof(.Llo409), %offsetof(.Llo410),3
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo412),3
	.d2locreg	%offsetof(.Llo393), %offsetof(.Llo398),29
	.d2locend
.L1216:
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo393),29
	.d2locend
.L1221:
	.d2locreg	%offsetof(.Llo414), %offsetof(.Llo391),0
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo410),0
	.d2locreg	%offsetof(.Llo416), %offsetof(.Llo412),0
	.d2locend
.L1226:
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo418),4
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo391),4
	.d2locreg	%offsetof(.Llo419), %offsetof(.Llo420),4
	.d2locend
.L1228:
	.d2locreg	%offsetof(.Llo421), %offsetof(.Llo403),28
	.d2locreg	%offsetof(.Llo422), %offsetof(.Llo405),28
	.d2locreg	%offsetof(.Llo423), %offsetof(.Llo398),28
	.d2locend
.L1230:
	.d2locreg	%offsetof(.Llo424), %offsetof(.Llo425),27
	.d2locreg	%offsetof(.Llo426), %offsetof(.Llo427),27
	.d2locend
.L1232:
	.d2locreg	%offsetof(.Llo428), %offsetof(.Llo429),26
	.d2locreg	%offsetof(.Llo430), %offsetof(.Llo398),26
	.d2locend
.L1234:
	.d2locreg	%offsetof(.Llo388), %offsetof(.Llo398),25
	.d2locend
.L1236:
	.d2locreg	%offsetof(.Llo431), %offsetof(.Llo396),0
	.d2locreg	%offsetof(.Llo432), %offsetof(.Llo433),0
	.d2locreg	%offsetof(.Llo434), %offsetof(.Llo435),0
	.d2locreg	%offsetof(.Llo436), %offsetof(.Llo437),0
	.d2locreg	%offsetof(.Llo438), %offsetof(.Llo439),0
	.d2locreg	%offsetof(.Llo440), %offsetof(.Llo441),0
	.d2locreg	%offsetof(.Llo442), %offsetof(.Llo414),0
	.d2locend
.L1242:
	.d2locreg	%offsetof(.Llo443), %offsetof(.Llo444),3
	.d2locreg	%offsetof(.Llo445), %offsetof(.Llo446),0
	.d2locreg	%offsetof(.Llo447), %offsetof(.Llo448),0
	.d2locend
.L1243:
	.d2locreg	%offsetof(.Llo443), %offsetof(.Llo444),4
	.d2locreg	%offsetof(.Llo449), %offsetof(.Llo450),3
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo452),3
	.d2locend
.L1245:
	.d2locreg	%offsetof(.Llo453), %offsetof(.Llo454),4
	.d2locreg	%offsetof(.Llo455), %offsetof(.Llo456),5
	.d2locend
.L1248:
	.d2locreg	%offsetof(.Llo457), %offsetof(.Llo458),5
	.d2locend
.L1250:
	.d2locreg	%offsetof(.Llo459), %offsetof(.Llo450),5
	.d2locreg	%offsetof(.Llo460), %offsetof(.Llo461),5
	.d2locend
.L1255:
	.d2locreg	%offsetof(.Llo462), %offsetof(.Llo450),30
	.d2locreg	%offsetof(.Llo463), %offsetof(.Llo464),30
	.d2locend
.L1257:
	.d2locreg	%offsetof(.Llo452), %offsetof(.Llo460),3
	.d2locend
.L1260:
	.d2locreg	%offsetof(.Llo465), %offsetof(.Llo466),4
	.d2locreg	%offsetof(.Llo467), %offsetof(.Llo450),4
	.d2locreg	%offsetof(.Llo468), %offsetof(.Llo469),4
	.d2locend
.L1262:
	.d2locreg	%offsetof(.Llo470), %offsetof(.Llo468),6
	.d2locend
.L1264:
	.d2locreg	%offsetof(.Llo471), %offsetof(.Llo450),7
	.d2locreg	%offsetof(.Llo472), %offsetof(.Llo464),7
	.d2locend
.L1266:
	.d2locreg	%offsetof(.Llo473), %offsetof(.Llo464),31
	.d2locend
.L1268:
	.d2locreg	%offsetof(.Llo474), %offsetof(.Llo475),0
	.d2locreg	%offsetof(.Llo476), %offsetof(.Llo477),0
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo479),0
	.d2locreg	%offsetof(.Llo480), %offsetof(.Llo481),0
	.d2locreg	%offsetof(.Llo482), %offsetof(.Llo466),0
	.d2locreg	%offsetof(.Llo483), %offsetof(.Llo484),0
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo486),0
	.d2locreg	%offsetof(.Llo487), %offsetof(.Llo450),0
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo488),0
	.d2locend
.L1270:
	.d2locreg	%offsetof(.Llo455), %offsetof(.Llo489),4
	.d2locreg	%offsetof(.Llo490), %offsetof(.Llo466),4
	.d2locreg	%offsetof(.Llo491), %offsetof(.Llo492),4
	.d2locend
.L1272:
	.d2locreg	%offsetof(.Llo493), %offsetof(.Llo458),4
	.d2locreg	%offsetof(.Llo455), %offsetof(.Llo464),29
	.d2locend
.L1279:
	.d2locreg	%offsetof(.Llo494), %offsetof(.Llo495),3
	.d2locend
.L1285:
	.d2locreg	%offsetof(.Llo496), %offsetof(.Llo497),3
	.d2locreg	%offsetof(.Llo498), %offsetof(.Llo499),0
	.d2locreg	%offsetof(.Llo500), %offsetof(.Llo501),0
	.d2locreg	%offsetof(.Llo502), %offsetof(.Llo503),0
	.d2locreg	%offsetof(.Llo504), %offsetof(.Llo505),0
	.d2locreg	%offsetof(.Llo506), %offsetof(.Llo507),0
	.d2locreg	%offsetof(.Llo508), %offsetof(.Llo509),0
	.d2locreg	%offsetof(.Llo510), %offsetof(.Llo511),0
	.d2locend
.L1287:
	.d2locreg	%offsetof(.Llo512), %offsetof(.Llo501),3
	.d2locreg	%offsetof(.Llo513), %offsetof(.Llo514),4
	.d2locreg	%offsetof(.Llo515), %offsetof(.Llo516),4
	.d2locend
.L1289:
	.d2locreg	%offsetof(.Llo501), %offsetof(.Llo517),3
	.d2locreg	%offsetof(.Llo518), %offsetof(.Llo519),3
	.d2locreg	%offsetof(.Llo520), %offsetof(.Llo514),5
	.d2locreg	%offsetof(.Llo521), %offsetof(.Llo516),3
	.d2locend
.L1295:
	.d2locreg	%offsetof(.Llo522), %offsetof(.Llo523),3
	.d2locreg	%offsetof(.Llo524), %offsetof(.Llo525),3
	.d2locreg	%offsetof(.Llo526), %offsetof(.Llo527),3
	.d2locreg	%offsetof(.Llo528), %offsetof(.Llo529),3
	.d2locend
.L1296:
	.d2locreg	%offsetof(.Llo522), %offsetof(.Llo530),4
	.d2locreg	%offsetof(.Llo523), %offsetof(.Llo531),4
	.d2locreg	%offsetof(.Llo525), %offsetof(.Llo532),4
	.d2locend
.L1299:
	.d2locreg	%offsetof(.Llo522), %offsetof(.Llo533),5
	.d2locreg	%offsetof(.Llo534), %offsetof(.Llo535),0
	.d2locend
.L1300:
	.d2locreg	%offsetof(.Llo522), %offsetof(.Llo536),6
	.d2locreg	%offsetof(.Llo535), %offsetof(.Llo530),5
	.d2locreg	%offsetof(.Llo531), %offsetof(.Llo537),5
	.d2locend
.L1302:
	.d2locreg	%offsetof(.Llo538), %offsetof(.Llo539),7
	.d2locend
.L1308:
	.d2locreg	%offsetof(.Llo540), %offsetof(.Llo541),3
	.d2locreg	%offsetof(.Llo542), %offsetof(.Llo543),31
	.d2locend
.L1314:
	.d2locreg	%offsetof(.Llo544), %offsetof(.Llo545),3
	.d2locreg	%offsetof(.Llo546), %offsetof(.Llo547),31
	.d2locend
.L1315:
	.d2locreg	%offsetof(.Llo544), %offsetof(.Llo548),4
	.d2locreg	%offsetof(.Llo549), %offsetof(.Llo547),29
	.d2locend
.L1317:
	.d2locreg	%offsetof(.Llo550), %offsetof(.Llo551),30
	.d2locreg	%offsetof(.Llo552), %offsetof(.Llo547),30
	.d2locend
.L1323:
	.d2locreg	%offsetof(.Llo553), %offsetof(.Llo554),3
	.d2locreg	%offsetof(.Llo555), %offsetof(.Llo556),5
	.d2locreg	%offsetof(.Llo557), %offsetof(.Llo558),5
	.d2locreg	%offsetof(.Llo559), %offsetof(.Llo560),5
	.d2locend
.L1324:
	.d2locreg	%offsetof(.Llo553), %offsetof(.Llo561),4
	.d2locreg	%offsetof(.Llo554), %offsetof(.Llo558),0
	.d2locreg	%offsetof(.Llo562), %offsetof(.Llo560),0
	.d2locend
.L1326:
	.d2locreg	%offsetof(.Llo563), %offsetof(.Llo564),3
	.d2locreg	%offsetof(.Llo565), %offsetof(.Llo558),8
	.d2locreg	%offsetof(.Llo566), %offsetof(.Llo567),3
	.d2locreg	%offsetof(.Llo568), %offsetof(.Llo560),3
	.d2locend
.L1328:
	.d2locreg	%offsetof(.Llo569), %offsetof(.Llo558),6
	.d2locreg	%offsetof(.Llo570), %offsetof(.Llo560),6
	.d2locend
.L1330:
	.d2locreg	%offsetof(.Llo571), %offsetof(.Llo560),4
	.d2locend
.L1336:
	.d2locreg	%offsetof(.Llo572), %offsetof(.Llo573),3
	.d2locreg	%offsetof(.Llo574), %offsetof(.Llo575),0
	.d2locend
.L1338:
	.d2locreg	%offsetof(.Llo576), %offsetof(.Llo577),0
	.d2locend
.L1340:
	.d2locreg	%offsetof(.Llo578), %offsetof(.Llo579),3
	.d2locreg	%offsetof(.Llo580), %offsetof(.Llo581),4
	.d2locreg	%offsetof(.Llo582), %offsetof(.Llo583),4
	.d2locend
.L1342:
	.d2locreg	%offsetof(.Llo579), %offsetof(.Llo581),3
	.d2locend
.L1348:
	.d2locreg	%offsetof(.Llo584), %offsetof(.Llo585),3
	.d2locreg	%offsetof(.Llo586), %offsetof(.Llo587),31
	.d2locend
.L1349:
	.d2locreg	%offsetof(.Llo584), %offsetof(.Llo586),4
	.d2locreg	%offsetof(.Llo588), %offsetof(.Llo587),30
	.d2locreg	%offsetof(.Llo589), %offsetof(.Llo590),5
	.d2locreg	%offsetof(.Llo591), %offsetof(.Llo592),30
	.d2locend
.L1351:
	.d2locreg	%offsetof(.Llo593), %offsetof(.Llo594),29
	.d2locreg	%offsetof(.Llo595), %offsetof(.Llo596),3
	.d2locreg	%offsetof(.Llo597), %offsetof(.Llo598),29
	.d2locreg	%offsetof(.Llo599), %offsetof(.Llo600),29
	.d2locend
.L1353:
	.d2locreg	%offsetof(.Llo601), %offsetof(.Llo602),0
	.d2locreg	%offsetof(.Llo603), %offsetof(.Llo604),0
	.d2locreg	%offsetof(.Llo605), %offsetof(.Llo606),0
	.d2locreg	%offsetof(.Llo607), %offsetof(.Llo608),28
	.d2locreg	%offsetof(.Llo609), %offsetof(.Llo610),3
	.d2locend
.L1355:
	.d2locreg	%offsetof(.Llo611), %offsetof(.Llo612),3
	.d2locreg	%offsetof(.Llo613), %offsetof(.Llo614),3
	.d2locreg	%offsetof(.Llo615), %offsetof(.Llo616),3
	.d2locreg	%offsetof(.Llo617), %offsetof(.Llo618),3
	.d2locend
.L1357:
	.d2locreg	%offsetof(.Llo619), %offsetof(.Llo620),27
	.d2locend
.L1359:
	.d2locreg	%offsetof(.Llo621), %offsetof(.Llo610),26
	.d2locend
.L1361:
	.d2locreg	%offsetof(.Llo622), %offsetof(.Llo587),25
	.d2locend
.L1363:
	.d2locreg	%offsetof(.Llo623), %offsetof(.Llo587),24
	.d2locend
.L1365:
	.d2locreg	%offsetof(.Llo624), %offsetof(.Llo620),23
	.d2locreg	%offsetof(.Llo625), %offsetof(.Llo626),23
	.d2locreg	%offsetof(.Llo627), %offsetof(.Llo628),23
	.d2locend
.L1367:
	.d2locreg	%offsetof(.Llo629), %offsetof(.Llo630),20
	.d2locreg	%offsetof(.Llo631), %offsetof(.Llo598),20
	.d2locreg	%offsetof(.Llo632), %offsetof(.Llo608),31
	.d2locreg	%offsetof(.Llo633), %offsetof(.Llo634),31
	.d2locend
.L1369:
	.d2locreg	%offsetof(.Llo635), %offsetof(.Llo598),19
	.d2locreg	%offsetof(.Llo592), %offsetof(.Llo610),30
	.d2locend
.L1371:
	.d2locreg	%offsetof(.Llo636), %offsetof(.Llo587),22
	.d2locreg	%offsetof(.Llo637), %offsetof(.Llo590),4
	.d2locreg	%offsetof(.Llo638), %offsetof(.Llo620),4
	.d2locreg	%offsetof(.Llo639), %offsetof(.Llo640),4
	.d2locreg	%offsetof(.Llo641), %offsetof(.Llo642),4
	.d2locend
.L1373:
	.d2locreg	%offsetof(.Llo643), %offsetof(.Llo587),21
	.d2locend
.L1375:
	.d2locreg	%offsetof(.Llo644), %offsetof(.Llo645),0
	.d2locreg	%offsetof(.Llo646), %offsetof(.Llo618),0
	.d2locreg	%offsetof(.Llo647), %offsetof(.Llo640),0
	.d2locreg	%offsetof(.Llo642), %offsetof(.Llo648),0
	.d2locreg	%offsetof(.Llo649), %offsetof(.Llo610),0
	.d2locend
.L1377:
	.d2locreg	%offsetof(.Llo650), %offsetof(.Llo586),0
	.d2locreg	%offsetof(.Llo588), %offsetof(.Llo651),18
	.d2locreg	%offsetof(.Llo652), %offsetof(.Llo648),18
	.d2locend
.L1384:
	.d2locreg	%offsetof(.Llo653), %offsetof(.Llo654),0
	.d2locreg	%offsetof(.Llo655), %offsetof(.Llo656),4
	.d2locreg	%offsetof(.Llo657), %offsetof(.Llo658),3
	.d2locreg	%offsetof(.Llo659), %offsetof(.Llo660),4
	.d2locreg	%offsetof(.Llo661), %offsetof(.Llo662),4
	.d2locend
.L1386:
	.d2locreg	%offsetof(.Llo663), %offsetof(.Llo662),31
	.d2locend
.L1392:
	.d2locreg	%offsetof(.Llo664), %offsetof(.Llo665),3
	.d2locreg	%offsetof(.Llo666), %offsetof(.Llo667),31
	.d2locend
.L1394:
	.d2locreg	%offsetof(.Llo668), %offsetof(.Llo669),0
	.d2locreg	%offsetof(.Llo670), %offsetof(.Llo666),0
	.d2locreg	%offsetof(.Llo671), %offsetof(.Llo672),3
	.d2locreg	%offsetof(.Llo673), %offsetof(.Llo674),3
	.d2locreg	%offsetof(.Llo675), %offsetof(.Llo667),3
	.d2locend
.L1396:
	.d2locreg	%offsetof(.Llo676), %offsetof(.Llo667),30
	.d2locend
.L1403:
	.d2locreg	%offsetof(.Llo677), %offsetof(.Llo678),31
	.d2locreg	%offsetof(.Llo679), %offsetof(.Llo680),3
	.d2locreg	%offsetof(.Llo681), %offsetof(.Llo682),3
	.d2locreg	%offsetof(.Llo683), %offsetof(.Llo684),3
	.d2locend
.L1405:
	.d2locreg	%offsetof(.Llo678), %offsetof(.Llo684),31
	.d2locend
.L1411:
	.d2locreg	%offsetof(.Llo685), %offsetof(.Llo686),3
	.d2locreg	%offsetof(.Llo687), %offsetof(.Llo688),31
	.d2locend
.L1413:
	.d2locreg	%offsetof(.Llo689), %offsetof(.Llo690),0
	.d2locreg	%offsetof(.Llo691), %offsetof(.Llo687),0
	.d2locreg	%offsetof(.Llo692), %offsetof(.Llo693),3
	.d2locreg	%offsetof(.Llo694), %offsetof(.Llo695),3
	.d2locreg	%offsetof(.Llo696), %offsetof(.Llo688),3
	.d2locend
.L1415:
	.d2locreg	%offsetof(.Llo697), %offsetof(.Llo688),30
	.d2locend
.L1422:
	.d2locreg	%offsetof(.Llo698), %offsetof(.Llo699),31
	.d2locend
.L1424:
	.d2locreg	%offsetof(.Llo700), %offsetof(.Llo701),0
	.d2locreg	%offsetof(.Llo702), %offsetof(.Llo703),0
	.d2locreg	%offsetof(.Llo704), %offsetof(.Llo705),0
	.d2locreg	%offsetof(.Llo706), %offsetof(.Llo707),0
	.d2locreg	%offsetof(.Llo708), %offsetof(.Llo709),0
	.d2locreg	%offsetof(.Llo710), %offsetof(.Llo711),0
	.d2locreg	%offsetof(.Llo712), %offsetof(.Llo713),0
	.d2locreg	%offsetof(.Llo714), %offsetof(.Llo715),0
	.d2locreg	%offsetof(.Llo716), %offsetof(.Llo717),0
	.d2locreg	%offsetof(.Llo718), %offsetof(.Llo719),3
	.d2locend
.L1426:
	.d2locreg	%offsetof(.Llo720), %offsetof(.Llo701),3
	.d2locreg	%offsetof(.Llo721), %offsetof(.Llo703),3
	.d2locreg	%offsetof(.Llo722), %offsetof(.Llo705),3
	.d2locreg	%offsetof(.Llo723), %offsetof(.Llo709),3
	.d2locreg	%offsetof(.Llo724), %offsetof(.Llo711),4
	.d2locreg	%offsetof(.Llo725), %offsetof(.Llo726),3
	.d2locreg	%offsetof(.Llo727), %offsetof(.Llo715),4
	.d2locreg	%offsetof(.Llo728), %offsetof(.Llo717),3
	.d2locreg	%offsetof(.Llo729), %offsetof(.Llo730),4
	.d2locend
.L1432:
	.d2locreg	%offsetof(.Llo731), %offsetof(.Llo732),3
	.d2locreg	%offsetof(.Llo733), %offsetof(.Llo734),4
	.d2locreg	%offsetof(.Llo735), %offsetof(.Llo736),4
	.d2locend
.L1434:
	.d2locreg	%offsetof(.Llo737), %offsetof(.Llo736),3
	.d2locend
.L1440:
	.d2locreg	%offsetof(.Llo738), %offsetof(.Llo739),3
	.d2locreg	%offsetof(.Llo740), %offsetof(.Llo741),0
	.d2locend
.L1442:
	.d2locreg	%offsetof(.Llo742), %offsetof(.Llo743),5
	.d2locend
.L1444:
	.d2locreg	%offsetof(.Llo744), %offsetof(.Llo745),0
	.d2locreg	%offsetof(.Llo739), %offsetof(.Llo743),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Can_FlexCan_CheckBusOff"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_ProcessBusOff"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_MainFunctionMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanIf_ControllerModeIndication"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_MainFunctionMultipleReadPoll"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Can_FlexCan_ProcessRxNormal"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_MainFunctionRead"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Can_FlexCan_ProcessRxNormal"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_MainFunctionMultipleWritePoll"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Can_FlexCan_ProcessTxPoll"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_MainFunctionWrite"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Can_FlexCan_ProcessTxPoll"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_Write"
	.wrcm.nint32 "frameSize", 80
	.wrcm.nstrlist "calls", "Can_FlexCan_Cancel","Can_FlexCan_UpdateMB","SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_AbortMb"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Can_FlexCan_Cancel"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_Cancel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_EnableControllerInterrupts"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Can_FlexCan_EnableInterrupts","SchM_Enter_Can_CAN_EXCLUSIVE_AREA_01","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_01"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_DisableControllerInterrupts"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Can_FlexCan_DisableInterrupts","SchM_Enter_Can_CAN_EXCLUSIVE_AREA_00","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_00"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_SetControllerMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Can_FlexCan_SetControllerToSleepMode","Can_FlexCan_SetControllerToStartMode","Can_FlexCan_SetControllerToStopMode","Can_FlexCan_SetControllerToWakeupMode"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_InitVariables"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_ProcessRxNormal"
	.wrcm.nint32 "frameSize", 112
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_RxIndication"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_ProcessTxPoll"
	.wrcm.nint32 "frameSize", 112
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_CancelTxConfirmation","CanIf_TxConfirmation","SchM_Enter_Can_CAN_EXCLUSIVE_AREA_03","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_03"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_UpdateMB"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_SetControllerToWakeupMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_ControllerModeIndication"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_SetControllerToSleepMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_ControllerModeIndication"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_SetControllerToStartMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_ControllerModeIndication","Can_FlexCan_ChangeBaudrate","Can_FlexCan_EnableInterrupts","SchM_Enter_Can_CAN_EXCLUSIVE_AREA_13","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_13"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_ChangeBaudrate"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Can_FlexCan_InitReceiveMBs","Can_FlexCan_InitTransmitMBs","Can_FlexCan_ResetController","SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_ResetController"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Can_CAN_EXCLUSIVE_AREA_04","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_04"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_SetControllerToStopMode"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_ControllerModeIndication","Can_FlexCan_DisableInterrupts","SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_InitTransmitMBs"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_InitReceiveMBs"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_EnableInterrupts"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Can_CAN_EXCLUSIVE_AREA_08","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_08"
	.wrcm.end
	.wrcm.nelem "Can_FlexCan_DisableInterrupts"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Can_CAN_EXCLUSIVE_AREA_07","SchM_Exit_Can_CAN_EXCLUSIVE_AREA_07"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Can_Flexcan.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Can_Flexcan.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Can_Flexcan.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Can_Flexcan.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Can_Flexcan.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Can_Flexcan.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Can\ssc\make\..\..\generator\integration_package\src\Can_Flexcan.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
