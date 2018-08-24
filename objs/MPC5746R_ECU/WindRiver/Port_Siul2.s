#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Port_Siul2.c"
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
# FUNC(void, PORT_CODE) Port_Siul2_Init
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L503:
	.section	.invalid_TEXT,,c
#$$ld
.L499:
	.0byte		.L497
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Siul2.c"
        .d2line         320,23
#$$ld
.L506:

#$$bf	Port_Siul2_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r29,r30,r31,cr0,lr
	.globl		Port_Siul2_Init
	.d2_cfa_start __cie
Port_Siul2_Init:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pConfigPtr=r3 pConfigPtr=r3
	.d2prologue_end
# (
#     P2CONST(Port_ConfigType, AUTOMATIC, PORT_APPL_CONST) pConfigPtr
# )
# {
#     /* Initialize all variables */
#     VAR(uint16, AUTOMATIC) u16PinIndex;
#     VAR(uint16, AUTOMATIC) u16MuxIndex;
# 
#     VAR(uint16, AUTOMATIC) u16NumUnusedPins = (uint16)(pConfigPtr->u16NumUnusedPins);
#     VAR(uint16, AUTOMATIC) u16NumPins       = (uint16)(pConfigPtr->u16NumPins);
#     VAR(uint16, AUTOMATIC) u16NumMuxRegs    = PORT_NMBR_INMUX_REGS_U16;
	.d2line		331
	diab.li		r6,487		# u16NumMuxRegs=r6
	.d2line		329
.Llo28:
	lhz		r0,2(r3)		# pConfigPtr=r3
.Llo11:
	mr		r0,r0		# u16NumUnusedPins=r0 u16NumUnusedPins=r0
	.d2line		330
	lhz		r5,0(r3)		# pConfigPtr=r3
.Llo22:
	mr		r5,r5		# u16NumPins=r5 u16NumPins=r5
# 
#     /**
#     * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#     */
#     VAR(uint32, AUTOMATIC) u32LocalMSCR = pConfigPtr->pUnusedPadConfig->u32MSCR;
	.d2line		336
	lwz		r4,8(r3)		# u16PinIndex=r4 pConfigPtr=r3
.Llo3:
	lwz		r7,0(r4)		# u16PinIndex=r4
.Llo29:
	mr		r7,r7		# u32LocalMSCR=r7 u32LocalMSCR=r7
#     /**
#     * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#     */
#     VAR(uint8,  AUTOMATIC) u8LocalPDO = pConfigPtr->pUnusedPadConfig->u8PDO;
	.d2line		340
	lbz		r8,4(r4)		# u16PinIndex=r4
.Llo41:
	mr		r8,r8		# u8LocalPDO=r8 u8LocalPDO=r8
#     VAR(uint32, AUTOMATIC) u32LocalVar;
#     VAR(uint16, AUTOMATIC) u16PcrPin;
#     VAR(Port_InternalPinIdType, AUTOMATIC) PinPad;
#     
#     /* Enable register access from user mode, if enabled from configuration file */
# #ifdef PORT_ENABLE_USER_MODE_SUPPORT
# #if (STD_ON == PORT_ENABLE_USER_MODE_SUPPORT)
#     /**
#     * @violates @ref Port_Siul2_C_REF_7 Violates MISRA 2004 Required Rule 12.10
#     */
#     Mcal_Trusted_Call(Port_Siul2_SetUserAccessAllowed,());
# #endif /* (STD_ON == PORT_ENABLE_USER_MODE_SUPPORT) */
# #endif /* PORT_ENABLE_USER_MODE_SUPPORT */
# 
#     /* Initialize All UnUsed Port Pins */
#     for (u16PinIndex = (uint16)0U; u16PinIndex < u16NumUnusedPins; u16PinIndex++)
	.d2line		356
	diab.li		r4,0		# u16PinIndex=r4
.L411:
	rlwinm		r30,r4,0,16,31		# u16PinIndex=r4
	rlwinm		r31,r0,0,16,31		# u16PcrPin=r31 u16NumUnusedPins=r0
.Llo48:
	se_cmp		r30,r31		# u16PcrPin=r31
	bc		0,0,.L413	# ge
#     {
#         /**
#         * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#         */
#         u16PcrPin = pConfigPtr->au16UnusedPads[u16PinIndex];
	.d2line		361
.Llo49:
	lwz		r31,4(r3)		# u16PcrPin=r31 pConfigPtr=r3
.Llo50:
	rlwinm		r30,r4,1,15,30		# u16PinIndex=r4
	lhzx		r31,r31,r30		# u16PcrPin=r31 u16PcrPin=r31
	mr		r31,r31		# u16PcrPin=r31 u16PcrPin=r31
# 
# #ifdef PORT_EXIST_PAD_NO_SUPPORT_GPIO
#         if (u16PcrPin & PORT_EXIST_PAD_NO_SUPPORT_GPIO)
#         {
#             u16PcrPin &= (uint16)(~PORT_EXIST_PAD_NO_SUPPORT_GPIO);
#         }
#         else
#         {        
# #endif /* PORT_EXIST_PAD_NO_SUPPORT_GPIO */
#             /**
#             * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_WRITE8(SIUL2_GPDO_ADDR8(u16PcrPin), u8LocalPDO);
	.d2line		375
	rlwinm		r30,r31,0,16,31		# u16PcrPin=r31
	diab.li		r29,-257280
	se_add		r30,r29
	stbx		r8,r0,r30		# u16NumUnusedPins=r0 u8LocalPDO=r8
# #ifdef PORT_EXIST_PAD_NO_SUPPORT_GPIO
#         }
# #endif /* PORT_EXIST_PAD_NO_SUPPORT_GPIO */
#         /* Write MSCR configuration from Configuration tool */
#         /**
#         * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer
#         * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_WRITE32(SIUL2_MSCR_ADDR32((uint32)u16PcrPin), u32LocalMSCR);
	.d2line		384
	rlwinm		r31,r31,2,14,29		# u16PcrPin=r31 u16PcrPin=r31
	diab.li		r30,-261568
	se_add		r31,r30		# u16PcrPin=r31 u16PcrPin=r31
.Llo51:
	stwx		r7,r0,r31		# u16NumUnusedPins=r0 u32LocalMSCR=r7
#     }
	.d2line		385
	diab.addi		r30,r4,1		# u16PinIndex=r4
	se_addi		r4,1		# u16PinIndex=r4 u16PinIndex=r4
	b		.L411
.L413:
# 
#     /* Initialize All Configured Port Pins */
#     for (u16PinIndex = (uint16)0U; u16PinIndex < u16NumPins; u16PinIndex++)
	.d2line		388
.Llo4:
	diab.li		r4,0		# u16PinIndex=r4
.L414:
.Llo5:
	rlwinm		r0,r4,0,16,31		# u16NumUnusedPins=r0 u16PinIndex=r4
.Llo12:
	rlwinm		r7,r5,0,16,31		# u32LocalMSCR=r7 u16NumPins=r5
.Llo30:
	se_cmp		r0,r7		# u16NumUnusedPins=r0 u32LocalMSCR=r7
	bc		0,0,.L416	# ge
#     {
#         /**
#         * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer
#         * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#         */
#         PinPad = (uint16)(pConfigPtr->pUsedPadConfig[u16PinIndex].u16SIUPin);
	.d2line		394
.Llo13:
	lwz		r7,12(r3)		# u32LocalMSCR=r7 pConfigPtr=r3
.Llo31:
	rlwinm		r0,r4,0,16,31		# u16NumUnusedPins=r0 u16PinIndex=r4
.Llo14:
	e_mulli		r0,r0,20		# u16NumUnusedPins=r0 u16NumUnusedPins=r0
	lhzux		r30,r7,r0		# PinPad=r30 u32LocalMSCR=r7
.Llo52:
	mr		r30,r30		# PinPad=r30 PinPad=r30
# 
#         /**
#         * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#         */
#         u8LocalPDO = pConfigPtr->pUsedPadConfig[u16PinIndex].u8PDO;
	.d2line		399
	lwz		r7,12(r3)		# u32LocalMSCR=r7 pConfigPtr=r3
	se_add		r7,r0		# u32LocalMSCR=r7 u32LocalMSCR=r7 u16NumUnusedPins=r0
	lbz		r0,12(r7)		# u16NumUnusedPins=r0 u32LocalMSCR=r7
.Llo15:
	mr		r0,r0		# u8LocalPDO=r0 u8LocalPDO=r0
# 
#         /**
#         * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#         */
#         if (pConfigPtr->pUsedPadConfig[u16PinIndex].bGPIO)
	.d2line		404
	lbz		r7,14(r7)		# u32LocalMSCR=r7 u32LocalMSCR=r7
	se_cmpi		r7,0		# u32LocalMSCR=r7
	bc		1,2,.L422	# eq
#         {
#             /* Set pin to High value */
#             if (PORT_PIN_LEVEL_HIGH_U8 == u8LocalPDO)
	.d2line		407
.Llo32:
	rlwinm		r7,r0,0,24,31		# u32LocalMSCR=r7 u8LocalPDO=r0
.Llo33:
	se_cmpi		r7,1		# u32LocalMSCR=r7
	bc		0,2,.L418	# ne
#             {
#                 /**
#                 * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer
#                 * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_WRITE8( SIUL2_GPDO_ADDR8(PinPad), (uint8)STD_HIGH );
	.d2line		413
.Llo34:
	diab.li		r0,1		# u8LocalPDO=r0
.Llo42:
	rlwinm		r31,r30,0,16,31		# u16PcrPin=r31 PinPad=r30
	diab.li		r7,-257280		# u32LocalMSCR=r7
.Llo35:
	stbux		r0,r7,r31		# u32LocalMSCR=r7 u8LocalPDO=r0
	b		.L422
.L418:
#             }
#             /* Set pin to Low value */
#             else if (PORT_PIN_LEVEL_LOW_U8 == u8LocalPDO)
	.d2line		416
.Llo36:
	rlwinm		r0,r0,0,24,31		# u8LocalPDO=r0 u8LocalPDO=r0
	se_cmpi		r0,0		# u8LocalPDO=r0
	bc		0,2,.L422	# ne
#             {
#                 /**
#                 * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer
#                 * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_WRITE8( SIUL2_GPDO_ADDR8(PinPad), (uint8)STD_LOW );
	.d2line		422
.Llo43:
	diab.li		r0,0		# u8LocalPDO=r0
.Llo44:
	rlwinm		r31,r30,0,16,31		# u16PcrPin=r31 PinPad=r30
	diab.li		r7,-257280		# u32LocalMSCR=r7
.Llo37:
	stbux		r0,r7,r31		# u32LocalMSCR=r7 u8LocalPDO=r0
.L422:
#             }
#             else
#             {
#                 /* No action to be done */
#             }
#         }
#         else
#         {
#             /* No action to be done */
#         }
#        /**
#        * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer
#        * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4 
#        * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#        */
#         REG_WRITE32(SIUL2_MSCR_ADDR32((uint32)PinPad), (uint32)(pConfigPtr->pUsedPadConfig[u16PinIndex].u32MSCR));
	.d2line		438
.Llo45:
	lwz		r0,12(r3)		# u16NumUnusedPins=r0 pConfigPtr=r3
.Llo16:
	rlwinm		r7,r4,0,16,31		# u32LocalMSCR=r7 u16PinIndex=r4
	e_mulli		r7,r7,20		# u32LocalMSCR=r7 u32LocalMSCR=r7
	se_add		r7,r0		# u32LocalMSCR=r7 u32LocalMSCR=r7 u16NumUnusedPins=r0
	lwz		r0,4(r7)		# u16NumUnusedPins=r0 u32LocalMSCR=r7
.Llo53:
	rlwinm		r30,r30,2,14,29		# PinPad=r30 PinPad=r30
.Llo54:
	diab.li		r7,-261568		# u32LocalMSCR=r7
	stwx		r0,r7,r30		# u32LocalMSCR=r7 u16NumUnusedPins=r0
#     }
	.d2line		439
	diab.addi		r0,r4,1		# u16NumUnusedPins=r0 u16PinIndex=r4
.Llo17:
	se_addi		r4,1		# u16PinIndex=r4 u16PinIndex=r4
	b		.L414
.L416:
# 
#     /* Write Multiplexed Pad configuration registers from Configuration tool */
#     for (u16MuxIndex= (uint16)0U; u16MuxIndex < u16NumMuxRegs; u16MuxIndex++)
	.d2line		442
.Llo6:
	diab.li		r4,0		# u16MuxIndex=r4
.L423:
.Llo9:
	rlwinm		r7,r4,0,16,31		# u32LocalMSCR=r7 u16MuxIndex=r4
.Llo38:
	rlwinm		r0,r6,0,16,31		# u16NumUnusedPins=r0 u16NumMuxRegs=r6
.Llo18:
	se_cmp		r7,r0		# u32LocalMSCR=r7 u16NumUnusedPins=r0
	bc		0,0,.L425	# ge
#     {
#         /* Write MSCR configuration from Configuration tool */
# 
#         /**
#         * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer
#         * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#         */
#         u32LocalVar = ((uint32)(pConfigPtr->pPadSelConfig[u16MuxIndex]));
	.d2line		450
.Llo19:
	lwz		r5,16(r3)		# u16NumPins=r5 pConfigPtr=r3
.Llo23:
	rlwinm		r7,r4,2,14,29		# u32LocalMSCR=r7 u16MuxIndex=r4
	lwzx		r0,r5,r7		# u16NumUnusedPins=r0 u16NumPins=r5
.Llo46:
	mr		r0,r0		# u32LocalVar=r0 u32LocalVar=r0
# 
#         if (SIUL2_INMUX_UNUSED_PATTERN_U32 != u32LocalVar)
	.d2line		452
	cmpi		0,0,r0,-1		# u32LocalVar=r0
	bc		1,2,.L426	# eq
#         {
#             /**
#             * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer
#             * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#             */
#             u32LocalVar = ((uint32)(pConfigPtr->pPadSelConfig[u16MuxIndex])<<SIUL2_IMCR_SSS_OFFSET_U32);
	.d2line		458
.Llo24:
	lwz		r5,16(r3)		# u16NumPins=r5 pConfigPtr=r3
.Llo25:
	rlwinm		r7,r4,2,14,29		# u32LocalMSCR=r7 u16MuxIndex=r4
.Llo39:
	lwzux		r0,r5,r7		# u32LocalVar=r0 u16NumPins=r5
.Llo47:
	mr		r5,r0		# u32LocalVar=r5 u32LocalVar=r0
#             /* Set all reserved bits of the IMCR register to their reset value */
#             u32LocalVar|= SIUL2_IMCR_RESET_MASK_U32;
#             /** 
#             * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_WRITE32( SIUL2_IMCR_ADDR32((uint32)u16MuxIndex),u32LocalVar ); 
	.d2line		465
.Llo26:
	diab.li		r0,-259520		# u32LocalVar=r0
	se_add		r0,r7		# u32LocalVar=r0 u32LocalVar=r0 u32LocalMSCR=r7
	stwx		r5,r0,r0		# u32LocalVar=r0 u32LocalVar=r5
.L426:
#         }
#     }
	.d2line		467
.Llo40:
	diab.addi		r7,r4,1		# u32LocalMSCR=r7 u16MuxIndex=r4
	se_addi		r4,1		# u16MuxIndex=r4 u16MuxIndex=r4
	b		.L423
.L425:
# 
# #if (STD_ON == PORT_SET_PIN_DIRECTION_API) || (STD_ON == PORT_SET_PIN_MODE_API)
#     /* Port_Siul2_aGPIODirChangeability is only used by PORT_Siul_SetPinDirection and PORT_Siul_SetPinMode functions */
#     /* Initialize the Array with Change Direction Flags for GPIO */
#     for (u16PinIndex=(uint16)0U; u16PinIndex < PAD_16BLOCK_NO_U8; u16PinIndex++)
	.d2line		472
.Llo2:
	diab.li		r3,0		# u16PinIndex=r3
.L427:
.Llo7:
	rlwinm		r0,r3,0,16,31		# u16NumUnusedPins=r0 u16PinIndex=r3
.Llo20:
	se_cmpi		r0,16		# u16NumUnusedPins=r0
	bc		0,0,.L410	# ge
#     {
#         Port_Siul2_aGPIODirChangeability[u16PinIndex] = (uint16)0UL;
	.d2line		474
.Llo21:
	diab.li		r5,0		# u16NumPins=r5
.Llo27:
	lis		r4,Port_Siul2_aGPIODirChangeability@ha		# u16MuxIndex=r4
.Llo10:
	e_add16i		r4,r4,Port_Siul2_aGPIODirChangeability@l		# u16MuxIndex=r4 u16MuxIndex=r4
	rlwinm		r0,r3,1,15,30		# u16NumUnusedPins=r0 u16PinIndex=r3
	sthx		r5,r4,r0		# u16MuxIndex=r4 u16NumPins=r5
#     }
	.d2line		475
	diab.addi		r0,r3,1		# u16NumUnusedPins=r0 u16PinIndex=r3
	se_addi		r3,1		# u16PinIndex=r3 u16PinIndex=r3
	b		.L427
.L410:
# #endif
# }
	.d2line		477
	.d2epilogue_begin
.Llo8:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u16NumUnusedPins=r0
	mtspr		lr,r0		# u16NumUnusedPins=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L507:
	.type		Port_Siul2_Init,@function
	.size		Port_Siul2_Init,.-Port_Siul2_Init
# Number of nodes = 232

# Allocations for Port_Siul2_Init
#	?a4		pConfigPtr
#	?a5		u16PinIndex
#	?a6		u16MuxIndex
#	?a7		u16NumUnusedPins
#	?a8		u16NumPins
#	?a9		u16NumMuxRegs
#	?a10		u32LocalMSCR
#	?a11		u8LocalPDO
#	?a12		u32LocalVar
#	?a13		u16PcrPin
#	?a14		PinPad
# FUNC (Std_ReturnType, PORT_CODE) Port_Siul2_SetPinDirection
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         499,34
#$$ld
.L544:

#$$bf	Port_Siul2_SetPinDirection,interprocedural,rasave,nostackparams
	.globl		Port_Siul2_SetPinDirection
	.d2_cfa_start __cie
Port_Siul2_SetPinDirection:
.Llo55:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# PinIndex=r31 PinIndex=r3
.Llo56:
	mr		r30,r4		# eDirection=r30 eDirection=r4
.Llo57:
	mr		r29,r5		# pConfigPtr=r29 pConfigPtr=r5
	.d2prologue_end
# (
#     VAR    (Port_PinType,          AUTOMATIC                 ) PinIndex,
#     VAR    (Port_PinDirectionType, AUTOMATIC                 ) eDirection,
#     P2CONST(Port_ConfigType,       AUTOMATIC, PORT_APPL_CONST) pConfigPtr
# )
# {
#     /* Point to the Port Pin MSCR register address */
#     /**
#     * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#     */
#     VAR(uint16, AUTOMATIC) u16PinPad = (uint16)pConfigPtr->pUsedPadConfig[PinIndex].u16SIUPin;
# 
#     /* Return value */
#     VAR(Std_ReturnType, AUTOMATIC) PinDirError = (Std_ReturnType)E_OK;
	.d2line		513
.Llo68:
	diab.li		r27,0		# PinDirError=r27
	.d2line		510
.Llo69:
	lwz		r3,12(r29)		# pConfigPtr=r29
	e_mulli		r5,r31,20		# PinIndex=r31
	lhzux		r28,r3,r5		# u16PinPad=r28
.Llo70:
	mr		r28,r28		# u16PinPad=r28 u16PinPad=r28
# 
#     /* Bit Offset and Table value for change direction flag word*/
#     VAR(uint8,  AUTOMATIC) u8PinDescBitOffset = (uint8)((uint8)u16PinPad & SIUL2_BIT_OFFSET_MASK_U8);
	.d2line		516
	rlwinm		r0,r28,0,28,31		# u16PinPad=r28
.Llo72:
	mr		r0,r0		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0
#     VAR(uint16, AUTOMATIC) u16PinChangeDirFlagWord = Port_Siul2_aGPIODirChangeability[(uint8)(u16PinPad>>4)];
	.d2line		517
	lis		r3,Port_Siul2_aGPIODirChangeability@ha
	e_add16i		r3,r3,Port_Siul2_aGPIODirChangeability@l
	rlwinm		r4,r28,29,23,30		# u16PinPad=r28
.Llo65:
	lhzx		r4,r3,r4
.Llo78:
	mr		r4,r4		# u16PinChangeDirFlagWord=r4 u16PinChangeDirFlagWord=r4
# 
#     /* Check the Direction changeability option */
#     /**
#     * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#     */
#     if (((boolean)TRUE == pConfigPtr->pUsedPadConfig[PinIndex].bDC) || \
	.d2line		523
	lwz		r3,12(r29)		# pConfigPtr=r29
	se_add		r3,r5
	lbz		r3,15(r3)
	se_cmpi		r3,1
	bc		1,2,.L448	# eq
.Llo66:
	rlwinm		r4,r4,0,16,31		# u16PinChangeDirFlagWord=r4 u16PinChangeDirFlagWord=r4
	diab.li		r3,1
	slw		r3,r3,r0		# u8PinDescBitOffset=r0
	rlwinm		r3,r3,0,16,31
	and.		r3,r3,r4		# u16PinChangeDirFlagWord=r4
	bc		1,2,.L442	# eq
.L448:
#         ((uint16)0 != (u16PinChangeDirFlagWord & (uint16)(1UL<<u8PinDescBitOffset))))
#     {
#         /* Enter critical region */
#         SchM_Enter_Port_PORT_EXCLUSIVE_AREA_03();
	.d2line		527
.Llo73:
	bl		SchM_Enter_Port_PORT_EXCLUSIVE_AREA_03
#         /* Configures Port Pin as Output */
#         if (PORT_PIN_OUT == eDirection)
	.d2line		529
	se_cmpi		r30,1		# eDirection=r30
	bc		0,2,.L443	# ne
#         {
#             /** 
#             * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_CLEAR32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_IBE_ON_U32);
	.d2line		535
.Llo58:
	rlwinm		r4,r28,2,14,29		# u16PinChangeDirFlagWord=r4 u16PinPad=r28
.Llo79:
	diab.li		r3,-261568
	add		r28,r3,r4		# u16PinPad=r28 u16PinChangeDirFlagWord=r4
	lwz		r0,0(r28)		# u8PinDescBitOffset=r0 u16PinPad=r28
.Llo74:
	.diab.bclri		r0,12		# u8PinDescBitOffset=r0
	stw		r0,0(r28)		# u16PinPad=r28 u8PinDescBitOffset=r0
#             
# #if defined(IPV_SIUL2_ODC_SUPPORT_U8)
#             /* Set MSCR.ODC bitfield to the value taken from configuration */
#             /**
#             * @violates @ref Port_Siul2_C_REF_4 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#             */
#             REG_RMW32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_ODC_U32, pConfigPtr->pUsedPadConfig[PinIndex].u32ODC & SIUL2_MSCR_ODC_U32);
	.d2line		544
	lwzx		r0,r0,r28		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0
	rlwinm		r0,r0,0,8,5		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0
	lwz		r5,12(r29)		# pConfigPtr=r29
.Llo59:
	e_mulli		r31,r31,20		# PinIndex=r31 PinIndex=r31
	se_add		r31,r5		# PinIndex=r31 PinIndex=r31
	lwz		r5,8(r31)		# PinIndex=r31
	rlwinm		r5,r5,0,6,7
	or		r0,r0,r5		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0
	stwx		r0,r3,r4		# u8PinDescBitOffset=r0
	b		.L444
.L443:
# #else
#             /** 
#             * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_SET32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_OBE_ON_U32 );
# #endif
#         }
#         /* Configures Port Pin as Input */
#         else if (PORT_PIN_IN == eDirection)
	.d2line		554
.Llo75:
	se_cmpi		r30,0		# eDirection=r30
	bc		0,2,.L445	# ne
#         {
# #if defined(IPV_SIUL2_ODC_SUPPORT_U8)       
#             /**
#             * @violates @ref Port_Siul2_C_REF_4 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer.
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_CLEAR32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_ODC_U32);
	.d2line		561
.Llo67:
	rlwinm		r28,r28,2,14,29		# u16PinPad=r28 u16PinPad=r28
	diab.li		r0,-261568		# u8PinDescBitOffset=r0
.Llo76:
	se_add		r28,r0		# u16PinPad=r28 u16PinPad=r28 u8PinDescBitOffset=r0
	lwz		r0,0(r28)		# u8PinDescBitOffset=r0 u16PinPad=r28
	rlwinm		r0,r0,0,8,5		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0
	stw		r0,0(r28)		# u16PinPad=r28 u8PinDescBitOffset=r0
# #else
#             /** 
#             * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_CLEAR32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_OBE_ON_U32);
# #endif
#             
#             /** 
#             * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_SET32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_IBE_ON_U32);
	.d2line		574
	lwz		r0,0(r28)		# u8PinDescBitOffset=r0 u16PinPad=r28
	.diab.bseti		r0,12		# u8PinDescBitOffset=r0
	stw		r0,0(r28)		# u16PinPad=r28 u8PinDescBitOffset=r0
	b		.L444
.L445:
#         }
#         else
#         {
#             /** 
#             * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_SET32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_IBE_ON_U32);
	.d2line		582
.Llo60:
	rlwinm		r4,r28,2,14,29		# u16PinChangeDirFlagWord=r4 u16PinPad=r28
.Llo80:
	diab.li		r3,-261568
	add		r28,r3,r4		# u16PinPad=r28 u16PinChangeDirFlagWord=r4
	lwz		r0,0(r28)		# u8PinDescBitOffset=r0 u16PinPad=r28
.Llo77:
	.diab.bseti		r0,12		# u8PinDescBitOffset=r0
	stw		r0,0(r28)		# u16PinPad=r28 u8PinDescBitOffset=r0
# 
# #if defined(IPV_SIUL2_ODC_SUPPORT_U8)
#             /* Set MSCR.ODC bitfield to the value taken from configuration */
#             /**
#             * @violates @ref Port_Siul2_C_REF_4 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#             */
#             REG_RMW32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_ODC_U32, pConfigPtr->pUsedPadConfig[PinIndex].u32ODC & SIUL2_MSCR_ODC_U32);
	.d2line		591
	lwzx		r0,r0,r28		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0
	rlwinm		r0,r0,0,8,5		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0
	lwz		r5,12(r29)		# pConfigPtr=r29
.Llo61:
	e_mulli		r31,r31,20		# PinIndex=r31 PinIndex=r31
	se_add		r31,r5		# PinIndex=r31 PinIndex=r31
	lwz		r5,8(r31)		# PinIndex=r31
	rlwinm		r5,r5,0,6,7
	or		r0,r0,r5		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0
	stwx		r0,r3,r4		# u8PinDescBitOffset=r0
.L444:
# #else
#             /** 
#             * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#             * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_SET32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_OBE_ON_U32);
# #endif
#         }
#         /* Exit critical region */
#         SchM_Exit_Port_PORT_EXCLUSIVE_AREA_03();
	.d2line		601
.Llo62:
	bl		SchM_Exit_Port_PORT_EXCLUSIVE_AREA_03
	b		.L447
.L442:
#     }
#     /* Direction changeability is NOT supported */
#     else
#     {
#         PinDirError = (Std_ReturnType)E_NOT_OK;
	.d2line		606
.Llo63:
	diab.li		r27,1		# PinDirError=r27
.L447:
#     }
# 
#     return PinDirError;
	.d2line		609
.Llo64:
	rlwinm		r3,r27,0,24,31		# PinDirError=r27
# }
	.d2line		610
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo71:
	lwz		r0,52(r1)		# u8PinDescBitOffset=r0
	mtspr		lr,r0		# u8PinDescBitOffset=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L545:
	.type		Port_Siul2_SetPinDirection,@function
	.size		Port_Siul2_SetPinDirection,.-Port_Siul2_SetPinDirection
# Number of nodes = 174

# Allocations for Port_Siul2_SetPinDirection
#	?a4		PinIndex
#	?a5		eDirection
#	?a6		pConfigPtr
#	?a7		$$92
#	?a8		$$91
#	?a9		$$90
#	?a10		$$89
#	?a11		u16PinPad
#	?a12		PinDirError
#	?a13		u8PinDescBitOffset
#	?a14		u16PinChangeDirFlagWord
# FUNC (void, PORT_CODE) Port_Siul2_SetPinMode
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         634,24
#$$ld
.L564:

#$$bf	Port_Siul2_SetPinMode,interprocedural,rasave,nostackparams
	.globl		Port_Siul2_SetPinMode
	.d2_cfa_start __cie
Port_Siul2_SetPinMode:
.Llo81:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo99:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# u32LocalVar=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# PinCfgRegIndex=r31 PinCfgRegIndex=r3
.Llo82:
	mr		r30,r4		# PinCfgRegValue=r30 PinCfgRegValue=r4
.Llo83:
	mr		r29,r5		# u16InMuxRegIndex=r29 u16InMuxRegIndex=r5
.Llo87:
	mr		r28,r6		# InMuxRegValue=r28 InMuxRegValue=r6
	.d2prologue_end
# (
#     VAR(Port_InternalPinIdType, AUTOMATIC) PinCfgRegIndex,
#     VAR(Port_RegValueType,  AUTOMATIC) PinCfgRegValue,
#     VAR(uint16,             AUTOMATIC) u16InMuxRegIndex,
#     VAR(Port_RegValueType,  AUTOMATIC) InMuxRegValue
# )
# {
#     /* Variable used to clear and updated MSCR register*/
#     VAR(uint32, AUTOMATIC) u32LocalVar = (uint32)0U;
	.d2line		643
	diab.li		r0,0		# u32LocalVar=r0
#     
#     /* Enter critical region */
#     SchM_Enter_Port_PORT_EXCLUSIVE_AREA_00();
	.d2line		646
.Llo100:
	bl		SchM_Enter_Port_PORT_EXCLUSIVE_AREA_00
#     
#     /* Read the entire value of the MSCR register */
#     /** 
#     * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#     * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#     */
#     u32LocalVar = REG_READ32(SIUL2_MSCR_ADDR32((uint32)PinCfgRegIndex));
	.d2line		653
.Llo95:
	rlwinm		r3,r31,2,14,29		# PinCfgRegIndex=r31
	diab.li		r0,-261568		# u32LocalVar=r0
.Llo101:
	se_add		r0,r3		# u32LocalVar=r0 u32LocalVar=r0
	lwzx		r0,r0,r0		# u32LocalVar=r0 u32LocalVar=r0
	mr		r0,r0		# u32LocalVar=r0 u32LocalVar=r0
# 
#     if (SIUL2_INPUT_ACTIVE_U32 == PinCfgRegValue)
	.d2line		655
	cmpi		0,0,r30,-1		# PinCfgRegValue=r30
	bc		0,2,.L456	# ne
#     {
#         /* Clear MSCR.SSS bit field */
#         u32LocalVar &= ~SIUL2_MSCR_SSS_U32;
	.d2line		658
.Llo88:
	rlwinm		r0,r0,0,0,27		# u32LocalVar=r0 u32LocalVar=r0
	mr		r30,r0		# u32LocalVar=r30 u32LocalVar=r0
#         /* Clear MSCR.OBE or MSCR.ODC bit field */
# #if defined(IPV_SIUL2_ODC_SUPPORT_U8)
#         u32LocalVar &= ~SIUL2_MSCR_ODC_U32;
	.d2line		661
	rlwinm		r30,r30,0,8,5		# u32LocalVar=r30 u32LocalVar=r30
	mr		r30,r30		# u32LocalVar=r30 u32LocalVar=r30
# #else
#         u32LocalVar &= ~SIUL2_MSCR_OBE_U32;
# #endif  
#         /* Clear MSCR.APC bit field */
# #ifndef PORT_NO_ANALOG_MODE    
#         u32LocalVar &= ~SIUL2_MSCR_APC_U32;
	.d2line		667
	rlwinm		r30,r30,0,10,8		# u32LocalVar=r30 u32LocalVar=r30
	mr		r30,r30		# u32LocalVar=r30 u32LocalVar=r30
# #endif /* PORT_NO_ANALOG_MODE */  
#         /* Set the INPUT mode in MSCR */
#         u32LocalVar |=  SIUL2_MSCR_IBE_U32;
	.d2line		670
	.diab.bseti		r30,12		# u32LocalVar=r30
	mr		r0,r30		# u32LocalVar=r0 u32LocalVar=r30
.Llo102:
	b		.L457
.L456:
#     }
#     else if (SIUL2_OUTPUT_ACTIVE_U32 == PinCfgRegValue)
	.d2line		672
.Llo89:
	cmpi		0,0,r30,-2		# PinCfgRegValue=r30
	bc		0,2,.L458	# ne
#     {
#         /* Clear MSCR.IBE and MSCR.SSS bit fields */
#         u32LocalVar &= ~(SIUL2_MSCR_IBE_U32 | SIUL2_MSCR_SSS_U32);
	.d2line		675
.Llo90:
	e_lis		r3,65527		# u32LocalVar=r3
.Llo103:
	e_or2i		r3,65520		# u32LocalVar=r3
.Llo104:
	and		r0,r0,r3		# u32LocalVar=r0 u32LocalVar=r0 u32LocalVar=r3
.Llo105:
	mr		r30,r0		# u32LocalVar=r30 u32LocalVar=r0
# #ifndef PORT_NO_ANALOG_MODE    
#         /* Clear MSCR.APC bit field, if platform supports it */
#         u32LocalVar &= ~SIUL2_MSCR_APC_U32;
	.d2line		678
	rlwinm		r30,r30,0,10,8		# u32LocalVar=r30 u32LocalVar=r30
	mr		r30,r30		# u32LocalVar=r30 u32LocalVar=r30
# #endif /* PORT_NO_ANALOG_MODE */  
#         /* Set the OUTPUT mode in MSCR */
# #if defined(IPV_SIUL2_ODC_SUPPORT_U8)
#         /* For platforms having ODC SIUL2 support, the Port_Ipw_SetPinMode() function will send through 
#         InMuxRegValue parameter the value of the MSCR.ODC in configuration structure. */
#         u32LocalVar |= ((uint32)InMuxRegValue);
	.d2line		684
	or		r30,r30,r28		# u32LocalVar=r30 u32LocalVar=r30 InMuxRegValue=r28
	mr		r0,r30		# u32LocalVar=r0 u32LocalVar=r30
.Llo106:
	b		.L457
.L458:
# #else
#         u32LocalVar |= SIUL2_MSCR_OBE_U32;
# #endif  
#     }
#     else
#     {
# #ifndef PORT_NO_ANALOG_MODE    
#         if (PORT_ANALOG_INPUT_MODE == PinCfgRegValue)
	.d2line		692
.Llo91:
	se_cmpi		r30,16		# PinCfgRegValue=r30
	bc		0,2,.L460	# ne
#         {
#             /* Set the Analog Pad Control (APC) bit in MSCR */
#             u32LocalVar = SIUL2_MSCR_APC_U32;
	.d2line		695
.Llo92:
	diab.li		r30,4194304		# u32LocalVar=r30
.Llo107:
	b		.L457
.L460:
#         }
#         else
# #endif /* PORT_NO_ANALOG_MODE) */  
#         {
#             /* Clear the previous mode (MSCR.SSS) */
#             u32LocalVar &= ~SIUL2_MSCR_SSS_U32;
	.d2line		701
	rlwinm		r0,r0,0,0,27		# u32LocalVar=r0 u32LocalVar=r0
	mr		r0,r0		# u32LocalVar=r0 u32LocalVar=r0
# #ifndef PORT_NO_ANALOG_MODE    
#             /* Clear MSCR.APC bit, if platform supports it */
#             u32LocalVar &= ~SIUL2_MSCR_APC_U32;
	.d2line		704
	rlwinm		r0,r0,0,10,8		# u32LocalVar=r0 u32LocalVar=r0
	mr		r0,r0		# u32LocalVar=r0 u32LocalVar=r0
# #endif /* PORT_NO_ANALOG_MODE */  
# 
# #if defined(IPV_SIUL2_ODC_SUPPORT_U8)
#             /* For platforms having ODC support, for modes PORT_ALTx and PORT_INOUTx the MSCR.ODC bits should also be set.
#                InMuxRegValue is a logic OR between MSCR.ODC and IMCR.SSS so apply a mask in order to get only the information 
#                related to MSCR.ODC*/
#             u32LocalVar |= (((uint32)InMuxRegValue) & SIUL2_MSCR_ODC_U32);
	.d2line		711
	rlwinm		r6,r28,0,6,7		# u32LocalVar=r6 InMuxRegValue=r28
	or		r0,r0,r6		# u32LocalVar=r0 u32LocalVar=r0 u32LocalVar=r6
	mr		r0,r0		# u32LocalVar=r0 u32LocalVar=r0
# #endif              
#             /* Set the proper mode in MSCR.SSS */
#             u32LocalVar |= ((uint32)PinCfgRegValue<<SIUL2_MSCR_SSS_OFFSET_U32);
	.d2line		714
.Llo93:
	or		r30,r30,r0		# u32LocalVar=r30 u32LocalVar=r30 PinCfgRegValue=r0
.Llo108:
	mr		r0,r30		# u32LocalVar=r0 u32LocalVar=r30
.L457:
#         }
#     }
#     /** 
#     * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#     * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#     */
#     REG_WRITE32(SIUL2_MSCR_ADDR32((uint32)PinCfgRegIndex), u32LocalVar);
	.d2line		721
.Llo94:
	rlwinm		r3,r31,2,14,29		# u32LocalVar=r3 PinCfgRegIndex=r31
	diab.li		r0,-261568		# u32LocalVar=r0
	se_add		r0,r3		# u32LocalVar=r0 u32LocalVar=r0 u32LocalVar=r3
	stwx		r30,r0,r0		# u32LocalVar=r0 u32LocalVar=r30
# 
#     if (NO_INPUTMUX_U16 != u16InMuxRegIndex)
	.d2line		723
	rlwinm		r5,r29,0,16,31		# u16InMuxRegIndex=r29
	cmpli		0,0,r5,65535
	bc		1,2,.L462	# eq
#     {
#         /* Set the proper values in IMCR. For platforms having ODC support, InMuxRegValue is a logic OR between MSCR.ODC and IMCR.SSS
#            so apply a mask in order to get only the information related to IMCR.SSS */
#         /** 
#         * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#         * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_WRITE32(SIUL2_IMCR_ADDR32((uint32)u16InMuxRegIndex), ((InMuxRegValue & SIUL2_IMCR_SSS_U32) | SIUL2_IMCR_RESET_MASK_U32));
	.d2line		731
.Llo84:
	rlwinm		r28,r28,0,24,31		# InMuxRegValue=r28 InMuxRegValue=r28
.Llo96:
	rlwinm		r29,r29,2,14,29		# u16InMuxRegIndex=r29 u16InMuxRegIndex=r29
.Llo97:
	diab.li		r3,-259520		# u32LocalVar=r3
.Llo109:
	stwx		r28,r3,r29		# u32LocalVar=r3 InMuxRegValue=r28
# 
#         /* Set the MSCR/IBE bit */
#         /** 
#         * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#         * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#         */
#         u32LocalVar = REG_READ32(SIUL2_MSCR_ADDR32((uint32)PinCfgRegIndex));
	.d2line		738
.Llo85:
	rlwinm		r31,r31,2,14,29		# PinCfgRegIndex=r31 PinCfgRegIndex=r31
	diab.li		r0,-261568		# u32LocalVar=r0
	se_add		r31,r0		# PinCfgRegIndex=r31 PinCfgRegIndex=r31 u32LocalVar=r0
.Llo86:
	lwzx		r0,r0,r31		# u32LocalVar=r0 u32LocalVar=r0
	mr		r0,r0		# u32LocalVar=r0 u32LocalVar=r0
#         u32LocalVar |= ((uint32)SIUL2_MSCR_IBE_U32);
	.d2line		739
	.diab.bseti		r0,12		# u32LocalVar=r0
	mr		r3,r0		# u32LocalVar=r3 u32LocalVar=r0
#         /** 
#         * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#         * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_WRITE32(SIUL2_MSCR_ADDR32((uint32)PinCfgRegIndex), u32LocalVar);
	.d2line		744
.Llo110:
	stwx		r0,r0,r31		# u32LocalVar=r0 u32LocalVar=r0
.L462:
#     }
#     /* Exit critical region */
#     SchM_Exit_Port_PORT_EXCLUSIVE_AREA_00();
	.d2line		747
.Llo98:
	bl		SchM_Exit_Port_PORT_EXCLUSIVE_AREA_00
# }
	.d2line		748
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u32LocalVar=r0
	mtspr		lr,r0		# u32LocalVar=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L565:
	.type		Port_Siul2_SetPinMode,@function
	.size		Port_Siul2_SetPinMode,.-Port_Siul2_SetPinMode
# Number of nodes = 111

# Allocations for Port_Siul2_SetPinMode
#	?a4		PinCfgRegIndex
#	?a5		PinCfgRegValue
#	?a6		u16InMuxRegIndex
#	?a7		InMuxRegValue
#	?a8		u32LocalVar
# FUNC (void, PORT_CODE) Port_Siul2_SetGpioDirChangeability
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         767,24
#$$ld
.L576:

#$$bf	Port_Siul2_SetGpioDirChangeability,interprocedural,rasave,nostackparams
	.globl		Port_Siul2_SetGpioDirChangeability
	.d2_cfa_start __cie
Port_Siul2_SetGpioDirChangeability:
.Llo111:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# PadID=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# PadID=r31 PadID=r3
.Llo112:
	mr		r30,r4		# bStatus=r30 bStatus=r4
	.d2prologue_end
# (
#     VAR(Port_InternalPinIdType, AUTOMATIC) PadID,
#     VAR(boolean,            AUTOMATIC) bStatus
# )
# {
#     /* Pin description variables */
#     VAR(uint16, AUTOMATIC) u16PinDirFlagWord;
#     VAR(uint8, AUTOMATIC) u8PinBitOffset;
# 
#     /* Enter critical region */
#     SchM_Enter_Port_PORT_EXCLUSIVE_AREA_02();
	.d2line		778
.Llo113:
	bl		SchM_Enter_Port_PORT_EXCLUSIVE_AREA_02
#     /* Bit offset of Pin index inside the pin description matrix */
#     u8PinBitOffset    = (uint8)((uint8)PadID & SIUL2_BIT_OFFSET_MASK_U8);
	.d2line		780
.Llo117:
	rlwinm		r4,r31,0,28,31		# PadID=r31
.Llo129:
	mr		r4,r4		# u8PinBitOffset=r4 u8PinBitOffset=r4
#     u16PinDirFlagWord = Port_Siul2_aGPIODirChangeability[(uint8)((uint8)PadID>>4)];
	.d2line		781
	lis		r3,Port_Siul2_aGPIODirChangeability@ha
	e_add16i		r3,r3,Port_Siul2_aGPIODirChangeability@l
	mr		r0,r31		# PadID=r0 PadID=r31
	rlwinm		r0,r0,29,27,30		# PadID=r0 PadID=r0
	lhzx		r0,r3,r0		# PadID=r0
.Llo120:
	mr		r0,r0		# u16PinDirFlagWord=r0 u16PinDirFlagWord=r0
# 
#     if ((boolean)TRUE == bStatus)
	.d2line		783
.Llo118:
	rlwinm		r30,r30,0,24,31		# bStatus=r30 bStatus=r30
	se_cmpi		r30,1		# bStatus=r30
	bc		0,2,.L469	# ne
#     {
#         /* Set the change direction flag */
#         u16PinDirFlagWord |= (uint16)(1UL<<u8PinBitOffset);
	.d2line		786
.Llo119:
	diab.li		r3,1		# u16PinDirFlagWord=r3
.Llo121:
	slw		r3,r3,r4		# u16PinDirFlagWord=r3 u16PinDirFlagWord=r3 u8PinBitOffset=r4
.Llo122:
	or		r0,r0,r3		# PadID=r0 PadID=r0 u16PinDirFlagWord=r3
.Llo123:
	mr		r0,r0		# u16PinDirFlagWord=r0 u16PinDirFlagWord=r0
	b		.L470
.L469:
#     }
#     else
#     {   /* Reset the change direction flag */
#         u16PinDirFlagWord &= (uint16)(~((uint16)(1UL<<u8PinBitOffset)));
	.d2line		790
.Llo124:
	diab.li		r3,1		# u16PinDirFlagWord=r3
.Llo125:
	slw		r3,r3,r4		# u16PinDirFlagWord=r3 u16PinDirFlagWord=r3 u8PinBitOffset=r4
.Llo126:
	andc		r0,r0,r3		# u16PinDirFlagWord=r0 u16PinDirFlagWord=r0 u16PinDirFlagWord=r3
.Llo127:
	mr		r3,r0		# u16PinDirFlagWord=r3 u16PinDirFlagWord=r0
.L470:
#     }
#     Port_Siul2_aGPIODirChangeability[(uint8)((uint8)PadID>>4)] = u16PinDirFlagWord;
	.d2line		792
.Llo114:
	lis		r3,Port_Siul2_aGPIODirChangeability@ha		# u16PinDirFlagWord=r3
	e_add16i		r3,r3,Port_Siul2_aGPIODirChangeability@l		# u16PinDirFlagWord=r3 u16PinDirFlagWord=r3
.Llo115:
	mr		r31,r31		# PadID=r31 PadID=r31
	rlwinm		r31,r31,29,27,30		# PadID=r31 PadID=r31
.Llo116:
	sthx		r0,r3,r31		# u16PinDirFlagWord=r3 u16PinDirFlagWord=r0
#     /* Exit critical region */
#     SchM_Exit_Port_PORT_EXCLUSIVE_AREA_02();
	.d2line		794
	bl		SchM_Exit_Port_PORT_EXCLUSIVE_AREA_02
# }
	.d2line		795
	.d2epilogue_begin
.Llo128:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u16PinDirFlagWord=r0
	mtspr		lr,r0		# u16PinDirFlagWord=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L577:
	.type		Port_Siul2_SetGpioDirChangeability,@function
	.size		Port_Siul2_SetGpioDirChangeability,.-Port_Siul2_SetGpioDirChangeability
# Number of nodes = 54

# Allocations for Port_Siul2_SetGpioDirChangeability
#	?a4		PadID
#	?a5		bStatus
#	?a6		u16PinDirFlagWord
#	?a7		u8PinBitOffset
# FUNC (void, PORT_CODE) Port_Siul2_SetGpioPadOutput
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         813,24
#$$ld
.L588:

#$$bf	Port_Siul2_SetGpioPadOutput,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Port_Siul2_SetGpioPadOutput
	.d2_cfa_start __cie
Port_Siul2_SetGpioPadOutput:
.Llo130:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# PinIndex=r3 PinIndex=r3
	mr		r4,r4		# pConfigPtr=r4 pConfigPtr=r4
	.d2prologue_end
# (
#     VAR    (Port_PinType,    AUTOMATIC                 ) PinIndex,
#     P2CONST(Port_ConfigType, AUTOMATIC, PORT_APPL_CONST) pConfigPtr
# )
# {
#     /**
#     * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#     */
#     VAR(uint16, AUTOMATIC) u16PinPad = (uint16)(pConfigPtr->pUsedPadConfig[PinIndex].u16SIUPin);
	.d2line		822
	lwz		r5,12(r4)		# pConfigPtr=r4
	e_mulli		r3,r3,20		# PinIndex=r3 PinIndex=r3
	lhzux		r0,r5,r3
.Llo137:
	mr		r0,r0		# u16PinPad=r0 u16PinPad=r0
#     /**
#     * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#     */
#     VAR(uint8, AUTOMATIC) u8LocalPDO = pConfigPtr->pUsedPadConfig[PinIndex].u8PDO;
	.d2line		826
	lwz		r4,12(r4)		# pConfigPtr=r4 pConfigPtr=r4
	se_add		r3,r4		# PinIndex=r3 PinIndex=r3 pConfigPtr=r4
	lbz		r3,12(r3)		# PinIndex=r3 PinIndex=r3
.Llo131:
	mr		r3,r3		# u8LocalPDO=r3 u8LocalPDO=r3
# 
#     /* Set pin to High value */
#     if (PORT_PIN_LEVEL_HIGH_U8 == u8LocalPDO)
	.d2line		829
	rlwinm		r4,r3,0,24,31		# pConfigPtr=r4 u8LocalPDO=r3
	se_cmpi		r4,1		# pConfigPtr=r4
	bc		0,2,.L474	# ne
#     {
#         /** 
#         * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#         * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_WRITE8( SIUL2_GPDO_ADDR8(u16PinPad), (uint8)STD_HIGH );
	.d2line		835
.Llo132:
	diab.li		r3,1		# u8LocalPDO=r3
.Llo138:
	rlwinm		r0,r0,0,16,31		# u16PinPad=r0 u16PinPad=r0
.Llo139:
	diab.li		r4,-257280		# pConfigPtr=r4
.Llo133:
	stbux		r3,r4,r0		# pConfigPtr=r4 u8LocalPDO=r3
	b		.L473
.L474:
#     }
#     /* Set pin to Low value */
#     else if (PORT_PIN_LEVEL_LOW_U8 == u8LocalPDO)
	.d2line		838
.Llo134:
	rlwinm		r3,r3,0,24,31		# u8LocalPDO=r3 u8LocalPDO=r3
	se_cmpi		r3,0		# u8LocalPDO=r3
	bc		0,2,.L473	# ne
#     {
#         /** 
#         * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#         * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_WRITE8( SIUL2_GPDO_ADDR8(u16PinPad), (uint8)STD_LOW );
	.d2line		844
.Llo140:
	diab.li		r3,0		# u8LocalPDO=r3
.Llo141:
	rlwinm		r0,r0,0,16,31		# u16PinPad=r0 u16PinPad=r0
.Llo142:
	diab.li		r4,-257280		# pConfigPtr=r4
.Llo135:
	stbux		r3,r4,r0		# pConfigPtr=r4 u8LocalPDO=r3
.L473:
#     }
#     else
#     {
#         /* No action to be done */
#     }
# }
	.d2line		850
	.d2epilogue_begin
.Llo143:
	lwz		r0,20(r1)		# u16PinPad=r0
	mtspr		lr,r0		# u16PinPad=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo136:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L589:
	.type		Port_Siul2_SetGpioPadOutput,@function
	.size		Port_Siul2_SetGpioPadOutput,.-Port_Siul2_SetGpioPadOutput
# Number of nodes = 48

# Allocations for Port_Siul2_SetGpioPadOutput
#	?a4		PinIndex
#	?a5		pConfigPtr
#	?a6		u16PinPad
#	?a7		u8LocalPDO
# FUNC (void, PORT_CODE) Port_Siul2_RefreshPortDirection
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         868,24
#$$ld
.L599:

#$$bf	Port_Siul2_RefreshPortDirection,interprocedural,rasave,nostackparams
	.globl		Port_Siul2_RefreshPortDirection
	.d2_cfa_start __cie
Port_Siul2_RefreshPortDirection:
.Llo144:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pConfigPtr=r31 pConfigPtr=r3
	.d2prologue_end
# (
#     P2CONST(Port_ConfigType, AUTOMATIC,PORT_APPL_CONST) pConfigPtr
# )
# {
#     VAR(uint16, AUTOMATIC) u16NumPins = pConfigPtr->u16NumPins;
	.d2line		873
	lhz		r30,0(r31)		# pConfigPtr=r31
.Llo148:
	mr		r30,r30		# u16NumPins=r30 u16NumPins=r30
#     /* Index of the port table */
#     VAR(uint16, AUTOMATIC) u16PinIndex;
#     VAR(uint16, AUTOMATIC) u16PinPad;
#     
#     /* Initialize All Configured Port Pins that aren't direction changable */
#     for (u16PinIndex = (uint16)0U; u16PinIndex < u16NumPins; u16PinIndex++)
	.d2line		879
	diab.li		r29,0		# u16PinIndex=r29
.L481:
.Llo145:
	rlwinm		r0,r29,0,16,31		# u16PinIndex=r29
.Llo146:
	rlwinm		r3,r30,0,16,31		# u16NumPins=r30
	se_cmp		r0,r3
	bc		0,0,.L480	# ge
#     {
#         /* @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4 */
#         if ((boolean)FALSE == pConfigPtr->pUsedPadConfig[u16PinIndex].bDC)
	.d2line		882
	lwz		r3,12(r31)		# pConfigPtr=r31
	rlwinm		r0,r29,0,16,31		# u16PinIndex=r29
	e_mulli		r0,r0,20
	se_add		r3,r0
	lbz		r0,15(r3)
	se_cmpi		r0,0
	bc		0,2,.L484	# ne
#         {
#             /* Point to the Port Pin MSCR register address*/
#             /* @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4 */
#             u16PinPad = (uint16)pConfigPtr->pUsedPadConfig[u16PinIndex].u16SIUPin;
	.d2line		886
	lwz		r3,12(r31)		# pConfigPtr=r31
	rlwinm		r0,r29,0,16,31		# u16PinIndex=r29
	e_mulli		r0,r0,20
	lhzx		r28,r3,r0		# u16PinPad=r28
.Llo149:
	mr		r28,r28		# u16PinPad=r28 u16PinPad=r28
# 
#             /* Enter critical region */
#             SchM_Enter_Port_PORT_EXCLUSIVE_AREA_01();
	.d2line		889
	bl		SchM_Enter_Port_PORT_EXCLUSIVE_AREA_01
#         
#             /* Configures Port Pin as Output */
# #if defined(IPV_SIUL2_ODC_SUPPORT_U8)
#            /* @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4 */
#            /* @violates @ref Port_Siul2_C_REF_4 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             if (pConfigPtr->pUsedPadConfig[u16PinIndex].u32MSCR & SIUL2_MSCR_ODC_U32)
	.d2line		895
	lwz		r0,12(r31)		# pConfigPtr=r31
	rlwinm		r3,r29,0,16,31		# u16PinIndex=r29
	e_mulli		r3,r3,20
	se_add		r3,r0
	lwz		r0,4(r3)
	e_andi.		r0,r0,50331648
	bc		1,2,.L485	# eq
#             {
#                 /* Set MSCR.ODC bitfield to the value taken from configuration */
#                 /**
#                 * @violates @ref Port_Siul2_C_REF_4 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer
#                 * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#                 * @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4
#                 */
#                 REG_RMW32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_ODC_U32, pConfigPtr->pUsedPadConfig[u16PinIndex].u32ODC & SIUL2_MSCR_ODC_U32);
	.d2line		903
	rlwinm		r0,r28,2,14,29		# u16PinPad=r28
	diab.li		r4,-261568
	add		r3,r4,r0
	lwzx		r5,r0,r3
	rlwinm		r5,r5,0,8,5
	lwz		r6,12(r31)		# pConfigPtr=r31
	rlwinm		r3,r29,0,16,31		# u16PinIndex=r29
	e_mulli		r3,r3,20
	se_add		r3,r6
	lwz		r3,8(r3)
	rlwinm		r3,r3,0,6,7
	or		r5,r5,r3
	stwx		r5,r4,r0
	b		.L486
.L485:
#             }
# #else
#            /* @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4 */
#            /* @violates @ref Port_Siul2_C_REF_4 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             if (pConfigPtr->pUsedPadConfig[u16PinIndex].u32MSCR & SIUL2_MSCR_OBE_U32)
#             {
#                 /** 
#                 * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#                 * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_BIT_SET32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_OBE_ON_U32 );
#             }
# #endif
#             else
#             {
# #if defined(IPV_SIUL2_ODC_SUPPORT_U8)       
#                 /** 
#                 * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#                 * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_BIT_CLEAR32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_ODC_U32);
	.d2line		924
	rlwinm		r3,r28,2,14,29		# u16PinPad=r28
	diab.li		r0,-261568
	se_add		r3,r0
	lwz		r0,0(r3)
	rlwinm		r0,r0,0,8,5
	stw		r0,0(r3)
.L486:
# #else
#                 /** 
#                 * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#                 * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_BIT_CLEAR32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_OBE_ON_U32);
# #endif            
#             }
#             /* Configures Port Pin as Input */
#             /* @violates @ref Port_Siul2_C_REF_6 Violates MISRA 2004 Required Rule 17.4 */
#             /* @violates @ref Port_Siul2_C_REF_4 Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#             if (pConfigPtr->pUsedPadConfig[u16PinIndex].u32MSCR & SIUL2_MSCR_IBE_U32)
	.d2line		936
	lwz		r0,12(r31)		# pConfigPtr=r31
	rlwinm		r3,r29,0,16,31		# u16PinIndex=r29
	e_mulli		r3,r3,20
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,12
	bc		1,2,.L487	# eq
#             {
#                 /** 
#                 * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#                 * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_BIT_SET32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_IBE_U32);
	.d2line		942
	rlwinm		r28,r28,2,14,29		# u16PinPad=r28 u16PinPad=r28
	diab.li		r0,-261568
	se_add		r28,r0		# u16PinPad=r28 u16PinPad=r28
	lwz		r0,0(r28)		# u16PinPad=r28
	.diab.bseti		r0,12
	stw		r0,0(r28)		# u16PinPad=r28
	b		.L488
.L487:
#             }
#             else
#             {
#                 /** 
#                 * @violates @ref Port_Siul2_C_REF_4 Cast from unsigned long to pointer. 
#                 * @violates @ref Port_Siul2_C_REF_8 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_BIT_CLEAR32(SIUL2_MSCR_ADDR32((uint32)u16PinPad), SIUL2_MSCR_IBE_U32);
	.d2line		950
	rlwinm		r28,r28,2,14,29		# u16PinPad=r28 u16PinPad=r28
	diab.li		r0,-261568
	se_add		r28,r0		# u16PinPad=r28 u16PinPad=r28
	lwz		r0,0(r28)		# u16PinPad=r28
	.diab.bclri		r0,12
	stw		r0,0(r28)		# u16PinPad=r28
.L488:
#             }
#             /* Exit critical region */
#             SchM_Exit_Port_PORT_EXCLUSIVE_AREA_01();
	.d2line		953
.Llo150:
	bl		SchM_Exit_Port_PORT_EXCLUSIVE_AREA_01
.L484:
#         }
#     }
	.d2line		955
	diab.addi		r0,r29,1		# u16PinIndex=r29
	se_addi		r29,1		# u16PinIndex=r29 u16PinIndex=r29
	b		.L481
.L480:
# }
	.d2line		956
	.d2epilogue_begin
.Llo147:
	lmw		r28,16(r1)		# offset r1+16  0x10
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
.L600:
	.type		Port_Siul2_RefreshPortDirection,@function
	.size		Port_Siul2_RefreshPortDirection,.-Port_Siul2_RefreshPortDirection
# Number of nodes = 139

# Allocations for Port_Siul2_RefreshPortDirection
#	?a4		pConfigPtr
#	?a5		$$95
#	?a6		$$94
#	?a7		$$93
#	?a8		u16NumPins
#	?a9		u16PinIndex
#	?a10		u16PinPad

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L609
	.section	.mcal_bss,,b
	.type		Port_Siul2_aGPIODirChangeability,@object
	.size		Port_Siul2_aGPIODirChangeability,32
	.align		1
Port_Siul2_aGPIODirChangeability:
	.space		32
	.section	.text_vle
#$$ld
.L5:
.L613:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Port_Siul2_Types.h"
.L610:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Siul2.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L500:
.L508:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Siul2.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Siul2.c"
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
.L497:
	.4byte		.L498-.L496
.L496:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L502-.L497
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Siul2.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L499
	.4byte		.L500
	.4byte		.L503
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L509:
	.sleb128	2
	.4byte		.L505-.L497
	.byte		"Port_Siul2_Init"
	.byte		0
	.4byte		.L508
	.uleb128	320
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L506
	.4byte		.L507
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L508
	.uleb128	320
	.uleb128	23
	.byte		"pConfigPtr"
	.byte		0
	.4byte		.L510
	.4byte		.L514
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L515:
	.sleb128	4
	.4byte		.L508
	.uleb128	326
	.uleb128	28
	.byte		"u16PinIndex"
	.byte		0
	.4byte		.L516
	.4byte		.L518
.L519:
	.sleb128	4
	.4byte		.L508
	.uleb128	327
	.uleb128	28
	.byte		"u16MuxIndex"
	.byte		0
	.4byte		.L516
	.4byte		.L520
.L521:
	.sleb128	4
	.4byte		.L508
	.uleb128	329
	.uleb128	28
	.byte		"u16NumUnusedPins"
	.byte		0
	.4byte		.L516
	.4byte		.L522
.L523:
	.sleb128	4
	.4byte		.L508
	.uleb128	330
	.uleb128	28
	.byte		"u16NumPins"
	.byte		0
	.4byte		.L516
	.4byte		.L524
.L525:
	.sleb128	4
	.4byte		.L508
	.uleb128	331
	.uleb128	28
	.byte		"u16NumMuxRegs"
	.byte		0
	.4byte		.L516
	.4byte		.L526
.L527:
	.sleb128	4
	.4byte		.L508
	.uleb128	336
	.uleb128	28
	.byte		"u32LocalMSCR"
	.byte		0
	.4byte		.L528
	.4byte		.L530
.L531:
	.sleb128	4
	.4byte		.L508
	.uleb128	340
	.uleb128	28
	.byte		"u8LocalPDO"
	.byte		0
	.4byte		.L532
	.4byte		.L534
.L535:
	.sleb128	4
	.4byte		.L508
	.uleb128	341
	.uleb128	28
	.byte		"u32LocalVar"
	.byte		0
	.4byte		.L528
	.4byte		.L536
.L537:
	.sleb128	4
	.4byte		.L508
	.uleb128	342
	.uleb128	28
	.byte		"u16PcrPin"
	.byte		0
	.4byte		.L516
	.4byte		.L538
.L539:
	.sleb128	4
	.4byte		.L508
	.uleb128	343
	.uleb128	44
	.byte		"PinPad"
	.byte		0
	.4byte		.L540
	.4byte		.L541
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L505:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L547:
	.sleb128	5
	.4byte		.L543-.L497
	.byte		"Port_Siul2_SetPinDirection"
	.byte		0
	.4byte		.L508
	.uleb128	499
	.uleb128	34
	.4byte		.L546
	.byte		0x1
	.byte		0x1
	.4byte		.L544
	.4byte		.L545
	.sleb128	3
	.4byte		.L508
	.uleb128	499
	.uleb128	34
	.byte		"PinIndex"
	.byte		0
	.4byte		.L548
	.4byte		.L549
	.sleb128	3
	.4byte		.L508
	.uleb128	499
	.uleb128	34
	.byte		"eDirection"
	.byte		0
	.4byte		.L550
	.4byte		.L552
	.sleb128	3
	.4byte		.L508
	.uleb128	499
	.uleb128	34
	.byte		"pConfigPtr"
	.byte		0
	.4byte		.L510
	.4byte		.L553
.L554:
	.sleb128	4
	.4byte		.L508
	.uleb128	510
	.uleb128	28
	.byte		"u16PinPad"
	.byte		0
	.4byte		.L516
	.4byte		.L555
.L556:
	.sleb128	4
	.4byte		.L508
	.uleb128	513
	.uleb128	36
	.byte		"PinDirError"
	.byte		0
	.4byte		.L546
	.4byte		.L557
.L558:
	.sleb128	4
	.4byte		.L508
	.uleb128	516
	.uleb128	28
	.byte		"u8PinDescBitOffset"
	.byte		0
	.4byte		.L532
	.4byte		.L559
.L560:
	.sleb128	4
	.4byte		.L508
	.uleb128	517
	.uleb128	28
	.byte		"u16PinChangeDirFlagWord"
	.byte		0
	.4byte		.L516
	.4byte		.L561
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L543:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L566:
	.sleb128	2
	.4byte		.L563-.L497
	.byte		"Port_Siul2_SetPinMode"
	.byte		0
	.4byte		.L508
	.uleb128	634
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L564
	.4byte		.L565
	.sleb128	3
	.4byte		.L508
	.uleb128	634
	.uleb128	24
	.byte		"PinCfgRegIndex"
	.byte		0
	.4byte		.L540
	.4byte		.L567
	.sleb128	3
	.4byte		.L508
	.uleb128	634
	.uleb128	24
	.byte		"PinCfgRegValue"
	.byte		0
	.4byte		.L568
	.4byte		.L569
	.sleb128	3
	.4byte		.L508
	.uleb128	634
	.uleb128	24
	.byte		"u16InMuxRegIndex"
	.byte		0
	.4byte		.L516
	.4byte		.L570
	.sleb128	3
	.4byte		.L508
	.uleb128	634
	.uleb128	24
	.byte		"InMuxRegValue"
	.byte		0
	.4byte		.L568
	.4byte		.L571
.L572:
	.sleb128	4
	.4byte		.L508
	.uleb128	643
	.uleb128	28
	.byte		"u32LocalVar"
	.byte		0
	.4byte		.L528
	.4byte		.L573
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L563:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L578:
	.sleb128	2
	.4byte		.L575-.L497
	.byte		"Port_Siul2_SetGpioDirChangeability"
	.byte		0
	.4byte		.L508
	.uleb128	767
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L576
	.4byte		.L577
	.sleb128	3
	.4byte		.L508
	.uleb128	767
	.uleb128	24
	.byte		"PadID"
	.byte		0
	.4byte		.L540
	.4byte		.L579
	.sleb128	3
	.4byte		.L508
	.uleb128	767
	.uleb128	24
	.byte		"bStatus"
	.byte		0
	.4byte		.L580
	.4byte		.L581
.L582:
	.sleb128	4
	.4byte		.L508
	.uleb128	774
	.uleb128	28
	.byte		"u16PinDirFlagWord"
	.byte		0
	.4byte		.L516
	.4byte		.L583
.L584:
	.sleb128	4
	.4byte		.L508
	.uleb128	775
	.uleb128	27
	.byte		"u8PinBitOffset"
	.byte		0
	.4byte		.L532
	.4byte		.L585
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L575:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L590:
	.sleb128	2
	.4byte		.L587-.L497
	.byte		"Port_Siul2_SetGpioPadOutput"
	.byte		0
	.4byte		.L508
	.uleb128	813
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L588
	.4byte		.L589
	.sleb128	3
	.4byte		.L508
	.uleb128	813
	.uleb128	24
	.byte		"PinIndex"
	.byte		0
	.4byte		.L548
	.4byte		.L591
	.sleb128	3
	.4byte		.L508
	.uleb128	813
	.uleb128	24
	.byte		"pConfigPtr"
	.byte		0
	.4byte		.L510
	.4byte		.L592
.L593:
	.sleb128	4
	.4byte		.L508
	.uleb128	822
	.uleb128	28
	.byte		"u16PinPad"
	.byte		0
	.4byte		.L516
	.4byte		.L594
.L595:
	.sleb128	4
	.4byte		.L508
	.uleb128	826
	.uleb128	27
	.byte		"u8LocalPDO"
	.byte		0
	.4byte		.L532
	.4byte		.L596
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L587:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L601:
	.sleb128	2
	.4byte		.L598-.L497
	.byte		"Port_Siul2_RefreshPortDirection"
	.byte		0
	.4byte		.L508
	.uleb128	868
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L599
	.4byte		.L600
	.sleb128	3
	.4byte		.L508
	.uleb128	868
	.uleb128	24
	.byte		"pConfigPtr"
	.byte		0
	.4byte		.L510
	.4byte		.L602
.L603:
	.sleb128	4
	.4byte		.L508
	.uleb128	873
	.uleb128	28
	.byte		"u16NumPins"
	.byte		0
	.4byte		.L516
	.4byte		.L604
.L605:
	.sleb128	4
	.4byte		.L508
	.uleb128	875
	.uleb128	28
	.byte		"u16PinIndex"
	.byte		0
	.4byte		.L516
	.4byte		.L606
.L607:
	.sleb128	4
	.4byte		.L508
	.uleb128	876
	.uleb128	28
	.byte		"u16PinPad"
	.byte		0
	.4byte		.L516
	.4byte		.L608
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L598:
	.section	.debug_info,,n
.L609:
	.sleb128	6
	.4byte		.L610
	.uleb128	247
	.uleb128	30
	.byte		"Port_Siul2_aGPIODirChangeability"
	.byte		0
	.4byte		.L611
	.sleb128	5
	.byte		0x3
	.4byte		Port_Siul2_aGPIODirChangeability
	.section	.debug_info,,n
	.section	.debug_info,,n
.L513:
	.sleb128	7
	.4byte		.L613
	.uleb128	129
	.uleb128	1
	.4byte		.L614-.L2
	.uleb128	20
	.section	.debug_info,,n
.L229:
	.sleb128	8
	.byte		"u16NumPins"
	.byte		0
	.4byte		.L516
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L230:
	.sleb128	8
	.byte		"u16NumUnusedPins"
	.byte		0
	.4byte		.L516
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L231:
	.sleb128	8
	.byte		"au16UnusedPads"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L232:
	.sleb128	8
	.byte		"pUnusedPadConfig"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L233:
	.sleb128	8
	.byte		"pUsedPadConfig"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L234:
	.sleb128	8
	.byte		"pPadSelConfig"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L614:
.L620:
	.sleb128	7
	.4byte		.L613
	.uleb128	129
	.uleb128	1
	.4byte		.L628-.L2
	.uleb128	8
.L227:
	.sleb128	8
	.byte		"u32MSCR"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L228:
	.sleb128	8
	.byte		"u8PDO"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L628:
.L624:
	.sleb128	7
	.4byte		.L613
	.uleb128	129
	.uleb128	1
	.4byte		.L629-.L2
	.uleb128	20
.L219:
	.sleb128	8
	.byte		"u16SIUPin"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	8
	.byte		"u32MSCR"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	8
	.byte		"u32ODC"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	8
	.byte		"u8PDO"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L223:
	.sleb128	8
	.byte		"u8PDDir"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L224:
	.sleb128	8
	.byte		"bGPIO"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L225:
	.sleb128	8
	.byte		"bDC"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L226:
	.sleb128	8
	.byte		"bMC"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L629:
	.section	.debug_info,,n
.L551:
	.sleb128	9
	.4byte		.L613
	.uleb128	129
	.uleb128	1
	.4byte		.L630-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"PORT_PIN_IN"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"PORT_PIN_OUT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"PORT_PIN_INOUT"
	.byte		0
	.sleb128	2
	.sleb128	0
.L630:
	.section	.debug_info,,n
.L512:
	.sleb128	11
	.byte		"Port_ConfigType"
	.byte		0
	.4byte		.L513
	.section	.debug_info,,n
.L511:
	.sleb128	12
	.4byte		.L512
	.section	.debug_info,,n
.L510:
	.sleb128	13
	.4byte		.L511
	.section	.debug_info,,n
.L517:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L516:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L517
.L529:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L528:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L529
.L533:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L532:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L533
.L540:
	.sleb128	11
	.byte		"Port_InternalPinIdType"
	.byte		0
	.4byte		.L516
.L546:
	.sleb128	11
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L532
.L548:
	.sleb128	11
	.byte		"Port_PinType"
	.byte		0
	.4byte		.L528
.L550:
	.sleb128	11
	.byte		"Port_PinDirectionType"
	.byte		0
	.4byte		.L551
.L568:
	.sleb128	11
	.byte		"Port_RegValueType"
	.byte		0
	.4byte		.L528
.L580:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L533
	.section	.debug_info,,n
.L611:
	.sleb128	15
	.4byte		.L612-.L2
	.4byte		.L516
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	15
	.sleb128	0
.L612:
.L616:
	.sleb128	12
	.4byte		.L516
.L615:
	.sleb128	13
	.4byte		.L616
.L619:
	.sleb128	11
	.byte		"Port_Siul2_UnUsedPinConfigType"
	.byte		0
	.4byte		.L620
.L618:
	.sleb128	12
	.4byte		.L619
.L617:
	.sleb128	13
	.4byte		.L618
.L623:
	.sleb128	11
	.byte		"Port_Siul2_PinConfigType"
	.byte		0
	.4byte		.L624
.L622:
	.sleb128	12
	.4byte		.L623
.L621:
	.sleb128	13
	.4byte		.L622
.L627:
	.sleb128	11
	.byte		"Port_Siul2_PadSelConfigType"
	.byte		0
	.4byte		.L528
.L626:
	.sleb128	12
	.4byte		.L627
.L625:
	.sleb128	13
	.4byte		.L626
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L502:
	.sleb128	0
.L498:

	.section	.debug_loc,,n
	.align	0
.L514:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L518:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L520:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo8),4
	.d2locend
.L522:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locend
.L524:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo9),5
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),5
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),5
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo8),5
	.d2locend
.L526:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo7),6
	.d2locend
.L530:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo5),7
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo13),7
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),7
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),7
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),7
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo6),7
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo19),7
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),7
	.d2locend
.L534:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo5),8
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),0
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),0
	.d2locend
.L536:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo24),0
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo40),0
	.d2locend
.L538:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),31
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),31
	.d2locend
.L541:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo45),30
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),30
	.d2locend
.L549:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),31
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),31
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),31
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),31
	.d2locend
.L552:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo65),4
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),30
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),30
	.d2locend
.L553:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo68),5
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo62),29
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),29
	.d2locend
.L555:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo62),28
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),28
	.d2locend
.L557:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo71),27
	.d2locend
.L559:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),0
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo62),0
	.d2locend
.L561:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo73),4
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo75),4
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo62),4
	.d2locend
.L567:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),31
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),31
	.d2locend
.L569:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo83),4
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),30
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),30
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),30
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),0
	.d2locend
.L570:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo95),5
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo84),29
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),29
	.d2locend
.L571:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo95),6
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo98),28
	.d2locend
.L573:
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),0
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),0
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),30
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),3
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),30
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo93),0
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo84),30
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),3
	.d2locend
.L579:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),31
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),31
	.d2locend
.L581:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo117),4
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),30
	.d2locend
.L583:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo119),0
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),3
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),0
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),3
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),0
	.d2locend
.L585:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo114),4
	.d2locend
.L591:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),3
	.d2locend
.L592:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo132),4
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),4
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),4
	.d2locend
.L594:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo132),0
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),0
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo140),0
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),0
	.d2locend
.L596:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),3
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo143),3
	.d2locend
.L602:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),3
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),31
	.d2locend
.L604:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo147),30
	.d2locend
.L606:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo147),29
	.d2locend
.L608:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Port_Siul2_RefreshPortDirection"
	.wrcm.nstrlist "calls", "SchM_Enter_Port_PORT_EXCLUSIVE_AREA_01","SchM_Exit_Port_PORT_EXCLUSIVE_AREA_01"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Port_Siul2_SetGpioPadOutput"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Port_Siul2_SetGpioDirChangeability"
	.wrcm.nstrlist "calls", "SchM_Enter_Port_PORT_EXCLUSIVE_AREA_02","SchM_Exit_Port_PORT_EXCLUSIVE_AREA_02"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Port_Siul2_SetPinMode"
	.wrcm.nstrlist "calls", "SchM_Enter_Port_PORT_EXCLUSIVE_AREA_00","SchM_Exit_Port_PORT_EXCLUSIVE_AREA_00"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Port_Siul2_SetPinDirection"
	.wrcm.nstrlist "calls", "SchM_Enter_Port_PORT_EXCLUSIVE_AREA_03","SchM_Exit_Port_PORT_EXCLUSIVE_AREA_03"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Port_Siul2_Init"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Port_Siul2.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Port_Siul2.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Port_Siul2.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Port_Siul2.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Port_Siul2.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Port_Siul2.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Port\ssc\make\..\..\generator\integration_package\src\Port_Siul2.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
