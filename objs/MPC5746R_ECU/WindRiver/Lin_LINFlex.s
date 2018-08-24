#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Lin_LINFlex.c"
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
# static FUNC (void, LIN_CODE) Lin_Linflex_CopyData(CONST(uint8, AUTOMATIC) u8Channel, \
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L735:
	.section	.invalid_TEXT,,c
#$$ld
.L731:
	.0byte		.L729
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_LINFlex.c"
        .d2line         406,30
#$$ld
.L738:

#$$bf	Lin_Linflex_CopyData,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
Lin_Linflex_CopyData:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo7:
	stw		r0,20(r1)		# u8tempDataLength=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8Channel=r3 u8Channel=r3
	mr		r4,r4		# pu8LinSduPtr=r4 pu8LinSduPtr=r4
	.d2prologue_end
#                                                   P2VAR(uint8, AUTOMATIC, LIN_APPL_DATA) pu8LinSduPtr \
#                                                   )
# {
#     VAR(uint8, AUTOMATIC) u8tempDataLength;
#     VAR(uint8, AUTOMATIC) u8Loop;
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
# 
#     /* Get the hardware Lin channel from logical channel */
#      u8Lin_LINFlex = Lin_pChannelConfigPtr[u8Channel]->u8LinHwChannel;
	.d2line		415
	lis		r5,Lin_pChannelConfigPtr@ha		# u8Lin_LINFlex=r5
.Llo13:
	e_add16i		r5,r5,Lin_pChannelConfigPtr@l		# u8Lin_LINFlex=r5 u8Lin_LINFlex=r5
	rlwinm		r3,r3,2,22,29		# u8Channel=r3 u8Channel=r3
	lwzx		r3,r5,r3		# u8Channel=r3 u8Lin_LINFlex=r5
	lbz		r5,1(r3)		# u8Lin_LINFlex=r5 u8Channel=r3
	mr		r5,r5		# u8Lin_LINFlex=r5 u8Lin_LINFlex=r5
#  
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u8tempDataLength = (uint8)((( REG_READ32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex)) & LINFLEX_BIDR_DFL_NOR_MASK_U32)  >> 10U) + 1UL);
	.d2line		422
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Channel=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Channel=r3 u8Channel=r3
	rlwinm		r7,r5,2,22,29		# u8Lin_LINFlex=r5
	lwzx		r3,r3,r7		# u8Channel=r3 u8Channel=r3
	lwz		r3,52(r3)		# u8Channel=r3 u8Channel=r3
	rlwinm		r3,r3,22,29,31		# u8Channel=r3 u8Channel=r3
	addi		r0,r3,1		# u8tempDataLength=r0 u8Channel=r3
# 
#     /* Data Length Calculation */
#     if (u8tempDataLength < 5U)
	.d2line		425
	rlwinm		r7,r0,0,24,31		# u8tempDataLength=r0
	se_cmpli	r7,5
	bc		0,0,.L446	# ge
#     {
#         for (u8Loop = (uint8) 0U; u8Loop < u8tempDataLength; u8Loop++)
	.d2line		427
.Llo2:
	diab.li		r3,0		# u8Loop=r3
.L447:
.Llo8:
	rlwinm		r6,r3,0,24,31		# u8Loop=r3
	rlwinm		r7,r0,0,24,31		# u8tempDataLength=r0
	se_cmp		r6,r7
	bc		0,0,.L446	# ge
#         {
#             /* Copy LSB data received in pu8LinSduPtr[] buffer */
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             *
#             * @violates @ref Lin_LINFlex_c_REF_4 pointer arithmetic other
#             *                                    than array indexing used
#             */
#             pu8LinSduPtr[u8Loop] = (uint8)((REG_READ32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex)) >> (u8Loop * 8U)) & LINFLEX_BDRL_DATA0_MASK_U32);
	.d2line		438
	lis		r6,Linflex_au32BaseAddrs@ha
	e_add16i		r6,r6,Linflex_au32BaseAddrs@l
	rlwinm		r7,r5,2,22,29		# u8Lin_LINFlex=r5
	lwzx		r6,r6,r7
	lwz		r6,56(r6)
	rlwinm		r7,r3,3,21,28		# u8Loop=r3
	srw		r6,r6,r7
	rlwinm		r7,r3,0,24,31		# u8Loop=r3
	stbx		r6,r4,r7		# pu8LinSduPtr=r4
#         }
	.d2line		439
	diab.addi		r6,r3,1		# u8Loop=r3
	se_addi		r3,1		# u8Loop=r3 u8Loop=r3
	b		.L447
.L446:
#     }
# 
#     if (u8tempDataLength > 4U)
	.d2line		442
	rlwinm		r7,r0,0,24,31		# u8tempDataLength=r0
	se_cmpli	r7,4
	bc		0,1,.L450	# le
#     {
#         for (u8Loop = 0U; u8Loop < 4U; u8Loop++)
	.d2line		444
.Llo9:
	diab.li		r3,0		# u8Loop=r3
.L451:
.Llo10:
	rlwinm		r7,r3,0,24,31		# u8Loop=r3
	se_cmpli	r7,4
	bc		0,0,.L453	# ge
#         {
#             /* Copy LSB data received in pu8LinSduPtr[] buffer */
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             *
#             * @violates @ref Lin_LINFlex_c_REF_4 pointer arithmetic other
#             *                                    than array indexing used
#             */
#             pu8LinSduPtr[u8Loop] = (uint8)((REG_READ32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex)) >> (u8Loop * 8U))& LINFLEX_BDRL_DATA0_MASK_U32);
	.d2line		455
	lis		r6,Linflex_au32BaseAddrs@ha
	e_add16i		r6,r6,Linflex_au32BaseAddrs@l
	rlwinm		r7,r5,2,22,29		# u8Lin_LINFlex=r5
	lwzx		r6,r6,r7
	lwz		r6,56(r6)
	rlwinm		r7,r3,3,21,28		# u8Loop=r3
	srw		r6,r6,r7
	rlwinm		r7,r3,0,24,31		# u8Loop=r3
	stbx		r6,r4,r7		# pu8LinSduPtr=r4
#         }
	.d2line		456
	diab.addi		r7,r3,1		# u8Loop=r3
	se_addi		r3,1		# u8Loop=r3 u8Loop=r3
	b		.L451
.L453:
# 
#         for (u8Loop = 4U; u8Loop < u8tempDataLength; u8Loop++)
	.d2line		458
.Llo11:
	diab.li		r3,4		# u8Loop=r3
.L454:
.Llo12:
	rlwinm		r6,r3,0,24,31		# u8Loop=r3
	rlwinm		r7,r0,0,24,31		# u8tempDataLength=r0
	se_cmp		r6,r7
	bc		0,0,.L450	# ge
#         {
#             /* Copy MSB data received in pu8LinSduPtr[] buffer */
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             *
#             * @violates @ref Lin_LINFlex_c_REF_4 pointer arithmetic other
#             *                                    than array indexing used
#             */
#             pu8LinSduPtr[u8Loop] = (uint8)((REG_READ32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex)) >> ((u8Loop -  4U) *  8U))&LINFLEX_BDRM_DATA4_MASK_U32);
	.d2line		469
	lis		r6,Linflex_au32BaseAddrs@ha
	e_add16i		r6,r6,Linflex_au32BaseAddrs@l
	rlwinm		r7,r5,2,22,29		# u8Lin_LINFlex=r5
	lwzx		r6,r6,r7
	lwz		r7,60(r6)
	rlwinm		r6,r3,3,21,28		# u8Loop=r3
	diab.addi		r6,r6,-32
	srw		r7,r7,r6
	rlwinm		r6,r3,0,24,31		# u8Loop=r3
	stbx		r7,r4,r6		# pu8LinSduPtr=r4
#         }
	.d2line		470
	diab.addi		r6,r3,1		# u8Loop=r3
	se_addi		r3,1		# u8Loop=r3 u8Loop=r3
	b		.L454
.L450:
#     }
#     /* Release Message Buffer */
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_RMB_MASK_U32);
	.d2line		478
.Llo5:
	diab.li		r3,512		# u8Channel=r3
.Llo3:
	lis		r4,Linflex_au32BaseAddrs@ha		# pu8LinSduPtr=r4
.Llo6:
	e_add16i		r4,r4,Linflex_au32BaseAddrs@l		# pu8LinSduPtr=r4 pu8LinSduPtr=r4
.Llo14:
	rlwinm		r5,r5,2,22,29		# u8Lin_LINFlex=r5 u8Lin_LINFlex=r5
.Llo15:
	lwzx		r4,r4,r5		# pu8LinSduPtr=r4 pu8LinSduPtr=r4
	stw		r3,8(r4)		# pu8LinSduPtr=r4 u8Channel=r3
# }
	.d2line		479
	.d2epilogue_begin
	lwz		r0,20(r1)		# u8tempDataLength=r0
	mtspr		lr,r0		# u8tempDataLength=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L739:
	.type		Lin_Linflex_CopyData,@function
	.size		Lin_Linflex_CopyData,.-Lin_Linflex_CopyData
# Number of nodes = 163

# Allocations for Lin_Linflex_CopyData
#	?a4		u8Channel
#	?a5		pu8LinSduPtr
#	?a6		u8tempDataLength
#	?a7		u8Loop
#	?a8		u8Lin_LINFlex
# FUNC (Std_ReturnType, LIN_CODE) Lin_Linflex_CheckWakeup(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         505,33
#$$ld
.L756:

#$$bf	Lin_Linflex_CheckWakeup,interprocedural,rasave,nostackparams
	.globl		Lin_Linflex_CheckWakeup
	.d2_cfa_start __cie
Lin_Linflex_CheckWakeup:
.Llo16:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8Channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# u8Channel=r0 u8Channel=r3
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) u8TempReturn = (uint8)FALSE;
	.d2line		507
	diab.li		r3,0		# u8TempReturn=r3
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
# 
#     /* Get the hardware Lin channel from logical channel */
#      u8Lin_LINFlex = Lin_pChannelConfigPtr[u8Channel]->u8LinHwChannel;
	.d2line		511
.Llo17:
	lis		r3,Lin_pChannelConfigPtr@ha		# u8TempReturn=r3
.Llo26:
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l		# u8TempReturn=r3 u8TempReturn=r3
.Llo18:
	rlwinm		r0,r0,2,22,29		# u8Channel=r0 u8Channel=r0
.Llo19:
	lwzx		r3,r3,r0		# u8TempReturn=r3 u8TempReturn=r3
	lbz		r31,1(r3)		# u8Lin_LINFlex=r31 u8TempReturn=r3
	mr		r31,r31		# u8Lin_LINFlex=r31 u8Lin_LINFlex=r31
#  
#     /* check whether wake up flag has been set and wake up ISR is disabled */
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     if( LINFLEX_LINSR_WUF_MASK_U32== ( REG_READ32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINSR_WUF_MASK_U32))
	.d2line		519
	lis		r3,Linflex_au32BaseAddrs@ha		# u8TempReturn=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8TempReturn=r3 u8TempReturn=r3
	rlwinm		r0,r31,2,22,29		# u8Channel=r0 u8Lin_LINFlex=r31
	lwzx		r3,r3,r0		# u8TempReturn=r3 u8TempReturn=r3
	lwz		r0,8(r3)		# u8Channel=r0 u8TempReturn=r3
.Llo20:
	se_btsti		r0,26		# u8Channel=r0
	bc		1,2,.L464	# eq
#     {
#         /* read the Wake-up Interrupt Enable request */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         if (LINFLEX_LINIER_WUIE_MASK_U32== ( REG_READ32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINIER_WUIE_MASK_U32))
	.d2line		527
.Llo21:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8TempReturn=r3
.Llo27:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8TempReturn=r3 u8TempReturn=r3
	rlwinm		r0,r31,2,22,29		# u8Channel=r0 u8Lin_LINFlex=r31
	lwzx		r3,r3,r0		# u8TempReturn=r3 u8TempReturn=r3
	lwz		r0,4(r3)		# u8Channel=r0 u8TempReturn=r3
.Llo22:
	se_btsti		r0,26		# u8Channel=r0
	bc		1,2,.L465	# eq
#         {
#             u8TempReturn = (uint8)FALSE;
	.d2line		529
.Llo23:
	diab.li		r3,0		# u8TempReturn=r3
.Llo28:
	b		.L467
.L465:
#         }
#         else
#         {
#             /* LIN channel with wake up support disabled has been woken up */
#             /* Clear Wake-Up flag */
#             /* Note: all flags have to be cleared by writing a 1 to the flags -> writing 0 has
#                     no effect */
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_WUF_MASK_U32);
	.d2line		542
.Llo29:
	diab.li		r4,32
	lis		r3,Linflex_au32BaseAddrs@ha		# u8TempReturn=r3
.Llo30:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8TempReturn=r3 u8TempReturn=r3
	rlwinm		r0,r31,2,22,29		# u8Channel=r0 u8Lin_LINFlex=r31
	lwzx		r3,r3,r0		# u8TempReturn=r3 u8TempReturn=r3
	stw		r4,8(r3)		# u8TempReturn=r3
#             SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_00();
	.d2line		543
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_00
#             {
#                 /* Exit from Sleep mode and enters in Init mode */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_BIT_CLEAR32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR1_SLEEP_MASK_U32);
	.d2line		551
.Llo31:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8TempReturn=r3
.Llo32:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8TempReturn=r3 u8TempReturn=r3
	rlwinm		r31,r31,2,22,29		# u8Lin_LINFlex=r31 u8Lin_LINFlex=r31
.Llo37:
	lwzx		r3,r3,r31		# u8TempReturn=r3 u8TempReturn=r3
	lwz		r0,0(r3)		# u8Channel=r0 u8TempReturn=r3
.Llo24:
	.diab.bclri		r0,30		# u8Channel=r0
	stw		r0,0(r3)		# u8TempReturn=r3 u8Channel=r0
#             }
#             SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_00();
	.d2line		553
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_00
#             /* Set the returned value to TRUE */
#             u8TempReturn = (uint8)TRUE;
	.d2line		555
.Llo25:
	diab.li		r3,1		# u8TempReturn=r3
.Llo33:
	b		.L467
.L464:
#         }
#     }
#     else
#     {
#       u8TempReturn = (uint8)FALSE;
	.d2line		560
.Llo34:
	diab.li		r3,0		# u8TempReturn=r3
.L467:
#     }
# 
#     return u8TempReturn;
	.d2line		563
.Llo35:
	rlwinm		r3,r3,0,24,31		# u8TempReturn=r3 u8TempReturn=r3
# }
	.d2line		564
	.d2epilogue_begin
.Llo36:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8Channel=r0
	mtspr		lr,r0		# u8Channel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L757:
	.type		Lin_Linflex_CheckWakeup,@function
	.size		Lin_Linflex_CheckWakeup,.-Lin_Linflex_CheckWakeup
# Number of nodes = 87

# Allocations for Lin_Linflex_CheckWakeup
#	?a4		u8Channel
#	?a5		$$95
#	?a6		u8TempReturn
#	?a7		u8Lin_LINFlex
# FUNC(void, LIN_CODE) Lin_Linflex_InitChannel(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         576,22
#$$ld
.L767:

#$$bf	Lin_Linflex_InitChannel,interprocedural,rasave,nostackparams
	.globl		Lin_Linflex_InitChannel
	.d2_cfa_start __cie
Lin_Linflex_InitChannel:
.Llo38:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8Channel=r31 u8Channel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8BreakLength;
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
#     VAR(uint32, AUTOMATIC) u32Lin_register;
# 
#     /* Clear State of Bit Error flag */
#     Lin_Linflex_au8StateOfBEF[u8Channel] = 0u;
	.d2line		583
.Llo39:
	diab.li		r0,0
.Llo40:
	lis		r3,Lin_Linflex_au8StateOfBEF@ha
	e_add16i		r3,r3,Lin_Linflex_au8StateOfBEF@l
	rlwinm		r4,r31,0,24,31		# u8Channel=r31
	stbux		r0,r3,r4
# 
#     /* Get the hardware Lin channel from logical channel */
#      u8Lin_LINFlex = Lin_pChannelConfigPtr[u8Channel]->u8LinHwChannel;
	.d2line		586
	lis		r3,Lin_pChannelConfigPtr@ha
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
	rlwinm		r0,r31,2,22,29		# u8Channel=r31
	lwzux		r4,r3,r0
	lbz		r29,1(r4)
.Llo47:
	mr		r29,r29		# u8Lin_LINFlex=r29 u8Lin_LINFlex=r29
#  
#     /* Get the Break Lenght choosen for the hardware Lin channel from logical channel */
#     u8BreakLength = Lin_pChannelConfigPtr[u8Channel]->u8LinChannelBreakLength;
	.d2line		589
	lis		r3,Lin_pChannelConfigPtr@ha
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
	lwzux		r4,r3,r0
	lbz		r30,16(r4)
.Llo44:
	mr		r30,r30		# u8BreakLength=r30 u8BreakLength=r30
# 
#     /* Check whether wake up detection is enabled */
#      if ( (uint8) STD_ON == Lin_pChannelConfigPtr[u8Channel]->u16LinChannelWakeupSupport)
	.d2line		592
	lis		r3,Lin_pChannelConfigPtr@ha
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
	lwzx		r3,r3,r0
	lhz		r0,8(r3)
	se_cmpi		r0,1
	bc		0,2,.L472	# ne
#      {
#         /* Check whether Wake up flag set */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         if(LINFLEX_LINSR_WUF_MASK_U32== ( REG_READ32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINSR_WUF_MASK_U32))
	.d2line		600
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r0,r29,2,22,29		# u8Lin_LINFlex=r29
	lwzx		r3,r3,r0
	lwz		r0,8(r3)
	se_btsti		r0,26
	bc		1,2,.L472	# eq
#         {
#             /* The wake-up shall directly be reported to the EcuM */
#             /* via EcuM_SetWakeupEvent call-back function. */
#              EcuM_SetWakeupEvent(Lin_pChannelConfigPtr[u8Channel]->LinChannelEcuMWakeupSource);
	.d2line		604
	lis		r3,Lin_pChannelConfigPtr@ha
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
	rlwinm		r0,r31,2,22,29		# u8Channel=r31
	lwzx		r3,r3,r0
	lwz		r3,12(r3)
	bl		EcuM_SetWakeupEvent
.L472:
#          }
#     }
# 
#     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_01();
	.d2line		608
.Llo41:
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_01
#     {
#         /* Switch to Initialization mode */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR1_INIT_MASK_U32);
	.d2line		616
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r5,r29,2,22,29		# u32Lin_register=r5 u8Lin_LINFlex=r29
	lwzx		r4,r3,r5
	lwz		r0,0(r4)
	.diab.bseti		r0,31
	stw		r0,0(r4)
#         /* Clear sleep mode */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR1_SLEEP_MASK_U32);
	.d2line		623
	lwzx		r4,r3,r5
	lwz		r0,0(r4)
	.diab.bclri		r0,30
	stw		r0,0(r4)
#         /* Enable Lin Mode */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_UARTCR_ADDR32(u8Lin_LINFlex), LINFLEX_UARTCR_UART_MASK_U32);
	.d2line		630
	lwzx		r4,r3,r5
	lwz		r0,16(r4)
	.diab.bclri		r0,31
	stw		r0,16(r4)
#         /* Clear master break length*/
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR1_MBL_MASK_U32);
	.d2line		637
	lwzx		r3,r3,r5
	lwz		r0,0(r3)
	rlwinm		r0,r0,0,24,19
	stw		r0,0(r3)
#     }
#     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_01();
	.d2line		639
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_01
# 
#     /* Read value of CR1 register */
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u32Lin_register = REG_READ32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex));
	.d2line		647
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r0,r29,2,22,29		# u8Lin_LINFlex=r29
	lwzux		r4,r3,r0
	lwz		r3,0(r4)
.Llo49:
	mr		r3,r3		# u32Lin_register=r3 u32Lin_register=r3
#     /* Enable Master mode */
#     /* Set By-pass filter bit to its reset value */
#     /* Set Break Length */
#     /* Checksum calculation is done by Hardware */
#     /* Checksum field is sent after the required number of data bytes is sent */
#     /* Disable LIN Auto Synchronization */
#     /* Disable Loop Back Mode */
#     /* Set Receiver Buffer Locked mode to its default value */
#     /* Disable AWUM bit, software will take care clear sleep bit */
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), (uint32)((uint32)(u32Lin_register \
	.d2line		662
.Llo45:
	rlwinm		r30,r30,8,20,23		# u8BreakLength=r30 u8BreakLength=r30
.Llo46:
	or		r3,r3,r30		# u32Lin_register=r30
	e_ori		r5,r3,144		# u32Lin_register=r5
	diab.li		r3,-61477
	and		r5,r5,r3		# u32Lin_register=r5 u32Lin_register=r5
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	lwzux		r4,r3,r0
	stw		r5,0(r4)		# u32Lin_register=r5
#                                                              | LINFLEX_LINCR1_MME_MASK_U32 \
#                                                              | LINFLEX_LINCR1_BF_MASK_U32 \
#                                                              | ((((uint32)u8BreakLength) << 8U) & LINFLEX_LINCR1_MBL_MASK_U32)) \
#                                                              & (uint32)((~LINFLEX_LINCR1_CCD_MASK_U32) \
#                                                              & (~LINFLEX_LINCR1_CFD_MASK_U32) \
#                                                              & (~LINFLEX_LINCR1_LASE_MASK_U32) \
#                                                              & (~LINFLEX_LINCR1_LBKM_MASK_U32) \
#                                                              & (~LINFLEX_LINCR1_RBLM_MASK_U32) \
#                                                              & (~LINFLEX_LINCR1_AWUM_MASK_U32))) \
#                );
#     /* Read value of CR2 register */
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u32Lin_register = REG_READ32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex));
	.d2line		679
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	lwzx		r4,r3,r0
	lwz		r6,48(r4)		# u32Lin_register=r6
	mr		r6,r6		# u32Lin_register=r6 u32Lin_register=r6
#     /* Bit error reset LIN state machine. */
#     /* Set 2 bits for the break delimiter */
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex), (uint32)((uint32)(u32Lin_register & (~LINFLEX_LINCR2_IOBE_MASK_U32)) | LINFLEX_LINCR2_TBDE_MASK_U32));
	.d2line		687
	rlwinm		r6,r6,0,18,15		# u32Lin_register=r6 u32Lin_register=r6
	.diab.bseti		r6,16		# u32Lin_register=r6
	mr		r5,r3
	lwzx		r4,r3,r0
	stw		r6,48(r4)		# u32Lin_register=r6
#     /* Initialize Baudrate Registers */
#     /* do not put semicolon after this macro it will violate MISRA 2004 14.3 rule */
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINFBRR_ADDR32(u8Lin_LINFlex), ((Lin_pcConfigPtr->pLin_Channel[u8Channel]->u32Lin_BaudRate_RegValue) \
	.d2line		695
	lis		r4,Lin_pcConfigPtr@ha
	lwz		r6,Lin_pcConfigPtr@l(r4)		# u32Lin_register=r6
.Llo42:
	rlwinm		r31,r31,2,22,29		# u8Channel=r31 u8Channel=r31
	se_add		r6,r31		# u32Lin_register=r6 u32Lin_register=r6 u8Channel=r31
	lwz		r6,4(r6)		# u32Lin_register=r6 u32Lin_register=r6
	lwz		r7,4(r6)		# u32Lin_register=r6
	rlwinm		r7,r7,0,28,31
	lwzux		r6,r5,r0		# u32Lin_register=r6 u32Lin_register=r5
	stw		r7,36(r6)		# u32Lin_register=r6
#                                                         & LINFLEX_LINFBRR_DIV_F_MASK_U32) \
#                                                        );
# #if IPV_LINFLEX < IPV_LINFLEX_04_00_00
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINIBRR_ADDR32(u8Lin_LINFlex), (((Lin_pcConfigPtr->pLin_Channel[u8Channel]->u32Lin_BaudRate_RegValue) \
#                                                         & LINFLEX_LINIBRR_DIV_M_MASK_U32)>>(uint8)16U) \
#                                                        );
# #elif IPV_LINFLEX >= IPV_LINFLEX_04_00_00
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINIBRR_ADDR32(u8Lin_LINFlex), (((Lin_pcConfigPtr->pLin_Channel[u8Channel]->u32Lin_BaudRate_RegValue) \
	.d2line		713
	lwz		r4,Lin_pcConfigPtr@l(r4)
	se_add		r31,r4		# u8Channel=r31 u8Channel=r31
	lwz		r4,4(r31)		# u8Channel=r31
	lwz		r4,4(r4)
	se_srwi		r4,8
	lwzx		r3,r3,r0
	stw		r4,40(r3)
#                                                         & LINFLEX_LINIBRR_DIV_M_MASK_U32)>>(uint8)8U) \
#                                                        );
# #endif
# 
#     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_02();
	.d2line		718
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_02
#     {
#     /* Enable Lin Timeout counter */
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_LTOM_MASK_U32);
#     #else
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_LTOM_MASK_U32);
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #else
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_LTOM_MASK_U32);
	.d2line		743
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r6,r29,2,22,29		# u32Lin_register=r6 u8Lin_LINFlex=r29
	lwzx		r4,r3,r6
	lwz		r0,24(r4)
	.diab.bclri		r0,21
	stw		r0,24(r4)
# #endif  /* defined (ERR_IPV_LINFLEX_0010) */
# 
#     /* LIN state machine reset to Idle on timeout event */
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
# #ifdef ERR_IPV_LINFLEX_0012
#     #if (ERR_IPV_LINFLEX_0012 == STD_ON)
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_IOT_MASK_U32);
	.d2line		755
	lwzx		r4,r3,r6
	lwz		r0,24(r4)
	.diab.bclri		r0,22
	stw		r0,24(r4)
#     #else
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_IOT_MASK_U32);
#     #endif  /* (ERR_IPV_LINFLEX_0012 == STD_ON) */
# #else
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_IOT_MASK_U32);
# #endif  /* ERR_IPV_LINFLEX_0012 */
# #else
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_IOT_MASK_U32);
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
# 
#     /* Timeout counter enable. */
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
#     #else
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #else
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
	.d2line		804
	lwzx		r4,r3,r6
	lwz		r0,24(r4)
	.diab.bseti		r0,23
	stw		r0,24(r4)
# #endif  /* defined (ERR_IPV_LINFLEX_0010) */
# 
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_RMB_MASK_U32);
	.d2line		812
	diab.li		r0,512
	mr		r4,r3
	lwzux		r5,r4,r6		# u32Lin_register=r5
	stw		r0,8(r5)		# u32Lin_register=r5
# 
#         /* Exit Init mode and switch to Normal mode */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR1_INIT_MASK_U32);
	.d2line		820
	lwzx		r3,r3,r6
	lwz		r0,0(r3)
	.diab.bclri		r0,31
	stw		r0,0(r3)
#     }
#     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_02();
	.d2line		822
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_02
# 
#     /* Enable Bit Error Interrupt */
#     /* Enable Checksum Error Interrupt */
#     /* Enable Frame Error Interrupt */
#     /* Enable Buffer Overrun Error Interrupt */
#     /* Enable Data Reception Complete Interrupt */
#     /* Enable Data Transmitted Interrupt  */
#     /* Disable Stuck at Zero Interrupt */
#     /* Disable Header Error Interrupt */
#     /* Disable LIN state Interrupt */
#     /* Disable wake up interrupt */
#     /* It will be enabled only when needed (after sending sleep command and at the end of */
#     /** the Lin_LINFlex_GoToSleepInternal()) and only for
#     *   Lin_pChannelConfigPtr[Channel]->u16LinChannelWakeupSupport == (uint8) STD_ON
#     */
#     /* Disable Data Buffer Full Interrupt */
#     /* Disable Data Buffer Empty Interrupt */
#     /* Disable Header Received Interrupt */
# 
#     /* Read value of LINIER register */
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u32Lin_register = REG_READ32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex));
	.d2line		848
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r29,r29,2,22,29		# u8Lin_LINFlex=r29 u8Lin_LINFlex=r29
.Llo48:
	lwzx		r4,r3,r29
	lwz		r5,4(r4)		# u32Lin_register=r5
	mr		r5,r5		# u32Lin_register=r5 u32Lin_register=r5
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
#     #if defined (ERR_IPV_LINFLEX_0010)
#         #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), (uint32)((uint32)(u32Lin_register \
#                                                              | LINFLEX_LINIER_BEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_CEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_FEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_BOIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_DRIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_DTIE_MASK_U32) \
#                                                              & (uint32)((~LINFLEX_LINIER_SZIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_HEIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_LSIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_WUIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_DBFIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_DBEIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_HRIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_OCIE_MASK_U32))) \
#                );
#         #else
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), (uint32)((uint32)(u32Lin_register \
#                                                              | LINFLEX_LINIER_BEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_CEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_FEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_BOIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_DRIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_DTIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_OCIE_MASK_U32) \
#                                                              & (uint32)((~LINFLEX_LINIER_SZIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_HEIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_LSIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_WUIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_DBFIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_DBEIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_HRIE_MASK_U32))) \
#                );
#         #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
#     #else
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), (uint32)((uint32)(u32Lin_register \
	.d2line		902
	diab.li		r4,29062
	or		r4,r4,r5		# u32Lin_register=r5
	diab.li		r5,-34938		# u32Lin_register=r5
	and		r4,r4,r5		# u32Lin_register=r5
	lwzx		r3,r3,r29
	stw		r4,4(r3)
#                                                              | LINFLEX_LINIER_BEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_CEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_FEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_BOIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_DRIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_DTIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_OCIE_MASK_U32) \
#                                                              & (uint32)((~LINFLEX_LINIER_SZIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_HEIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_LSIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_WUIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_DBFIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_DBEIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_HRIE_MASK_U32))) \
#                );
#     #endif  /* defined (ERR_IPV_LINFLEX_0010) */
# #else
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     REG_WRITE32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), (uint32)((uint32)(u32Lin_register \
#                                                              | LINFLEX_LINIER_BEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_CEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_FEIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_BOIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_DRIE_MASK_U32 \
#                                                              | LINFLEX_LINIER_DTIE_MASK_U32) \
#                                                              & (uint32)((~LINFLEX_LINIER_SZIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_HEIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_LSIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_WUIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_DBFIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_DBEIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_HRIE_MASK_U32) \
#                                                              & (~LINFLEX_LINIER_OCIE_MASK_U32))) \
#                );
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
# }
	.d2line		942
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo43:
	lwz		r0,36(r1)
.Llo50:
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo51:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L768:
	.type		Lin_Linflex_InitChannel,@function
	.size		Lin_Linflex_InitChannel,.-Lin_Linflex_InitChannel
# Number of nodes = 339

# Allocations for Lin_Linflex_InitChannel
#	?a4		u8Channel
#	?a5		$$103
#	?a6		$$102
#	?a7		$$101
#	?a8		$$100
#	?a9		$$99
#	?a10		$$98
#	?a11		$$97
#	?a12		$$96
#	?a13		u8BreakLength
#	?a14		u8Lin_LINFlex
#	?a15		u32Lin_register
# FUNC (Std_ReturnType, LIN_CODE) Lin_Linflex_SendHeader(CONST(uint8, AUTOMATIC) u8Channel, \
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         961,33
#$$ld
.L781:

#$$bf	Lin_Linflex_SendHeader,interprocedural,rasave,nostackparams
	.globl		Lin_Linflex_SendHeader
	.d2_cfa_start __cie
Lin_Linflex_SendHeader:
.Llo52:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8Channel=r31 u8Channel=r3
.Llo53:
	mr		r30,r4		# pPduInfoPtr=r30 pPduInfoPtr=r4
	.d2prologue_end
#                                                        P2CONST(Lin_PduType, AUTOMATIC, LIN_APPL_CONST) pPduInfoPtr \
#                                                       )
# {
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
#     VAR(uint32, AUTOMATIC) volatile u32counter = 0U;
	.d2line		966
.Llo54:
	diab.li		r0,0
	stw		r0,8(r1)
#     VAR(Std_ReturnType, AUTOMATIC) u8TmpReturn = (uint8)E_NOT_OK;
	.d2line		967
	diab.li		r28,1		# u8TmpReturn=r28
#     VAR(uint32, AUTOMATIC) u32Lin_register;
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#     VAR(uint32, AUTOMATIC) u32LINOCR_OC;
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
# 
#     /* Get the hardware Lin channel from logical channel */
#      u8Lin_LINFlex = Lin_pChannelConfigPtr[u8Channel]->u8LinHwChannel;
	.d2line		978
	lis		r3,Lin_pChannelConfigPtr@ha
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
	rlwinm		r4,r31,2,22,29		# u8Channel=r31
.Llo60:
	lwzx		r3,r3,r4
	lbz		r29,1(r3)		# u8Lin_LINFlex=r29
.Llo63:
	mr		r29,r29		# u8Lin_LINFlex=r29 u8Lin_LINFlex=r29
#  
#     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_03();
	.d2line		980
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_03
#     {
#         /** Stop any ongoing transmission */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR2_ABRQ_MASK_U32);
	.d2line		988
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r6,r29,2,22,29		# u8Lin_LINFlex=r29
	lwzx		r3,r3,r6
	lwz		r0,48(r3)
	.diab.bseti		r0,22
	stw		r0,48(r3)
#     }
#     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_03();
	.d2line		990
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_03
.L476:
# 
#     MCAL_FAULT_INJECTION_POINT(LINFLEX_FIP_1_T_TIME_OUT_1);
# 
#     /* wait till Cancellation of current frame */
#     while(u32counter <= LIN_TIMEOUT_LOOPS)
	.d2line		995
.Llo61:
	lwz		r0,8(r1)
	cmpli		0,0,r0,1000
	bc		1,1,.L479	# gt
#     {
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         if( LINFLEX_LINCR2_ABRQ_MASK_U32!= ( REG_READ32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINCR2_ABRQ_MASK_U32))
	.d2line		1002
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r6,r29,2,22,29		# u8Lin_LINFlex=r29
	lwzx		r3,r3,r6
	lwz		r0,48(r3)
	se_btsti		r0,22
	bc		0,2,.L478	# ne
#         {
#             u8TmpReturn = (uint8)E_OK;
	.d2line		1004
	diab.li		r28,0		# u8TmpReturn=r28
	b		.L479
.L478:
#             break;
#         }
#         u32counter++;
	.d2line		1007
	lwz		r3,8(r1)
	se_addi		r3,1
	stw		r3,8(r1)
	b		.L476
.L479:
#     }
#     if((uint8)E_OK == u8TmpReturn)
	.d2line		1009
	rlwinm		r3,r28,0,24,31		# u8TmpReturn=r28
	se_cmpi		r3,0
	bc		0,2,.L480	# ne
#     {
#         /* Reset error status global flag */
#         Lin_au8LinChFrameErrorStatus[u8Channel] = LIN_NO_ERROR;
	.d2line		1012
	diab.li		r0,0
	lis		r3,Lin_au8LinChFrameErrorStatus@ha
	e_add16i		r3,r3,Lin_au8LinChFrameErrorStatus@l
	rlwinm		r4,r31,0,24,31		# u8Channel=r31
	stbux		r0,r3,r4
# 
#         /* Set header status to TRUE if master wants to send the response frame */
#         if (LIN_MASTER_RESPONSE == pPduInfoPtr->Drc)
	.d2line		1015
	lbz		r0,2(r30)		# pPduInfoPtr=r30
	se_cmpi		r0,0
	bc		0,2,.L481	# ne
#         {
#             Lin_au8TransmitHeaderCommand[u8Channel] = LIN_TX_MASTER_RES_COMMAND;
	.d2line		1017
.Llo55:
	diab.li		r0,1
	lis		r3,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r3,r3,Lin_au8TransmitHeaderCommand@l
.Llo56:
	rlwinm		r31,r31,0,24,31		# u8Channel=r31 u8Channel=r31
.Llo57:
	stbux		r0,r3,r31
#             /* Update LIN channel frame operation status to LIN_CH_READY_STATE */
#             Lin_au8LinChFrameStatus[u8Channel] = LIN_CH_READY_STATE;
	.d2line		1019
	diab.li		r0,5
	lis		r3,Lin_au8LinChFrameStatus@ha
	e_add16i		r3,r3,Lin_au8LinChFrameStatus@l
	stbux		r0,r3,r31
	b		.L482
.L481:
#         }
#         else
#         {
#             Lin_au8TransmitHeaderCommand[u8Channel] = LIN_TX_SLAVE_RES_COMMAND;
	.d2line		1023
	diab.li		r0,2
	lis		r3,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r3,r3,Lin_au8TransmitHeaderCommand@l
.Llo58:
	rlwinm		r31,r31,0,24,31		# u8Channel=r31 u8Channel=r31
.Llo59:
	stbux		r0,r3,r31
#             Lin_au8LinChFrameStatus[u8Channel] = LIN_CH_RECEIVE_NOTHING_STATE;
	.d2line		1024
	diab.li		r0,8
	lis		r3,Lin_au8LinChFrameStatus@ha
	e_add16i		r3,r3,Lin_au8LinChFrameStatus@l
	stbux		r0,r3,r31
.L482:
#         }
# 
#         /* Release the Message buffer */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_RMB_MASK_U32);
	.d2line		1033
	diab.li		r0,512
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r6,r29,2,22,29		# u8Lin_LINFlex=r29
	lwzux		r4,r3,r6		# u32Lin_register=r4
.Llo73:
	stw		r0,8(r4)		# u32Lin_register=r4
#         /* Clear the Noise Flag of LIN Error Status Register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_NF_MASK_U32);
	.d2line		1040
	diab.li		r0,1
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	lwzux		r4,r3,r6		# u32Lin_register=r4
	stw		r0,12(r4)		# u32Lin_register=r4
#         /* Read value of BIDR register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         u32Lin_register = REG_READ32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex));
	.d2line		1047
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	lwzx		r4,r3,r6		# u32Lin_register=r4
	lwz		r0,52(r4)		# u32Lin_register=r4
	mr		r0,r0		# u32Lin_register=r0 u32Lin_register=r0
#         /* Prepare header */
#         /* First step Clear previous ID and Data Lenght */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#             REG_WRITE32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex), (uint32)(u32Lin_register & ~LINFLEX_BIDR_ID_MASK_U32 & ~(LINFLEX_BIDR_DFL_SET_MASK_U32 << 10U) & ~LINFLEX_BIDR_DFL_EXT_MASK_U32));
	.d2line		1055
	diab.li		r4,-64576		# u32Lin_register=r4
	and		r0,r0,r4		# u32Lin_register=r4
	mr		r4,r3
	lwzux		r5,r4,r6		# u32Lin_register=r4
	stw		r0,52(r5)
# 
#         /* Reset previous Data Bytes */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex), (uint32)(0x00000000));
	.d2line		1063
	diab.li		r0,0
	mr		r4,r3
	lwzux		r5,r4,r6		# u32Lin_register=r4
	stw		r0,56(r5)
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex), (uint32)(0x00000000));
	.d2line		1069
	mr		r4,r3
	lwzux		r5,r4,r6		# u32Lin_register=r4
	stw		r0,60(r5)
#         /* Read value of BIDR register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         u32Lin_register = REG_READ32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex));
	.d2line		1076
	lwzx		r3,r3,r6
	lwz		r3,52(r3)
	mr		r3,r3		# u32Lin_register=r3 u32Lin_register=r3
#         if (LIN_MASTER_RESPONSE == pPduInfoPtr->Drc)
	.d2line		1077
	lbz		r0,2(r30)		# pPduInfoPtr=r30
	se_cmpi		r0,0
	bc		0,2,.L483	# ne
#         {
#             /* do not transmit header here because its a master->slave frame
#             the header will be transmited together with the respose when calling SendResponse function*/
# 
#             /* Set new Identifier - Low parity bits are ignored - Calculated by LinFlex controller */
#             /* Set Data length */
#             /* Set Tx direction of the frame */
#             if (LIN_ENHANCED_CS == pPduInfoPtr->Cs)
	.d2line		1085
.Llo74:
	lbz		r0,1(r30)		# pPduInfoPtr=r30
.Llo75:
	se_cmpi		r0,0
	bc		0,2,.L484	# ne
#             {
#                 /* Set Enhanced Checksum for the frame */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_WRITE32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex), (uint32)((uint32)(u32Lin_register \
	.d2line		1093
.Llo64:
	lbz		r0,0(r30)		# pPduInfoPtr=r30
	rlwinm		r0,r0,0,26,31
	or		r0,r0,r3		# u32Lin_register=r3
	lbz		r3,3(r30)		# u32Lin_register=r3 pPduInfoPtr=r30
	diab.addi		r3,r3,-1		# u32Lin_register=r3 u32Lin_register=r3
	rlwinm		r3,r3,10,19,21		# u32Lin_register=r3 u32Lin_register=r3
	or		r0,r0,r3		# u32Lin_register=r3
	.diab.bseti		r0,22
	.diab.bclri		r0,23
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_register=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_register=r3 u32Lin_register=r3
.Llo65:
	rlwinm		r29,r29,2,22,29		# u8Lin_LINFlex=r29 u8Lin_LINFlex=r29
.Llo66:
	lwzx		r3,r3,r29		# u32Lin_register=r3 u32Lin_register=r3
	stw		r0,52(r3)		# u32Lin_register=r3
	b		.L480
.L484:
#                                                                        | (uint32)(((uint32)pPduInfoPtr->Pid) & LINFLEX_BIDR_ID_MASK_U32) \
#                                                                        | (uint32)((((uint32)pPduInfoPtr->Dl - 1U) & LINFLEX_BIDR_DFL_SET_MASK_U32) << 10U) \
#                                                                        | LINFLEX_BIDR_DIR_MASK_U32) \
#                                                                        & (~LINFLEX_BIDR_CCS_MASK_U32)) \
#                            );
#             }
#             else
#             {
#                 /* Set Classic Checksum for the frame */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_WRITE32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex), (uint32)(u32Lin_register \
	.d2line		1108
	lbz		r0,0(r30)		# pPduInfoPtr=r30
	rlwinm		r0,r0,0,26,31
	or		r0,r0,r3		# u32Lin_register=r3
	lbz		r3,3(r30)		# u32Lin_register=r3 pPduInfoPtr=r30
	diab.addi		r3,r3,-1		# u32Lin_register=r3 u32Lin_register=r3
	rlwinm		r3,r3,10,19,21		# u32Lin_register=r3 u32Lin_register=r3
	or		r0,r0,r3		# u32Lin_register=r3
	e_ori		r0,r0,768
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_register=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_register=r3 u32Lin_register=r3
.Llo67:
	rlwinm		r29,r29,2,22,29		# u8Lin_LINFlex=r29 u8Lin_LINFlex=r29
.Llo68:
	lwzx		r3,r3,r29		# u32Lin_register=r3 u32Lin_register=r3
	stw		r0,52(r3)		# u32Lin_register=r3
	b		.L480
.L483:
#                                                                       | (uint32)(((uint32)pPduInfoPtr->Pid) & LINFLEX_BIDR_ID_MASK_U32) \
#                                                                       | (uint32)((((uint32)pPduInfoPtr->Dl - 1U) & LINFLEX_BIDR_DFL_SET_MASK_U32) << 10U) \
#                                                                       | LINFLEX_BIDR_DIR_MASK_U32 \
#                                                                       | LINFLEX_BIDR_CCS_MASK_U32) \
#                            );
#             }
#         }
#         else
#         {
#             /* Set new Identifier - Low parity bits are ignored - Calculated by LinFlex controller */
#             /* Set Data length */
#             /* Set Rx direction of the frame. */
#             if (LIN_ENHANCED_CS == pPduInfoPtr->Cs)
	.d2line		1121
.Llo69:
	lbz		r0,1(r30)		# pPduInfoPtr=r30
	se_cmpi		r0,0
	bc		0,2,.L487	# ne
#             {
#                 /* Set Enhanced Checksum for the frame */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_WRITE32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex), (uint32)((uint32)(u32Lin_register \
	.d2line		1129
	lbz		r0,0(r30)		# pPduInfoPtr=r30
	rlwinm		r0,r0,0,26,31
	or		r0,r0,r3		# u32Lin_register=r3
	lbz		r3,3(r30)		# u32Lin_register=r3 pPduInfoPtr=r30
	diab.addi		r3,r3,-1		# u32Lin_register=r3 u32Lin_register=r3
	rlwinm		r3,r3,10,19,21		# u32Lin_register=r3 u32Lin_register=r3
	or		r0,r0,r3		# u32Lin_register=r3
	rlwinm		r0,r0,0,24,21
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_register=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_register=r3 u32Lin_register=r3
	rlwinm		r6,r29,2,22,29		# u8Lin_LINFlex=r29
	lwzx		r3,r3,r6		# u32Lin_register=r3 u32Lin_register=r3
	stw		r0,52(r3)		# u32Lin_register=r3
	b		.L488
.L487:
#                                                                        | (((uint32)pPduInfoPtr->Pid) & LINFLEX_BIDR_ID_MASK_U32) \
#                                                                        | ((((uint32)pPduInfoPtr->Dl - 1U) & LINFLEX_BIDR_DFL_SET_MASK_U32) << 10U)) \
#                                                                        & (uint32)((~LINFLEX_BIDR_DIR_MASK_U32) \
#                                                                        & (~LINFLEX_BIDR_CCS_MASK_U32))) \
#                            );
#             }
#             else
#             {
#                 /* Set Classic Checksum for the frame */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_WRITE32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex), (uint32)((uint32)(u32Lin_register \
	.d2line		1144
	lbz		r0,0(r30)		# pPduInfoPtr=r30
	rlwinm		r0,r0,0,26,31
	or		r0,r0,r3		# u32Lin_register=r3
	lbz		r3,3(r30)		# u32Lin_register=r3 pPduInfoPtr=r30
	diab.addi		r3,r3,-1		# u32Lin_register=r3 u32Lin_register=r3
	rlwinm		r3,r3,10,19,21		# u32Lin_register=r3 u32Lin_register=r3
	or		r0,r0,r3		# u32Lin_register=r3
	.diab.bseti		r0,23
	.diab.bclri		r0,22
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_register=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_register=r3 u32Lin_register=r3
	rlwinm		r6,r29,2,22,29		# u8Lin_LINFlex=r29
	lwzx		r3,r3,r6		# u32Lin_register=r3 u32Lin_register=r3
	stw		r0,52(r3)		# u32Lin_register=r3
.L488:
#                                                                        | (((uint32)pPduInfoPtr->Pid) & LINFLEX_BIDR_ID_MASK_U32) \
#                                                                        | ((((uint32)pPduInfoPtr->Dl - 1U) & LINFLEX_BIDR_DFL_SET_MASK_U32) << 10U) \
#                                                                        | LINFLEX_BIDR_CCS_MASK_U32) \
#                                                                        & (~LINFLEX_BIDR_DIR_MASK_U32)) \
#                            );
#             }
#             SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_04();
	.d2line		1151
.Llo62:
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_04
#             {
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
#     #if defined (ERR_IPV_LINFLEX_0010)
#         #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#                 /**
#                 * Manually update OC1[7:0] (Output Compare Value 1) and OC2[7:0] (Output Compare Value 2) bits in the LINOCR (LIN Output Compare Register)
#                 * LINOCR[OC1] = LINTCSR[CNT] + 49 + LINTOCR[RTO] × (pPduInfoPtr->Dl + 1);
#                 * LINOCR[OC2] = LINTCSR[CNT] + 49 + LINTOCR[RTO] × (pPduInfoPtr->Dl + 1);
#                 */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_BIT_SET32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_OCF_MASK_U32);
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_BIT_SET32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 u32LINOCR_OC = ((((REG_READ32(LINFLEX_LINTOCR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINTOCR_RTO_MASK_U32) >> 8U) * ((uint32)pPduInfoPtr->Dl + 1U)) + \
#                                 (REG_READ32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINTCSR_CNT_MASK_U32) + 49U \
#                                ) & LINFLEX_LINOCR_OC1_MASK_U32;
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_WRITE32(LINFLEX_LINOCR_ADDR32(u8Lin_LINFlex), ((u32LINOCR_OC << 8U) & LINFLEX_LINOCR_OC2_MASK_U32) | u32LINOCR_OC);
#         #endif   /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
#     #endif /* defined (ERR_IPV_LINFLEX_0010) */
# #else
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
# #endif /* LIN_DISABLE_FRAME_TIMEOUT */
#                 /* Transmit Header */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_BIT_SET32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR2_HTRQ_MASK_U32);
	.d2line		1209
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_register=r3
.Llo76:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_register=r3 u32Lin_register=r3
.Llo70:
	rlwinm		r29,r29,2,22,29		# u8Lin_LINFlex=r29 u8Lin_LINFlex=r29
.Llo71:
	lwzx		r3,r3,r29		# u32Lin_register=r3 u32Lin_register=r3
	lwz		r0,48(r3)		# u32Lin_register=r3
	.diab.bseti		r0,23
	stw		r0,48(r3)		# u32Lin_register=r3
#             }
#             SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_04();
	.d2line		1211
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_04
.L480:
#         }
#     }
#     return u8TmpReturn;
	.d2line		1214
.Llo77:
	rlwinm		r3,r28,0,24,31		# u32Lin_register=r3 u8TmpReturn=r28
# }
	.d2line		1215
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo72:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L782:
	.type		Lin_Linflex_SendHeader,@function
	.size		Lin_Linflex_SendHeader,.-Lin_Linflex_SendHeader
# Number of nodes = 385

# Allocations for Lin_Linflex_SendHeader
#	?a4		u8Channel
#	?a5		pPduInfoPtr
#	?a6		$$105
#	?a7		$$104
#	?a8		u8Lin_LINFlex
#	SP,8		u32counter
#	?a9		u8TmpReturn
#	?a10		u32Lin_register
# FUNC (void, LIN_CODE) Lin_Linflex_SendResponse(CONST(uint8, AUTOMATIC) u8Channel, \
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1230,23
#$$ld
.L800:

#$$bf	Lin_Linflex_SendResponse,interprocedural,rasave,nostackparams
	.globl		Lin_Linflex_SendResponse
	.d2_cfa_start __cie
Lin_Linflex_SendResponse:
.Llo78:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo83:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8tempDataLength=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8Channel=r3 u8Channel=r3
	mr		r4,r4		# pPduInfoPtr=r4 pPduInfoPtr=r4
	.d2prologue_end
#                                                P2CONST(Lin_PduType, AUTOMATIC, LIN_APPL_CONST) pPduInfoPtr \
#                                               )
# {
#     VAR(uint8, AUTOMATIC) u8tempDataLength;
#     VAR(uint8, AUTOMATIC) u8Loop;
#     VAR(uint32, AUTOMATIC) u32tempBDR;
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#     VAR(uint32, AUTOMATIC) u32LINOCR_OC;
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #endif  /*(defined ERR_IPV_LINFLEX_0010)*/
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
# 
#     /* Get the hardware Lin channel from logical channel */
#      u8Lin_LINFlex = Lin_pChannelConfigPtr[u8Channel]->u8LinHwChannel;
	.d2line		1247
	lis		r5,Lin_pChannelConfigPtr@ha
	e_add16i		r5,r5,Lin_pChannelConfigPtr@l
	rlwinm		r3,r3,2,22,29		# u8Channel=r3 u8Channel=r3
	lwzx		r3,r5,r3		# u8Channel=r3
	lbz		r31,1(r3)		# u8Lin_LINFlex=r31 u8Channel=r3
	mr		r31,r31		# u8Lin_LINFlex=r31 u8Lin_LINFlex=r31
#  
#     /* Get data length */
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u8tempDataLength = ((uint8) ((( REG_READ32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex)) & LINFLEX_BIDR_DFL_NOR_MASK_U32)  >> 10U) + 1UL));
	.d2line		1255
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Channel=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Channel=r3 u8Channel=r3
	rlwinm		r5,r31,2,22,29		# u8Lin_LINFlex=r31
	lwzx		r3,r3,r5		# u8Channel=r3 u8Channel=r3
	lwz		r3,52(r3)		# u8Channel=r3 u8Channel=r3
	rlwinm		r3,r3,22,29,31		# u8Channel=r3 u8Channel=r3
	addi		r0,r3,1		# u8tempDataLength=r0 u8Channel=r3
# 
#     /* Fill buffer data registers: fill only BDRL or both BDRL and BDRM depending on data length */
#     /* If data length < 5 fill only BDRL otherwise (data length > 4) fill both BDRL and BDRM     */
#     if ((uint8)5U > u8tempDataLength)
	.d2line		1259
	rlwinm		r5,r0,0,24,31		# u8tempDataLength=r0
	se_cmpi		r5,5
	bc		0,0,.L500	# ge
#     {
#         u32tempBDR = (uint32)0x00000000;
	.d2line		1261
.Llo79:
	diab.li		r7,0		# u32tempBDR=r7
#         for (u8Loop = (uint8)0U; u8Loop <  u8tempDataLength; u8Loop++)
	.d2line		1262
.Llo94:
	diab.li		r3,0		# u8Channel=r3
.L501:
.Llo85:
	rlwinm		r6,r3,0,24,31		# u8Loop=r3
	rlwinm		r5,r0,0,24,31		# u8tempDataLength=r0
	se_cmp		r6,r5
	bc		0,0,.L503	# ge
#         {
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_4 pointer arithmetic other
#             *                                    than array indexing used
#             */
#             u32tempBDR |= (uint32)((pPduInfoPtr->SduPtr[u8Loop] & LINFLEX_BDRL_DATA0_MASK_U32)<<((uint8)8U * u8Loop));
	.d2line		1268
	lwz		r5,4(r4)		# pPduInfoPtr=r4
	rlwinm		r6,r3,0,24,31		# u8Loop=r3
	lbzx		r5,r5,r6
	rlwinm		r6,r3,3,21,28		# u8Loop=r3
	slw		r5,r5,r6
	or		r5,r5,r7		# u32tempBDR=r7
	mr		r7,r5		# u32tempBDR=r7 u32tempBDR=r5
#         }
	.d2line		1269
	diab.addi		r6,r3,1		# u8Loop=r3
	se_addi		r3,1		# u8Loop=r3 u8Loop=r3
	b		.L501
.L503:
# 
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex), u32tempBDR );
	.d2line		1276
.Llo86:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Loop=r3
.Llo87:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Loop=r3 u8Loop=r3
	rlwinm		r5,r31,2,22,29		# u8Lin_LINFlex=r31
	lwzx		r3,r3,r5		# u8Loop=r3 u8Loop=r3
	stw		r7,56(r3)		# u8Loop=r3 u32tempBDR=r7
.L500:
#     }
# 
#     if ((uint8)4U < u8tempDataLength)
	.d2line		1279
.Llo88:
	rlwinm		r5,r0,0,24,31		# u8tempDataLength=r0
	se_cmpi		r5,4
	bc		0,1,.L504	# le
#     {
#         u32tempBDR = (uint32)0x00000000;
	.d2line		1281
	diab.li		r7,0		# u32tempBDR=r7
#         for (u8Loop = (uint8)0U; u8Loop < (uint8)4U; u8Loop++)
	.d2line		1282
.Llo95:
	diab.li		r3,0		# u8Channel=r3
.L505:
.Llo89:
	rlwinm		r6,r3,0,24,31		# u8Loop=r3
	se_cmpi		r6,4
	bc		0,0,.L507	# ge
#         {
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_4 pointer arithmetic other
#             *                                    than array indexing used
#             */
#             u32tempBDR |= ((pPduInfoPtr->SduPtr[u8Loop] & LINFLEX_BDRL_DATA0_MASK_U32) << ( 8U * u8Loop));
	.d2line		1288
	lwz		r5,4(r4)		# pPduInfoPtr=r4
	rlwinm		r6,r3,0,24,31		# u8Loop=r3
	lbzx		r5,r5,r6
	rlwinm		r6,r3,3,21,28		# u8Loop=r3
	slw		r5,r5,r6
	or		r5,r5,r7		# u32tempBDR=r7
	mr		r7,r5		# u32tempBDR=r7 u32tempBDR=r5
#         }
	.d2line		1289
	diab.addi		r6,r3,1		# u8Loop=r3
	se_addi		r3,1		# u8Loop=r3 u8Loop=r3
	b		.L505
.L507:
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex), u32tempBDR );
	.d2line		1295
.Llo90:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Loop=r3
.Llo91:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Loop=r3 u8Loop=r3
	rlwinm		r5,r31,2,22,29		# u8Lin_LINFlex=r31
	lwzx		r3,r3,r5		# u8Loop=r3 u8Loop=r3
	stw		r7,56(r3)		# u8Loop=r3 u32tempBDR=r7
#         u32tempBDR = (uint32)0x00000000;
	.d2line		1296
	diab.li		r6,0		# u32tempBDR=r6
#         for (u8Loop =  (uint8)4U; u8Loop < u8tempDataLength; u8Loop++)
	.d2line		1297
	diab.li		r3,4		# u8Loop=r3
.L508:
.Llo96:
	rlwinm		r5,r3,0,24,31		# u8Loop=r3
.Llo97:
	rlwinm		r7,r0,0,24,31		# u32tempBDR=r7 u8tempDataLength=r0
	se_cmp		r5,r7		# u32tempBDR=r7
	bc		0,0,.L510	# ge
#         {
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_4 pointer arithmetic other
#             *                                    than array indexing used
#             */
#             u32tempBDR |= ((pPduInfoPtr->SduPtr[u8Loop] & LINFLEX_BDRM_DATA4_MASK_U32) << ( 8U * (u8Loop - 4U)));
	.d2line		1303
	lwz		r5,4(r4)		# pPduInfoPtr=r4
	rlwinm		r7,r3,0,24,31		# u32tempBDR=r7 u8Loop=r3
	lbzx		r7,r5,r7		# u32tempBDR=r7
	rlwinm		r5,r3,3,21,28		# u8Loop=r3
	diab.addi		r5,r5,-32
	slw		r7,r7,r5		# u32tempBDR=r7 u32tempBDR=r7
	or		r6,r6,r7		# u32tempBDR=r6 u32tempBDR=r6 u32tempBDR=r7
	mr		r6,r6		# u32tempBDR=r6 u32tempBDR=r6
#         }
	.d2line		1304
	diab.addi		r5,r3,1		# u8Loop=r3
	se_addi		r3,1		# u8Loop=r3 u8Loop=r3
	b		.L508
.L510:
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex), u32tempBDR );
	.d2line		1310
.Llo92:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Loop=r3
.Llo93:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Loop=r3 u8Loop=r3
	rlwinm		r5,r31,2,22,29		# u8Lin_LINFlex=r31
	lwzx		r3,r3,r5		# u8Loop=r3 u8Loop=r3
	stw		r6,60(r3)		# u8Loop=r3 u32tempBDR=r6
.L504:
#     }
# 
#     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_05();
	.d2line		1313
.Llo82:
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_05
#     {
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
#     #if  defined (ERR_IPV_LINFLEX_0010)
#         #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#         /**
#         * Manually update OC1[7:0] (Output Compare Value 1) and OC2[7:0] (Output Compare Value 2) bits in the LINOCR (LIN Output Compare Register)
#         * LINOCR[OC1] = LINTCSR[CNT] + 49 + LINTOCR[RTO] × (pPduInfoPtr->Dl + 1);
#         * LINOCR[OC2] = LINTCSR[CNT] + 49 + LINTOCR[RTO] × (pPduInfoPtr->Dl + 1);
#         */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_OCF_MASK_U32);
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         u32LINOCR_OC = ((((REG_READ32(LINFLEX_LINTOCR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINTOCR_RTO_MASK_U32) >> 8U) * ((uint32)pPduInfoPtr->Dl + 1U)) + \
#                         (REG_READ32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINTCSR_CNT_MASK_U32) + 49U \
#                        ) & LINFLEX_LINOCR_OC1_MASK_U32;
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_LINOCR_ADDR32(u8Lin_LINFlex), ((u32LINOCR_OC << 8U) & LINFLEX_LINOCR_OC2_MASK_U32) | u32LINOCR_OC);
#         #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
#     #endif  /* defined (ERR_IPV_LINFLEX_0010) */
# #else
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
#         /* Transmit Header and Response */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR2_HTRQ_MASK_U32);
	.d2line		1371
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Channel=r3
.Llo80:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Channel=r3 u8Channel=r3
.Llo98:
	rlwinm		r31,r31,2,22,29		# u8Lin_LINFlex=r31 u8Lin_LINFlex=r31
.Llo99:
	lwzx		r3,r3,r31		# u8Channel=r3 u8Channel=r3
	lwz		r0,48(r3)		# u8tempDataLength=r0 u8Channel=r3
.Llo84:
	.diab.bseti		r0,23		# u8tempDataLength=r0
	stw		r0,48(r3)		# u8Channel=r3 u8tempDataLength=r0
#     }
#     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_05();
	.d2line		1373
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_05
# }
	.d2line		1374
	.d2epilogue_begin
.Llo81:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8tempDataLength=r0
	mtspr		lr,r0		# u8tempDataLength=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L801:
	.type		Lin_Linflex_SendResponse,@function
	.size		Lin_Linflex_SendResponse,.-Lin_Linflex_SendResponse
# Number of nodes = 194

# Allocations for Lin_Linflex_SendResponse
#	?a4		u8Channel
#	?a5		pPduInfoPtr
#	?a6		$$106
#	?a7		u8tempDataLength
#	?a8		u8Loop
#	?a9		u32tempBDR
#	?a10		u8Lin_LINFlex
# FUNC (Std_ReturnType, LIN_CODE) Lin_Linflex_GoToSleep(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1390,33
#$$ld
.L815:

#$$bf	Lin_Linflex_GoToSleep,interprocedural,rasave,nostackparams
	.globl		Lin_Linflex_GoToSleep
	.d2_cfa_start __cie
Lin_Linflex_GoToSleep:
.Llo100:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8Channel=r31 u8Channel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
#     VAR(uint32, AUTOMATIC) volatile u32counter = 0U;
	.d2line		1393
.Llo101:
	diab.li		r0,0
.Llo102:
	stw		r0,8(r1)
#     VAR(Std_ReturnType, AUTOMATIC) u8TmpReturn = (uint8)E_NOT_OK;
	.d2line		1394
	diab.li		r29,1		# u8TmpReturn=r29
#     VAR(uint32, AUTOMATIC) u32Lin_register;
# 
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#     VAR(uint32, AUTOMATIC) u32LINOCR_OC;
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
# 
#     /* Get the hardware Lin channel from logical channel */
#      u8Lin_LINFlex = Lin_pChannelConfigPtr[u8Channel]->u8LinHwChannel;
	.d2line		1406
	lis		r3,Lin_pChannelConfigPtr@ha
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
	rlwinm		r0,r31,2,22,29		# u8Channel=r31
	lwzx		r3,r3,r0
	lbz		r30,1(r3)		# u8Lin_LINFlex=r30
.Llo106:
	mr		r30,r30		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r30
#  
#     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_06();
	.d2line		1408
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_06
#     {
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
# 
#         /* Stop any ongoing transmission */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR2_ABRQ_MASK_U32);
	.d2line		1433
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r7,r30,2,22,29		# u8Lin_LINFlex=r30
	lwzx		r3,r3,r7
	lwz		r0,48(r3)
	.diab.bseti		r0,22
	stw		r0,48(r3)
#     }
#     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_06();
	.d2line		1435
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_06
.L520:
# 
#     MCAL_FAULT_INJECTION_POINT(LINFLEX_FIP_2_T_TIME_OUT_2);
# 
#     /* wait till Cancellation of current frame */
#     while(u32counter <= LIN_TIMEOUT_LOOPS)
	.d2line		1440
	lwz		r0,8(r1)
	cmpli		0,0,r0,1000
	bc		1,1,.L523	# gt
#     {
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         if( LINFLEX_LINCR2_ABRQ_MASK_U32!= ( REG_READ32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINCR2_ABRQ_MASK_U32))
	.d2line		1447
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r7,r30,2,22,29		# u8Lin_LINFlex=r30
	lwzx		r3,r3,r7
	lwz		r0,48(r3)
	se_btsti		r0,22
	bc		0,2,.L522	# ne
#         {
#             u8TmpReturn = (uint8)E_OK;
	.d2line		1449
	diab.li		r29,0		# u8TmpReturn=r29
	b		.L523
.L522:
#             break;
#         }
#         u32counter++;
	.d2line		1452
	lwz		r3,8(r1)
	se_addi		r3,1
	stw		r3,8(r1)
	b		.L520
.L523:
#     }
#     if((uint8)E_OK == u8TmpReturn)
	.d2line		1454
	rlwinm		r3,r29,0,24,31		# u8TmpReturn=r29
	se_cmpi		r3,0
	bc		0,2,.L524	# ne
#     {
#         /* Release the message buffer */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_RMB_MASK_U32);
	.d2line		1462
.Llo103:
	diab.li		r0,512		# u32Lin_register=r0
.Llo109:
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r7,r30,2,22,29		# u8Lin_LINFlex=r30
	lwzux		r4,r3,r7		# u32Lin_register=r4
	stw		r0,8(r4)		# u32Lin_register=r4 u32Lin_register=r0
#         /* Read value of BIDR register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         u32Lin_register = REG_READ32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex));
	.d2line		1469
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	lwzx		r4,r3,r7		# u32Lin_register=r4
	lwz		r0,52(r4)		# u32Lin_register=r0 u32Lin_register=r4
	mr		r0,r0		# u32Lin_register=r0 u32Lin_register=r0
#         /* Prepare header */
#         /* First step Clear previous ID */
#         /* Clear previous Data Lenght */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex), (uint32)(u32Lin_register & ~LINFLEX_BIDR_ID_MASK_U32 & ~(LINFLEX_BIDR_DFL_SET_MASK_U32 << 10U) & ~LINFLEX_BIDR_DFL_EXT_MASK_U32));
	.d2line		1478
	diab.li		r4,-64576		# u32Lin_register=r4
	and		r0,r0,r4		# u32Lin_register=r0 u32Lin_register=r0 u32Lin_register=r4
	mr		r4,r3
	lwzux		r5,r4,r7		# u32Lin_register=r4
	stw		r0,52(r5)		# u32Lin_register=r0
#         /* Read value of BIDR register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         u32Lin_register = REG_READ32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex));
	.d2line		1485
	lwzx		r4,r3,r7		# u32Lin_register=r4
	lwz		r0,52(r4)		# u32Lin_register=r0 u32Lin_register=r4
	mr		r0,r0		# u32Lin_register=r0 u32Lin_register=r0
#         /* Set CheckSum type */
#         /* Set Data direction */
#         /* Set SLEEP Mode Identifier - Parity bits are ignored - Calculated by LinFlex controller */
#         /* Set Data Length */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BIDR_ADDR32(u8Lin_LINFlex), (uint32)(u32Lin_register \
	.d2line		1495
	e_or2i		r0,7996		# u32Lin_register=r0
	mr		r4,r3
	lwzux		r5,r4,r7		# u32Lin_register=r4
	stw		r0,52(r5)		# u32Lin_register=r0
#                                                                | LINFLEX_BIDR_CCS_MASK_U32 \
#                                                                | LINFLEX_BIDR_DIR_MASK_U32 \
#                                                                | (uint32)((LINFLEX_SLEEP_COMMAND_ID_U32) & LINFLEX_BIDR_ID_MASK_U32) \
#                                                                | (uint32)((LINFLEX_DATA_LENGTH_8_U32 & LINFLEX_BIDR_DFL_SET_MASK_U32) << 10U)) \
#                    );
#         /* Read value of BDRM register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         u32Lin_register = REG_READ32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex));
	.d2line		1507
	lwzx		r4,r3,r7		# u32Lin_register=r4
	lwz		r0,60(r4)		# u32Lin_register=r0 u32Lin_register=r4
	mr		r0,r0		# u32Lin_register=r0 u32Lin_register=r0
#         /* Update Data bytes */
#         /* do not put semicolon after these macros; it will violate MISRA 2004 14.3 rule */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex), (u32Lin_register \
	.d2line		1515
.Llo110:
	diab.li		r0,0		# u32Lin_register=r0
.Llo111:
	mr		r4,r3
	lwzux		r5,r4,r7		# u32Lin_register=r4
	stw		r0,60(r5)		# u32Lin_register=r0
#                                                       & (~LINFLEX_BDRM_DATA7_MASK_U32) \
#                                                       & (~LINFLEX_BDRM_DATA6_MASK_U32) \
#                                                       & (~LINFLEX_BDRM_DATA5_MASK_U32) \
#                                                       & (~LINFLEX_BDRM_DATA4_MASK_U32)) \
#                    );
#         /* Read value of BDRM register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         u32Lin_register = REG_READ32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex));
	.d2line		1527
	lwzx		r4,r3,r7		# u32Lin_register=r4
	lwz		r4,60(r4)		# u32Lin_register=r4 u32Lin_register=r4
	mr		r4,r4		# u32Lin_register=r4 u32Lin_register=r4
#         /* Clear value of BDRM register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex), (uint32)(u32Lin_register \
	.d2line		1534
	diab.li		r6,-1
	mr		r4,r3
	lwzux		r5,r4,r7		# u32Lin_register=r4
	stw		r6,60(r5)
#                                                               | ((uint32)(LINFLEX_DATA_255_U32) << 24U) \
#                                                               | ((uint32)(LINFLEX_DATA_255_U32) << 16U) \
#                                                               | ((uint32)(LINFLEX_DATA_255_U32) << 8U) \
#                                                               | (uint32)(LINFLEX_DATA_255_U32)) \
#                    );
#         /* Read value of BDRL register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         u32Lin_register = REG_READ32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex));
	.d2line		1546
	lwzx		r4,r3,r7		# u32Lin_register=r4
	lwz		r4,56(r4)		# u32Lin_register=r4 u32Lin_register=r4
	mr		r4,r4		# u32Lin_register=r4 u32Lin_register=r4
#         /* Clear value of BDRL register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex), (uint32)(u32Lin_register \
	.d2line		1553
	mr		r4,r3
	lwzux		r5,r4,r7		# u32Lin_register=r4
	stw		r0,56(r5)		# u32Lin_register=r0
#                                                                & (~LINFLEX_BDRL_DATA3_MASK_U32) \
#                                                                & (~LINFLEX_BDRL_DATA2_MASK_U32) \
#                                                                & (~LINFLEX_BDRL_DATA1_MASK_U32) \
#                                                                & (~LINFLEX_BDRL_DATA0_MASK_U32)) \
#                    );
#         /* Read value of BDRL register */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         u32Lin_register = REG_READ32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex));
	.d2line		1565
	lwzx		r4,r3,r7		# u32Lin_register=r4
	lwz		r0,56(r4)		# u32Lin_register=r0 u32Lin_register=r4
	mr		r0,r0		# u32Lin_register=r0 u32Lin_register=r0
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex), (uint32)(u32Lin_register \
	.d2line		1571
	e_ori		r0,r0,-256		# u32Lin_register=r0 u32Lin_register=r0
	lwzx		r3,r3,r7
	stw		r0,56(r3)		# u32Lin_register=r0
#                                                               | ((uint32)(LINFLEX_DATA_255_U32) << 24U) \
#                                                               | ((uint32)(LINFLEX_DATA_255_U32) << 16U) \
#                                                               | ((uint32)(LINFLEX_DATA_255_U32) << 8U) \
#                                                               | (uint32)(LINFLEX_DATA_0_U32)) \
#                    );
#         SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_07();
	.d2line		1577
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_07
#         {
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
#     #if  defined (ERR_IPV_LINFLEX_0010)
#         #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_BIT_SET32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_OCF_MASK_U32);
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_BIT_SET32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             u32LINOCR_OC = ((((REG_READ32(LINFLEX_LINTOCR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINTOCR_RTO_MASK_U32) >> 8U) * (LINFLEX_DATA_LENGTH_8_U32 + 2U)) + \
#                             (REG_READ32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINTCSR_CNT_MASK_U32) + 49U \
#                            ) & LINFLEX_LINOCR_OC1_MASK_U32;
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_WRITE32(LINFLEX_LINOCR_ADDR32(u8Lin_LINFlex), ((u32LINOCR_OC << 8U) & LINFLEX_LINOCR_OC2_MASK_U32) | u32LINOCR_OC);
#         #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
#     #endif  /* defined (ERR_IPV_LINFLEX_0010) */
# #else
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
#             Lin_au8TransmitHeaderCommand[u8Channel] = LIN_TX_SLEEP_COMMAND;
	.d2line		1624
.Llo112:
	diab.li		r0,3		# u32Lin_register=r0
.Llo113:
	lis		r3,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r3,r3,Lin_au8TransmitHeaderCommand@l
.Llo104:
	rlwinm		r31,r31,0,24,31		# u8Channel=r31 u8Channel=r31
.Llo105:
	stbx		r0,r3,r31		# u32Lin_register=r0
#             /* Transmit Header and Response */
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_BIT_SET32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR2_HTRQ_MASK_U32);
	.d2line		1631
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r30,r30,2,22,29		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r30
.Llo107:
	lwzx		r3,r3,r30
	lwz		r0,48(r3)		# u32Lin_register=r0
	.diab.bseti		r0,23		# u32Lin_register=r0
	stw		r0,48(r3)		# u32Lin_register=r0
#         }
#         SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_07();
	.d2line		1633
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_07
.L524:
#     }
#     return u8TmpReturn;
	.d2line		1635
.Llo114:
	rlwinm		r3,r29,0,24,31		# u8TmpReturn=r29
# }
	.d2line		1636
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo108:
	lwz		r0,36(r1)		# u32Lin_register=r0
	mtspr		lr,r0		# u32Lin_register=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L816:
	.type		Lin_Linflex_GoToSleep,@function
	.size		Lin_Linflex_GoToSleep,.-Lin_Linflex_GoToSleep
# Number of nodes = 269

# Allocations for Lin_Linflex_GoToSleep
#	?a4		u8Channel
#	?a5		$$108
#	?a6		$$107
#	?a7		u8Lin_LINFlex
#	SP,8		u32counter
#	?a8		u8TmpReturn
#	?a9		u32Lin_register
# FUNC (Std_ReturnType, LIN_CODE) Lin_Linflex_GoToSleepInternal(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1652,33
#$$ld
.L828:

#$$bf	Lin_Linflex_GoToSleepInternal,interprocedural,rasave,nostackparams
	.globl		Lin_Linflex_GoToSleepInternal
	.d2_cfa_start __cie
Lin_Linflex_GoToSleepInternal:
.Llo115:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8Channel=r31 u8Channel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
#     VAR(uint32, AUTOMATIC) volatile u32counter = 0U;
	.d2line		1655
.Llo116:
	diab.li		r0,0
.Llo117:
	stw		r0,8(r1)
#     VAR(Std_ReturnType, AUTOMATIC) u8TmpReturn = (uint8)E_NOT_OK;
	.d2line		1656
	diab.li		r29,1		# u8TmpReturn=r29
# 
#     /* Get the hardware Lin channel from logical channel */
#      u8Lin_LINFlex = Lin_pChannelConfigPtr[u8Channel]->u8LinHwChannel;
	.d2line		1659
	lis		r3,Lin_pChannelConfigPtr@ha
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
	rlwinm		r0,r31,2,22,29		# u8Channel=r31
	lwzx		r3,r3,r0
	lbz		r30,1(r3)		# u8Lin_LINFlex=r30
.Llo121:
	mr		r30,r30		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r30
#  
#     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_08();
	.d2line		1661
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_08
#     {
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
# 
#         /* Stop any ongoing transmission */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR2_ABRQ_MASK_U32);
	.d2line		1686
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r5,r30,2,22,29		# u8Lin_LINFlex=r30
	lwzx		r3,r3,r5
	lwz		r0,48(r3)
	.diab.bseti		r0,22
	stw		r0,48(r3)
.L530:
# 
#         MCAL_FAULT_INJECTION_POINT(LINFLEX_FIP_3_T_TIME_OUT_3);
# 
#         /* wait till Cancellation of current frame */
#         while(u32counter <= LIN_TIMEOUT_LOOPS)
	.d2line		1691
	lwz		r0,8(r1)
	cmpli		0,0,r0,1000
	bc		1,1,.L533	# gt
#         {
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             if( LINFLEX_LINCR2_ABRQ_MASK_U32!= ( REG_READ32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINCR2_ABRQ_MASK_U32))
	.d2line		1698
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r5,r30,2,22,29		# u8Lin_LINFlex=r30
	lwzx		r3,r3,r5
	lwz		r0,48(r3)
	se_btsti		r0,22
	bc		0,2,.L532	# ne
#             {
#                 u8TmpReturn = (uint8)E_OK;
	.d2line		1700
	diab.li		r29,0		# u8TmpReturn=r29
	b		.L533
.L532:
#                 break;
#             }
#             u32counter++;
	.d2line		1703
	lwz		r3,8(r1)
	se_addi		r3,1
	stw		r3,8(r1)
	b		.L530
.L533:
#         }
#         if((uint8)E_OK == u8TmpReturn)
	.d2line		1705
	rlwinm		r3,r29,0,24,31		# u8TmpReturn=r29
	se_cmpi		r3,0
	bc		0,2,.L534	# ne
#         {
#             /* Release the message buffer */
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_RMB_MASK_U32);
	.d2line		1713
.Llo118:
	diab.li		r0,512
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r5,r30,2,22,29		# u8Lin_LINFlex=r30
	lwzux		r4,r3,r5
	stw		r0,8(r4)
# 
#             /* Enter Sleep mode */
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_BIT_SET32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR1_SLEEP_MASK_U32);
	.d2line		1721
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	lwzx		r3,r3,r5
	lwz		r0,0(r3)
	.diab.bseti		r0,30
	stw		r0,0(r3)
#             /* Check whether wake-up detection by interrupt is enabled */
#              if ( (uint8) STD_ON == Lin_pChannelConfigPtr[u8Channel]->u16LinChannelWakeupSupport)
	.d2line		1723
	lis		r3,Lin_pChannelConfigPtr@ha
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
.Llo119:
	rlwinm		r31,r31,2,22,29		# u8Channel=r31 u8Channel=r31
.Llo120:
	lwzx		r3,r3,r31
	lhz		r0,8(r3)
	se_cmpi		r0,1
	bc		0,2,.L534	# ne
#              {
#                 /* Wake up detection is enabled */
#                 /* Clear Wake-Up flag */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_WUF_MASK_U32);
	.d2line		1732
.Llo122:
	diab.li		r0,32
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
.Llo123:
	rlwinm		r30,r30,2,22,29		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r30
.Llo124:
	lwzux		r4,r3,r30
	stw		r0,8(r4)
# 
#                 /* Enable wake up interrupt */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 REG_BIT_SET32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_WUIE_MASK_U32);
	.d2line		1740
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	lwzx		r3,r3,r30
	lwz		r0,4(r3)
	.diab.bseti		r0,26
	stw		r0,4(r3)
.L534:
#             }
#         }
#     }
#     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_08();
	.d2line		1744
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_08
#     return u8TmpReturn;
	.d2line		1745
	rlwinm		r3,r29,0,24,31		# u8TmpReturn=r29
# }
	.d2line		1746
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo125:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L829:
	.type		Lin_Linflex_GoToSleepInternal,@function
	.size		Lin_Linflex_GoToSleepInternal,.-Lin_Linflex_GoToSleepInternal
# Number of nodes = 131

# Allocations for Lin_Linflex_GoToSleepInternal
#	?a4		u8Channel
#	?a5		$$111
#	?a6		$$110
#	?a7		$$109
#	?a8		u8Lin_LINFlex
#	SP,8		u32counter
#	?a9		u8TmpReturn
# FUNC (void, LIN_CODE) Lin_Linflex_WakeUp(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1758,23
#$$ld
.L839:

#$$bf	Lin_Linflex_WakeUp,interprocedural,rasave,nostackparams
	.globl		Lin_Linflex_WakeUp
	.d2_cfa_start __cie
Lin_Linflex_WakeUp:
.Llo126:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# u8Channel=r0
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8Channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# u8Channel=r0 u8Channel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
# 
#     /* Get the hardware Lin channel from logical channel */
#      u8Lin_LINFlex = Lin_pChannelConfigPtr[u8Channel]->u8LinHwChannel;
	.d2line		1763
	lis		r3,Lin_pChannelConfigPtr@ha
.Llo127:
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l
.Llo128:
	rlwinm		r0,r0,2,22,29		# u8Channel=r0 u8Channel=r0
.Llo129:
	lwzx		r3,r3,r0
	lbz		r31,1(r3)		# u8Lin_LINFlex=r31
	mr		r31,r31		# u8Lin_LINFlex=r31 u8Lin_LINFlex=r31
#  
#     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_09();
	.d2line		1765
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_09
#     {
#         /* Clear Sleep Bit */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR1_SLEEP_MASK_U32);
	.d2line		1773
	lis		r3,Linflex_au32BaseAddrs@ha
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l
	rlwinm		r31,r31,2,22,29		# u8Lin_LINFlex=r31 u8Lin_LINFlex=r31
.Llo132:
	lwzx		r4,r3,r31
	lwz		r0,0(r4)		# u8Channel=r0
.Llo130:
	.diab.bclri		r0,30		# u8Channel=r0
	stw		r0,0(r4)		# u8Channel=r0
# 
#         /* Send Wake up request */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_SET32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR2_WURQ_MASK_U32);
	.d2line		1781
	lwzx		r3,r3,r31
	lwz		r0,48(r3)		# u8Channel=r0
	.diab.bseti		r0,19		# u8Channel=r0
	stw		r0,48(r3)		# u8Channel=r0
#     }
#     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_09();
	.d2line		1783
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_09
# }
	.d2line		1784
	.d2epilogue_begin
.Llo131:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8Channel=r0
	mtspr		lr,r0		# u8Channel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L840:
	.type		Lin_Linflex_WakeUp,@function
	.size		Lin_Linflex_WakeUp,.-Lin_Linflex_WakeUp
# Number of nodes = 41

# Allocations for Lin_Linflex_WakeUp
#	?a4		u8Channel
#	?a5		$$113
#	?a6		$$112
#	?a7		u8Lin_LINFlex
# FUNC(Lin_StatusType, LIN_CODE) Lin_Linflex_HardwareGetStatus(CONST(uint8, AUTOMATIC) u8Channel, \
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1819,32
#$$ld
.L850:

#$$bf	Lin_Linflex_HardwareGetStatus,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr,ctr
	.globl		Lin_Linflex_HardwareGetStatus
	.d2_cfa_start __cie
Lin_Linflex_HardwareGetStatus:
.Llo133:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo188:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8Lin_LINFlex=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8Channel=r3 u8Channel=r3
	mr		r4,r4		# pu8LinSduPtr=r4 pu8LinSduPtr=r4
	.d2prologue_end
#                                                              P2VAR(uint8, AUTOMATIC, LIN_APPL_DATA) pu8LinSduPtr \
#                                                             )
# {
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
#     VAR(uint8, AUTOMATIC) u8tempStatus;
#     VAR(uint8, AUTOMATIC) u8Temp;
#     VAR(uint8, AUTOMATIC) u8tempOC1 = 0U;
	.d2line		1826
	diab.li		r0,0		# u8tempOC1=r0
#     VAR(uint8, AUTOMATIC) u8tempHTO = 0U;
#     VAR(uint32, AUTOMATIC) u32BDRL_EMPTY= 0U;
#     VAR(uint32, AUTOMATIC) u32BDRM_EMPTY= 0U;
#     VAR(Lin_StatusType,AUTOMATIC) TempReturn = LIN_NOT_OK;
	.d2line		1830
.Llo189:
	diab.li		r5,0
# 
#     /* Get the hardware Lin channel from logical channel */
#      u8Lin_LINFlex = Lin_pChannelConfigPtr[u8Channel]->u8LinHwChannel;
	.d2line		1833
.Llo266:
	lis		r6,Lin_pChannelConfigPtr@ha
	e_add16i		r6,r6,Lin_pChannelConfigPtr@l
	rlwinm		r7,r3,2,22,29		# u8tempStatus=r7 u8Channel=r3
	lwzx		r6,r6,r7
	lbz		r0,1(r6)		# u8tempOC1=r0
.Llo190:
	mr		r0,r0		# u8Lin_LINFlex=r0 u8Lin_LINFlex=r0
#  
# #ifdef  ERR_IPV_LINFLEX_0011
#     #if (ERR_IPV_LINFLEX_0011 == STD_ON)
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u8tempStatus = (uint8)((REG_READ32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINSR_LINS_MASK_U32)>>(uint8)12U);
	.d2line		1842
	lis		r6,Linflex_au32BaseAddrs@ha
	e_add16i		r6,r6,Linflex_au32BaseAddrs@l
	rlwinm		r31,r0,2,22,29		# u8Lin_LINFlex=r0
	lwzux		r7,r6,r31		# u8tempStatus=r7
.Llo234:
	lwz		r7,8(r7)		# u8tempStatus=r7 u8tempStatus=r7
	rlwinm		r7,r7,20,28,31		# u8tempStatus=r7 u8tempStatus=r7
	mr		r7,r7		# u8tempStatus=r7 u8tempStatus=r7
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     if((uint8)((REG_READ32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINSR_LINS_MASK_U32)>>(uint8)12U) == u8tempStatus)
	.d2line		1848
	lis		r6,Linflex_au32BaseAddrs@ha
	e_add16i		r6,r6,Linflex_au32BaseAddrs@l
	lwzx		r6,r6,r31
	lwz		r31,8(r6)
	rlwinm		r31,r31,20,28,31
	rlwinm		r6,r7,0,24,31		# u8tempStatus=r7
	se_cmp		r31,r6
	bc		0,2,.L542	# ne
#     {
#     #else
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u8tempStatus = (uint8)((REG_READ32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINSR_LINS_MASK_U32)>>(uint8)12U);
#     #endif  /* (ERR_IPV_LINFLEX_0011 == STD_ON) */
# #else
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u8tempStatus = (uint8)((REG_READ32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINSR_LINS_MASK_U32)>>(uint8)12U);
# #endif  /* ERR_IPV_LINFLEX_0011 */
# 
#     switch (u8tempStatus & (uint8)0x0FU)
	.d2line		1867
	rlwinm		r6,r7,0,28,31		# u8tempStatus=r7
	se_cmpli	r6,9
	se_slwi		r6,2
	e_add2is		r6,.L872@ha
	bc		1,1,.L611	# gt
.Llo235:
	lwz		r7,.L872@l(r6)		# u8tempStatus=r7
	mtspr		ctr,r7		# u8tempStatus=ctr
	bcctr		20,0
.L872:
#$$sl
	.long		.L544
	.long		.L544
	.long		.L579
	.long		.L549
	.long		.L549
	.long		.L549
	.long		.L549
	.long		.L550
	.long		.L569
	.long		.L569
#$$se
.L544:
#     {
#         /* Master mode => return status to TX_BUSY if any of the following condition */
#         case LINFLEX_LINSR_SLEEP_MODE_U8:
#         case LINFLEX_LINSR_INIT_MODE_U8:
#             TempReturn = LIN_NOT_OK;
	.d2line		1872
	diab.li		r5,0		# TempReturn=r5
	b		.L542
.L549:
#             break;
#         case LINFLEX_LINSR_BREAK_TX_MODE_U8 :
#         case LINFLEX_LINSR_BREAK_DEL_TX_MODE_U8 :
#         case LINFLEX_LINSR_SYNC_FIELD_TX_MODE_U8:
#         case LINFLEX_LINSR_ID_FIELD_TX_MODE_U8:
# #ifdef  ERR_IPV_LINFLEX_0011
#     #if (ERR_IPV_LINFLEX_0011 == STD_ON)
#             TempReturn = LIN_TX_BUSY;
	.d2line		1880
	diab.li		r5,2		# TempReturn=r5
	b		.L542
.L550:
#             break;
#         case LINFLEX_LINSR_HEADER_TX_MODE_U8:
#             /* Check error status */
#             switch(Lin_au8LinChFrameErrorStatus[u8Channel])
	.d2line		1884
.Llo183:
	lis		r4,Lin_au8LinChFrameErrorStatus@ha
	e_add16i		r4,r4,Lin_au8LinChFrameErrorStatus@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
.Llo236:
	se_add		r4,r7		# u8tempStatus=r7
	lbzx		r6,r0,r4		# u8Lin_LINFlex=r0
	se_cmpi		r6,0
	bc		1,2,.L566	# eq
.Llo237:
	se_cmpi		r6,1
	bc		1,2,.L559	# eq
	se_cmpi		r6,9
	bc		1,2,.L551	# eq
.Llo267:
	b		.L567
.L551:
#             {
#                 /* Header or Response timeout error conditions */
#                 case LIN_TIMEOUT_ERROR:
#                     if(LIN_TX_SLAVE_RES_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel])
	.d2line		1888
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r4,r4,r7
	se_cmpi		r4,2
	bc		0,2,.L552	# ne
#                     {
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         u32BDRL_EMPTY = REG_READ32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex));
	.d2line		1895
.Llo134:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Channel=r3
.Llo135:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Channel=r3 u8Channel=r3
.Llo191:
	rlwinm		r0,r0,2,22,29		# u8Lin_LINFlex=r0 u8Lin_LINFlex=r0
.Llo192:
	lwzux		r4,r3,r0		# u8Channel=r3
	lwz		r3,56(r4)		# u8Channel=r3
	.d2line		1907
.Llo248:
	mr.		r3,r3		# u32BDRL_EMPTY=?a11 u32BDRL_EMPTY=?a17
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         u32BDRM_EMPTY = REG_READ32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex));
	.d2line		1901
.Llo136:
	lis		r3,Linflex_au32BaseAddrs@ha		# u32BDRL_EMPTY=r3
.Llo249:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32BDRL_EMPTY=r3 u32BDRL_EMPTY=r3
	lwzx		r3,r3,r0		# u32BDRL_EMPTY=r3 u32BDRL_EMPTY=r3
	lwz		r0,60(r3)		# u8Lin_LINFlex=r0 u32BDRL_EMPTY=r3
.Llo257:
	mr		r0,r0		# u32BDRM_EMPTY=r0 u32BDRM_EMPTY=r0
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         if((0U == u32BDRL_EMPTY)&&(0U == u32BDRM_EMPTY ))
	bc		0,2,.L553	# ne
	.d2line		1907
.Llo250:
	se_cmpi		r0,0		# u32BDRM_EMPTY=r0
	bc		0,2,.L553	# ne
#                         {
#                         /* Driver has received 0 bytes */
#                             TempReturn = LIN_RX_NO_RESPONSE;
	.d2line		1910
.Llo258:
	diab.li		r5,8		# TempReturn=r5
.Llo268:
	b		.L542
.L553:
#                         }
#                         else
#                         {
#                             /* Driver has received at least 1 byte */
#                             TempReturn = LIN_RX_ERROR;
	.d2line		1915
.Llo259:
	diab.li		r5,7		# TempReturn=r5
.Llo269:
	b		.L542
.L552:
#                         }
#                     }
#                     else if ((LIN_TX_MASTER_RES_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) || \
	.d2line		1918
.Llo137:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r0,r4,r7		# u8Lin_LINFlex=r0
.Llo193:
	se_cmpi		r0,1		# u8Lin_LINFlex=r0
	bc		1,2,.L612	# eq
.Llo138:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
.Llo139:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo140:
	lbzx		r0,r4,r3		# u8Lin_LINFlex=r0
.Llo194:
	se_cmpi		r0,3		# u8Lin_LINFlex=r0
	bc		0,2,.L556	# ne
.L612:
#                              (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) \
#                             )
#                     {
#                         TempReturn = LIN_RX_ERROR;
	.d2line		1922
.Llo141:
	diab.li		r5,7		# TempReturn=r5
.Llo270:
	b		.L542
.L556:
#                     }
#                     else
#                     {
#                         TempReturn = LIN_NOT_OK;
	.d2line		1926
.Llo142:
	diab.li		r5,0		# TempReturn=r5
.Llo271:
	b		.L542
.L559:
#                     }
# 
#                     break;
#                 /* Tx data error conditions */
#                 case LIN_BIT_ERROR:
#                     if ((LIN_TX_MASTER_RES_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) || \
	.d2line		1932
.Llo143:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r0,r4,r7		# u8Lin_LINFlex=r0
.Llo195:
	se_cmpi		r0,1		# u8Lin_LINFlex=r0
	bc		1,2,.L613	# eq
.Llo196:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r0,r4,r7		# u8Lin_LINFlex=r0
.Llo197:
	se_cmpi		r0,3		# u8Lin_LINFlex=r0
	bc		0,2,.L560	# ne
.L613:
#                         (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) \
#                        )
#                     {
#                         u8Temp = Lin_Linflex_au8StateOfBEF[u8Channel];
	.d2line		1936
.Llo144:
	lis		r4,Lin_Linflex_au8StateOfBEF@ha
	e_add16i		r4,r4,Lin_Linflex_au8StateOfBEF@l
.Llo145:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
	se_add		r3,r4		# u8Channel=r3 u8Channel=r3
	lbzx		r3,r0,r3		# u8Channel=r3 u8Lin_LINFlex=r0
.Llo146:
	mr		r3,r3		# u8Temp=r3 u8Temp=r3
#                         if((LINFLEX_LINSR_BREAK_TX_MODE_U8 != u8Temp) && \
	.d2line		1937
	rlwinm		r0,r3,0,24,31		# u8Lin_LINFlex=r0 u8Temp=r3
.Llo198:
	se_cmpi		r0,3		# u8Lin_LINFlex=r0
	bc		1,2,.L561	# eq
.Llo199:
	rlwinm		r0,r3,0,24,31		# u8Lin_LINFlex=r0 u8Temp=r3
.Llo200:
	se_cmpi		r0,4		# u8Lin_LINFlex=r0
	bc		1,2,.L561	# eq
.Llo201:
	rlwinm		r0,r3,0,24,31		# u8Lin_LINFlex=r0 u8Temp=r3
.Llo202:
	se_cmpi		r0,5		# u8Lin_LINFlex=r0
	bc		1,2,.L561	# eq
.Llo203:
	rlwinm		r0,r3,0,24,31		# u8Lin_LINFlex=r0 u8Temp=r3
.Llo204:
	se_cmpi		r0,6		# u8Lin_LINFlex=r0
	bc		1,2,.L561	# eq
.Llo205:
	rlwinm		r3,r3,0,24,31		# u8Temp=r3 u8Temp=r3
	se_cmpi		r3,7		# u8Temp=r3
	bc		1,2,.L561	# eq
#                            (LINFLEX_LINSR_BREAK_DEL_TX_MODE_U8 != u8Temp) && \
#                            (LINFLEX_LINSR_SYNC_FIELD_TX_MODE_U8 != u8Temp) && \
#                            (LINFLEX_LINSR_ID_FIELD_TX_MODE_U8 != u8Temp) && \
#                            (LINFLEX_LINSR_HEADER_TX_MODE_U8 != u8Temp) \
#                           )
#                         {
#                             TempReturn = LIN_TX_ERROR;
	.d2line		1944
.Llo241:
	diab.li		r5,4		# TempReturn=r5
.Llo272:
	b		.L542
.L561:
#                         }
#                         else
#                         {
#                             TempReturn = LIN_TX_HEADER_ERROR;
	.d2line		1948
.Llo242:
	diab.li		r5,3		# TempReturn=r5
.Llo273:
	b		.L542
.L560:
#                         }
#                     }
#                     else if (LIN_TX_SLAVE_RES_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel])
	.d2line		1951
.Llo243:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
.Llo147:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo148:
	lbzx		r0,r4,r3		# u8Lin_LINFlex=r0
.Llo206:
	se_cmpi		r0,2		# u8Lin_LINFlex=r0
#                     {
#                         TempReturn = LIN_TX_HEADER_ERROR;
	.d2line		1953
	diab.li		r3,3		# u8Channel=r3
.Llo149:
	isel		r3,r3,r5,2		# TempReturn=r3 u8Channel=r3 TempReturn=r5
.L564:
#                     }
#                     else
#                     {
#                         TempReturn = LIN_TX_ERROR;
	.d2line		1957
.Llo150:
	diab.li		r0,4		# u8Lin_LINFlex=r0
.Llo207:
	isel		r5,r3,r0,2		# TempReturn=r5 TempReturn=r3 u8Lin_LINFlex=r0
	b		.L542
.L566:
#                     }
#                     break;
# 
#                 case LIN_NO_ERROR :
#                     TempReturn = LIN_TX_BUSY;
	.d2line		1962
.Llo151:
	diab.li		r5,2		# TempReturn=r5
.Llo274:
	b		.L542
.L567:
#                     break;
# 
#                 default:
#                     TempReturn = LIN_NOT_OK;
	.d2line		1966
.Llo152:
	diab.li		r5,0		# TempReturn=r5
.Llo275:
	b		.L542
.L569:
#                     break;
#             }
#             break;
#     #else
#         case LINFLEX_LINSR_HEADER_TX_MODE_U8:
#             TempReturn = LIN_TX_BUSY;
#             break;
#     #endif /* (ERR_IPV_LINFLEX_0011 == STD_ON) */
# #else
#         case LINFLEX_LINSR_HEADER_TX_MODE_U8:
#             TempReturn = LIN_TX_BUSY;
#             break;
# #endif /* ERR_IPV_LINFLEX_0011 */
# 
#         case LINFLEX_LINSR_DATA_RX_TX_MODE_U8:
#         case LINFLEX_LINSR_CHECKSUM_RX_TX_MODE_U8:
#             if ((LIN_TX_MASTER_RES_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) || \
	.d2line		1983
.Llo153:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r4,r4,r7
	se_cmpi		r4,1
	bc		1,2,.L614	# eq
.Llo276:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r4,r4,r7
	se_cmpi		r4,3
	bc		0,2,.L570	# ne
.L614:
#                 (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) \
#                )
#             {
#                 TempReturn = LIN_TX_BUSY;
	.d2line		1987
	diab.li		r5,2		# TempReturn=r5
.Llo277:
	b		.L542
.L570:
#             }
#             else if (LIN_TX_SLAVE_RES_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel])
	.d2line		1989
.Llo278:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r4,r4,r7
	se_cmpi		r4,2
	bc		0,2,.L572	# ne
#             {
# #ifdef ERR_IPV_LINFLEX_0012
#     #if (ERR_IPV_LINFLEX_0012 == STD_ON)
#                 switch(Lin_au8LinChFrameErrorStatus[u8Channel])
	.d2line		1993
.Llo154:
	lis		r4,Lin_au8LinChFrameErrorStatus@ha
	e_add16i		r4,r4,Lin_au8LinChFrameErrorStatus@l
.Llo155:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
	se_add		r3,r4		# u8Channel=r3 u8Channel=r3
	lbzx		r3,r0,r3		# u8Channel=r3 u8Lin_LINFlex=r0
	se_cmpi		r3,9		# u8Channel=r3
	bc		0,2,.L577	# ne
#                 {
#                     case LIN_TIMEOUT_ERROR:
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         u32BDRL_EMPTY = REG_READ32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex));
	.d2line		2001
.Llo156:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Channel=r3
.Llo157:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Channel=r3 u8Channel=r3
.Llo208:
	rlwinm		r0,r0,2,22,29		# u8Lin_LINFlex=r0 u8Lin_LINFlex=r0
.Llo209:
	lwzux		r4,r3,r0		# u8Channel=r3
	lwz		r3,56(r4)		# u8Channel=r3
	.d2line		2013
.Llo251:
	mr.		r3,r3		# u32BDRL_EMPTY=?a11 u32BDRL_EMPTY=?a17
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         u32BDRM_EMPTY = REG_READ32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex));
	.d2line		2007
.Llo158:
	lis		r3,Linflex_au32BaseAddrs@ha		# u32BDRL_EMPTY=r3
.Llo252:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32BDRL_EMPTY=r3 u32BDRL_EMPTY=r3
	lwzx		r3,r3,r0		# u32BDRL_EMPTY=r3 u32BDRL_EMPTY=r3
	lwz		r0,60(r3)		# u8Lin_LINFlex=r0 u32BDRL_EMPTY=r3
.Llo260:
	mr		r0,r0		# u32BDRM_EMPTY=r0 u32BDRM_EMPTY=r0
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         if((0U == u32BDRL_EMPTY)&&(0U == u32BDRM_EMPTY ))
	bc		0,2,.L574	# ne
	.d2line		2013
.Llo253:
	se_cmpi		r0,0		# u32BDRM_EMPTY=r0
	bc		0,2,.L574	# ne
#                         {
#                         /* Driver has received 0 bytes */
#                             TempReturn = LIN_RX_NO_RESPONSE;
	.d2line		2016
.Llo261:
	diab.li		r5,8		# TempReturn=r5
.Llo279:
	b		.L542
.L574:
#                         }
#                         else
#                         {
#                             /* Driver has received at least 1 byte */
#                             TempReturn = LIN_RX_ERROR;
	.d2line		2021
.Llo262:
	diab.li		r5,7		# TempReturn=r5
.Llo280:
	b		.L542
.L577:
#                         }
#                         break;
#                     default:
#                         TempReturn = LIN_RX_BUSY;
	.d2line		2025
.Llo210:
	diab.li		r5,6		# TempReturn=r5
.Llo281:
	b		.L542
.L572:
#                         break;
#                 }
#     #else
#                 TempReturn = LIN_RX_BUSY;
#     #endif  /* (ERR_IPV_LINFLEX_0012 == STD_ON) */
# #else
#                 TempReturn = LIN_RX_BUSY;
# #endif  /* ERR_IPV_LINFLEX_0012 */
#             }
#             else
#             {
#                 TempReturn = LIN_NOT_OK;
	.d2line		2037
.Llo159:
	diab.li		r5,0		# TempReturn=r5
.Llo282:
	b		.L542
.L579:
#             }
#             break;
# 
#         case LINFLEX_LINSR_IDLE_MODE_U8:
#         /* Check error status */
#             switch(Lin_au8LinChFrameErrorStatus[u8Channel])
	.d2line		2043
.Llo184:
	lis		r6,Lin_au8LinChFrameErrorStatus@ha
	e_add16i		r6,r6,Lin_au8LinChFrameErrorStatus@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
.Llo238:
	se_add		r6,r7		# u8tempStatus=r7
	lbzx		r6,r0,r6		# u8Lin_LINFlex=r0
	se_cmpli	r6,9
	se_slwi		r6,2
	e_add2is		r6,.L873@ha
	bc		1,1,.L610	# gt
.Llo239:
	lwz		r7,.L873@l(r6)		# u8tempStatus=r7
	mtspr		ctr,r7		# u8tempStatus=ctr
	bcctr		20,0
.L873:
#$$sl
	.long		.L602
	.long		.L591
	.long		.L601
	.long		.L582
	.long		.L582
	.long		.L582
	.long		.L601
	.long		.L601
	.long		.L601
	.long		.L584
#$$se
.L582:
#             {
#                 /* Tx header error conditions */
#                 case LIN_IDENTIFIER_PARITY_ERROR:
#                 case LIN_BREAK_DELIMITER_ERROR:
#                 case LIN_SYNCH_FIELD_ERROR:
#                     TempReturn = LIN_TX_HEADER_ERROR;
	.d2line		2049
	diab.li		r5,3		# TempReturn=r5
	b		.L542
.L584:
#                     break;
# 
#                 /* Header or Response timeout error conditions */
#                 case LIN_TIMEOUT_ERROR:
#                     if ((LIN_TX_MASTER_RES_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) || \
	.d2line		2054
.Llo185:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r4,r4,r7
	se_cmpi		r4,1
	bc		1,2,.L615	# eq
.Llo160:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
.Llo161:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
	lbzx		r3,r4,r3		# u8Channel=r3
	se_cmpi		r3,3		# u8Channel=r3
	bc		0,2,.L585	# ne
.L615:
#                         (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) \
#                        )
#                     {
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         u8tempOC1 = (uint8) ( REG_READ32( LINFLEX_LINOCR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINOCR_OC1_MASK_U32);
	.d2line		2063
.Llo162:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Channel=r3
.Llo163:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Channel=r3 u8Channel=r3
.Llo211:
	rlwinm		r0,r0,2,22,29		# u8Lin_LINFlex=r0 u8Lin_LINFlex=r0
.Llo212:
	lwzux		r4,r3,r0		# u8tempOC1=r4 u8Channel=r3
.Llo247:
	lwz		r4,28(r4)		# u8tempOC1=r4 u8tempOC1=r4
	rlwinm		r4,r4,0,24,31		# u8tempOC1=r4 u8tempOC1=r4
	mr		r4,r4		# u8tempOC1=r4 u8tempOC1=r4
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         u8tempHTO = (uint8) ( REG_READ32( LINFLEX_LINTOCR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINTOCR_HTO_MASK_U32);
	.d2line		2069
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Channel=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Channel=r3 u8Channel=r3
	lwzx		r3,r3,r0		# u8Channel=r3 u8Channel=r3
	lwz		r0,32(r3)		# u8Lin_LINFlex=r0 u8Channel=r3
.Llo213:
	rlwinm		r0,r0,0,25,31		# u8Lin_LINFlex=r0 u8Lin_LINFlex=r0
.Llo214:
	mr		r0,r0		# u8tempHTO=r0 u8tempHTO=r0
#                         if (u8tempOC1 <= u8tempHTO)
	.d2line		2070
	rlwinm		r4,r4,0,24,31		# u8tempOC1=r4 u8tempOC1=r4
	rlwinm		r0,r0,0,24,31		# u8tempHTO=r0 u8tempHTO=r0
	se_cmp		r4,r0		# u8tempOC1=r4 u8tempHTO=r0
#                         {
#                             /* Timeout on Master Header Transmission */
#                             TempReturn = LIN_TX_HEADER_ERROR;
	.d2line		2073
	diab.li		r0,3		# u8tempHTO=r0
	isel		r0,r5,r0,1		# TempReturn=r0 TempReturn=r5 u8tempHTO=r0
.L586:
#                         }
#                         else
#                         {
#                             /* Timeout on Master Response Transmission */
#                             TempReturn = LIN_TX_ERROR;
	.d2line		2078
.Llo164:
	diab.li		r5,4		# TempReturn=r5
.Llo283:
	isel		r5,r5,r0,1		# TempReturn=r5 TempReturn=r5 TempReturn=r0
	b		.L542
.L585:
#                         }
#                     }
#                     /* Timeout on Data Transmission or Reception */
#                     else
#                     {
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         u32BDRL_EMPTY = REG_READ32(LINFLEX_BDRL_ADDR32(u8Lin_LINFlex));
	.d2line		2089
.Llo284:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Channel=r3
.Llo165:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Channel=r3 u8Channel=r3
.Llo215:
	rlwinm		r0,r0,2,22,29		# u8Lin_LINFlex=r0 u8Lin_LINFlex=r0
.Llo216:
	lwzux		r4,r3,r0		# u8Channel=r3
	lwz		r3,56(r4)		# u8Channel=r3
	.d2line		2101
.Llo254:
	mr.		r3,r3		# u32BDRL_EMPTY=?a11 u32BDRL_EMPTY=?a17
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         u32BDRM_EMPTY = REG_READ32(LINFLEX_BDRM_ADDR32(u8Lin_LINFlex));
	.d2line		2095
.Llo166:
	lis		r3,Linflex_au32BaseAddrs@ha		# u32BDRL_EMPTY=r3
.Llo255:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32BDRL_EMPTY=r3 u32BDRL_EMPTY=r3
	lwzx		r3,r3,r0		# u32BDRL_EMPTY=r3 u32BDRL_EMPTY=r3
	lwz		r0,60(r3)		# u8Lin_LINFlex=r0 u32BDRL_EMPTY=r3
.Llo263:
	mr		r0,r0		# u32BDRM_EMPTY=r0 u32BDRM_EMPTY=r0
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         if((0U == u32BDRL_EMPTY)&&(0U == u32BDRM_EMPTY ))
	bc		0,2,.L589	# ne
	.d2line		2101
.Llo256:
	se_cmpi		r0,0		# u32BDRM_EMPTY=r0
	bc		0,2,.L589	# ne
#                         {
#                            /* Driver has received 0 bytes */
#                             TempReturn = LIN_RX_NO_RESPONSE;
	.d2line		2104
.Llo264:
	diab.li		r5,8		# TempReturn=r5
.Llo285:
	b		.L542
.L589:
#                         }
#                         else
#                         {
#                             /* Driver has received at least 1 byte */
#                             TempReturn = LIN_RX_ERROR;
	.d2line		2109
.Llo265:
	diab.li		r5,7		# TempReturn=r5
.Llo286:
	b		.L542
.L591:
#                         }
#                     }
#                     break;
# 
#                 /* Tx data error conditions */
#                 case LIN_BIT_ERROR:
#                     if ((LIN_TX_MASTER_RES_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) || \
	.d2line		2116
.Llo167:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r0,r4,r7		# u8Lin_LINFlex=r0
.Llo217:
	se_cmpi		r0,1		# u8Lin_LINFlex=r0
	bc		1,2,.L616	# eq
.Llo218:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
	lbzx		r0,r4,r7		# u8Lin_LINFlex=r0
.Llo219:
	se_cmpi		r0,3		# u8Lin_LINFlex=r0
	bc		0,2,.L592	# ne
.L616:
#                         (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel]) \
#                        )
#                     {
#                         u8Temp = Lin_Linflex_au8StateOfBEF[u8Channel];
	.d2line		2120
.Llo168:
	lis		r4,Lin_Linflex_au8StateOfBEF@ha
	e_add16i		r4,r4,Lin_Linflex_au8StateOfBEF@l
.Llo169:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
	se_add		r3,r4		# u8Channel=r3 u8Channel=r3
	lbzx		r3,r0,r3		# u8Channel=r3 u8Lin_LINFlex=r0
.Llo170:
	mr		r3,r3		# u8Temp=r3 u8Temp=r3
#                         if( (LINFLEX_LINSR_BREAK_TX_MODE_U8 != u8Temp) && \
	.d2line		2121
	rlwinm		r0,r3,0,24,31		# u8Lin_LINFlex=r0 u8Temp=r3
.Llo220:
	se_cmpi		r0,3		# u8Lin_LINFlex=r0
	bc		1,2,.L593	# eq
.Llo221:
	rlwinm		r0,r3,0,24,31		# u8Lin_LINFlex=r0 u8Temp=r3
.Llo222:
	se_cmpi		r0,4		# u8Lin_LINFlex=r0
	bc		1,2,.L593	# eq
.Llo223:
	rlwinm		r0,r3,0,24,31		# u8Lin_LINFlex=r0 u8Temp=r3
.Llo224:
	se_cmpi		r0,5		# u8Lin_LINFlex=r0
	bc		1,2,.L593	# eq
.Llo225:
	rlwinm		r0,r3,0,24,31		# u8Lin_LINFlex=r0 u8Temp=r3
.Llo226:
	se_cmpi		r0,6		# u8Lin_LINFlex=r0
	bc		1,2,.L593	# eq
.Llo227:
	rlwinm		r3,r3,0,24,31		# u8Temp=r3 u8Temp=r3
	se_cmpi		r3,7		# u8Temp=r3
	bc		1,2,.L593	# eq
#                             (LINFLEX_LINSR_BREAK_DEL_TX_MODE_U8 != u8Temp) && \
#                             (LINFLEX_LINSR_SYNC_FIELD_TX_MODE_U8 != u8Temp) && \
#                             (LINFLEX_LINSR_ID_FIELD_TX_MODE_U8 != u8Temp) && \
#                             (LINFLEX_LINSR_HEADER_TX_MODE_U8 != u8Temp) \
#                           )
#                         {
#                             TempReturn = LIN_TX_ERROR;
	.d2line		2128
.Llo244:
	diab.li		r5,4		# TempReturn=r5
.Llo287:
	b		.L542
.L593:
#                         }
#                         else
#                         {
#                             TempReturn = LIN_TX_HEADER_ERROR;
	.d2line		2132
.Llo245:
	diab.li		r5,3		# TempReturn=r5
.Llo288:
	b		.L542
.L592:
#                         }
#                     }
#                     else if (LIN_TX_SLAVE_RES_COMMAND == Lin_au8TransmitHeaderCommand[u8Channel])
	.d2line		2135
.Llo246:
	lis		r4,Lin_au8TransmitHeaderCommand@ha
	e_add16i		r4,r4,Lin_au8TransmitHeaderCommand@l
.Llo171:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo172:
	lbzx		r0,r4,r3		# u8Lin_LINFlex=r0
.Llo228:
	se_cmpi		r0,2		# u8Lin_LINFlex=r0
#                     {
#                         TempReturn = LIN_TX_HEADER_ERROR;
	.d2line		2137
	diab.li		r3,3		# u8Channel=r3
.Llo173:
	isel		r3,r3,r5,2		# TempReturn=r3 u8Channel=r3 TempReturn=r5
.L596:
#                     }
#                     else
#                     {
#                         TempReturn = LIN_TX_ERROR;
	.d2line		2141
.Llo174:
	diab.li		r0,4		# u8Lin_LINFlex=r0
.Llo229:
	isel		r5,r3,r0,2		# TempReturn=r5 TempReturn=r3 u8Lin_LINFlex=r0
	b		.L542
.L601:
#                     }
#                     break;
# 
#                 /* Rx error conditions */
#                 case LIN_NOISE_ERROR:
#                 case LIN_CHECKSUM_ERROR:
#                 case LIN_FRAMING_ERROR:
#                 case LIN_BUFFER_OVER_RUN_ERROR:
#                     /* Release Message Buffer */
#                     /**
#                      * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                      *
#                      * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                      */
#                     REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_RMB_MASK_U32);
	.d2line		2156
.Llo230:
	diab.li		r4,512
.Llo289:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8Channel=r3
.Llo175:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8Channel=r3 u8Channel=r3
.Llo231:
	rlwinm		r0,r0,2,22,29		# u8Lin_LINFlex=r0 u8Lin_LINFlex=r0
.Llo232:
	lwzx		r3,r3,r0		# u8Channel=r3 u8Channel=r3
	stw		r4,8(r3)		# u8Channel=r3
#                     TempReturn = LIN_RX_ERROR;
	.d2line		2157
	diab.li		r5,7		# TempReturn=r5
	b		.L542
.L602:
#                     break;
# 
#                 case LIN_NO_ERROR :
#                     /* Check Lin frame status variable */
#                     switch(Lin_au8LinChFrameStatus[u8Channel])
	.d2line		2162
.Llo186:
	lis		r5,Lin_au8LinChFrameStatus@ha
	e_add16i		r5,r5,Lin_au8LinChFrameStatus@l
	rlwinm		r7,r3,0,24,31		# u8tempStatus=r7 u8Channel=r3
.Llo240:
	se_add		r5,r7		# u8tempStatus=r7
	lbzx		r6,r0,r5		# u8Lin_LINFlex=r0
	se_cmpi		r6,6
	bc		1,1,.L874	# gt
.Llo233:
	bc		1,2,.L603	# eq
.Llo176:
	se_cmpi		r6,4
	bc		1,2,.L608	# eq
	se_cmpi		r6,5
	bc		1,2,.L607	# eq
	b		.L609
.L874:
.Llo177:
	se_cmpi		r6,7
	bc		1,2,.L605	# eq
	se_cmpi		r6,8
	bc		1,2,.L606	# eq
.Llo178:
	b		.L609
.L603:
#                     {
#                         /* Tx completed - Status Updated in ISR */
#                         case LIN_TX_COMPLETE_STATE:
#                             TempReturn = LIN_TX_OK;
	.d2line		2166
	diab.li		r5,1		# TempReturn=r5
.Llo290:
	b		.L542
.L605:
#                             break;
# 
#                         /* Rx completed - Status Updated in ISR */
#                         case LIN_RX_COMPLETE_STATE:
#                             /* Copy the data from hardware buffer */
#                             Lin_Linflex_CopyData(u8Channel, pu8LinSduPtr);
	.d2line		2172
.Llo179:
	mr		r3,r3		# u8Channel=r3 u8Channel=r3
.Llo180:
	mr		r4,r4		# pu8LinSduPtr=r4 pu8LinSduPtr=r4
.Llo187:
	bl		Lin_Linflex_CopyData
#                             TempReturn =  LIN_RX_OK;
	.d2line		2173
	diab.li		r5,5		# TempReturn=r5
.Llo291:
	b		.L542
.L606:
#                             break;
# 
#                         /* Tx completed - But master not received any data */
#                         case LIN_CH_RECEIVE_NOTHING_STATE:
#                             TempReturn = LIN_RX_NO_RESPONSE;
	.d2line		2178
.Llo292:
	diab.li		r5,8		# TempReturn=r5
.Llo293:
	b		.L542
.L607:
#                             break;
# 
#                         /* Channel Initialized or wakenup or all activity completed and ready to
#                         send next header */
#                         case LIN_CH_READY_STATE:
#                             TempReturn = LIN_OPERATIONAL;
	.d2line		2184
.Llo294:
	diab.li		r5,9		# TempReturn=r5
.Llo295:
	b		.L542
.L608:
#                             break;
# 
#                         /* Channel not ready */
#                         case LIN_CH_NOT_READY_STATE:
#                           TempReturn = LIN_NOT_OK;
	.d2line		2189
.Llo296:
	diab.li		r5,0		# TempReturn=r5
.Llo297:
	b		.L542
.L609:
#                           break;
# 
#                         default :
#                             TempReturn = LIN_NOT_OK;
	.d2line		2193
.Llo298:
	diab.li		r5,0		# TempReturn=r5
.Llo299:
	b		.L542
.L610:
#                             break;
#                     }
#                     break;
#                 default:
#                     TempReturn = LIN_NOT_OK;
	.d2line		2198
.Llo181:
	diab.li		r5,0		# TempReturn=r5
	b		.L542
.L611:
#                     break;
#             }
#             break;
#         default :
#             TempReturn = LIN_NOT_OK;
	.d2line		2203
	diab.li		r5,0		# TempReturn=r5
.L542:
#             break;
#     }
# 
# #ifdef  ERR_IPV_LINFLEX_0011
#     #if (ERR_IPV_LINFLEX_0011 == STD_ON)
#     }
#     #endif  /* (ERR_IPV_LINFLEX_0011 == STD_ON) */
# #endif  /* ERR_IPV_LINFLEX_0011 */
# 
#     return TempReturn;
	.d2line		2213
.Llo182:
	rlwinm		r3,r5,0,24,31		# u8Channel=r3 TempReturn=r5
# }
	.d2line		2214
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8Lin_LINFlex=r0
	mtspr		lr,r0		# u8Lin_LINFlex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo300:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L851:
	.type		Lin_Linflex_HardwareGetStatus,@function
	.size		Lin_Linflex_HardwareGetStatus,.-Lin_Linflex_HardwareGetStatus
# Number of nodes = 580

# Allocations for Lin_Linflex_HardwareGetStatus
#	?a4		u8Channel
#	?a5		pu8LinSduPtr
#	?a6		u8Lin_LINFlex
#	?a7		u8tempStatus
#	?a8		u8Temp
#	?a9		u8tempOC1
#	?a10		u8tempHTO
#	?a11		u32BDRL_EMPTY
#	?a12		u32BDRM_EMPTY
#	?a13		TempReturn
# FUNC(void, LIN_CODE) Lin_Linflex_TxRxInterruptHandler(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2231,22
#$$ld
.L877:

#$$bf	Lin_Linflex_TxRxInterruptHandler,interprocedural,rasave,nostackparams
	.globl		Lin_Linflex_TxRxInterruptHandler
	.d2_cfa_start __cie
Lin_Linflex_TxRxInterruptHandler:
.Llo301:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# u8Channel=r6 u8Channel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8LogicalChannel = (uint8)0U;
	.d2line		2233
.Llo302:
	diab.li		r3,0		# u8LogicalChannel=r3
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
#     VAR(uint32, AUTOMATIC) u32Lin_status;
# 
#     /* Get base address of LINFlex module which is used by LIN channel */
#     u8Lin_LINFlex = (uint8)u8Channel;
	.d2line		2238
.Llo303:
	mr		r30,r6		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r6
# 
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_11();
#     {
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_BIT_CLEAR32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
#     }
#     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_11();
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
# 
#     /* Check if driver is initialized */
#     if( NULL_PTR != Lin_pcConfigPtr )
	.d2line		2256
.Llo307:
	lis		r4,Lin_pcConfigPtr@ha
.Llo308:
	lwz		r0,Lin_pcConfigPtr@l(r4)
	se_cmpi		r0,0
	bc		1,2,.L662	# eq
.L663:
#     {
#         while(LIN_HW_MAX_AVAILABLE_MODULES > u8LogicalChannel)
	.d2line		2258
.Llo332:
	rlwinm		r0,r3,0,24,31		# u8LogicalChannel=r3
.Llo333:
	se_cmpli	r0,6
	bc		0,0,.L666	# ge
#         {
#              if((sint32)u8Lin_LINFlex == Lin_as8ChannelHardwareMap[Lin_pChannelConfigPtr[u8LogicalChannel]->u8LinChannelID])
	.d2line		2260
.Llo304:
	rlwinm		r6,r30,0,24,31		# u8LogicalChannel=r6 u8Lin_LINFlex=r30
	lis		r5,Lin_as8ChannelHardwareMap@ha
	e_add16i		r5,r5,Lin_as8ChannelHardwareMap@l
	lis		r4,Lin_pChannelConfigPtr@ha
	e_add16i		r4,r4,Lin_pChannelConfigPtr@l
	rlwinm		r0,r3,2,22,29		# u8LogicalChannel=r3
	lwzx		r4,r4,r0
	lbz		r0,0(r4)
	lbzx		r0,r5,r0
	extsb		r0,r0
	se_cmp		r6,r0		# u8LogicalChannel=r6
	bc		1,2,.L666	# eq
#              {
#                 break;
#             }
#             else
#             {
#                 u8LogicalChannel++;
	.d2line		2266
	diab.addi		r0,r3,1		# u8LogicalChannel=r3
	se_addi		r3,1		# u8LogicalChannel=r3 u8LogicalChannel=r3
	b		.L663
.L666:
#             }
#         }
# 
#         if(LIN_HW_MAX_AVAILABLE_MODULES > u8LogicalChannel)
	.d2line		2270
	rlwinm		r0,r3,0,24,31		# u8LogicalChannel=r3
	se_cmpli	r0,6
	bc		0,0,.L668	# ge
#         {
#             /* Get the logical channel index from physical channel */
#              u8LogicalChannel = Lin_pChannelConfigPtr[u8LogicalChannel]->u8LinChannelID;
	.d2line		2273
.Llo309:
	lis		r4,Lin_pChannelConfigPtr@ha
	e_add16i		r4,r4,Lin_pChannelConfigPtr@l
.Llo310:
	rlwinm		r3,r3,2,22,29		# u8LogicalChannel=r3 u8LogicalChannel=r3
	lwzx		r3,r4,r3		# u8LogicalChannel=r3
	lbz		r31,0(r3)		# u8LogicalChannel=r3
	mr		r31,r31		# u8LogicalChannel=r31 u8LogicalChannel=r31
#   
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             u32Lin_status = REG_READ32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex));
	.d2line		2280
	lis		r3,Linflex_au32BaseAddrs@ha		# u8LogicalChannel=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8LogicalChannel=r3 u8LogicalChannel=r3
	rlwinm		r6,r30,2,22,29		# u8LogicalChannel=r6 u8Lin_LINFlex=r30
	lwzux		r4,r3,r6		# u8LogicalChannel=r3
	lwz		r0,4(r4)
.Llo346:
	mr		r0,r0		# u32Lin_status=r0 u32Lin_status=r0
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             u32Lin_status &= REG_READ32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex));
	.d2line		2286
.Llo347:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8LogicalChannel=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8LogicalChannel=r3 u8LogicalChannel=r3
	lwzx		r3,r3,r6		# u8LogicalChannel=r3 u8LogicalChannel=r3
	lwz		r3,8(r3)		# u8LogicalChannel=r3 u8LogicalChannel=r3
.Llo311:
	and		r0,r0,r3		# u32Lin_status=r3
	.d2line		2287
	mr.		r3,r0		# u32Lin_status=?a10 u32Lin_status=?a14
#             if (0UL != u32Lin_status)
	bc		1,2,.L661	# eq
#             {
#                 /* Wake up interrupt */
#                 /* Wake up flag set */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 if (0U != (u32Lin_status & LINFLEX_LINSR_WUF_MASK_U32))
	.d2line		2296
.Llo312:
	se_btsti		r3,26		# u32Lin_status=r3
	bc		1,2,.L670	# eq
#                 {
#                     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_12();
	.d2line		2298
.Llo334:
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_12
#                     {
#                         /* Disable wake up interrupt */
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_WUIE_MASK_U32);
	.d2line		2306
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
.Llo348:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo335:
	rlwinm		r30,r30,2,22,29		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r30
.Llo336:
	lwzx		r3,r3,r30		# u32Lin_status=r3 u32Lin_status=r3
	lwz		r0,4(r3)		# u32Lin_status=r3
	.diab.bclri		r0,26
	stw		r0,4(r3)		# u32Lin_status=r3
#                     }
#                     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_12();
	.d2line		2308
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_12
# 
#                     /* if channel is in sleep, wakeup it to operational state */
#                     if (LIN_CH_SLEEP_STATE == Lin_au8LinChStatus[u8LogicalChannel])
	.d2line		2311
.Llo349:
	lis		r3,Lin_au8LinChStatus@ha		# u32Lin_status=r3
.Llo350:
	e_add16i		r3,r3,Lin_au8LinChStatus@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r31,0,24,31		# u8LogicalChannel=r31
	se_add		r3,r5		# u32Lin_status=r3 u32Lin_status=r3
.Llo351:
	lbzx		r0,r0,r3
	se_cmpi		r0,2
	bc		0,2,.L661	# ne
#                     {
#                         /* Indicates a valid timer wakeup event to ECU State Manager */
#                          if ((uint8) STD_ON == Lin_pChannelConfigPtr[u8LogicalChannel]->u16LinChannelWakeupSupport)
	.d2line		2314
	lis		r3,Lin_pChannelConfigPtr@ha		# u32Lin_status=r3
.Llo352:
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r31,2,22,29		# u8LogicalChannel=r31
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	lhz		r0,8(r3)		# u32Lin_status=r3
	se_cmpi		r0,1
	bc		0,2,.L672	# ne
#                         {
#                             EcuM_CheckWakeup(Lin_pChannelConfigPtr[u8LogicalChannel]->LinChannelEcuMWakeupSource);
	.d2line		2316
.Llo353:
	lis		r3,Lin_pChannelConfigPtr@ha		# u32Lin_status=r3
.Llo354:
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r31,2,22,29		# u8LogicalChannel=r31
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	lwz		r3,12(r3)		# u32Lin_status=r3 u32Lin_status=r3
.Llo355:
	bl		EcuM_CheckWakeup
.L672:
#                         }
#                          /* Set Channel state Operational */
#                         Lin_au8LinChStatus[u8LogicalChannel] = LIN_CH_OPERATIONAL;
	.d2line		2319
.Llo313:
	diab.li		r0,3
	lis		r3,Lin_au8LinChStatus@ha		# u32Lin_status=r3
.Llo356:
	e_add16i		r3,r3,Lin_au8LinChStatus@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo314:
	rlwinm		r31,r31,0,24,31		# u8LogicalChannel=r31 u8LogicalChannel=r31
.Llo315:
	stbux		r0,r3,r31		# u32Lin_status=r3
#                         /* Update LIN channel frame operation status to LIN_CH_READY_STATE */
#                         Lin_au8LinChFrameStatus[u8LogicalChannel] = LIN_CH_READY_STATE;
	.d2line		2321
	diab.li		r0,5
	lis		r3,Lin_au8LinChFrameStatus@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8LinChFrameStatus@l		# u32Lin_status=r3 u32Lin_status=r3
	stbux		r0,r3,r31		# u32Lin_status=r3
	b		.L661
.L670:
#                     }
#                 }
#                 /* Data Reception Complete interrupt */
#                 /* Data Reception Completed Flag set */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 else if (0U != (u32Lin_status & LINFLEX_LINSR_DRF_MASK_U32))
	.d2line		2331
.Llo316:
	se_btsti		r3,29		# u32Lin_status=r3
	bc		1,2,.L674	# eq
#                 {
#                     /* Clear interrupt flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_DRF_MASK_U32);
	.d2line		2339
.Llo357:
	diab.li		r0,4
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
.Llo358:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r6,r30,2,22,29		# u8LogicalChannel=r6 u8Lin_LINFlex=r30
	lwzx		r4,r3,r6		# u32Lin_status=r3
	stw		r0,8(r4)
# 
#                     /* Update LIN channel frame operation status to LIN_RX_COMPLETE_STATE */
#                     Lin_au8LinChFrameStatus[u8LogicalChannel] = LIN_RX_COMPLETE_STATE;
	.d2line		2342
	diab.li		r0,7
	lis		r4,Lin_au8LinChFrameStatus@ha
	e_add16i		r4,r4,Lin_au8LinChFrameStatus@l
	rlwinm		r5,r31,0,24,31		# u8LogicalChannel=r31
	stbux		r0,r4,r5
# 
#                     /* Noise Error has occurred ? */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     if(LINFLEX_LINESR_NF_MASK_U32== ( REG_READ32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINESR_NF_MASK_U32))
	.d2line		2350
	lwzx		r3,r3,r6		# u32Lin_status=r3 u32Lin_status=r3
	lwz		r0,12(r3)		# u32Lin_status=r3
	se_btsti		r0,31
	bc		1,2,.L661	# eq
# 
#                     {
#                         /* Set LIN channel frame error status to LIN_NOISE_ERROR */
#                         Lin_au8LinChFrameErrorStatus[u8LogicalChannel] = LIN_NOISE_ERROR;
	.d2line		2354
.Llo317:
	diab.li		r0,8
	lis		r3,Lin_au8LinChFrameErrorStatus@ha		# u32Lin_status=r3
.Llo359:
	e_add16i		r3,r3,Lin_au8LinChFrameErrorStatus@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo318:
	rlwinm		r31,r31,0,24,31		# u8LogicalChannel=r31 u8LogicalChannel=r31
.Llo319:
	stbux		r0,r3,r31		# u32Lin_status=r3
# 
#                         /* Clear the Noise Flag of LIN Error Status Register */
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_NF_MASK_U32);
	.d2line		2362
	diab.li		r0,1
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo337:
	rlwinm		r30,r30,2,22,29		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r30
.Llo338:
	lwzx		r3,r3,r30		# u32Lin_status=r3 u32Lin_status=r3
	stw		r0,12(r3)		# u32Lin_status=r3
	b		.L661
.L674:
#                     }
#                     #if defined (ERR_IPV_LINFLEX_0010)
#                         #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#                         SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_13();
#                         {
#                             /**
#                             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                             *
#                             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                             */
#                             REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
#                         }
#                         SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_13();
#                         #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
#                     #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
#                 }
#                 /* Data Transmitted Complete interrupt */
#                 /* Data Transmission Completed Flag set */
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 else if (0U != (u32Lin_status & LINFLEX_LINSR_DTF_MASK_U32))
	.d2line		2386
.Llo320:
	se_btsti		r3,30		# u32Lin_status=r3
	bc		1,2,.L677	# eq
#                 {
#                     /* Clear interrupt flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_DTF_MASK_U32);
	.d2line		2394
.Llo360:
	diab.li		r0,2
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
.Llo361:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r6,r30,2,22,29		# u8LogicalChannel=r6 u8Lin_LINFlex=r30
	lwzx		r3,r3,r6		# u32Lin_status=r3 u32Lin_status=r3
	stw		r0,8(r3)		# u32Lin_status=r3
#                     /* Check if sleep mode was transmitted */
#                     if (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8LogicalChannel])
	.d2line		2396
	lis		r3,Lin_au8TransmitHeaderCommand@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8TransmitHeaderCommand@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r31,0,24,31		# u8LogicalChannel=r31
	lbzx		r0,r3,r5		# u32Lin_status=r3
	se_cmpi		r0,3
	bc		0,2,.L678	# ne
#                     {
#                         SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_14();
	.d2line		2398
.Llo362:
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_14
#                         {
#                             /* Check whether wake up detection be interrupt is enabled */
#                              if ((uint8) STD_ON == Lin_pChannelConfigPtr[u8LogicalChannel]->u16LinChannelWakeupSupport)
	.d2line		2401
	lis		r3,Lin_pChannelConfigPtr@ha		# u32Lin_status=r3
.Llo363:
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r31,2,22,29		# u8LogicalChannel=r31
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	lhz		r0,8(r3)		# u32Lin_status=r3
	se_cmpi		r0,1
	bc		0,2,.L679	# ne
#                              {
#                                 /* Wake up detection enabled */
#                                 /* Clear Wake-Up flag */
#                                 /**
#                                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                                 *
#                                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                                 */
#                                 REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_WUF_MASK_U32);
	.d2line		2410
.Llo364:
	diab.li		r0,32
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
.Llo365:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r6,r30,2,22,29		# u8LogicalChannel=r6 u8Lin_LINFlex=r30
	lwzux		r4,r3,r6		# u32Lin_status=r3
	stw		r0,8(r4)
#                                 /* Enable wake up interrupt */
#                                 /**
#                                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                                 *
#                                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                                 */
#                                 REG_BIT_SET32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_WUIE_MASK_U32);
	.d2line		2417
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	lwzx		r3,r3,r6		# u32Lin_status=r3 u32Lin_status=r3
	lwz		r0,4(r3)		# u32Lin_status=r3
	.diab.bseti		r0,26
	stw		r0,4(r3)		# u32Lin_status=r3
.L679:
#                             }
#                             /* Enter Sleep mode */
#                             /**
#                             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                             *
#                             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                             */
#                             REG_BIT_SET32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR1_SLEEP_MASK_U32);
	.d2line		2425
.Llo321:
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
.Llo366:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo339:
	rlwinm		r30,r30,2,22,29		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r30
.Llo340:
	lwzx		r3,r3,r30		# u32Lin_status=r3 u32Lin_status=r3
	lwz		r0,0(r3)		# u32Lin_status=r3
	.diab.bseti		r0,30
	stw		r0,0(r3)		# u32Lin_status=r3
#                         }
#                         SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_14();
	.d2line		2427
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_14
# 
#                          /* Set Channel state to SLEEP state */
#                         Lin_au8LinChStatus[u8LogicalChannel] = LIN_CH_SLEEP_STATE;
	.d2line		2430
.Llo367:
	diab.li		r0,2
	lis		r3,Lin_au8LinChStatus@ha		# u32Lin_status=r3
.Llo368:
	e_add16i		r3,r3,Lin_au8LinChStatus@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo322:
	rlwinm		r31,r31,0,24,31		# u8LogicalChannel=r31 u8LogicalChannel=r31
.Llo323:
	stbux		r0,r3,r31		# u32Lin_status=r3
#                          /* Update Lin_au8TransmitHeaderCommand value to LIN_TX_NO_COMMAND */
#                         Lin_au8TransmitHeaderCommand[u8LogicalChannel] = LIN_TX_NO_COMMAND;
	.d2line		2432
	diab.li		r0,4
	lis		r3,Lin_au8TransmitHeaderCommand@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8TransmitHeaderCommand@l		# u32Lin_status=r3 u32Lin_status=r3
	stbx		r0,r3,r31		# u32Lin_status=r3
	b		.L661
.L678:
#                     }
#                     else
#                     {
#                         /* Update LIN channel frame operation status to LIN_TX_COMPLETE_STATE */
#                         Lin_au8LinChFrameStatus[u8LogicalChannel] = LIN_TX_COMPLETE_STATE;
	.d2line		2437
.Llo341:
	diab.li		r0,6
	lis		r3,Lin_au8LinChFrameStatus@ha		# u32Lin_status=r3
.Llo369:
	e_add16i		r3,r3,Lin_au8LinChFrameStatus@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo324:
	rlwinm		r31,r31,0,24,31		# u8LogicalChannel=r31 u8LogicalChannel=r31
.Llo325:
	stbux		r0,r3,r31		# u32Lin_status=r3
	b		.L661
.L677:
#                     }
#                 }
#                 else
#                 {
#                     /* Error condition - Clear all flag */
#                     /* Clear Wake-Up flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_WUF_MASK_U32);
	.d2line		2449
.Llo326:
	diab.li		r0,32
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
.Llo370:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo342:
	rlwinm		r30,r30,2,22,29		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r30
.Llo343:
	lwzux		r4,r3,r30		# u32Lin_status=r3
	stw		r0,8(r4)
#                     /* Clear Data Reception Completed flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_DRF_MASK_U32);
	.d2line		2456
	diab.li		r0,4
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	lwzux		r4,r3,r30		# u32Lin_status=r3
	stw		r0,8(r4)
#                     /* Clear Data Transmission Completed flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_DTF_MASK_U32);
	.d2line		2463
	diab.li		r0,2
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	lwzx		r3,r3,r30		# u32Lin_status=r3 u32Lin_status=r3
	stw		r0,8(r3)		# u32Lin_status=r3
	b		.L661
.L668:
#                     #if defined (ERR_IPV_LINFLEX_0010)
#                         #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#                         SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_15();
#                         {
#                             /**
#                             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                             *
#                             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                             */
#                             REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
#                         }
#                         SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_15();
#                         #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
#                     #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
#                 }
#             }
#             else
#             {
#                 /* do nothing */
#             }
#         }
#         else
#         {
#             /* Error occured, reset all flags */
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_FLAGS_MASK_U32);
	.d2line		2493
.Llo327:
	diab.li		r0,831
	lis		r3,Linflex_au32BaseAddrs@ha		# u8LogicalChannel=r3
.Llo328:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8LogicalChannel=r3 u8LogicalChannel=r3
.Llo344:
	rlwinm		r30,r30,2,22,29		# u8Lin_LINFlex=r30 u8Lin_LINFlex=r30
.Llo345:
	lwzx		r3,r3,r30		# u8LogicalChannel=r3 u8LogicalChannel=r3
	stw		r0,8(r3)		# u8LogicalChannel=r3
	b		.L661
.L662:
#         }
#     }
#     else
#     {
#         /* Error occured, reset all flags */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_FLAGS_MASK_U32);
	.d2line		2504
.Llo329:
	diab.li		r0,831
	lis		r3,Linflex_au32BaseAddrs@ha		# u8LogicalChannel=r3
.Llo330:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8LogicalChannel=r3 u8LogicalChannel=r3
.Llo305:
	rlwinm		r6,r6,2,22,29		# u8Channel=r6 u8Channel=r6
.Llo306:
	lwzx		r3,r3,r6		# u8LogicalChannel=r3 u8LogicalChannel=r3
	stw		r0,8(r3)		# u8LogicalChannel=r3
.L661:
#     }
# 
#     return; /* exit function with no return */
# }
	.d2line		2508
	.d2epilogue_begin
.Llo331:
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
.L878:
	.type		Lin_Linflex_TxRxInterruptHandler,@function
	.size		Lin_Linflex_TxRxInterruptHandler,.-Lin_Linflex_TxRxInterruptHandler
# Number of nodes = 392

# Allocations for Lin_Linflex_TxRxInterruptHandler
#	?a4		u8Channel
#	?a5		$$116
#	?a6		$$115
#	?a7		$$114
#	?a8		u8LogicalChannel
#	?a9		u8Lin_LINFlex
#	?a10		u32Lin_status
# FUNC (void, LIN_CODE) Lin_Linflex_ErrorInterruptHandler(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2522,23
#$$ld
.L889:

#$$bf	Lin_Linflex_ErrorInterruptHandler,interprocedural,rasave,nostackparams
	.globl		Lin_Linflex_ErrorInterruptHandler
	.d2_cfa_start __cie
Lin_Linflex_ErrorInterruptHandler:
.Llo371:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# u8Channel=r5 u8Channel=r3
	.d2prologue_end
# {
#     VAR(uint8,AUTOMATIC) u8LogicalChannel = (uint8)0U;
	.d2line		2524
.Llo372:
	diab.li		r3,0		# u8LogicalChannel=r3
#     VAR(uint8, AUTOMATIC) u8Lin_LINFlex;
#     VAR(boolean, AUTOMATIC) bIsTxErrorOnSleepCmd = (boolean)FALSE;
	.d2line		2526
.Llo373:
	diab.li		r31,0
#     VAR(uint32, AUTOMATIC) u32Lin_status;
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#     VAR(uint32, AUTOMATIC) u32Count;
#     VAR(uint32, AUTOMATIC) u32LINOCR_OC;
#     VAR(uint32, AUTOMATIC) u32CompareResult;
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
# 
#     /* Get base address of LINFlex module which is used by LIN channel */
#     u8Lin_LINFlex = (uint8)u8Channel;
	.d2line		2539
.Llo394:
	mr		r29,r5		# u8Lin_LINFlex=r29 u8Lin_LINFlex=r5
# 
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
# #if defined (ERR_IPV_LINFLEX_0010)
#     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u32Count = REG_READ32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINTCSR_CNT_MASK_U32;
#     /**
#     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#     *
#     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#     */
#     u32LINOCR_OC = ((REG_READ32(LINFLEX_LINOCR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINOCR_OC2_MASK_U32) >> 8U);
# 
#     if(u32Count < u32LINOCR_OC)
#     {
#         u32CompareResult = u32LINOCR_OC - u32Count;
#     }
#     else
#     {
#         u32CompareResult = u32Count - u32LINOCR_OC;
#     }
# 
#     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
# #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
# 
#     /* Check if driver is initialized */
#     if( NULL_PTR != Lin_pcConfigPtr )
	.d2line		2571
	lis		r4,Lin_pcConfigPtr@ha
	lwz		r0,Lin_pcConfigPtr@l(r4)
	se_cmpi		r0,0
	bc		1,2,.L697	# eq
.L698:
#     {
#         while(LIN_HW_MAX_AVAILABLE_MODULES > u8LogicalChannel)
	.d2line		2573
.Llo388:
	rlwinm		r0,r3,0,24,31		# u8LogicalChannel=r3
.Llo389:
	se_cmpli	r0,6
	bc		0,0,.L701	# ge
#         {
#              if((sint32)u8Lin_LINFlex == Lin_as8ChannelHardwareMap[Lin_pChannelConfigPtr[u8LogicalChannel]->u8LinChannelID])
	.d2line		2575
.Llo374:
	rlwinm		r6,r29,0,24,31		# u8Lin_LINFlex=r29
	lis		r4,Lin_as8ChannelHardwareMap@ha
	e_add16i		r4,r4,Lin_as8ChannelHardwareMap@l
	lis		r5,Lin_pChannelConfigPtr@ha		# u8LogicalChannel=r5
	e_add16i		r5,r5,Lin_pChannelConfigPtr@l		# u8LogicalChannel=r5 u8LogicalChannel=r5
	rlwinm		r0,r3,2,22,29		# u8LogicalChannel=r3
	lwzx		r5,r5,r0		# u8LogicalChannel=r5 u8LogicalChannel=r5
	lbz		r0,0(r5)		# u8LogicalChannel=r5
	lbzx		r0,r4,r0
	extsb		r0,r0
	se_cmp		r6,r0
	bc		1,2,.L701	# eq
#              {
#                 break;
#             }
#             else
#             {
#                 u8LogicalChannel++;
	.d2line		2581
	diab.addi		r0,r3,1		# u8LogicalChannel=r3
	se_addi		r3,1		# u8LogicalChannel=r3 u8LogicalChannel=r3
	b		.L698
.L701:
#             }
#         }
# 
#         if(LIN_HW_MAX_AVAILABLE_MODULES > u8LogicalChannel)
	.d2line		2585
	rlwinm		r0,r3,0,24,31		# u8LogicalChannel=r3
	se_cmpli	r0,6
	bc		0,0,.L703	# ge
#         {
#             /* Get the logical channel index from physical channel */
#              u8LogicalChannel = Lin_pChannelConfigPtr[u8LogicalChannel]->u8LinChannelID;
	.d2line		2588
.Llo377:
	lis		r4,Lin_pChannelConfigPtr@ha
	e_add16i		r4,r4,Lin_pChannelConfigPtr@l
.Llo378:
	rlwinm		r3,r3,2,22,29		# u8LogicalChannel=r3 u8LogicalChannel=r3
	lwzx		r3,r4,r3		# u8LogicalChannel=r3
	lbz		r30,0(r3)		# u8LogicalChannel=r3
	mr		r30,r30		# u8LogicalChannel=r30 u8LogicalChannel=r30
#              /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             u32Lin_status = REG_READ32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex));
	.d2line		2594
	lis		r3,Linflex_au32BaseAddrs@ha		# u8LogicalChannel=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8LogicalChannel=r3 u8LogicalChannel=r3
	rlwinm		r5,r29,2,22,29		# u8LogicalChannel=r5 u8Lin_LINFlex=r29
	lwzux		r4,r3,r5		# u8LogicalChannel=r3
	lwz		r0,4(r4)
.Llo401:
	mr		r0,r0		# u32Lin_status=r0 u32Lin_status=r0
#             /**
#              * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#              *
#              * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             u32Lin_status &= REG_READ32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex));
	.d2line		2600
.Llo402:
	lis		r3,Linflex_au32BaseAddrs@ha		# u8LogicalChannel=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8LogicalChannel=r3 u8LogicalChannel=r3
	lwzx		r3,r3,r5		# u8LogicalChannel=r3 u8LogicalChannel=r3
	lwz		r3,12(r3)		# u8LogicalChannel=r3 u8LogicalChannel=r3
.Llo379:
	and		r0,r0,r3		# u32Lin_status=r3
	.d2line		2606
	mr.		r28,r0		# u32Lin_status=?a11 u32Lin_status=?a15
#             /**
#              * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#              *
#              * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             if (0UL != u32Lin_status)
	bc		1,2,.L696	# eq
#             {
#                 /* Check only error flags */
#                 if (0U != (u32Lin_status & LINFLEX_LINESR_BEF_MASK_U32))
	.d2line		2609
.Llo380:
	se_btsti		r28,18		# u32Lin_status=r28
.Llo403:
	bc		1,2,.L705	# eq
#                 {
#                     /* Clear Bit Error flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_BEF_MASK_U32);
	.d2line		2617
	diab.li		r0,8192
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r29,2,22,29		# u8LogicalChannel=r5 u8Lin_LINFlex=r29
	lwzux		r4,r3,r5		# u32Lin_status=r3
	stw		r0,12(r4)
# 
#                     /* Stores the state of the LIN State machine when a BIT error occurs*/
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     Lin_Linflex_au8StateOfBEF[u8LogicalChannel] = (uint8)((REG_READ32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex)) & LINFLEX_LINSR_LINS_MASK_U32)>>(uint8)12U);
	.d2line		2625
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	lwz		r0,8(r3)		# u32Lin_status=r3
	rlwinm		r0,r0,20,28,31
	lis		r3,Lin_Linflex_au8StateOfBEF@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_Linflex_au8StateOfBEF@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r4,r30,0,24,31		# u8LogicalChannel=r30
	stbux		r0,r3,r4		# u32Lin_status=r3
# 
#                     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_16();
	.d2line		2627
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_16
#                     {
#                         /* Stop any ongoing transmission */
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         REG_BIT_SET32(LINFLEX_LINCR2_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR2_ABRQ_MASK_U32);
	.d2line		2635
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r29,2,22,29		# u8LogicalChannel=r5 u8Lin_LINFlex=r29
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	lwz		r0,48(r3)		# u32Lin_status=r3
	.diab.bseti		r0,22
	stw		r0,48(r3)		# u32Lin_status=r3
#                     }
#                     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_16();
	.d2line		2637
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_16
# 
#                     /* Set LIN channel frame error status to LIN_BIT_ERROR */
#                     Lin_au8LinChFrameErrorStatus[u8LogicalChannel] = LIN_BIT_ERROR;
	.d2line		2640
	diab.li		r4,1
	lis		r3,Lin_au8LinChFrameErrorStatus@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8LinChFrameErrorStatus@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r0,r30,0,24,31		# u8LogicalChannel=r30
	stbux		r4,r3,r0		# u32Lin_status=r3
#                     /* Check if error was on sleep frame transmitting */
#                     if (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8LogicalChannel])
	.d2line		2642
	lis		r3,Lin_au8TransmitHeaderCommand@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8TransmitHeaderCommand@l		# u32Lin_status=r3 u32Lin_status=r3
	lbzx		r0,r3,r0		# u32Lin_status=r3
	se_cmpi		r0,3
#                     {
#                         bIsTxErrorOnSleepCmd = (boolean)TRUE;
	isel		r31,r4,r31,2		# bIsTxErrorOnSleepCmd=r31 bIsTxErrorOnSleepCmd=r31
.L705:
#                     }
#                 }
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 if (0U != (u32Lin_status & LINFLEX_LINESR_CEF_MASK_U32))
	.d2line		2652
	se_btsti		r28,19		# u32Lin_status=r28
	bc		1,2,.L707	# eq
#                 {
#                     /* Clear Checksum Error flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_CEF_MASK_U32);
	.d2line		2660
	diab.li		r0,4096
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r29,2,22,29		# u8LogicalChannel=r5 u8Lin_LINFlex=r29
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	stw		r0,12(r3)		# u32Lin_status=r3
#                     /* Set LIN channel frame error status to LIN_CHECKSUM_ERROR */
#                     Lin_au8LinChFrameErrorStatus[u8LogicalChannel] = LIN_CHECKSUM_ERROR;
	.d2line		2662
	diab.li		r0,2
	lis		r3,Lin_au8LinChFrameErrorStatus@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8LinChFrameErrorStatus@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r4,r30,0,24,31		# u8LogicalChannel=r30
	stbux		r0,r3,r4		# u32Lin_status=r3
.L707:
#                 }
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 if (0U != (u32Lin_status & LINFLEX_LINESR_OCF_MASK_U32))
	.d2line		2669
	se_btsti		r28,17		# u32Lin_status=r28
	bc		1,2,.L708	# eq
#                 {
#                     /* Clear Output Compare flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_OCF_MASK_U32);
	.d2line		2677
	diab.li		r0,16384
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r29,2,22,29		# u8LogicalChannel=r5 u8Lin_LINFlex=r29
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	stw		r0,12(r3)		# u32Lin_status=r3
# #if (LIN_DISABLE_FRAME_TIMEOUT == STD_OFF)
#                 #if defined (ERR_IPV_LINFLEX_0010)
#                     #if (ERR_IPV_LINFLEX_0010 == STD_ON)
#                     /* Spurious timeout event check */
#                     if(1U >= u32CompareResult)
#                     {
#                         /* Set LIN channel frame error status to LIN_TIMEOUT_ERROR */
#                         Lin_au8LinChFrameErrorStatus[u8LogicalChannel] = LIN_TIMEOUT_ERROR;
#                         /* Check if error was on sleep frame transmitting */
#                         if (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8LogicalChannel])
#                         {
#                             bIsTxErrorOnSleepCmd = (boolean)TRUE;
#                         }
#                         SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_17();
#                         {
#                             /**
#                             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                             *
#                             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                             */
#                             REG_BIT_CLEAR32(LINFLEX_LINTCSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINTCSR_TOCE_MASK_U32);
#                             /**
#                             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                             *
#                             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                             */
#                             REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
#                         }
#                         SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_17();
#                     }
#                     #else
#                     /* Set LIN channel frame error status to LIN_TIMEOUT_ERROR */
#                     Lin_au8LinChFrameErrorStatus[u8LogicalChannel] = LIN_TIMEOUT_ERROR;
#                     /* Check if error was on sleep frame transmitting */
#                     if (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8LogicalChannel])
#                     {
#                         bIsTxErrorOnSleepCmd = (boolean)TRUE;
#                     }
#                     #endif  /* (ERR_IPV_LINFLEX_0010 == STD_ON) */
#                 #else
#                     /* Set LIN channel frame error status to LIN_TIMEOUT_ERROR */
#                     Lin_au8LinChFrameErrorStatus[u8LogicalChannel] = LIN_TIMEOUT_ERROR;
	.d2line		2719
	diab.li		r4,9
	lis		r3,Lin_au8LinChFrameErrorStatus@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8LinChFrameErrorStatus@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r0,r30,0,24,31		# u8LogicalChannel=r30
	stbux		r4,r3,r0		# u32Lin_status=r3
#                     /* Check if error was on sleep frame transmitting */
#                     if (LIN_TX_SLEEP_COMMAND == Lin_au8TransmitHeaderCommand[u8LogicalChannel])
	.d2line		2721
	lis		r3,Lin_au8TransmitHeaderCommand@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8TransmitHeaderCommand@l		# u32Lin_status=r3 u32Lin_status=r3
	lbzx		r0,r3,r0		# u32Lin_status=r3
	se_cmpi		r0,3
#                     {
#                         bIsTxErrorOnSleepCmd = (boolean)TRUE;
	.d2line		2723
	diab.li		r3,1		# u32Lin_status=r3
	isel		r31,r3,r31,2		# bIsTxErrorOnSleepCmd=r31 u32Lin_status=r3 bIsTxErrorOnSleepCmd=r31
.L708:
#                     }
#                 #endif  /*defined (ERR_IPV_LINFLEX_0010)*/
# #else
#                     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_18();
#                     {
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         REG_BIT_CLEAR32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_OCIE_MASK_U32);
#                     }
#                     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_18();
# #endif  /* LIN_DISABLE_FRAME_TIMEOUT */
#                 }
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 if (0U != (u32Lin_status & LINFLEX_LINESR_FEF_MASK_U32))
	.d2line		2744
	se_btsti		r28,23		# u32Lin_status=r28
	bc		1,2,.L710	# eq
#                 {
#                     /* Framing Error flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_FEF_MASK_U32);
	.d2line		2752
	diab.li		r0,256
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r29,2,22,29		# u8LogicalChannel=r5 u8Lin_LINFlex=r29
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	stw		r0,12(r3)		# u32Lin_status=r3
#                     /* Set LIN channel frame error status to LIN_FRAMING_ERROR */
#                     Lin_au8LinChFrameErrorStatus[u8LogicalChannel] = LIN_FRAMING_ERROR;
	.d2line		2754
	diab.li		r0,6
	lis		r3,Lin_au8LinChFrameErrorStatus@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8LinChFrameErrorStatus@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r4,r30,0,24,31		# u8LogicalChannel=r30
	stbux		r0,r3,r4		# u32Lin_status=r3
.L710:
#                 }
#                 /**
#                 * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                 *
#                 * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                 */
#                 if (0U != (u32Lin_status & LINFLEX_LINESR_BOF_MASK_U32))
	.d2line		2761
	se_btsti		r28,24		# u32Lin_status=r28
	bc		1,2,.L711	# eq
#                 {
#                     /* Buffer Overrun flag */
#                     /**
#                     * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                     *
#                     * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                     */
#                     REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_BOF_MASK_U32);
	.d2line		2769
.Llo404:
	diab.li		r0,128
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
.Llo405:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r29,2,22,29		# u8LogicalChannel=r5 u8Lin_LINFlex=r29
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	stw		r0,12(r3)		# u32Lin_status=r3
#                     /* Set LIN channel frame error status to LIN_BUFFER_OVER_RUN_ERROR */
#                     Lin_au8LinChFrameErrorStatus[u8LogicalChannel] = LIN_BUFFER_OVER_RUN_ERROR;
	.d2line		2771
	diab.li		r0,7
	lis		r3,Lin_au8LinChFrameErrorStatus@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8LinChFrameErrorStatus@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r4,r30,0,24,31		# u8LogicalChannel=r30
	stbux		r0,r3,r4		# u32Lin_status=r3
.L711:
#                 }
#                 /* Check if error was on sleep frame transmitting */
#                 if ((boolean)TRUE == bIsTxErrorOnSleepCmd) /* Error was on sleep frame transmitting */
	.d2line		2774
	rlwinm		r31,r31,0,24,31		# bIsTxErrorOnSleepCmd=r31 bIsTxErrorOnSleepCmd=r31
	se_cmpi		r31,1		# bIsTxErrorOnSleepCmd=r31
	bc		0,2,.L696	# ne
#                 {
#                     SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_19();
	.d2line		2776
.Llo395:
	bl		SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_19
#                     {
#                         /* Check whether wake up detection by interrupt is enabled */
#                          if ((uint8) STD_ON == Lin_pChannelConfigPtr[u8LogicalChannel]->u16LinChannelWakeupSupport)
	.d2line		2779
	lis		r3,Lin_pChannelConfigPtr@ha		# u32Lin_status=r3
.Llo406:
	e_add16i		r3,r3,Lin_pChannelConfigPtr@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r0,r30,2,22,29		# u8LogicalChannel=r30
	lwzx		r3,r3,r0		# u32Lin_status=r3 u32Lin_status=r3
	lhz		r0,8(r3)		# u32Lin_status=r3
	se_cmpi		r0,1
	bc		0,2,.L713	# ne
#                          {
#                             /* Wake up detection enabled */
#                             /* Clear Wake-Up flag */
#                             /**
#                             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                             *
#                             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                             */
#                             REG_WRITE32(LINFLEX_LINSR_ADDR32(u8Lin_LINFlex), LINFLEX_LINSR_WUF_MASK_U32);
	.d2line		2788
.Llo407:
	diab.li		r0,32
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
.Llo408:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	rlwinm		r5,r29,2,22,29		# u8LogicalChannel=r5 u8Lin_LINFlex=r29
	lwzux		r4,r3,r5		# u32Lin_status=r3
	stw		r0,8(r4)
#                             /* Enable wake up interrupt */
#                             /**
#                             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                             *
#                             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                             */
#                             REG_BIT_SET32(LINFLEX_LINIER_ADDR32(u8Lin_LINFlex), LINFLEX_LINIER_WUIE_MASK_U32);
	.d2line		2795
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
	lwzx		r3,r3,r5		# u32Lin_status=r3 u32Lin_status=r3
	lwz		r0,4(r3)		# u32Lin_status=r3
	.diab.bseti		r0,26
	stw		r0,4(r3)		# u32Lin_status=r3
.L713:
#                         }
#                         /* Enter Sleep mode */
#                         /**
#                         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#                         *
#                         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#                         */
#                         REG_BIT_SET32(LINFLEX_LINCR1_ADDR32(u8Lin_LINFlex), LINFLEX_LINCR1_SLEEP_MASK_U32);
	.d2line		2803
.Llo381:
	lis		r3,Linflex_au32BaseAddrs@ha		# u32Lin_status=r3
.Llo409:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo390:
	rlwinm		r29,r29,2,22,29		# u8Lin_LINFlex=r29 u8Lin_LINFlex=r29
.Llo391:
	lwzx		r3,r3,r29		# u32Lin_status=r3 u32Lin_status=r3
	lwz		r0,0(r3)		# bIsTxErrorOnSleepCmd=r0 u32Lin_status=r3
.Llo396:
	.diab.bseti		r0,30		# bIsTxErrorOnSleepCmd=r0
	stw		r0,0(r3)		# u32Lin_status=r3 bIsTxErrorOnSleepCmd=r0
#                     }
#                     SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_19();
	.d2line		2805
	bl		SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_19
# 
#                       /* Set Channel state to SLEEP state */
#                     Lin_au8LinChStatus[u8LogicalChannel] = LIN_CH_SLEEP_STATE;
	.d2line		2808
.Llo397:
	diab.li		r0,2		# bIsTxErrorOnSleepCmd=r0
.Llo398:
	lis		r3,Lin_au8LinChStatus@ha		# u32Lin_status=r3
.Llo410:
	e_add16i		r3,r3,Lin_au8LinChStatus@l		# u32Lin_status=r3 u32Lin_status=r3
.Llo382:
	rlwinm		r30,r30,0,24,31		# u8LogicalChannel=r30 u8LogicalChannel=r30
.Llo383:
	stbux		r0,r3,r30		# u32Lin_status=r3 bIsTxErrorOnSleepCmd=r0
#                      /* Update Lin_au8TransmitHeaderCommand value to LIN_TX_NO_COMMAND */
#                     Lin_au8TransmitHeaderCommand[u8LogicalChannel] = LIN_TX_NO_COMMAND;
	.d2line		2810
	diab.li		r0,4		# bIsTxErrorOnSleepCmd=r0
	lis		r3,Lin_au8TransmitHeaderCommand@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8TransmitHeaderCommand@l		# u32Lin_status=r3 u32Lin_status=r3
	stbux		r0,r3,r30		# u32Lin_status=r3 bIsTxErrorOnSleepCmd=r0
#                     /* Update LIN channel frame operation status to LIN_CH_NOT_READY_STATE */
#                     Lin_au8LinChFrameStatus[u8LogicalChannel] = LIN_CH_NOT_READY_STATE;
	.d2line		2812
	lis		r3,Lin_au8LinChFrameStatus@ha		# u32Lin_status=r3
	e_add16i		r3,r3,Lin_au8LinChFrameStatus@l		# u32Lin_status=r3 u32Lin_status=r3
	stbux		r0,r3,r30		# u32Lin_status=r3 bIsTxErrorOnSleepCmd=r0
#                     /* Reset bIsTxErrorOnSleepCmd flag */
#                     bIsTxErrorOnSleepCmd = (boolean)FALSE;
	.d2line		2814
	diab.li		r0,0		# bIsTxErrorOnSleepCmd=r0
.Llo399:
	b		.L696
.L703:
#                 }
#             }
#             else
#             {
#                /* Do nothing */
#             }
#         }
#         else
#         {
#             /* Error occured, reset all flags */
#             /**
#             * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#             *
#             * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#             */
#             REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_FLAGS_MASK_U32);
	.d2line		2830
.Llo400:
	diab.li		r0,65409
	lis		r3,Linflex_au32BaseAddrs@ha		# u8LogicalChannel=r3
.Llo384:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8LogicalChannel=r3 u8LogicalChannel=r3
.Llo392:
	rlwinm		r29,r29,2,22,29		# u8Lin_LINFlex=r29 u8Lin_LINFlex=r29
.Llo393:
	lwzx		r3,r3,r29		# u8LogicalChannel=r3 u8LogicalChannel=r3
	stw		r0,12(r3)		# u8LogicalChannel=r3
	b		.L696
.L697:
#         }
#     }
#     else
#     {
#         /* Error occured, reset all flags */
#         /**
#         * @violates @ref Lin_LINFlex_c_REF_3 cast from unsigned int to pointer
#         *
#         * @violates @ref Lin_LINFlex_c_REF_9 cast should not be performed
#         */
#         REG_WRITE32(LINFLEX_LINESR_ADDR32(u8Lin_LINFlex), LINFLEX_LINESR_FLAGS_MASK_U32);
	.d2line		2841
.Llo385:
	diab.li		r0,65409
	lis		r3,Linflex_au32BaseAddrs@ha		# u8LogicalChannel=r3
.Llo386:
	e_add16i		r3,r3,Linflex_au32BaseAddrs@l		# u8LogicalChannel=r3 u8LogicalChannel=r3
.Llo375:
	rlwinm		r5,r5,2,22,29		# u8Channel=r5 u8Channel=r5
.Llo376:
	lwzx		r3,r3,r5		# u8LogicalChannel=r3 u8LogicalChannel=r3
	stw		r0,12(r3)		# u8LogicalChannel=r3
.L696:
#     }
# 
#     return; /* exit function with no return */
# }
	.d2line		2845
	.d2epilogue_begin
.Llo387:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# bIsTxErrorOnSleepCmd=r0
	mtspr		lr,r0		# bIsTxErrorOnSleepCmd=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L890:
	.type		Lin_Linflex_ErrorInterruptHandler,@function
	.size		Lin_Linflex_ErrorInterruptHandler,.-Lin_Linflex_ErrorInterruptHandler
# Number of nodes = 389

# Allocations for Lin_Linflex_ErrorInterruptHandler
#	?a4		u8Channel
#	?a5		$$119
#	?a6		$$118
#	?a7		$$117
#	?a8		u8LogicalChannel
#	?a9		u8Lin_LINFlex
#	?a10		bIsTxErrorOnSleepCmd
#	?a11		u32Lin_status

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L902
	.section	.mcal_bss,,b
	.0byte		.L921
	.section	.mcal_bss,,b
	.0byte		.L926
	.section	.mcal_bss,,b
	.0byte		.L933
	.section	.mcal_bss,,b
	.type		Lin_Linflex_au8StateOfBEF,@object
	.size		Lin_Linflex_au8StateOfBEF,1
	.align		2
Lin_Linflex_au8StateOfBEF:
	.space		1
	.section	.mcal_const,,r
	.0byte		.L937
	.section	.mcal_const,,r
	.type		Linflex_au32BaseAddrs,@object
	.size		Linflex_au32BaseAddrs,72
	.align		2
	.globl		Linflex_au32BaseAddrs
Linflex_au32BaseAddrs:
	.long		-1523712
	.long		-68632576
	.long		-1507328
	.long		-68616192
	.long		-1409024
	.long		-68517888
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L941:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L934:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_LINFlex.c"
.L903:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Lin_LINFlex.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L732:
.L740:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_LINFlex.c"
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
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_LINFlex.c"
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
.L729:
	.4byte		.L730-.L728
.L728:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L734-.L729
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_LINFlex.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L731
	.4byte		.L732
	.4byte		.L735
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L741:
	.sleb128	2
	.4byte		.L737-.L729
	.byte		"Lin_Linflex_CopyData"
	.byte		0
	.4byte		.L740
	.uleb128	406
	.uleb128	30
	.byte		0x1
	.4byte		.L738
	.4byte		.L739
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L740
	.uleb128	406
	.uleb128	30
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L745
	.sleb128	3
	.4byte		.L740
	.uleb128	406
	.uleb128	30
	.byte		"pu8LinSduPtr"
	.byte		0
	.4byte		.L746
	.4byte		.L747
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L748:
	.sleb128	4
	.4byte		.L740
	.uleb128	410
	.uleb128	27
	.byte		"u8tempDataLength"
	.byte		0
	.4byte		.L743
	.4byte		.L749
.L750:
	.sleb128	4
	.4byte		.L740
	.uleb128	411
	.uleb128	27
	.byte		"u8Loop"
	.byte		0
	.4byte		.L743
	.4byte		.L751
.L752:
	.sleb128	4
	.4byte		.L740
	.uleb128	412
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L753
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L737:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L759:
	.sleb128	5
	.4byte		.L755-.L729
	.byte		"Lin_Linflex_CheckWakeup"
	.byte		0
	.4byte		.L740
	.uleb128	505
	.uleb128	33
	.4byte		.L758
	.byte		0x1
	.byte		0x1
	.4byte		.L756
	.4byte		.L757
	.sleb128	3
	.4byte		.L740
	.uleb128	505
	.uleb128	33
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L760
.L761:
	.sleb128	4
	.4byte		.L740
	.uleb128	507
	.uleb128	36
	.byte		"u8TempReturn"
	.byte		0
	.4byte		.L758
	.4byte		.L762
.L763:
	.sleb128	4
	.4byte		.L740
	.uleb128	508
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L764
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L755:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L769:
	.sleb128	6
	.4byte		.L766-.L729
	.byte		"Lin_Linflex_InitChannel"
	.byte		0
	.4byte		.L740
	.uleb128	576
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L767
	.4byte		.L768
	.sleb128	3
	.4byte		.L740
	.uleb128	576
	.uleb128	22
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L770
.L771:
	.sleb128	4
	.4byte		.L740
	.uleb128	578
	.uleb128	27
	.byte		"u8BreakLength"
	.byte		0
	.4byte		.L743
	.4byte		.L772
.L773:
	.sleb128	4
	.4byte		.L740
	.uleb128	579
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L774
.L775:
	.sleb128	4
	.4byte		.L740
	.uleb128	580
	.uleb128	28
	.byte		"u32Lin_register"
	.byte		0
	.4byte		.L776
	.4byte		.L778
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L766:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L783:
	.sleb128	5
	.4byte		.L780-.L729
	.byte		"Lin_Linflex_SendHeader"
	.byte		0
	.4byte		.L740
	.uleb128	961
	.uleb128	33
	.4byte		.L758
	.byte		0x1
	.byte		0x1
	.4byte		.L781
	.4byte		.L782
	.sleb128	3
	.4byte		.L740
	.uleb128	961
	.uleb128	33
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L784
	.sleb128	3
	.4byte		.L740
	.uleb128	961
	.uleb128	33
	.byte		"pPduInfoPtr"
	.byte		0
	.4byte		.L785
	.4byte		.L789
.L790:
	.sleb128	4
	.4byte		.L740
	.uleb128	965
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L791
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L792:
	.sleb128	7
	.4byte		.L740
	.uleb128	966
	.uleb128	37
	.byte		"u32counter"
	.byte		0
	.4byte		.L793
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L794:
	.sleb128	4
	.4byte		.L740
	.uleb128	967
	.uleb128	36
	.byte		"u8TmpReturn"
	.byte		0
	.4byte		.L758
	.4byte		.L795
.L796:
	.sleb128	4
	.4byte		.L740
	.uleb128	968
	.uleb128	28
	.byte		"u32Lin_register"
	.byte		0
	.4byte		.L776
	.4byte		.L797
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L780:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L802:
	.sleb128	6
	.4byte		.L799-.L729
	.byte		"Lin_Linflex_SendResponse"
	.byte		0
	.4byte		.L740
	.uleb128	1230
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L800
	.4byte		.L801
	.sleb128	3
	.4byte		.L740
	.uleb128	1230
	.uleb128	23
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L803
	.sleb128	3
	.4byte		.L740
	.uleb128	1230
	.uleb128	23
	.byte		"pPduInfoPtr"
	.byte		0
	.4byte		.L785
	.4byte		.L804
.L805:
	.sleb128	4
	.4byte		.L740
	.uleb128	1234
	.uleb128	27
	.byte		"u8tempDataLength"
	.byte		0
	.4byte		.L743
	.4byte		.L806
.L807:
	.sleb128	4
	.4byte		.L740
	.uleb128	1235
	.uleb128	27
	.byte		"u8Loop"
	.byte		0
	.4byte		.L743
	.4byte		.L808
.L809:
	.sleb128	4
	.4byte		.L740
	.uleb128	1236
	.uleb128	28
	.byte		"u32tempBDR"
	.byte		0
	.4byte		.L776
	.4byte		.L810
.L811:
	.sleb128	4
	.4byte		.L740
	.uleb128	1237
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L812
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L799:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L817:
	.sleb128	5
	.4byte		.L814-.L729
	.byte		"Lin_Linflex_GoToSleep"
	.byte		0
	.4byte		.L740
	.uleb128	1390
	.uleb128	33
	.4byte		.L758
	.byte		0x1
	.byte		0x1
	.4byte		.L815
	.4byte		.L816
	.sleb128	3
	.4byte		.L740
	.uleb128	1390
	.uleb128	33
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L818
.L819:
	.sleb128	4
	.4byte		.L740
	.uleb128	1392
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L820
.L821:
	.sleb128	7
	.4byte		.L740
	.uleb128	1393
	.uleb128	37
	.byte		"u32counter"
	.byte		0
	.4byte		.L793
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L822:
	.sleb128	4
	.4byte		.L740
	.uleb128	1394
	.uleb128	36
	.byte		"u8TmpReturn"
	.byte		0
	.4byte		.L758
	.4byte		.L823
.L824:
	.sleb128	4
	.4byte		.L740
	.uleb128	1395
	.uleb128	28
	.byte		"u32Lin_register"
	.byte		0
	.4byte		.L776
	.4byte		.L825
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L814:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L830:
	.sleb128	5
	.4byte		.L827-.L729
	.byte		"Lin_Linflex_GoToSleepInternal"
	.byte		0
	.4byte		.L740
	.uleb128	1652
	.uleb128	33
	.4byte		.L758
	.byte		0x1
	.byte		0x1
	.4byte		.L828
	.4byte		.L829
	.sleb128	3
	.4byte		.L740
	.uleb128	1652
	.uleb128	33
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L831
.L832:
	.sleb128	4
	.4byte		.L740
	.uleb128	1654
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L833
.L834:
	.sleb128	7
	.4byte		.L740
	.uleb128	1655
	.uleb128	37
	.byte		"u32counter"
	.byte		0
	.4byte		.L793
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L835:
	.sleb128	4
	.4byte		.L740
	.uleb128	1656
	.uleb128	36
	.byte		"u8TmpReturn"
	.byte		0
	.4byte		.L758
	.4byte		.L836
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L827:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L841:
	.sleb128	6
	.4byte		.L838-.L729
	.byte		"Lin_Linflex_WakeUp"
	.byte		0
	.4byte		.L740
	.uleb128	1758
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L839
	.4byte		.L840
	.sleb128	3
	.4byte		.L740
	.uleb128	1758
	.uleb128	23
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L842
.L843:
	.sleb128	4
	.4byte		.L740
	.uleb128	1760
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L844
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L838:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L853:
	.sleb128	5
	.4byte		.L849-.L729
	.byte		"Lin_Linflex_HardwareGetStatus"
	.byte		0
	.4byte		.L740
	.uleb128	1819
	.uleb128	32
	.4byte		.L852
	.byte		0x1
	.byte		0x1
	.4byte		.L850
	.4byte		.L851
	.sleb128	3
	.4byte		.L740
	.uleb128	1819
	.uleb128	32
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L854
	.sleb128	3
	.4byte		.L740
	.uleb128	1819
	.uleb128	32
	.byte		"pu8LinSduPtr"
	.byte		0
	.4byte		.L746
	.4byte		.L855
.L856:
	.sleb128	4
	.4byte		.L740
	.uleb128	1823
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L857
.L858:
	.sleb128	4
	.4byte		.L740
	.uleb128	1824
	.uleb128	27
	.byte		"u8tempStatus"
	.byte		0
	.4byte		.L743
	.4byte		.L859
.L860:
	.sleb128	4
	.4byte		.L740
	.uleb128	1825
	.uleb128	27
	.byte		"u8Temp"
	.byte		0
	.4byte		.L743
	.4byte		.L861
.L862:
	.sleb128	4
	.4byte		.L740
	.uleb128	1826
	.uleb128	27
	.byte		"u8tempOC1"
	.byte		0
	.4byte		.L743
	.4byte		.L863
.L864:
	.sleb128	4
	.4byte		.L740
	.uleb128	1827
	.uleb128	27
	.byte		"u8tempHTO"
	.byte		0
	.4byte		.L743
	.4byte		.L865
.L866:
	.sleb128	4
	.4byte		.L740
	.uleb128	1828
	.uleb128	28
	.byte		"u32BDRL_EMPTY"
	.byte		0
	.4byte		.L776
	.4byte		.L867
.L868:
	.sleb128	4
	.4byte		.L740
	.uleb128	1829
	.uleb128	28
	.byte		"u32BDRM_EMPTY"
	.byte		0
	.4byte		.L776
	.4byte		.L869
.L870:
	.sleb128	4
	.4byte		.L740
	.uleb128	1830
	.uleb128	35
	.byte		"TempReturn"
	.byte		0
	.4byte		.L852
	.4byte		.L871
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L849:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L879:
	.sleb128	6
	.4byte		.L876-.L729
	.byte		"Lin_Linflex_TxRxInterruptHandler"
	.byte		0
	.4byte		.L740
	.uleb128	2231
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L877
	.4byte		.L878
	.sleb128	3
	.4byte		.L740
	.uleb128	2231
	.uleb128	22
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L880
.L881:
	.sleb128	4
	.4byte		.L740
	.uleb128	2233
	.uleb128	27
	.byte		"u8LogicalChannel"
	.byte		0
	.4byte		.L743
	.4byte		.L882
.L883:
	.sleb128	4
	.4byte		.L740
	.uleb128	2234
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L884
.L885:
	.sleb128	4
	.4byte		.L740
	.uleb128	2235
	.uleb128	28
	.byte		"u32Lin_status"
	.byte		0
	.4byte		.L776
	.4byte		.L886
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L876:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L891:
	.sleb128	6
	.4byte		.L888-.L729
	.byte		"Lin_Linflex_ErrorInterruptHandler"
	.byte		0
	.4byte		.L740
	.uleb128	2522
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L889
	.4byte		.L890
	.sleb128	3
	.4byte		.L740
	.uleb128	2522
	.uleb128	23
	.byte		"u8Channel"
	.byte		0
	.4byte		.L742
	.4byte		.L892
.L893:
	.sleb128	4
	.4byte		.L740
	.uleb128	2524
	.uleb128	26
	.byte		"u8LogicalChannel"
	.byte		0
	.4byte		.L743
	.4byte		.L894
.L895:
	.sleb128	4
	.4byte		.L740
	.uleb128	2525
	.uleb128	27
	.byte		"u8Lin_LINFlex"
	.byte		0
	.4byte		.L743
	.4byte		.L896
.L897:
	.sleb128	4
	.4byte		.L740
	.uleb128	2526
	.uleb128	29
	.byte		"bIsTxErrorOnSleepCmd"
	.byte		0
	.4byte		.L898
	.4byte		.L899
.L900:
	.sleb128	4
	.4byte		.L740
	.uleb128	2527
	.uleb128	28
	.byte		"u32Lin_status"
	.byte		0
	.4byte		.L776
	.4byte		.L901
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L888:
	.section	.debug_info,,n
.L902:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L903
	.uleb128	205
	.uleb128	35
	.byte		"Lin_au8LinChStatus"
	.byte		0
	.4byte		.L904
	.section	.debug_info,,n
.L907:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L903
	.uleb128	211
	.uleb128	35
	.byte		"Lin_au8LinChFrameStatus"
	.byte		0
	.4byte		.L908
.L910:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L903
	.uleb128	217
	.uleb128	27
	.byte		"Lin_au8TransmitHeaderCommand"
	.byte		0
	.4byte		.L911
.L913:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L903
	.uleb128	223
	.uleb128	35
	.byte		"Lin_au8LinChFrameErrorStatus"
	.byte		0
	.4byte		.L914
.L916:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L903
	.uleb128	229
	.uleb128	26
	.byte		"Lin_as8ChannelHardwareMap"
	.byte		0
	.4byte		.L917
.L921:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L903
	.uleb128	244
	.uleb128	55
	.byte		"Lin_pcConfigPtr"
	.byte		0
	.4byte		.L922
	.section	.debug_info,,n
.L926:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L903
	.uleb128	262
	.uleb128	61
	.byte		"Lin_pChannelConfigPtr"
	.byte		0
	.4byte		.L927
	.section	.debug_info,,n
.L933:
	.sleb128	7
	.4byte		.L934
	.uleb128	229
	.uleb128	37
	.byte		"Lin_Linflex_au8StateOfBEF"
	.byte		0
	.4byte		.L935
	.sleb128	5
	.byte		0x3
	.4byte		Lin_Linflex_au8StateOfBEF
	.section	.debug_info,,n
	.section	.debug_info,,n
.L937:
	.sleb128	9
	.byte		0x1
	.4byte		.L934
	.uleb128	263
	.uleb128	26
	.byte		"Linflex_au32BaseAddrs"
	.byte		0
	.4byte		.L938
	.sleb128	5
	.byte		0x3
	.4byte		Linflex_au32BaseAddrs
	.section	.debug_info,,n
	.section	.debug_info,,n
.L925:
	.sleb128	10
	.4byte		.L941
	.uleb128	59
	.uleb128	13
	.4byte		.L942-.L2
	.uleb128	8
	.section	.debug_info,,n
.L443:
	.sleb128	11
	.byte		"u8Lin_MaxHWChannels"
	.byte		0
	.4byte		.L742
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"pLin_Channel"
	.byte		0
	.4byte		.L943
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L942:
.L932:
	.sleb128	10
	.4byte		.L941
	.uleb128	59
	.uleb128	13
	.4byte		.L946-.L2
	.uleb128	20
.L437:
	.sleb128	11
	.byte		"u8LinChannelID"
	.byte		0
	.4byte		.L743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"u8LinHwChannel"
	.byte		0
	.4byte		.L743
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"u32Lin_BaudRate_RegValue"
	.byte		0
	.4byte		.L776
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"u16LinChannelWakeupSupport"
	.byte		0
	.4byte		.L947
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"LinChannelEcuMWakeupSource"
	.byte		0
	.4byte		.L949
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"u8LinChannelBreakLength"
	.byte		0
	.4byte		.L743
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L946:
.L788:
	.sleb128	10
	.4byte		.L941
	.uleb128	59
	.uleb128	13
	.4byte		.L950-.L2
	.uleb128	8
.L432:
	.sleb128	11
	.byte		"Pid"
	.byte		0
	.4byte		.L951
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L433:
	.sleb128	11
	.byte		"Cs"
	.byte		0
	.4byte		.L952
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L434:
	.sleb128	11
	.byte		"Drc"
	.byte		0
	.4byte		.L953
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L435:
	.sleb128	11
	.byte		"Dl"
	.byte		0
	.4byte		.L954
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"SduPtr"
	.byte		0
	.4byte		.L746
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L950:
	.section	.debug_info,,n
.L744:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L743:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L744
	.section	.debug_info,,n
.L742:
	.sleb128	14
	.4byte		.L743
	.section	.debug_info,,n
.L746:
	.sleb128	15
	.4byte		.L743
.L758:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L743
.L777:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L776:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L777
.L787:
	.sleb128	13
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L788
.L786:
	.sleb128	14
	.4byte		.L787
.L785:
	.sleb128	15
	.4byte		.L786
	.section	.debug_info,,n
.L793:
	.sleb128	16
	.4byte		.L776
.L852:
	.sleb128	13
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L743
.L898:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L744
.L906:
	.sleb128	16
	.4byte		.L743
	.section	.debug_info,,n
.L904:
	.sleb128	17
	.4byte		.L905-.L2
	.4byte		.L906
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L905:
.L908:
	.sleb128	17
	.4byte		.L909-.L2
	.4byte		.L906
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L909:
.L911:
	.sleb128	17
	.4byte		.L912-.L2
	.4byte		.L743
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L912:
.L914:
	.sleb128	17
	.4byte		.L915-.L2
	.4byte		.L906
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L915:
.L920:
	.sleb128	12
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L919:
	.sleb128	13
	.byte		"sint8"
	.byte		0
	.4byte		.L920
.L917:
	.sleb128	17
	.4byte		.L918-.L2
	.4byte		.L919
	.sleb128	18
	.uleb128	5
	.sleb128	0
.L918:
.L924:
	.sleb128	13
	.byte		"Lin_ConfigType"
	.byte		0
	.4byte		.L925
.L923:
	.sleb128	14
	.4byte		.L924
.L922:
	.sleb128	15
	.4byte		.L923
.L931:
	.sleb128	13
	.byte		"Lin_ChannelConfigType"
	.byte		0
	.4byte		.L932
.L930:
	.sleb128	14
	.4byte		.L931
.L929:
	.sleb128	15
	.4byte		.L930
.L927:
	.sleb128	17
	.4byte		.L928-.L2
	.4byte		.L929
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L928:
.L935:
	.sleb128	17
	.4byte		.L936-.L2
	.4byte		.L906
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L936:
.L940:
	.sleb128	14
	.4byte		.L776
.L938:
	.sleb128	17
	.4byte		.L939-.L2
	.4byte		.L940
	.sleb128	18
	.uleb128	17
	.sleb128	0
.L939:
.L945:
	.sleb128	14
	.4byte		.L929
.L943:
	.sleb128	17
	.4byte		.L944-.L2
	.4byte		.L945
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L944:
.L948:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L947:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L948
.L949:
	.sleb128	13
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L776
.L951:
	.sleb128	13
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L743
.L952:
	.sleb128	13
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L743
.L953:
	.sleb128	13
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L743
.L954:
	.sleb128	13
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L743
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L734:
	.sleb128	0
.L730:

	.section	.debug_loc,,n
	.align	0
.L745:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L747:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo4),4
	.d2locend
.L749:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo5),0
	.d2locend
.L751:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo5),3
	.d2locend
.L753:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo5),5
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),5
	.d2locend
.L760:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locend
.L762:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locend
.L764:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo37),31
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),31
	.d2locend
.L770:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),31
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),31
	.d2locend
.L772:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo41),30
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),30
	.d2locend
.L774:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),29
	.d2locend
.L778:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo43),30
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),5
	.d2locend
.L784:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),31
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),31
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),31
	.d2locend
.L789:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo60),4
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),30
	.d2locend
.L791:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),29
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),29
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),29
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo62),29
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),29
	.d2locend
.L795:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo72),28
	.d2locend
.L797:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),4
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo62),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locend
.L803:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locend
.L804:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo82),4
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo82),0
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo81),0
	.d2locend
.L808:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),3
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo82),3
	.d2locend
.L810:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo88),7
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),7
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo82),6
	.d2locend
.L812:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo82),31
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),31
	.d2locend
.L818:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),31
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),31
	.d2locend
.L820:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),30
	.d2locend
.L823:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo108),29
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),0
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),0
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),0
	.d2locend
.L831:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),31
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),31
	.d2locend
.L833:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),30
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),30
	.d2locend
.L836:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo125),29
	.d2locend
.L842:
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),3
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),0
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),0
	.d2locend
.L844:
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo132),31
	.d2locend
.L854:
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),3
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),3
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),3
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),3
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),3
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),3
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),3
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),3
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),3
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),3
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),3
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),3
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),3
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),3
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),3
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),3
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),3
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),3
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),3
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),3
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),3
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),3
	.d2locend
.L855:
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo183),4
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),4
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo176),4
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),4
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo187),4
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),4
	.d2locend
.L857:
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),0
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),0
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo138),0
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo141),0
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),0
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo144),0
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),0
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),0
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),0
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo205),0
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo150),0
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo152),0
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo156),0
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo209),0
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo162),0
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),0
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),0
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo216),0
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),0
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo168),0
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo221),0
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo223),0
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo225),0
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo227),0
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo174),0
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo230),0
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo232),0
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo233),0
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),0
	.d2locend
.L859:
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),7
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),7
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),7
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo233),7
	.d2locend
.L861:
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo241),3
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),3
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo244),3
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo246),3
	.d2locend
.L863:
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo164),4
	.d2locend
.L865:
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo164),0
	.d2locend
.L867:
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo136),3
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo250),3
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo158),3
	.d2locreg	%offsetof(.Llo252), %offsetof(.Llo253),3
	.d2locreg	%offsetof(.Llo254), %offsetof(.Llo166),3
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),3
	.d2locend
.L869:
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),0
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo137),0
	.d2locreg	%offsetof(.Llo260), %offsetof(.Llo261),0
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo210),0
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo264),0
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo167),0
	.d2locend
.L871:
	.d2locreg	%offsetof(.Llo266), %offsetof(.Llo267),5
	.d2locreg	%offsetof(.Llo268), %offsetof(.Llo259),5
	.d2locreg	%offsetof(.Llo269), %offsetof(.Llo137),5
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo142),5
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo199),5
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo242),5
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo150),5
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo151),3
	.d2locreg	%offsetof(.Llo274), %offsetof(.Llo152),5
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),5
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),5
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo262),5
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo210),5
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo159),5
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo164),5
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo284),0
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo256),5
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo265),5
	.d2locreg	%offsetof(.Llo286), %offsetof(.Llo221),5
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo245),5
	.d2locreg	%offsetof(.Llo288), %offsetof(.Llo174),5
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo230),3
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo186),5
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo179),5
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo292),5
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),5
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo296),5
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo298),5
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo300),5
	.d2locend
.L880:
	.d2locreg	%offsetof(.Llo301), %offsetof(.Llo302),3
	.d2locreg	%offsetof(.Llo303), %offsetof(.Llo304),6
	.d2locreg	%offsetof(.Llo305), %offsetof(.Llo306),6
	.d2locend
.L882:
	.d2locreg	%offsetof(.Llo301), %offsetof(.Llo307),30
	.d2locreg	%offsetof(.Llo308), %offsetof(.Llo309),3
	.d2locreg	%offsetof(.Llo310), %offsetof(.Llo311),3
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),31
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo315),31
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo317),31
	.d2locreg	%offsetof(.Llo318), %offsetof(.Llo319),31
	.d2locreg	%offsetof(.Llo320), %offsetof(.Llo321),31
	.d2locreg	%offsetof(.Llo322), %offsetof(.Llo323),31
	.d2locreg	%offsetof(.Llo324), %offsetof(.Llo325),31
	.d2locreg	%offsetof(.Llo326), %offsetof(.Llo327),31
	.d2locreg	%offsetof(.Llo328), %offsetof(.Llo329),3
	.d2locreg	%offsetof(.Llo330), %offsetof(.Llo331),3
	.d2locend
.L884:
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo332),6
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo334),30
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo336),30
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo317),30
	.d2locreg	%offsetof(.Llo337), %offsetof(.Llo338),30
	.d2locreg	%offsetof(.Llo320), %offsetof(.Llo321),30
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo340),30
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo326),30
	.d2locreg	%offsetof(.Llo342), %offsetof(.Llo343),30
	.d2locreg	%offsetof(.Llo344), %offsetof(.Llo345),30
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo331),30
	.d2locend
.L886:
	.d2locreg	%offsetof(.Llo346), %offsetof(.Llo347),0
	.d2locreg	%offsetof(.Llo311), %offsetof(.Llo334),3
	.d2locreg	%offsetof(.Llo348), %offsetof(.Llo349),3
	.d2locreg	%offsetof(.Llo350), %offsetof(.Llo351),3
	.d2locreg	%offsetof(.Llo352), %offsetof(.Llo353),3
	.d2locreg	%offsetof(.Llo354), %offsetof(.Llo355),3
	.d2locreg	%offsetof(.Llo356), %offsetof(.Llo357),3
	.d2locreg	%offsetof(.Llo358), %offsetof(.Llo317),3
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo360),3
	.d2locreg	%offsetof(.Llo361), %offsetof(.Llo362),3
	.d2locreg	%offsetof(.Llo363), %offsetof(.Llo364),3
	.d2locreg	%offsetof(.Llo365), %offsetof(.Llo321),3
	.d2locreg	%offsetof(.Llo366), %offsetof(.Llo367),3
	.d2locreg	%offsetof(.Llo368), %offsetof(.Llo341),3
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo326),3
	.d2locreg	%offsetof(.Llo370), %offsetof(.Llo327),3
	.d2locend
.L892:
	.d2locreg	%offsetof(.Llo371), %offsetof(.Llo372),3
	.d2locreg	%offsetof(.Llo373), %offsetof(.Llo374),5
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo376),5
	.d2locend
.L894:
	.d2locreg	%offsetof(.Llo373), %offsetof(.Llo377),3
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo379),3
	.d2locreg	%offsetof(.Llo380), %offsetof(.Llo381),30
	.d2locreg	%offsetof(.Llo382), %offsetof(.Llo383),30
	.d2locreg	%offsetof(.Llo384), %offsetof(.Llo385),3
	.d2locreg	%offsetof(.Llo386), %offsetof(.Llo387),3
	.d2locend
.L896:
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo388),5
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo381),29
	.d2locreg	%offsetof(.Llo390), %offsetof(.Llo391),29
	.d2locreg	%offsetof(.Llo392), %offsetof(.Llo393),29
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo387),29
	.d2locend
.L899:
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),31
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo397),0
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo399),0
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo387),31
	.d2locend
.L901:
	.d2locreg	%offsetof(.Llo401), %offsetof(.Llo402),0
	.d2locreg	%offsetof(.Llo379), %offsetof(.Llo380),3
	.d2locreg	%offsetof(.Llo403), %offsetof(.Llo404),28
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo395),3
	.d2locreg	%offsetof(.Llo406), %offsetof(.Llo407),3
	.d2locreg	%offsetof(.Llo408), %offsetof(.Llo381),3
	.d2locreg	%offsetof(.Llo409), %offsetof(.Llo397),3
	.d2locreg	%offsetof(.Llo410), %offsetof(.Llo400),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Lin_Linflex_ErrorInterruptHandler"
	.wrcm.nstrlist "calls", "SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_16","SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_19","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_16","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_19"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_TxRxInterruptHandler"
	.wrcm.nstrlist "calls", "EcuM_CheckWakeup","SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_12","SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_14","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_12","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_14"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_HardwareGetStatus"
	.wrcm.nstrlist "calls", "Lin_Linflex_CopyData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_WakeUp"
	.wrcm.nstrlist "calls", "SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_09","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_09"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_GoToSleepInternal"
	.wrcm.nstrlist "calls", "SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_08","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_08"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_GoToSleep"
	.wrcm.nstrlist "calls", "SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_06","SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_07","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_06","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_07"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_SendResponse"
	.wrcm.nstrlist "calls", "SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_05","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_05"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_SendHeader"
	.wrcm.nstrlist "calls", "SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_03","SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_04","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_03","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_04"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_InitChannel"
	.wrcm.nstrlist "calls", "EcuM_SetWakeupEvent","SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_01","SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_02","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_01","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_02"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_CheckWakeup"
	.wrcm.nstrlist "calls", "SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_00","SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_00"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Lin_Linflex_CopyData"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Lin\ssc\make\..\..\generator\integration_package\src\Lin_LINFlex.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
