#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Port_Ipw.c"
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
# static FUNC(uint16, PORT_CODE) Port_Ipw_GetIndexForInoutEntry
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L476:
	.section	.invalid_TEXT,,c
#$$ld
.L472:
	.0byte		.L470
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Ipw.c"
        .d2line         247,32
#$$ld
.L479:

#$$bf	Port_Ipw_GetIndexForInoutEntry,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
Port_Ipw_GetIndexForInoutEntry:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# PinPad=r3 PinPad=r3
	mr		r7,r4		# PinMode=r7 PinMode=r4
	.d2prologue_end
# (
#     VAR    (Port_InternalPinIdType, AUTOMATIC) PinPad,
#     VAR    (Port_PinModeType,       AUTOMATIC) PinMode
# )
# {
#     VAR(uint16,         AUTOMATIC) u16ReturnIndex = (uint16)0;
	.d2line		253
	diab.li		r4,0		# u16ReturnIndex=r4
#     VAR(uint16,         AUTOMATIC) u16Counter;
# 
#     for(u16Counter = (uint16)0U; u16Counter < PORT_INOUT_TABLE_NUM_ENTRIES_U16; u16Counter++)
	.d2line		256
.Llo3:
	diab.li		r5,0
.L411:
.Llo4:
	rlwinm		r0,r5,0,16,31		# u16Counter=r5
.Llo5:
	cmpi		0,0,r0,313
	bc		0,0,.L415	# ge
#     {
#         if((Port_aPadFunctInoutMuxSettings[u16Counter].u16MSCR == (uint16)PinPad) && (Port_aPadFunctInoutMuxSettings[u16Counter].u8Mode == (uint8)PinMode))
	.d2line		258
	lis		r6,Port_aPadFunctInoutMuxSettings@ha
	e_add16i		r6,r6,Port_aPadFunctInoutMuxSettings@l
	rlwinm		r0,r5,3,13,28		# u16Counter=r5
	lhzx		r0,r6,r0
	rlwinm		r6,r3,0,16,31		# PinPad=r3
	se_cmp		r0,r6
	bc		0,2,.L414	# ne
	lis		r6,(Port_aPadFunctInoutMuxSettings+2)@ha
	e_add16i		r6,r6,(Port_aPadFunctInoutMuxSettings+2)@l
	rlwinm		r0,r5,3,13,28		# u16Counter=r5
	lbzx		r0,r6,r0
	rlwinm		r6,r7,0,24,31		# PinMode=r7
	se_cmp		r0,r6
	bc		0,2,.L414	# ne
#         {
#             u16ReturnIndex = u16Counter;
	.d2line		260
	mr		r4,r5		# u16ReturnIndex=r4 u16ReturnIndex=r5
	b		.L415
.L414:
#             break;
#         }
#     }
	.d2line		263
	diab.addi		r0,r5,1		# u16Counter=r5
	se_addi		r5,1		# u16Counter=r5 u16Counter=r5
	b		.L411
.L415:
#     return u16ReturnIndex;
	.d2line		264
.Llo2:
	rlwinm		r3,r4,0,16,31		# PinPad=r3 u16ReturnIndex=r4
# }
	.d2line		265
	.d2epilogue_begin
.Llo6:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo7:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L480:
	.type		Port_Ipw_GetIndexForInoutEntry,@function
	.size		Port_Ipw_GetIndexForInoutEntry,.-Port_Ipw_GetIndexForInoutEntry
# Number of nodes = 45

# Allocations for Port_Ipw_GetIndexForInoutEntry
#	?a4		PinPad
#	?a5		PinMode
#	?a6		u16ReturnIndex
#	?a7		u16Counter
# FUNC(Std_ReturnType, PORT_CODE) Port_Ipw_SetPinMode
	.section	.text_vle
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Ipw.c"
        .d2line         286,33
#$$ld
.L498:

#$$bf	Port_Ipw_SetPinMode,interprocedural,rasave,nostackparams
	.globl		Port_Ipw_SetPinMode
	.d2_cfa_start __cie
Port_Ipw_SetPinMode:
.Llo8:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r24,32(r1)		# offset r1+32  0x20
	.d2_cfa_offset_list	24,31,1,1
	stw		r0,68(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# PinIndex=r31 PinIndex=r3
.Llo9:
	mr		r25,r4		# PinMode=r25 PinMode=r4
.Llo10:
	mr		r30,r5		# pConfigPtr=r30 pConfigPtr=r5
	.d2prologue_end
# (
#     VAR    (Port_PinType,     AUTOMATIC                 ) PinIndex,
#     VAR    (Port_PinModeType, AUTOMATIC                 ) PinMode,
#     P2CONST(Port_ConfigType,  AUTOMATIC, PORT_APPL_CONST) pConfigPtr
# )
# {
#     VAR(Std_ReturnType,     AUTOMATIC) PinModeError = (Std_ReturnType)0UL;
	.d2line		293
	diab.li		r29,0		# PinModeError=r29
#     /** @violates @ref PORT_IPW_C_REF_5 MISRA 2004 Required Rule 17.4 */
#     VAR(Port_InternalPinIdType, AUTOMATIC) PinPad = pConfigPtr->pUsedPadConfig[PinIndex].u16SIUPin;
# 
#     VAR(uint16,               AUTOMATIC) u16PinDescWord;
#     VAR(uint8,                AUTOMATIC) u8PinDescBitOffset;
#     VAR(Port_InMuxSettingType,AUTOMATIC) PadInMuxData;
# 
#     VAR(Port_InternalPinIdType, AUTOMATIC) PinCfgRegIndex   = (Port_InternalPinIdType)PinPad;
#     VAR(Port_RegValueType,      AUTOMATIC) PinCfgRegValue   = (Port_RegValueType)PinMode;
#     VAR(uint16,                 AUTOMATIC) u16InMuxRegIndex = NO_INPUTMUX_U16;
	.d2line		303
.Llo31:
	diab.li		r26,65535		# u16InMuxRegIndex=r26
#     VAR(Port_RegValueType,      AUTOMATIC) InMuxRegValue    = (Port_RegValueType)0UL;
	.d2line		304
.Llo52:
	diab.li		r24,0
	.d2line		295
.Llo53:
	lwz		r3,12(r30)		# pConfigPtr=r30
	e_mulli		r0,r31,20		# PinIndex=r31
	lhzx		r8,r3,r0
.Llo33:
	mr		r8,r8		# PinPad=r8 PinPad=r8
	.d2line		301
.Llo50:
	mr		r28,r8		# PinCfgRegIndex=r28 PinCfgRegIndex=r8
	.d2line		302
	rlwinm		r27,r25,0,24,31		# PinMode=r25
.Llo51:
	mr		r27,r27		# PinCfgRegValue=r27 PinCfgRegValue=r27
#     VAR(uint16,                 AUTOMATIC) u16Index;
#     VAR(Port_InoutSettingType,  AUTOMATIC) PadInoutData;
# 
#     VAR(Port_PinDirectionType, AUTOMATIC) ePadDirection;
# 
#     if (PAD_MODE_OPTIONS_U8 <= PinMode)
	.d2line		310
	mr		r4,r27		# PinCfgRegValue=r4 PinCfgRegValue=r27
.Llo20:
	cmpi		0,0,r4,45
	bc		1,0,.L420	# lt
#     {
#         PinModeError = PORT_E_PARAM_INVALID_MODE;
	.d2line		312
.Llo21:
	diab.li		r29,13		# PinModeError=r29
.Llo28:
	b		.L421
.L420:
#     }
#     else
#     {
#         ePadDirection = (Port_PinDirectionType)0UL;
	.d2line		316
	diab.li		r0,0		# ePadDirection=r0
# 
#         /* Bit offset of Pin index inside the pin description matrix */
#         u8PinDescBitOffset = (uint8)(PinPad & SIUL2_MODE_BIT_OFFSET_MASK_U8);
	.d2line		319
	rlwinm		r0,r8,0,28,31		# ePadDirection=r0 PinPad=r8
.Llo44:
	mr		r0,r0		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0
#         /* Selected word inside the pin description matrix */
#         u16PinDescWord = (uint16)Port_au16PinDescription[(uint8)PinMode][PinPad>>4];
	.d2line		321
	lis		r3,Port_au16PinDescription@ha
	e_add16i		r3,r3,Port_au16PinDescription@l
	rlwinm		r4,r25,5,19,26		# u16PinDescWord=r4 PinMode=r25
.Llo40:
	se_add		r3,r4		# u16PinDescWord=r4
	rlwinm		r4,r8,29,19,30		# u16PinDescWord=r4 PinPad=r8
	lhzx		r4,r3,r4		# u16PinDescWord=r4
	mr		r4,r4		# u16PinDescWord=r4 u16PinDescWord=r4
# 
#         /* Check if desired mode is valid for selected pin */
#         if (u16PinDescWord & (uint16)(1UL<<u8PinDescBitOffset))
	.d2line		324
	rlwinm		r4,r4,0,16,31		# u16PinDescWord=r4 u16PinDescWord=r4
	diab.li		r3,1
	slw		r3,r3,r0		# u8PinDescBitOffset=r0
	rlwinm		r3,r3,0,16,31
	and.		r3,r3,r4		# u16PinDescWord=r4
	bc		1,2,.L422	# eq
#         {
#             switch(PinMode)
	.d2line		326
.Llo41:
	rlwinm		r6,r25,0,24,31		# PinMode=r25
	cmpli		0,0,r6,44
	se_slwi		r6,2
	e_add2is		r6,.L542@ha
	bc		1,1,.L456	# gt
	lwz		r7,.L542@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L542:
#$$sl
	.long		.L452
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L454
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L437
	.long		.L455
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L456
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
	.long		.L451
#$$se
.L437:
#             {
#                 case PORT_ALT1_FUNC_MODE:
#                 case PORT_ALT2_FUNC_MODE:
#                 case PORT_ALT3_FUNC_MODE:
#                 case PORT_ALT4_FUNC_MODE:
#                 case PORT_ALT5_FUNC_MODE:
#                 case PORT_ALT6_FUNC_MODE:
#                 case PORT_ALT7_FUNC_MODE:
#                 case PORT_ALT8_FUNC_MODE:
#                 case PORT_ALT9_FUNC_MODE:
#                 case PORT_ALT11_FUNC_MODE:
#                 case PORT_ALT12_FUNC_MODE:
#                 case PORT_ALT13_FUNC_MODE:
#                 case PORT_ALT14_FUNC_MODE:
#                 case PORT_ALT15_FUNC_MODE:
#                 case PORT_ANALOG_INPUT_MODE:   
#                     /* On platforms having ODC support, use 32 bit InMuxRegValue parameter to send to Port_Siul2_SetPinMode() a logic OR between the MSCR.ODC and IMCR.SSS
#                        In case of PORT_ALTx modes, there is no need for a IMCR.SSS value, so the only information that will be transmitted will be the MSCR.ODC */
#                     /** @violates @ref PORT_IPW_C_REF_5 MISRA 2004 Required Rule 17.4 */
#                     InMuxRegValue = (Port_RegValueType)(pConfigPtr->pUsedPadConfig[PinIndex].u32ODC & SIUL2_MSCR_ODC_U32);
	.d2line		346
.Llo11:
	lwz		r0,12(r30)		# u8PinDescBitOffset=r0 pConfigPtr=r30
.Llo12:
	e_mulli		r31,r31,20		# PinIndex=r31 PinIndex=r31
	se_add		r31,r0		# PinIndex=r31 PinIndex=r31 u8PinDescBitOffset=r0
	lwz		r24,8(r31)		# PinIndex=r31
	rlwinm		r24,r24,0,6,7
	mr		r24,r24		# InMuxRegValue=r24 InMuxRegValue=r24
#                     Port_Siul2_SetGpioDirChangeability(PinPad,(boolean)FALSE);
	.d2line		347
	rlwinm		r3,r8,0,16,31		# PinPad=r8
	diab.li		r4,0		# u16PinDescWord=r4
	bl		Port_Siul2_SetGpioDirChangeability
.Llo34:
	b		.L438
.L451:
#                     break;
# 
#                 case PORT_INOUT1_MODE:
#                 case PORT_INOUT2_MODE:
#                 case PORT_INOUT3_MODE:
#                 case PORT_INOUT4_MODE:
#                 case PORT_INOUT5_MODE:
#                 case PORT_INOUT6_MODE:
#                 case PORT_INOUT7_MODE:
#                 case PORT_INOUT8_MODE:
#                 case PORT_INOUT9_MODE:
#                 case PORT_INOUT10_MODE:
#                 case PORT_INOUT11_MODE:
#                 case PORT_INOUT12_MODE:
#                 case PORT_INOUT13_MODE:
#                     /* All the INOUT modes */
#                     u16Index         = Port_Ipw_GetIndexForInoutEntry(PinPad, PinMode);
	.d2line		364
.Llo13:
	mr		r3,r8		# PinPad=r3 PinPad=r8
	mr		r4,r25		# PinMode=r4 PinMode=r25
	bl		Port_Ipw_GetIndexForInoutEntry
.Llo54:
	mr		r3,r3		# u16Index=r3 u16Index=r3
#                     PadInoutData     = Port_aPadFunctInoutMuxSettings[u16Index];
	.d2line		365
	lis		r7,Port_aPadFunctInoutMuxSettings@ha
	e_add16i		r7,r7,Port_aPadFunctInoutMuxSettings@l
	rlwinm		r3,r3,3,13,28		# u16Index=r3 u16Index=r3
.Llo55:
	lhzux		r4,r7,r3		# PinMode=r4
	lhz		r5,2(r7)
	sth		r4,12(r1)		# PinMode=r4
	sth		r5,14(r1)
	lhz		r4,4(r7)		# PinMode=r4
	lhz		r5,6(r7)
	sth		r4,16(r1)		# PinMode=r4
	sth		r5,18(r1)
#                     u16InMuxRegIndex = (uint16)PadInoutData.u16InMuxId;
	.d2line		366
	mr		r26,r4		# u16InMuxRegIndex=r26 u16InMuxRegIndex=r4
#                     /* On platforms having ODC support, use 32 bit InMuxRegValue parameter to send to Port_Siul2_SetPinMode() a logic OR between the MSCR.ODC and IMCR.SSS */
#                     /** @violates @ref PORT_IPW_C_REF_5 MISRA 2004 Required Rule 17.4 */
#                     InMuxRegValue    = (Port_RegValueType)((pConfigPtr->pUsedPadConfig[PinIndex].u32ODC & SIUL2_MSCR_ODC_U32) | (PadInoutData.u8InMuxCode & SIUL2_IMCR_SSS_U32));
	.d2line		369
	lwz		r0,12(r30)		# u8PinDescBitOffset=r0 pConfigPtr=r30
.Llo14:
	e_mulli		r31,r31,20		# PinIndex=r31 PinIndex=r31
	se_add		r31,r0		# PinIndex=r31 PinIndex=r31 u8PinDescBitOffset=r0
	lwz		r24,8(r31)		# u8PinDescBitOffset=r24 PinIndex=r31
	rlwinm		r24,r24,0,6,7		# u8PinDescBitOffset=r24 u8PinDescBitOffset=r24
	lbz		r0,18(r1)		# u8PinDescBitOffset=r0
	or		r0,r0,r24		# u8PinDescBitOffset=r0 u8PinDescBitOffset=r0 u8PinDescBitOffset=r24
.Llo45:
	mr		r24,r0		# InMuxRegValue=r24 InMuxRegValue=r0
#                     PinCfgRegValue   = ((Port_RegValueType)PinMode + (Port_RegValueType)1) - (Port_RegValueType)PORT_INOUT1_MODE;
	.d2line		370
	rlwinm		r25,r25,0,24,31		# PinMode=r25 PinMode=r25
.Llo22:
	addi		r27,r25,-31		# PinMode=r25
#                     Port_Siul2_SetGpioDirChangeability(PinPad,(boolean)FALSE);                    
	.d2line		371
.Llo23:
	rlwinm		r3,r8,0,16,31		# u16Index=r3 PinPad=r8
	diab.li		r4,0		# PinMode=r4
.Llo24:
	bl		Port_Siul2_SetGpioDirChangeability
.Llo35:
	b		.L438
.L452:
#                     break;
# 
#                 case PORT_GPIO_MODE:
#                     Port_Siul2_SetGpioDirChangeability(PinPad,(boolean)TRUE);
	.d2line		375
.Llo36:
	rlwinm		r3,r8,0,16,31		# PinPad=r8
	diab.li		r4,1		# u16PinDescWord=r4
	bl		Port_Siul2_SetGpioDirChangeability
#                     /** @violates @ref PORT_IPW_C_REF_5 MISRA 2004 Required Rule 17.4 */
#                     ePadDirection = (Port_PinDirectionType)(pConfigPtr->pUsedPadConfig[PinIndex].u8PDDir);
	.d2line		377
.Llo37:
	lwz		r3,12(r30)		# pConfigPtr=r30
	e_mulli		r0,r31,20		# u8PinDescBitOffset=r0 PinIndex=r31
.Llo46:
	se_add		r3,r0		# u8PinDescBitOffset=r0
	lbz		r0,13(r3)		# u8PinDescBitOffset=r0
	.d2line		379
	mr.		r25,r0		# ePadDirection=?a16 ePadDirection=?a19
# #if (STD_OFF == PORT_SETPINMODE_DOES_NOT_TOUCH_GPIO_LEVEL)
#                     if(PORT_PIN_IN != ePadDirection)
.Llo57:
	bc		1,2,.L453	# eq
#                     {
#                         Port_Siul2_SetGpioPadOutput(PinIndex, pConfigPtr);
	.d2line		381
.Llo47:
	mr		r3,r31		# PinIndex=r3 PinIndex=r31
	mr		r4,r30		# pConfigPtr=r4 pConfigPtr=r30
	bl		Port_Siul2_SetGpioPadOutput
.L453:
#                     }
# #endif /* (STD_OFF == PORT_SETPINMODE_DOES_NOT_TOUCH_GPIO_LEVEL) */
#                     /** @violates @ref PORT_IPW_C_REF_6 MISRA 2004 Required Rule 16.10 */
#                     (void)Port_Siul2_SetPinDirection(PinIndex, ePadDirection, pConfigPtr);
	.d2line		385
	mr		r3,r31		# PinIndex=r3 PinIndex=r31
	mr		r4,r25		# ePadDirection=r4 ePadDirection=r25
	mr		r5,r30		# pConfigPtr=r5 pConfigPtr=r30
	bl		Port_Siul2_SetPinDirection
	b		.L438
.L454:
#                     break;
# 
#                 case PORT_ONLY_INPUT_MODE:
#                     PinCfgRegValue = SIUL2_INPUT_ACTIVE_U32;
	.d2line		389
.Llo25:
	diab.li		r27,-1		# PinCfgRegValue=r27
#                     Port_Siul2_SetGpioDirChangeability(PinPad,(boolean)FALSE);
	.d2line		390
	rlwinm		r3,r8,0,16,31		# PinPad=r8
	diab.li		r4,0		# u16PinDescWord=r4
	bl		Port_Siul2_SetGpioDirChangeability
.Llo38:
	b		.L438
.L455:
#                     break;
# 
#                 case PORT_ONLY_OUTPUT_MODE:
#                     PinCfgRegValue = SIUL2_OUTPUT_ACTIVE_U32;
	.d2line		394
.Llo15:
	diab.li		r27,-2		# PinCfgRegValue=r27
#                     /* On platforms having ODC support, use 32 bit InMuxRegValue parameter to send to Port_Siul2_SetPinMode() a logic OR between the MSCR.ODC and IMCR.SSS
#                        In case of PORT_ONLY_OUTPUT mode, there is no need for a IMCR.SSS value, so the only information that will be transmitted will be the MSCR.ODC */
#                     /** @violates @ref PORT_IPW_C_REF_5 MISRA 2004 Required Rule 17.4 */
#                     InMuxRegValue = (Port_RegValueType)(pConfigPtr->pUsedPadConfig[PinIndex].u32ODC & SIUL2_MSCR_ODC_U32);
	.d2line		398
	lwz		r0,12(r30)		# u8PinDescBitOffset=r0 pConfigPtr=r30
.Llo16:
	e_mulli		r31,r31,20		# PinIndex=r31 PinIndex=r31
	se_add		r31,r0		# PinIndex=r31 PinIndex=r31 u8PinDescBitOffset=r0
	lwz		r24,8(r31)		# PinIndex=r31
	rlwinm		r24,r24,0,6,7
	mr		r24,r24		# InMuxRegValue=r24 InMuxRegValue=r24
#                     Port_Siul2_SetGpioDirChangeability(PinPad,(boolean)FALSE);
	.d2line		399
	rlwinm		r3,r8,0,16,31		# PinPad=r8
	diab.li		r4,0		# u16PinDescWord=r4
	bl		Port_Siul2_SetGpioDirChangeability
.Llo39:
	b		.L438
.L456:
#                     break;
# 
#                 default:
#                     /* All the INPUT modes */
#                     u16Index         = Port_au16PadFunctInMuxIndex[PinPad];
	.d2line		404
.Llo26:
	lis		r3,Port_au16PadFunctInMuxIndex@ha
	e_add16i		r3,r3,Port_au16PadFunctInMuxIndex@l
	rlwinm		r0,r8,1,15,30		# u8PinDescBitOffset=r0 PinPad=r8
.Llo48:
	lhzx		r0,r3,r0		# u8PinDescBitOffset=r0
.Llo49:
	mr		r0,r0		# u16Index=r0 u16Index=r0
#                     /** @violates @ref PORT_IPW_C_REF_7 MISRA 2004 Advisory Rule 12.1 */
#                     PadInMuxData     = Port_aPadFunctInMuxSettings[(u16Index + PinMode) - PORT_INPUT1_MODE];
	.d2line		406
	lis		r7,(Port_aPadFunctInMuxSettings-72)@ha
	e_add16i		r7,r7,(Port_aPadFunctInMuxSettings-72)@l
	rlwinm		r0,r0,0,16,31		# u16Index=r0 u16Index=r0
.Llo27:
	rlwinm		r25,r25,0,24,31		# PinMode=r25 PinMode=r25
	se_add		r0,r25		# u16Index=r0 u16Index=r0 PinMode=r25
	se_slwi		r0,2		# u16Index=r0 u16Index=r0
.Llo56:
	lhzux		r4,r7,r0		# u16PinDescWord=r4
.Llo42:
	lhz		r5,2(r7)
	sth		r4,8(r1)		# u16PinDescWord=r4
	sth		r5,10(r1)
#                     u16InMuxRegIndex = (uint16)PadInMuxData.u16InMuxId;
	.d2line		407
	mr		r26,r4		# u16InMuxRegIndex=r26 u16InMuxRegIndex=r4
#                     InMuxRegValue    = PadInMuxData.u8InMuxCode;
	.d2line		408
	lbz		r24,10(r1)
	mr		r24,r24		# InMuxRegValue=r24 InMuxRegValue=r24
#                     PinCfgRegValue   = SIUL2_INPUT_ACTIVE_U32;
	.d2line		409
	diab.li		r27,-1		# PinCfgRegValue=r27
#                     Port_Siul2_SetGpioDirChangeability(PinPad,(boolean)FALSE);
	.d2line		410
	rlwinm		r3,r8,0,16,31		# PinPad=r8
	diab.li		r4,0		# u16PinDescWord=r4
.Llo43:
	bl		Port_Siul2_SetGpioDirChangeability
.L438:
#                     break;
#             }
#             /* Sets the port pin mode */
#             Port_Siul2_SetPinMode(PinCfgRegIndex, PinCfgRegValue, u16InMuxRegIndex, InMuxRegValue);
	.d2line		414
.Llo17:
	rlwinm		r3,r28,0,16,31		# u16Index=r3 PinCfgRegIndex=r28
	rlwinm		r5,r26,0,16,31		# pConfigPtr=r5 u16InMuxRegIndex=r26
	mr		r4,r27		# PinCfgRegValue=r4 PinCfgRegValue=r27
	mr		r6,r24		# InMuxRegValue=r6 InMuxRegValue=r24
	bl		Port_Siul2_SetPinMode
	b		.L421
.L422:
#         }
#         else
#         {
#                 PinModeError = PORT_E_PARAM_INVALID_MODE;
	.d2line		418
.Llo18:
	diab.li		r29,13		# PinModeError=r29
.L421:
#         }
#     }
#     return (PinModeError);
	.d2line		421
.Llo19:
	rlwinm		r3,r29,0,24,31		# u16Index=r3 PinModeError=r29
# }
	.d2line		422
	.d2epilogue_begin
.Llo29:
	lmw		r24,32(r1)		# offset r1+32  0x20
	.d2_cfa_restore_list	2,10
.Llo32:
	lwz		r0,68(r1)		# u8PinDescBitOffset=r0
	mtspr		lr,r0		# u8PinDescBitOffset=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo30:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L499:
	.type		Port_Ipw_SetPinMode,@function
	.size		Port_Ipw_SetPinMode,.-Port_Ipw_SetPinMode
# Number of nodes = 304

# Allocations for Port_Ipw_SetPinMode
#	?a4		PinIndex
#	?a5		PinMode
#	?a6		pConfigPtr
#	?a7		PinModeError
#	?a8		PinPad
#	?a9		u16PinDescWord
#	?a10		u8PinDescBitOffset
#	SP,8		PadInMuxData
#	?a11		PinCfgRegIndex
#	?a12		PinCfgRegValue
#	?a13		u16InMuxRegIndex
#	?a14		InMuxRegValue
#	?a15		u16Index
#	SP,12		PadInoutData
#	?a16		ePadDirection

# Allocations for module
	.section	.text_vle
	.0byte		.L543
	.section	.text_vle
	.0byte		.L552
	.section	.text_vle
#$$ld
.L5:
.L559:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Port_Siul2_Types.h"
.L544:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\include\\Port_Cfg.h"
.L500:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Ipw.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L473:
.L481:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Ipw.c"
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Ipw.c"
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
.L470:
	.4byte		.L471-.L469
.L469:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L475-.L470
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port_Ipw.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L472
	.4byte		.L473
	.4byte		.L476
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L484:
	.sleb128	2
	.4byte		.L478-.L470
	.byte		"Port_Ipw_GetIndexForInoutEntry"
	.byte		0
	.4byte		.L481
	.uleb128	247
	.uleb128	32
	.4byte		.L482
	.byte		0x1
	.4byte		.L479
	.4byte		.L480
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L481
	.uleb128	247
	.uleb128	32
	.byte		"PinPad"
	.byte		0
	.4byte		.L485
	.4byte		.L486
	.sleb128	3
	.4byte		.L481
	.uleb128	247
	.uleb128	32
	.byte		"PinMode"
	.byte		0
	.4byte		.L487
	.4byte		.L490
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L491:
	.sleb128	4
	.4byte		.L481
	.uleb128	253
	.uleb128	36
	.byte		"u16ReturnIndex"
	.byte		0
	.4byte		.L482
	.4byte		.L492
.L493:
	.sleb128	4
	.4byte		.L481
	.uleb128	254
	.uleb128	36
	.byte		"u16Counter"
	.byte		0
	.4byte		.L482
	.4byte		.L494
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L478:
	.section	.debug_info,,n
.L502:
	.sleb128	5
	.4byte		.L497-.L2
	.byte		"Port_Ipw_SetPinMode"
	.byte		0
	.4byte		.L500
	.uleb128	286
	.uleb128	33
	.4byte		.L501
	.byte		0x1
	.byte		0x1
	.4byte		.L498
	.4byte		.L499
	.sleb128	3
	.4byte		.L500
	.uleb128	286
	.uleb128	33
	.byte		"PinIndex"
	.byte		0
	.4byte		.L503
	.4byte		.L506
	.sleb128	3
	.4byte		.L500
	.uleb128	286
	.uleb128	33
	.byte		"PinMode"
	.byte		0
	.4byte		.L487
	.4byte		.L507
	.sleb128	3
	.4byte		.L500
	.uleb128	286
	.uleb128	33
	.byte		"pConfigPtr"
	.byte		0
	.4byte		.L508
	.4byte		.L512
.L513:
	.sleb128	4
	.4byte		.L500
	.uleb128	293
	.uleb128	40
	.byte		"PinModeError"
	.byte		0
	.4byte		.L501
	.4byte		.L514
.L515:
	.sleb128	4
	.4byte		.L500
	.uleb128	295
	.uleb128	44
	.byte		"PinPad"
	.byte		0
	.4byte		.L485
	.4byte		.L516
.L517:
	.sleb128	4
	.4byte		.L500
	.uleb128	297
	.uleb128	42
	.byte		"u16PinDescWord"
	.byte		0
	.4byte		.L482
	.4byte		.L518
.L519:
	.sleb128	4
	.4byte		.L500
	.uleb128	298
	.uleb128	42
	.byte		"u8PinDescBitOffset"
	.byte		0
	.4byte		.L488
	.4byte		.L520
	.section	.debug_info,,n
.L521:
	.sleb128	6
	.4byte		.L500
	.uleb128	299
	.uleb128	42
	.byte		"PadInMuxData"
	.byte		0
	.4byte		.L522
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L524:
	.sleb128	4
	.4byte		.L500
	.uleb128	301
	.uleb128	44
	.byte		"PinCfgRegIndex"
	.byte		0
	.4byte		.L485
	.4byte		.L525
.L526:
	.sleb128	4
	.4byte		.L500
	.uleb128	302
	.uleb128	44
	.byte		"PinCfgRegValue"
	.byte		0
	.4byte		.L527
	.4byte		.L528
.L529:
	.sleb128	4
	.4byte		.L500
	.uleb128	303
	.uleb128	44
	.byte		"u16InMuxRegIndex"
	.byte		0
	.4byte		.L482
	.4byte		.L530
.L531:
	.sleb128	4
	.4byte		.L500
	.uleb128	304
	.uleb128	44
	.byte		"InMuxRegValue"
	.byte		0
	.4byte		.L527
	.4byte		.L532
.L533:
	.sleb128	4
	.4byte		.L500
	.uleb128	305
	.uleb128	44
	.byte		"u16Index"
	.byte		0
	.4byte		.L482
	.4byte		.L534
.L535:
	.sleb128	6
	.4byte		.L500
	.uleb128	306
	.uleb128	44
	.byte		"PadInoutData"
	.byte		0
	.4byte		.L536
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L538:
	.sleb128	4
	.4byte		.L500
	.uleb128	308
	.uleb128	43
	.byte		"ePadDirection"
	.byte		0
	.4byte		.L539
	.4byte		.L541
	.section	.debug_info,,n
	.sleb128	0
.L497:
	.section	.debug_info,,n
.L543:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L544
	.uleb128	3135
	.uleb128	48
	.byte		"Port_aPadFunctInoutMuxSettings"
	.byte		0
	.4byte		.L545
	.section	.debug_info,,n
.L548:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L544
	.uleb128	3143
	.uleb128	48
	.byte		"Port_aPadFunctInMuxSettings"
	.byte		0
	.4byte		.L549
.L552:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L544
	.uleb128	3167
	.uleb128	34
	.byte		"Port_au16PinDescription"
	.byte		0
	.4byte		.L553
	.section	.debug_info,,n
.L556:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L544
	.uleb128	3174
	.uleb128	33
	.byte		"Port_au16PadFunctInMuxIndex"
	.byte		0
	.4byte		.L557
	.section	.debug_info,,n
.L537:
	.sleb128	8
	.4byte		.L559
	.uleb128	129
	.uleb128	1
	.4byte		.L560-.L2
	.uleb128	8
	.section	.debug_info,,n
.L237:
	.sleb128	9
	.byte		"u16MSCR"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L238:
	.sleb128	9
	.byte		"u8Mode"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L239:
	.sleb128	9
	.byte		"u16InMuxId"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L240:
	.sleb128	9
	.byte		"u8InMuxCode"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L560:
.L523:
	.sleb128	8
	.4byte		.L559
	.uleb128	129
	.uleb128	1
	.4byte		.L561-.L2
	.uleb128	4
.L235:
	.sleb128	9
	.byte		"u16InMuxId"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L236:
	.sleb128	9
	.byte		"u8InMuxCode"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L561:
.L511:
	.sleb128	8
	.4byte		.L559
	.uleb128	129
	.uleb128	1
	.4byte		.L562-.L2
	.uleb128	20
.L229:
	.sleb128	9
	.byte		"u16NumPins"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L230:
	.sleb128	9
	.byte		"u16NumUnusedPins"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L231:
	.sleb128	9
	.byte		"au16UnusedPads"
	.byte		0
	.4byte		.L563
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L232:
	.sleb128	9
	.byte		"pUnusedPadConfig"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L233:
	.sleb128	9
	.byte		"pUsedPadConfig"
	.byte		0
	.4byte		.L568
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L234:
	.sleb128	9
	.byte		"pPadSelConfig"
	.byte		0
	.4byte		.L572
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L562:
.L567:
	.sleb128	8
	.4byte		.L559
	.uleb128	129
	.uleb128	1
	.4byte		.L575-.L2
	.uleb128	8
.L227:
	.sleb128	9
	.byte		"u32MSCR"
	.byte		0
	.4byte		.L504
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L228:
	.sleb128	9
	.byte		"u8PDO"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L575:
.L571:
	.sleb128	8
	.4byte		.L559
	.uleb128	129
	.uleb128	1
	.4byte		.L576-.L2
	.uleb128	20
.L219:
	.sleb128	9
	.byte		"u16SIUPin"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	9
	.byte		"u32MSCR"
	.byte		0
	.4byte		.L504
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	9
	.byte		"u32ODC"
	.byte		0
	.4byte		.L504
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	9
	.byte		"u8PDO"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L223:
	.sleb128	9
	.byte		"u8PDDir"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L224:
	.sleb128	9
	.byte		"bGPIO"
	.byte		0
	.4byte		.L577
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L225:
	.sleb128	9
	.byte		"bDC"
	.byte		0
	.4byte		.L577
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L226:
	.sleb128	9
	.byte		"bMC"
	.byte		0
	.4byte		.L577
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L576:
	.section	.debug_info,,n
.L540:
	.sleb128	10
	.4byte		.L559
	.uleb128	129
	.uleb128	1
	.4byte		.L578-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"PORT_PIN_IN"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"PORT_PIN_OUT"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"PORT_PIN_INOUT"
	.byte		0
	.sleb128	2
	.sleb128	0
.L578:
	.section	.debug_info,,n
.L483:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L482:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L483
.L485:
	.sleb128	13
	.byte		"Port_InternalPinIdType"
	.byte		0
	.4byte		.L482
.L489:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L488:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L489
.L487:
	.sleb128	13
	.byte		"Port_PinModeType"
	.byte		0
	.4byte		.L488
.L501:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L488
.L505:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L504:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L505
.L503:
	.sleb128	13
	.byte		"Port_PinType"
	.byte		0
	.4byte		.L504
.L510:
	.sleb128	13
	.byte		"Port_ConfigType"
	.byte		0
	.4byte		.L511
	.section	.debug_info,,n
.L509:
	.sleb128	14
	.4byte		.L510
	.section	.debug_info,,n
.L508:
	.sleb128	15
	.4byte		.L509
.L522:
	.sleb128	13
	.byte		"Port_InMuxSettingType"
	.byte		0
	.4byte		.L523
.L527:
	.sleb128	13
	.byte		"Port_RegValueType"
	.byte		0
	.4byte		.L504
.L536:
	.sleb128	13
	.byte		"Port_InoutSettingType"
	.byte		0
	.4byte		.L537
.L539:
	.sleb128	13
	.byte		"Port_PinDirectionType"
	.byte		0
	.4byte		.L540
.L547:
	.sleb128	14
	.4byte		.L536
	.section	.debug_info,,n
.L545:
	.sleb128	16
	.4byte		.L546-.L2
	.4byte		.L547
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	312
	.sleb128	0
.L546:
.L551:
	.sleb128	14
	.4byte		.L522
.L549:
	.sleb128	16
	.4byte		.L550-.L2
	.4byte		.L551
	.sleb128	17
	.uleb128	1358
	.sleb128	0
.L550:
.L555:
	.sleb128	14
	.4byte		.L482
.L553:
	.sleb128	16
	.4byte		.L554-.L2
	.4byte		.L555
	.sleb128	17
	.uleb128	44
	.sleb128	17
	.uleb128	15
	.sleb128	0
.L554:
.L557:
	.sleb128	16
	.4byte		.L558-.L2
	.4byte		.L555
	.sleb128	17
	.uleb128	255
	.sleb128	0
.L558:
.L563:
	.sleb128	15
	.4byte		.L555
.L566:
	.sleb128	13
	.byte		"Port_Siul2_UnUsedPinConfigType"
	.byte		0
	.4byte		.L567
.L565:
	.sleb128	14
	.4byte		.L566
.L564:
	.sleb128	15
	.4byte		.L565
.L570:
	.sleb128	13
	.byte		"Port_Siul2_PinConfigType"
	.byte		0
	.4byte		.L571
.L569:
	.sleb128	14
	.4byte		.L570
.L568:
	.sleb128	15
	.4byte		.L569
.L574:
	.sleb128	13
	.byte		"Port_Siul2_PadSelConfigType"
	.byte		0
	.4byte		.L504
.L573:
	.sleb128	14
	.4byte		.L574
.L572:
	.sleb128	15
	.4byte		.L573
.L577:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L489
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L475:
	.sleb128	0
.L471:

	.section	.debug_loc,,n
	.align	0
.L486:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L490:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),7
	.d2locend
.L492:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo2),5
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),4
	.d2locend
.L494:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),5
	.d2locend
.L506:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),31
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),31
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),31
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),31
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),31
	.d2locend
.L507:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo20),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),25
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),4
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),25
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo17),25
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),25
	.d2locend
.L512:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo21),5
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo17),30
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),30
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),5
	.d2locend
.L514:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),29
	.d2locend
.L516:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),8
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo35),8
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),8
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo38),8
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo39),8
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo17),8
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),8
	.d2locend
.L518:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),4
	.d2locend
.L520:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo45),0
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),0
	.d2locend
.L525:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo21),8
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo19),28
	.d2locend
.L528:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo19),27
	.d2locend
.L530:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo19),26
	.d2locend
.L532:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo19),24
	.d2locend
.L534:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo56),0
	.d2locend
.L541:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo25),25
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Port_Ipw_SetPinMode"
	.wrcm.nstrlist "calls", "Port_Ipw_GetIndexForInoutEntry","Port_Siul2_SetGpioDirChangeability","Port_Siul2_SetGpioPadOutput","Port_Siul2_SetPinDirection","Port_Siul2_SetPinMode"
	.wrcm.nint32 "frameSize", 64
	.wrcm.end
	.wrcm.nelem "Port_Ipw_GetIndexForInoutEntry"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Port_Ipw.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Port_Ipw.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Port_Ipw.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Port_Ipw.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Port_Ipw.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Port_Ipw.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Port\ssc\make\..\..\generator\integration_package\src\Port_Ipw.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
