#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Spi_DSPI.c"
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
# LOCAL_INLINE FUNC(void, SPI_CODE) Spi_Dspi_ChannelTransferFifoInit
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L669:
	.section	.invalid_TEXT,,c
#$$ld
.L665:
	.0byte		.L663
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi_DSPI.c"
        .d2line         1689,35
#$$ld
.L672:

#$$bf	Spi_Dspi_ChannelTransferFifoInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
Spi_Dspi_ChannelTransferFifoInit:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pDspiDev=r3 pDspiDev=r3
	mr		r4,r4		# Channel=r4 Channel=r4
	.d2prologue_end
#     (
#         P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev,
#         VAR(Spi_ChannelType, AUTOMATIC) Channel
#     )
# {
#     P2CONST(Spi_Ipw_ChannelAttributesConfigType, AUTOMATIC, SPI_APPL_CONST) 
#         pcDspiChannelAttributesConfig;
#     P2CONST(Spi_ChannelConfigType, AUTOMATIC, SPI_APPL_CONST) pcChannelConfig;
#     P2VAR(Spi_ChannelStateType, AUTOMATIC, SPI_APPL_DATA) pChannelState;
# 
#     pcChannelConfig = &(*Spi_pcSpiConfigPtr->pcChannelConfig)[Channel];
	.d2line		1700
	lis		r5,Spi_pcSpiConfigPtr@ha		# pChannelState=r5
.Llo11:
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)		# pChannelState=r5 pChannelState=r5
	lwz		r6,8(r5)		# pcChannelConfig=r6 pChannelState=r5
.Llo6:
	rlwinm		r0,r4,4,20,27		# Channel=r4
	se_add		r0,r6		# pcChannelConfig=r6
	mr		r6,r0		# pcChannelConfig=r6 pcChannelConfig=r0
#     pChannelState = pcChannelConfig->pChannelState;
	.d2line		1701
.Llo7:
	lwz		r5,12(r6)		# pChannelState=r5 pcChannelConfig=r6
.Llo8:
	mr		r5,r5		# pChannelState=r5 pChannelState=r5
#     pDspiDev->RemainingData = pChannelState->Length;
	.d2line		1702
	lhz		r0,2(r5)		# pChannelState=r5
.Llo9:
	sth		r0,38(r3)		# pDspiDev=r3
#     pDspiDev->ReceivedData = pChannelState->Length;
	.d2line		1703
	lhz		r0,2(r5)		# pChannelState=r5
	sth		r0,68(r3)		# pDspiDev=r3
# 
#     /* identify the TX/RX buffers */
#     if (0u != (pChannelState->u8Flags & ((uint8)SPI_CHANNEL_FLAG_TX_DEFAULT_U8)))
	.d2line		1706
	lbz		r0,0(r5)		# pChannelState=r5
	se_btsti		r0,31
	bc		1,2,.L473	# eq
#     {
#         pDspiDev->pCurrentTxBuffer = NULL_PTR;
	.d2line		1708
.Llo10:
	diab.li		r0,0
	stw		r0,24(r3)		# pDspiDev=r3
# 
#         /* integrate default transmit value in the command */
#         pDspiDev->u32CurrentCmd = (pDspiDev->u32CurrentCmd & DSPI_TX_CMD_MASK_U32) | pcChannelConfig->DefaultTransmitValue;
	.d2line		1711
	lwz		r0,32(r3)		# pDspiDev=r3
	rlwinm		r0,r0,0,0,15
	lbz		r5,4(r6)		# pChannelState=r5 pcChannelConfig=r6
.Llo12:
	or		r0,r0,r5		# pChannelState=r5
	stw		r0,32(r3)		# pDspiDev=r3
	b		.L474
.L473:
#     }
#     else
#     {
#         pDspiDev->pCurrentTxBuffer = pcChannelConfig->pcBufferDescriptor->pBufferTX;
	.d2line		1715
.Llo13:
	lwz		r5,8(r6)		# pChannelState=r5 pcChannelConfig=r6
.Llo14:
	lwz		r0,0(r5)		# pChannelState=r5
	stw		r0,24(r3)		# pDspiDev=r3
# 
#         /* remove default transmit value from the command, if previously set */
#         pDspiDev->u32CurrentCmd &= DSPI_TX_CMD_MASK_U32;
	.d2line		1718
	lwz		r0,32(r3)		# pDspiDev=r3
	rlwinm		r0,r0,0,0,15
	stw		r0,32(r3)		# pDspiDev=r3
.L474:
#     }
# 
#     /* Rx buffer will be NULL if discarding read values */
#     pDspiDev->pCurrentRxBuffer = pcChannelConfig->pcBufferDescriptor->pBufferRX;
	.d2line		1722
.Llo3:
	lwz		r5,8(r6)		# pChannelState=r5 pcChannelConfig=r6
.Llo15:
	lwz		r5,4(r5)		# pChannelState=r5 pChannelState=r5
	stw		r5,28(r3)		# pDspiDev=r3 pChannelState=r5
# 
#     /* Set the CTAR parameters for this channel */
#     pcDspiChannelAttributesConfig = &(*Spi_pcSpiConfigPtr->pcAttributesConfig->pcChannelAttributesConfig)[Channel];
	.d2line		1725
	lis		r5,Spi_pcSpiConfigPtr@ha		# pChannelState=r5
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)		# pChannelState=r5 pChannelState=r5
	lwz		r5,20(r5)		# pChannelState=r5 pChannelState=r5
	lwz		r5,0(r5)		# pChannelState=r5 pChannelState=r5
.Llo4:
	rlwinm		r4,r4,3,21,28		# Channel=r4 Channel=r4
	se_add		r4,r5		# Channel=r4 Channel=r4 pChannelState=r5
.Llo5:
	mr		r4,r4		# pcDspiChannelAttributesConfig=r4 pcDspiChannelAttributesConfig=r4
# 
#     /*
#     * @note False detection of MISRA 2004 Rule 11.4 violation.
#     *       (cast from pointer to pointer)
#     */
#     /* set CTAR register */
#     /**
#     * @note The call is blocking till the HWUnit exits the running state.
#     */
#     /*
#     * @violates @ref Spi_DSPI_c_REF_3 Conversions shall not be performed between
#     * a pointer to a function and any type other than an integral type.
#     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#     */
#     REG_WRITE32(pDspiDev->u32DspiCTARAddress,(pDspiDev->u32ExternalDeviceCTAR | pcDspiChannelAttributesConfig->u32CMD));
	.d2line		1740
	lwz		r5,4(r3)		# pChannelState=r5 pDspiDev=r3
	lwz		r4,0(r4)		# pcDspiChannelAttributesConfig=r4 pcDspiChannelAttributesConfig=r4
	or		r4,r4,r5		# pcDspiChannelAttributesConfig=r4 pcDspiChannelAttributesConfig=r4 pChannelState=r5
	lwz		r3,56(r3)		# pDspiDev=r3 pDspiDev=r3
	stw		r4,0(r3)		# pDspiDev=r3 pcDspiChannelAttributesConfig=r4
# 
# #if (SPI_SLAVE_SUPPORT == STD_ON)
#     if(SPI_SLAVE == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode)
#     {
#         /*
#          * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#          *     type and an integral type.
#          * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#          */
#         REG_BIT_SET32(DSPI_RSER_ADDR32(pDspiDev->pcHWUnitConfig->u8Offset), DSPI_RSER_RFDF_RE_MASK_U32);
#     }
#     else
#     {
#         /* Do nothing */
#     }
# #endif
# }
	.d2line		1757
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo2:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L673:
	.type		Spi_Dspi_ChannelTransferFifoInit,@function
	.size		Spi_Dspi_ChannelTransferFifoInit,.-Spi_Dspi_ChannelTransferFifoInit
# Number of nodes = 119

# Allocations for Spi_Dspi_ChannelTransferFifoInit
#	?a4		pDspiDev
#	?a5		Channel
#	?a6		pcDspiChannelAttributesConfig
#	?a7		pcChannelConfig
#	?a8		pChannelState
# LOCAL_INLINE FUNC(void, SPI_CODE) Spi_Dspi_JobTransferFifoFill
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1774,35
#$$ld
.L703:

#$$bf	Spi_Dspi_JobTransferFifoFill,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
Spi_Dspi_JobTransferFifoFill:
.Llo16:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo30:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# u8EndOfJob=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pDspiDev=r3 pDspiDev=r3
	.d2prologue_end
#     (
#         P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev
#     )
# {
#     VAR(uint32, AUTOMATIC) u32Cmd;
#      P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA) pBufferTX;
#      VAR(Spi_NumberOfDataType, AUTOMATIC) nFramesCount;
#     VAR(Spi_NumberOfDataType, AUTOMATIC) nRemainingData;
#     VAR(uint8, AUTOMATIC) u8EndOfJob = (uint8)FALSE; /* end of job */
	.d2line		1783
	diab.li		r0,0		# u8EndOfJob=r0
# #if (SPI_FORCE_DATA_TYPE == STD_ON)
#     P2CONST(Spi_Ipw_ChannelAttributesConfigType, AUTOMATIC, SPI_APPL_CONST)
#         pcDspiChannelAttributesConfig = &(*Spi_pcSpiConfigPtr->pcAttributesConfig->pcChannelAttributesConfig)[*(pDspiDev->pcCurrentChannelIndexPointer)];
	.d2line		1786
.Llo31:
	lis		r4,Spi_pcSpiConfigPtr@ha		# nRemainingData=r4
.Llo26:
	lwz		r4,Spi_pcSpiConfigPtr@l(r4)		# nRemainingData=r4 nRemainingData=r4
	lwz		r4,20(r4)		# nRemainingData=r4 nRemainingData=r4
	lwz		r5,0(r4)		# pcDspiChannelAttributesConfig=r5 nRemainingData=r4
.Llo35:
	lwz		r4,8(r3)		# nRemainingData=r4 pDspiDev=r3
	lbz		r0,0(r4)		# u8EndOfJob=r0 nRemainingData=r4
.Llo32:
	rlwinm		r0,r0,3,21,28		# u8EndOfJob=r0 u8EndOfJob=r0
	se_add		r0,r5		# u8EndOfJob=r0 u8EndOfJob=r0 pcDspiChannelAttributesConfig=r5
.Llo33:
	mr		r5,r0		# pcDspiChannelAttributesConfig=r5 pcDspiChannelAttributesConfig=r0
#     P2VAR(uint16, AUTOMATIC, SPI_APPL_DATA) pu16BufferFullTX;
# #endif
#     /* Get physical device handler */
#     VAR(uint32, AUTOMATIC) u32DspiPUSHRAddress = pDspiDev->u32DspiPUSHRAddress;
	.d2line		1790
	lwz		r6,44(r3)		# pDspiDev=r3
.Llo37:
	mr		r6,r6		# u32DspiPUSHRAddress=r6 u32DspiPUSHRAddress=r6
# 
#     /* Get Channel Attributes */
#     u32Cmd = pDspiDev->u32CurrentCmd;    
	.d2line		1793
	lwz		r0,32(r3)		# u8EndOfJob=r0 pDspiDev=r3
.Llo18:
	mr		r0,r0		# u32Cmd=r0 u32Cmd=r0
# 
# #if (SPI_SLAVE_SUPPORT == STD_ON)
#     /* calculate the number of frames to be sent and the 'end of job' state */
#     nFramesCount = pDspiDev->RemainingData;
#     
#     #if (SPI_FORCE_DATA_TYPE == STD_ON)
#         if(SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
#         {
#             nFramesCount/=2u;
#         }
#         else
#         {
#             /* Do nothing */
#         }
#     #endif
#     
#     if(SPI_SLAVE == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode)
#     {
#         if(nFramesCount > SPI_FIFO_SIZE)
#         {
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             nFramesCount = (Spi_NumberOfDataType)((uint32)SPI_FIFO_SIZE - DSPI_SR_TXCTR_VAL_U32(REG_READ32(DSPI_SR_ADDR32(pDspiDev->pcHWUnitConfig->u8Offset))));
#         }
#         else
#         {
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             if(nFramesCount > (SPI_FIFO_SIZE - DSPI_SR_TXCTR_VAL_U32(REG_READ32(DSPI_SR_ADDR32(pDspiDev->pcHWUnitConfig->u8Offset)))))
#             {
#                /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 nFramesCount = (Spi_NumberOfDataType)((uint32)SPI_FIFO_SIZE - DSPI_SR_TXCTR_VAL_U32(REG_READ32(DSPI_SR_ADDR32(pDspiDev->pcHWUnitConfig->u8Offset))));
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#         }
#     }
#     else
#     {
# #endif
#         nFramesCount = 1u;
	.d2line		1846
	diab.li		r7,1		# nFramesCount=r7
#         #if (SPI_FORCE_DATA_TYPE == STD_ON)
#             if(SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		1848
.Llo25:
	lbz		r4,4(r5)		# nRemainingData=r4 pcDspiChannelAttributesConfig=r5
	se_cmpi		r4,1		# nRemainingData=r4
#             {
#                 /* The number of remaining data must be even */
#                 nRemainingData = 2u;
	.d2line		1851
	diab.li		r4,2		# nRemainingData=r4
	.d2line		1783
	isel		r4,r4,r8,2		# nRemainingData=r4 nRemainingData=r4 nRemainingData=r8
.L478:
#             }
#             else
#             {
#                 nRemainingData = 1u;
	.d2line		1855
	diab.li		r31,1
	isel		r4,r4,r31,2		# nRemainingData=r4 nRemainingData=r4
.L479:
#             }
#         #else
#             nRemainingData = 1u;
#         #endif
#     
#         if((0u == (uint32)(pDspiDev->RemainingChannels)) && (nRemainingData == pDspiDev->RemainingData))
	.d2line		1861
	lbz		r31,36(r3)		# pDspiDev=r3
	se_cmpi		r31,0
	bc		0,2,.L480	# ne
	rlwinm		r4,r4,0,16,31		# nRemainingData=r4 nRemainingData=r4
	lhz		r31,38(r3)		# pDspiDev=r3
	se_cmp		r4,r31		# nRemainingData=r4
	bc		0,2,.L480	# ne
#         {
#             u8EndOfJob = (uint8)TRUE;
	.d2line		1863
.Llo27:
	diab.li		r29,1		# u8EndOfJob=r29
.Llo34:
	b		.L481
.L480:
#         }
#         else
#         {
#             u8EndOfJob = (uint8)FALSE;
	.d2line		1867
.Llo28:
	diab.li		r29,0		# u8EndOfJob=r29
.L481:
#         }
# #if (SPI_SLAVE_SUPPORT == STD_ON)
#     }
# #endif
# 
#     pBufferTX = pDspiDev->pCurrentTxBuffer;
	.d2line		1873
.Llo29:
	lwz		r4,24(r3)		# nRemainingData=r4 pDspiDev=r3
.Llo19:
	mr		r4,r4		# pBufferTX=r4 pBufferTX=r4
#     pDspiDev->RemainingData -= nFramesCount;
	.d2line		1874
.Llo36:
	lhz		r31,38(r3)		# pDspiDev=r3
	subf		r31,r7,r31		# nFramesCount=r7
	sth		r31,38(r3)		# pDspiDev=r3
#     #if (SPI_FORCE_DATA_TYPE == STD_ON)
#     if(SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		1876
	lbz		r31,4(r5)		# pcDspiChannelAttributesConfig=r5
	se_cmpi		r31,1
	bc		0,2,.L483	# ne
#     {
#         pDspiDev->RemainingData -= nFramesCount;
	.d2line		1878
	lhz		r31,38(r3)		# pDspiDev=r3
	subf		r31,r7,r31		# nFramesCount=r7
	sth		r31,38(r3)		# pDspiDev=r3
.L483:
#     }
#     else
#     {
#         /* Do nothing */
#     }
#     #endif
#     pDspiDev->SentFrames = nFramesCount;
	.d2line		1885
	sth		r7,12(r3)		# pDspiDev=r3 nFramesCount=r7
# 
#     if (NULL_PTR != pBufferTX)
	.d2line		1887
	se_cmpi		r4,0		# pBufferTX=r4
	bc		1,2,.L496	# eq
#     {
#         /* set the new TX buffer pointer */
#         /*
#         * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#         *       the only allowed form of pointer arithmetic.
#         */
#         pDspiDev->pCurrentTxBuffer += nFramesCount;
	.d2line		1894
	lwz		r31,24(r3)		# pDspiDev=r3
	rlwinm		r30,r7,0,16,31		# nFramesCount=r7
	se_add		r31,r30
	stw		r31,24(r3)		# pDspiDev=r3
#         #if (SPI_FORCE_DATA_TYPE == STD_ON)
#         if(SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		1896
	lbz		r31,4(r5)		# pcDspiChannelAttributesConfig=r5
	se_cmpi		r31,1
	bc		0,2,.L487	# ne
#         {
#             /*
#             * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#             *       the only allowed form of pointer arithmetic.
#             */
#             pDspiDev->pCurrentTxBuffer += nFramesCount;
	.d2line		1902
	lwz		r30,24(r3)		# pDspiDev=r3
	rlwinm		r31,r7,0,16,31		# nFramesCount=r7
	se_add		r31,r30
	stw		r31,24(r3)		# pDspiDev=r3
.L487:
#         }
#         else
#         {
#             /* Do nothing */
#         }
#         #endif
#         /* write the information from the buffer */
#         while (nFramesCount > 0u)
	.d2line		1910
	e_cmphl16i	r7,0		# nFramesCount=r7
	bc		1,2,.L477	# eq
#         {
#             nFramesCount--;
	.d2line		1912
	diab.li		r31,65535		# nFramesCount=r31
	se_add		r7,r31		# nFramesCount=r7 nFramesCount=r7 nFramesCount=r31
	mr		r7,r7		# nFramesCount=r7 nFramesCount=r7
# 
#             if (0u == nFramesCount)
	.d2line		1914
	e_cmphl16i	r7,0		# nFramesCount=r7
	bc		0,2,.L492	# ne
#             {
#                 /* Force the CS disabling if last data unit
#                 for the last channel of the Job */
#                 if (u8EndOfJob)
	.d2line		1918
	rlwinm		r31,r29,0,24,31		# nFramesCount=r31 u8EndOfJob=r29
	se_cmpi		r31,0		# nFramesCount=r31
	bc		1,2,.L492	# eq
#                 {
#                     /* signal the end of job for the current DSPI Unit */
#                     pDspiDev->bIsEndOfJob = (boolean)TRUE;
	.d2line		1921
	diab.li		r31,1		# nFramesCount=r31
	stb		r31,20(r3)		# pDspiDev=r3 nFramesCount=r31
#                     u32Cmd = u32Cmd & ~DSPI_CONT_MASK_U32; /* clear the continuous CS assertion */
	.d2line		1922
	rlwinm		r0,r0,0,1,31		# u32Cmd=r0 u32Cmd=r0
	mr		r31,r0		# u32Cmd=r31 u32Cmd=r0
.L492:
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# 
#             #if (SPI_FORCE_DATA_TYPE == STD_ON)
#             if( SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		1935
	lbz		r31,4(r5)		# nFramesCount=r31 pcDspiChannelAttributesConfig=r5
	se_cmpi		r31,1		# nFramesCount=r31
	bc		0,2,.L493	# ne
#             {
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_4 A cast should not be performed between a
#                 * pointer to object type and a different pointer to object type.
#                 */
#                 pu16BufferFullTX = (uint16 *) pBufferTX;
	.d2line		1941
	mr		r8,r4		# pu16BufferFullTX=r8 pu16BufferFullTX=r4
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_WRITE32(u32DspiPUSHRAddress, (u32Cmd | *pu16BufferFullTX));
	.d2line		1947
	lhz		r31,0(r4)		# nFramesCount=r31 pBufferTX=r4
	or		r31,r31,r0		# nFramesCount=r31 nFramesCount=r31 u32Cmd=r0
	stw		r31,0(r6)		# u32DspiPUSHRAddress=r6 nFramesCount=r31
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                 *       the only allowed form of pointer arithmetic.
#                 */
#                 pBufferTX++;
	.d2line		1952
	se_addi		r4,1		# pBufferTX=r4 pBufferTX=r4
	b		.L494
.L493:
#             }
#             else
#             {
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_WRITE32(u32DspiPUSHRAddress, (u32Cmd | *pBufferTX));
	.d2line		1961
	lbz		r31,0(r4)		# nFramesCount=r31 pBufferTX=r4
	or		r31,r31,r0		# nFramesCount=r31 nFramesCount=r31 u32Cmd=r0
	stw		r31,0(r6)		# u32DspiPUSHRAddress=r6 nFramesCount=r31
.L494:
#             }
#             #else
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_WRITE32(u32DspiPUSHRAddress, (u32Cmd | *pBufferTX));
#             #endif
#             /*
#             * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#             *       the only allowed form of pointer arithmetic.
#             */
#             pBufferTX++;
	.d2line		1975
	se_addi		r4,1		# pBufferTX=r4 pBufferTX=r4
	b		.L487
.L496:
#         }
#     }
#     else
#     {   /* write the default value */
#         while (nFramesCount > 0u)
	.d2line		1980
	e_cmphl16i	r7,0		# nFramesCount=r7
	bc		1,2,.L477	# eq
#         {
#             nFramesCount--;
	.d2line		1982
.Llo20:
	diab.li		r4,65535		# pBufferTX=r4
.Llo21:
	se_add		r4,r7		# pBufferTX=r4 pBufferTX=r4 nFramesCount=r7
.Llo22:
	mr		r7,r4		# nFramesCount=r7 nFramesCount=r4
# 
#             if (0u == nFramesCount)
	.d2line		1984
	e_cmphl16i	r7,0		# nFramesCount=r7
	bc		0,2,.L501	# ne
#             {
#                 /* Force the CS disabling if last data unit
#                 for the last channel of the Job */
#                 if (u8EndOfJob)
	.d2line		1988
	rlwinm		r31,r29,0,24,31		# u32Cmd=r31 u8EndOfJob=r29
	se_cmpi		r31,0		# u32Cmd=r31
	bc		1,2,.L501	# eq
#                 {
#                     /* signal the end of job for the current DSPI Unit */
#                     pDspiDev->bIsEndOfJob = (boolean)TRUE;
	.d2line		1991
	diab.li		r4,1		# pBufferTX=r4
.Llo23:
	stb		r4,20(r3)		# pDspiDev=r3 pBufferTX=r4
#                     u32Cmd = u32Cmd & ~DSPI_CONT_MASK_U32; /* clear the continuous CS assertion */
	.d2line		1992
	rlwinm		r0,r0,0,1,31		# u32Cmd=r0 u32Cmd=r0
	mr		r31,r0		# u32Cmd=r31 u32Cmd=r0
.L501:
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_WRITE32(u32DspiPUSHRAddress, u32Cmd);
	.d2line		2008
.Llo24:
	stw		r0,0(r6)		# u32DspiPUSHRAddress=r6 u32Cmd=r0
	b		.L496
.L477:
#         }
#     }
# }
	.d2line		2011
	.d2epilogue_begin
.Llo17:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8EndOfJob=r0
	mtspr		lr,r0		# u8EndOfJob=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L704:
	.type		Spi_Dspi_JobTransferFifoFill,@function
	.size		Spi_Dspi_JobTransferFifoFill,.-Spi_Dspi_JobTransferFifoFill
# Number of nodes = 214

# Allocations for Spi_Dspi_JobTransferFifoFill
#	?a4		pDspiDev
#	?a5		u32Cmd
#	?a6		pBufferTX
#	?a7		nFramesCount
#	?a8		nRemainingData
#	?a9		u8EndOfJob
#	?a10		pcDspiChannelAttributesConfig
#	?a11		pu16BufferFullTX
#	?a12		u32DspiPUSHRAddress
# LOCAL_INLINE FUNC(void, SPI_CODE) Spi_Dspi_JobTransferFifoDrain
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         2024,35
#$$ld
.L733:

#$$bf	Spi_Dspi_JobTransferFifoDrain,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.d2_cfa_start __cie
Spi_Dspi_JobTransferFifoDrain:
.Llo38:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo45:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# nFramesCount=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pDspiDev=r3 pDspiDev=r3
	.d2prologue_end
#     (
#         P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev
#     )
# {
#      P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA) pBufferRx;
#      VAR(Spi_NumberOfDataType, AUTOMATIC) nFramesCount = 0U;
	.d2line		2030
	diab.li		r0,0		# nFramesCount=r0
#     VAR(uint32, AUTOMATIC) u32DspiPOPRAddress = pDspiDev->u32DspiPOPRAddress;
#     #if (SPI_FORCE_DATA_TYPE == STD_ON)
#     P2CONST(Spi_Ipw_ChannelAttributesConfigType, AUTOMATIC, SPI_APPL_CONST)
#         pcDspiChannelAttributesConfig = &(*Spi_pcSpiConfigPtr->pcAttributesConfig->pcChannelAttributesConfig)[*(pDspiDev->pcCurrentChannelIndexPointer)];
#     P2VAR(uint16, AUTOMATIC, SPI_APPL_DATA) pu16BufferFullRX;
#     #endif
#     #if (SPI_SLAVE_SUPPORT == STD_ON)
#     VAR(Spi_NumberOfDataType, AUTOMATIC) DiscardFramesCount = 0U;
#     #endif
#     VAR(Spi_NumberOfDataType, AUTOMATIC) TempFramesCount = 0U;
	.d2line		2031
.Llo52:
	lwz		r5,48(r3)		# pDspiDev=r3
.Llo47:
	mr		r5,r5		# u32DspiPOPRAddress=r5 u32DspiPOPRAddress=r5
	.d2line		2034
	lis		r4,Spi_pcSpiConfigPtr@ha
	lwz		r4,Spi_pcSpiConfigPtr@l(r4)
	lwz		r4,20(r4)
	lwz		r6,0(r4)
	lwz		r4,8(r3)		# pDspiDev=r3
	lbz		r4,0(r4)
	rlwinm		r4,r4,3,21,28
	se_add		r4,r6
.Llo48:
	mr		r6,r4		# pcDspiChannelAttributesConfig=r6 pcDspiChannelAttributesConfig=r4
#     
#     if( SPI_MASTER == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode )
	.d2line		2042
	lwz		r4,0(r3)		# pDspiDev=r3
.Llo49:
	lbz		r4,2(r4)
	se_cmpi		r4,0
	bc		0,2,.L516	# ne
#     {
#         /* Master mode */
#         nFramesCount = pDspiDev->SentFrames;
	.d2line		2045
.Llo50:
	lhz		r0,12(r3)		# nFramesCount=r0 pDspiDev=r3
	mr		r0,r0		# nFramesCount=r0 nFramesCount=r0
.L516:
#     }
#     else
#     {
#         /* Slave mode */
#         #if (SPI_SLAVE_SUPPORT == STD_ON)
#         /*
#         * @violates @ref Spi_DSPI_c_REF_3 Conversions shall not be performed between
#         * a pointer to a function and any type other than an integral type.
#         * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#         */
#         nFramesCount = (Spi_NumberOfDataType)DSPI_SR_RXCTR_VAL_U32(REG_READ32(DSPI_SR_ADDR32(pDspiDev->pcHWUnitConfig->u8Offset)));
# 
#         /* Check if the received data fits into the remaining buffer space */
#         if( pDspiDev->ReceivedData < nFramesCount )
#         {
#             /* Too much data, buffer overflow detected */
# 
#             /* Set the number of frames to be discarded */
#             DiscardFramesCount = nFramesCount - pDspiDev->ReceivedData;
#             /* Set the number of frames received to the remaining length of the buffer */
#             nFramesCount = pDspiDev->ReceivedData;
#             /* Set the remaining length of the buffer to 0 */
#             pDspiDev->ReceivedData = 0u;
#             
#         }
#         else
#         {
#             /* No overflow detected, continue normal flow */
#             pDspiDev->ReceivedData -= nFramesCount;
#             /* Set no frames to discard */
#             DiscardFramesCount = 0u;
#         }
#         #endif
#     }
# 
#     pBufferRx = pDspiDev->pCurrentRxBuffer;
	.d2line		2081
	lwz		r4,28(r3)		# pBufferRx=r4 pDspiDev=r3
	.d2line		2083
.Llo42:
	mr.		r4,r4		# pBufferRx=?a5 pBufferRx=?a11
# 
#     if (NULL_PTR != pBufferRx)
.Llo51:
	bc		1,2,.L517	# eq
#     {
#         /* set the new RX buffer pointer */
#         /*
#         * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#         *       the only allowed form of pointer arithmetic.
#         */
#         pDspiDev->pCurrentRxBuffer += nFramesCount;
	.d2line		2090
	lwz		r7,28(r3)		# pDspiDev=r3
	rlwinm		r30,r0,0,16,31		# nFramesCount=r0
	se_add		r7,r30
	stw		r7,28(r3)		# pDspiDev=r3
#         #if (SPI_FORCE_DATA_TYPE == STD_ON)
#         if(SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		2092
	lbz		r7,4(r6)		# pcDspiChannelAttributesConfig=r6
	se_cmpi		r7,1
	bc		0,2,.L519	# ne
#         {
#             /*
#             * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#             *       the only allowed form of pointer arithmetic.
#             */
#             pDspiDev->pCurrentRxBuffer += nFramesCount;
	.d2line		2098
	lwz		r7,28(r3)		# pDspiDev=r3
	rlwinm		r30,r0,0,16,31		# nFramesCount=r0
	se_add		r7,r30
	stw		r7,28(r3)		# pDspiDev=r3
.L519:
#         }
#         else
#         {
#             /* Do nothing */
#         }
#         #endif
#         /* Save nFramesCount to TempFramesCount for compare by do{}while */
#         TempFramesCount = nFramesCount;
	.d2line		2106
	mr		r30,r0		# TempFramesCount=r30 TempFramesCount=r0
.L520:
#         /* read the deserialized information */
#         do
#         {
#         #if (SPI_SLAVE_SUPPORT == STD_ON)
#             if(0u != nFramesCount)
#             {
#         #endif
#             #if (SPI_FORCE_DATA_TYPE == STD_ON)
#                 if(SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		2115
.Llo53:
	lbz		r7,4(r6)		# nFramesCount=r7 pcDspiChannelAttributesConfig=r6
.Llo54:
	se_cmpi		r7,1		# nFramesCount=r7
	bc		0,2,.L521	# ne
#                 {
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_4 A cast should not be performed between a
#                     * pointer to object type and a different pointer to object type.
#                     */
#                     pu16BufferFullRX = (uint16 *) pBufferRx;
	.d2line		2121
	mr		r7,r4		# pu16BufferFullRX=r7 pu16BufferFullRX=r4
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     *pu16BufferFullRX = (uint16)REG_READ32(u32DspiPOPRAddress);
	.d2line		2127
	lwz		r7,0(r5)		# pBufferRx=r7 u32DspiPOPRAddress=r5
	sth		r7,0(r4)		# pBufferRx=r4 pBufferRx=r7
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                     *       the only allowed form of pointer arithmetic.
#                     */
#                     pBufferRx += 2u;
	.d2line		2132
	diab.addi		r7,r4,2		# pBufferRx=r7 pBufferRx=r4
	se_addi		r4,2		# pBufferRx=r4 pBufferRx=r4
	b		.L522
.L521:
#                 }
#                 else
#                 {
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                      *pBufferRx = (Spi_DataType)REG_READ32(u32DspiPOPRAddress);
	.d2line		2141
	lwz		r7,0(r5)		# nFramesCount=r7 u32DspiPOPRAddress=r5
	stb		r7,0(r4)		# pBufferRx=r4 nFramesCount=r7
#                      /*
#                     * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                     *       the only allowed form of pointer arithmetic.
#                     */
#                     pBufferRx++;
	.d2line		2146
	se_addi		r4,1		# pBufferRx=r4 pBufferRx=r4
.L522:
#                 }
#             #else
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                  *pBufferRx = (Spi_DataType)REG_READ32(u32DspiPOPRAddress);
#                  /*
#                 * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                 *       the only allowed form of pointer arithmetic.
#                 */
#                 pBufferRx++;
#                 #endif
#                 nFramesCount--;
	.d2line		2161
	diab.li		r7,65535		# pBufferRx=r7
	se_add		r0,r7		# nFramesCount=r0 nFramesCount=r0 nFramesCount=r7
	mr		r0,r0		# nFramesCount=r0 nFramesCount=r0
#         #if (SPI_SLAVE_SUPPORT == STD_ON)
#             }
#         #endif
#         } while ((0u < nFramesCount) && (nFramesCount < TempFramesCount));  /* TX_FIFO_SIZE =4 */
	.d2line		2165
	e_cmphl16i	r0,0		# nFramesCount=r0
	bc		1,2,.L525	# eq
	rlwinm		r7,r0,0,16,31		# nFramesCount=r7 nFramesCount=r0
	rlwinm		r31,r30,0,16,31		# TempFramesCount=r30
	se_cmp		r7,r31		# nFramesCount=r7
	bc		1,0,.L520	# lt
.L525:
#         /* update current RX buffer pointer */
#         pDspiDev->pCurrentRxBuffer = pBufferRx;
	.d2line		2167
	stw		r4,28(r3)		# pDspiDev=r3 pBufferRx=r4
	b		.L514
.L517:
# 
# #if (SPI_SLAVE_SUPPORT == STD_ON)
#         if( SPI_SLAVE == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode)
#         {
#             /* Check if there are any frames to discard */
#             if(0u != DiscardFramesCount)
#             {
#                 /* Save DiscardFramesCount to TempFramesCount for use compare by do{}while */
#                 TempFramesCount = DiscardFramesCount;
#                 /* Discard all the surplus frames */
#                 do
#                 {
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     Spi_Dspi_u32ReadDiscard = REG_READ32(u32DspiPOPRAddress);
#                     DiscardFramesCount--;
#                 }
#                 while((DiscardFramesCount>0u) && (DiscardFramesCount<TempFramesCount));
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# 
#             if((Spi_NumberOfDataType)0u == pDspiDev->ReceivedData)
#             {
#                 pDspiDev->bIsEndOfJob = (boolean)1;
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#         }
#         else
#         {
#             /* Do nothing */
#         }
# #endif
#     }
#     else
#     {
#         /* Save nFramesCount to TempFramesCount for use compare by do{}while */
#         TempFramesCount = nFramesCount;
	.d2line		2213
.Llo55:
	mr		r30,r0		# TempFramesCount=r30 TempFramesCount=r0
.L524:
#         /* discard the information read */
#         do
#         {
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             Spi_Dspi_u32ReadDiscard = REG_READ32(u32DspiPOPRAddress);
	.d2line		2222
.Llo39:
	lwz		r4,0(r5)		# pBufferRx=r4 u32DspiPOPRAddress=r5
.Llo43:
	lis		r3,Spi_Dspi_u32ReadDiscard@ha		# pDspiDev=r3
.Llo40:
	e_add16i		r3,r3,Spi_Dspi_u32ReadDiscard@l		# pDspiDev=r3 pDspiDev=r3
	stw		r4,0(r3)		# pDspiDev=r3 pBufferRx=r4
#             nFramesCount--;
	.d2line		2223
	diab.li		r3,65535		# pDspiDev=r3
.Llo41:
	se_add		r0,r3		# nFramesCount=r0 nFramesCount=r0 nFramesCount=r3
	mr		r0,r0		# nFramesCount=r0 nFramesCount=r0
#         } while ((0u < nFramesCount) && (nFramesCount < TempFramesCount));
	.d2line		2224
	e_cmphl16i	r0,0		# nFramesCount=r0
	bc		1,2,.L514	# eq
.Llo44:
	rlwinm		r7,r0,0,16,31		# nFramesCount=r0
	rlwinm		r3,r30,0,16,31		# nFramesCount=r3 TempFramesCount=r30
	se_cmp		r7,r3		# nFramesCount=r3
	bc		1,0,.L524	# lt
.L514:
#     }
# }
	.d2line		2226
	.d2epilogue_begin
.Llo46:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# nFramesCount=r0
	mtspr		lr,r0		# nFramesCount=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L734:
	.type		Spi_Dspi_JobTransferFifoDrain,@function
	.size		Spi_Dspi_JobTransferFifoDrain,.-Spi_Dspi_JobTransferFifoDrain
# Number of nodes = 139

# Allocations for Spi_Dspi_JobTransferFifoDrain
#	?a4		pDspiDev
#	?a5		pBufferRx
#	?a6		nFramesCount
#	?a7		u32DspiPOPRAddress
#	?a8		pcDspiChannelAttributesConfig
#	?a9		pu16BufferFullRX
#	?a10		TempFramesCount
# FUNC(void, SPI_CODE) Spi_Dspi_Init
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2393,22
#$$ld
.L751:

#$$bf	Spi_Dspi_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.globl		Spi_Dspi_Init
	.d2_cfa_start __cie
Spi_Dspi_Init:
.Llo56:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# pStatus=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# HWUnit=r3 HWUnit=r3
	mr		r0,r4		# pStatus=r0 pStatus=r4
	.d2prologue_end
#     (
#         VAR(Spi_HWUnitType, AUTOMATIC) HWUnit,
#         P2VAR(Spi_StatusType, AUTOMATIC, SPI_APPL_DATA) pStatus
#     )
# {
#     P2CONST(Spi_Ipw_DeviceAttributesConfigType, AUTOMATIC, SPI_APPL_CONST)
#         pcDspiDeviceAttributesConfig;
#     P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev;
#     P2CONST(Spi_HWUnitConfigType, AUTOMATIC, SPI_APPL_CONST) pcHWUnitConfig;
#     VAR(uint32, AUTOMATIC) u32Job;
#     P2CONST(Spi_JobConfigType, AUTOMATIC, SPI_APPL_CONST) pcJobConfig;
#     VAR(uint32, AUTOMATIC) u32MCR1;
#     VAR(uint8, AUTOMATIC) u8HWoffset;
# 
# #if (SPI_DUAL_CLOCK_MODE == STD_ON)
#     /* Clock mode */
#     Spi_Dspi_ClockMode = SPI_NORMAL;
# #endif
#     /* Get physical device instances and link them */
#     pDspiDev = &Spi_Dspi_aDeviceState[HWUnit];
	.d2line		2413
.Llo58:
	lis		r4,Spi_Dspi_aDeviceState@ha		# pDspiDev=r4
.Llo59:
	e_add16i		r4,r4,Spi_Dspi_aDeviceState@l		# pDspiDev=r4 pDspiDev=r4
	rlwinm		r31,r3,0,24,31		# HWUnit=r3
	e_mulli		r31,r31,72
	se_add		r4,r31		# pDspiDev=r4 pDspiDev=r4
	mr		r4,r4		# pDspiDev=r4 pDspiDev=r4
#     pcHWUnitConfig = &(*Spi_pcSpiConfigPtr->pcHWUnitConfig)[HWUnit];
	.d2line		2414
	lis		r5,Spi_pcSpiConfigPtr@ha		# pcHWUnitConfig=r5
.Llo73:
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)		# pcHWUnitConfig=r5 pcHWUnitConfig=r5
	lwz		r5,24(r5)		# pcHWUnitConfig=r5 pcHWUnitConfig=r5
	rlwinm		r31,r3,3,21,28		# HWUnit=r3
	se_add		r5,r31		# pcHWUnitConfig=r5 pcHWUnitConfig=r5
	mr		r5,r5		# pcHWUnitConfig=r5 pcHWUnitConfig=r5
#     pDspiDev->pcHWUnitConfig = pcHWUnitConfig;
	.d2line		2415
	stw		r5,0(r4)		# pDspiDev=r4 pcHWUnitConfig=r5
#     pDspiDev->pStatus = pStatus;
	.d2line		2416
	stw		r0,64(r4)		# pDspiDev=r4 pStatus=r0
# 
#     /* Reset poll flag */
#     pDspiDev->u8IsPollRequest = 0u;
	.d2line		2419
	diab.li		r0,0		# pStatus=r0
	stb		r0,70(r4)		# pDspiDev=r4 pStatus=r0
# 
#     /* Peripheral Registers */
#     u8HWoffset = pcHWUnitConfig->u8Offset;
	.d2line		2422
	lbz		r6,0(r5)		# u8HWoffset=r6 pcHWUnitConfig=r5
.Llo79:
	mr		r6,r6		# u8HWoffset=r6 u8HWoffset=r6
#     
#     /* cache frequently used DSPI addresses in order to have a quicker access */
#     pDspiDev->u32DspiBaseAddress = DSPI_GET_BASE_ADDRESS_U32(u8HWoffset);
	.d2line		2425
	lis		r7,Spi_Dspi_au32BaseAddrs@ha
	e_add16i		r7,r7,Spi_Dspi_au32BaseAddrs@l
	rlwinm		r30,r6,2,22,29		# u8HWoffset=r6
	lwzux		r31,r7,r30
	stw		r31,40(r4)		# pDspiDev=r4
#     pDspiDev->u32DspiPUSHRAddress = DSPI_PUSHR_ADDR32(u8HWoffset);
	.d2line		2426
	lis		r7,Spi_Dspi_au32BaseAddrs@ha
	e_add16i		r7,r7,Spi_Dspi_au32BaseAddrs@l
	lwzux		r31,r7,r30
	diab.addi		r31,r31,52
	stw		r31,44(r4)		# pDspiDev=r4
#     pDspiDev->u32DspiPOPRAddress = DSPI_POPR_ADDR32(u8HWoffset);
	.d2line		2427
	lis		r7,Spi_Dspi_au32BaseAddrs@ha
	e_add16i		r7,r7,Spi_Dspi_au32BaseAddrs@l
	lwzux		r31,r7,r30
	diab.addi		r31,r31,56
	stw		r31,48(r4)		# pDspiDev=r4
#     pDspiDev->u32DspiSRAddress = DSPI_SR_ADDR32(u8HWoffset);
	.d2line		2428
	lis		r7,Spi_Dspi_au32BaseAddrs@ha
	e_add16i		r7,r7,Spi_Dspi_au32BaseAddrs@l
	lwzux		r31,r7,r30
	diab.addi		r31,r31,44
	stw		r31,52(r4)		# pDspiDev=r4
# 
# #if (SPI_SLAVE_SUPPORT == STD_ON)
# 
#     if (SPI_SLAVE == (Spi_ModeType)pcHWUnitConfig->u8SpiPhyUnitMode)
#     {
#         pDspiDev->u32DspiCTARAddress = DSPI_CTAR0_ADDR32(u8HWoffset);
# 
#         /* Determine chip select inactive states for each PCS */
#         u32MCR1 = (DSPI_MCR_PCSIS_ALL_U32);   /* high by default */
#     }
#     else
#     {
# #endif
#         pDspiDev->u32DspiCTARAddress = DSPI_CTAR_ADDR32(u8HWoffset, (uint32)pcHWUnitConfig->u8NrOfCTAR);
	.d2line		2442
	lis		r7,Spi_Dspi_au32BaseAddrs@ha
	e_add16i		r7,r7,Spi_Dspi_au32BaseAddrs@l
	lwzx		r7,r7,r30
	lbz		r5,1(r5)		# pcHWUnitConfig=r5 pcHWUnitConfig=r5
	rlwinm		r5,r5,2,22,29		# pcHWUnitConfig=r5 pcHWUnitConfig=r5
	se_add		r7,r5		# pcHWUnitConfig=r5
	diab.addi		r5,r7,8		# pcHWUnitConfig=r5
	stw		r5,56(r4)		# pDspiDev=r4 pcHWUnitConfig=r5
# 
#          /* Determine chip select inactive states for each PCS */
#         u32MCR1 = (DSPI_MCR_MSTR_U32 | DSPI_MCR_PCSIS_ALL_U32);   /* high by default */
	.d2line		2445
	e_lis		r4,-32513		# pDspiDev=r4
#                 
# #if (SPI_SLAVE_SUPPORT == STD_ON)
#     }
# #endif
#     for (u32Job = 0u; u32Job <= (uint32)(Spi_pcSpiConfigPtr->Spi_Max_Job); u32Job++)
	.d2line		2450
.Llo78:
	diab.li		r7,0
.L537:
.Llo60:
	lis		r5,Spi_pcSpiConfigPtr@ha		# pcHWUnitConfig=r5
.Llo74:
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)		# pcHWUnitConfig=r5 pcHWUnitConfig=r5
	lhz		r0,4(r5)		# pStatus=r0 pcHWUnitConfig=r5
.Llo61:
	se_cmpl		r0,r7		# pStatus=r0 u32Job=r7
	bc		1,0,.L539	# lt
#     {
#         pcJobConfig = &(*Spi_pcSpiConfigPtr->pcJobConfig)[u32Job];
	.d2line		2452
.Llo62:
	lis		r5,Spi_pcSpiConfigPtr@ha		# pcHWUnitConfig=r5
.Llo75:
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)		# pcHWUnitConfig=r5 pcHWUnitConfig=r5
	lwz		r5,12(r5)		# pcHWUnitConfig=r5 pcHWUnitConfig=r5
	e_mulli		r0,r7,48		# pStatus=r0 u32Job=r7
.Llo63:
	se_add		r0,r5		# pStatus=r0 pStatus=r0 pcHWUnitConfig=r5
.Llo64:
	mr		r5,r0		# pcJobConfig=r5 pcJobConfig=r0
#         if (pcJobConfig->HWUnit == HWUnit)
	.d2line		2453
.Llo76:
	lbz		r0,24(r5)		# pStatus=r0 pcJobConfig=r5
.Llo65:
	rlwinm		r31,r3,0,24,31		# HWUnit=r3
	se_cmp		r0,r31		# pStatus=r0
	bc		0,2,.L541	# ne
#         {
#             /* External device attributes */
#             pcDspiDeviceAttributesConfig = &(*Spi_pcSpiConfigPtr->pcAttributesConfig->pcDeviceAttributesConfig)[pcJobConfig->ExternalDevice];
	.d2line		2456
.Llo66:
	lbz		r0,32(r5)		# pStatus=r0 pcJobConfig=r5
.Llo67:
	lis		r5,Spi_pcSpiConfigPtr@ha		# pcJobConfig=r5
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)		# pcJobConfig=r5 pcJobConfig=r5
	lwz		r5,20(r5)		# pcJobConfig=r5 pcJobConfig=r5
	lwz		r5,4(r5)		# pcJobConfig=r5 pcJobConfig=r5
	rlwinm		r31,r0,4,0,27		# pStatus=r0
	se_slwi		r0,2		# pStatus=r0 pStatus=r0
	subf		r0,r0,r31		# pStatus=r0 pStatus=r0
	se_add		r0,r5		# pStatus=r0 pStatus=r0 pcJobConfig=r5
.Llo68:
	mr		r5,r0		# pcDspiDeviceAttributesConfig=r5 pcDspiDeviceAttributesConfig=r0
#             u32MCR1 = (uint32)(u32MCR1 & (~pcDspiDeviceAttributesConfig->u32MCR));
	.d2line		2457
.Llo77:
	lwz		r0,8(r5)		# pStatus=r0 pcDspiDeviceAttributesConfig=r5
.Llo69:
	andc		r4,r4,r0		# u32MCR1=r4 u32MCR1=r4 pStatus=r0
	mr		r0,r4		# u32MCR1=r0 u32MCR1=r4
.L541:
#         }
#         else
#         {
#             /* Do nothing */
#         }
#     }
	.d2line		2463
.Llo70:
	diab.addi		r0,r7,1		# pStatus=r0 u32Job=r7
	se_addi		r7,1		# u32Job=r7 u32Job=r7
	b		.L537
.L539:
# 
#     /* SPI works as a Master and CS configured with inactive
#     state as appropriate */
#     /*
#     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#     *     type and an integral type.
#     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#     */
#     REG_WRITE32(DSPI_MCR_ADDR32(u8HWoffset), (u32MCR1 & DSPI_MCR_RESERVED_MASK_U32));
	.d2line		2472
.Llo57:
	diab.li		r3,-33009		# HWUnit=r3
.Llo71:
	and		r4,r4,r3		# pDspiDev=r4 pDspiDev=r4 u32MCR1=r3
	lis		r3,Spi_Dspi_au32BaseAddrs@ha		# u32MCR1=r3
	e_add16i		r3,r3,Spi_Dspi_au32BaseAddrs@l		# u32MCR1=r3 u32MCR1=r3
.Llo80:
	rlwinm		r6,r6,2,22,29		# u8HWoffset=r6 u8HWoffset=r6
.Llo81:
	lwzx		r3,r3,r6		# u32MCR1=r3 u32MCR1=r3
	stw		r4,0(r3)		# u32MCR1=r3 pDspiDev=r4
# 
# #if ( (SPI_LEVEL_DELIVERED == LEVEL1) || (SPI_LEVEL_DELIVERED == LEVEL2) )
# #if (SPI_DMA_USED == STD_ON)
#     if (pcHWUnitConfig->u16UseDma)
#     {
#         REG_WRITE32(DSPI_RSER_ADDR32(u8HWoffset),
#                         (DSPI_RSER_TFFF_RE_MASK_U32|DSPI_RSER_TFFF_DIRS_MASK_U32|DSPI_RSER_RFDF_RE_MASK_U32|DSPI_RSER_RFDF_DIRS_MASK_U32
#                         ) & DSPI_RSER_RESERVED_MASK_U32
#                    /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                    );
#         /* initialize DMA TCDs */
#         Spi_Dspi_InitDma(HWUnit, pDspiDev);
#     }
#     else
#     {
#         /* Do nothing */
#     }
# #endif /* (SPI_DMA_USED == STD_ON) */
# #endif
# }
	.d2line		2496
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# pStatus=r0
	mtspr		lr,r0		# pStatus=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo72:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L752:
	.type		Spi_Dspi_Init,@function
	.size		Spi_Dspi_Init,.-Spi_Dspi_Init
# Number of nodes = 194

# Allocations for Spi_Dspi_Init
#	?a4		HWUnit
#	?a5		pStatus
#	?a6		$$120
#	?a7		pcDspiDeviceAttributesConfig
#	?a8		pDspiDev
#	?a9		pcHWUnitConfig
#	?a10		u32Job
#	?a11		pcJobConfig
#	?a12		u32MCR1
#	?a13		u8HWoffset
# FUNC(void, SPI_CODE) Spi_Dspi_IrqConfig
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2515,22
#$$ld
.L788:

#$$bf	Spi_Dspi_IrqConfig,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Spi_Dspi_IrqConfig
	.d2_cfa_start __cie
Spi_Dspi_IrqConfig:
.Llo82:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# HWUnit=r3 HWUnit=r3
	mr		r5,r4		# AsyncMode=r5 AsyncMode=r4
	.d2prologue_end
#     (
#         VAR(Spi_HWUnitType, AUTOMATIC) HWUnit,
#         VAR(Spi_AsyncModeType, AUTOMATIC) AsyncMode
#     )
# {
#     P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev =
	.d2line		2521
.Llo84:
	lis		r4,Spi_Dspi_aDeviceState@ha		# pcHWUnitConfig=r4
.Llo85:
	e_add16i		r4,r4,Spi_Dspi_aDeviceState@l		# pcHWUnitConfig=r4 pcHWUnitConfig=r4
	rlwinm		r3,r3,0,24,31		# HWUnit=r3 HWUnit=r3
	e_mulli		r3,r3,72		# HWUnit=r3 HWUnit=r3
	se_add		r3,r4		# HWUnit=r3 HWUnit=r3 pcHWUnitConfig=r4
.Llo83:
	mr		r3,r3		# pDspiDev=r3 pDspiDev=r3
#         &Spi_Dspi_aDeviceState[HWUnit];
#     P2CONST(Spi_HWUnitConfigType, AUTOMATIC, SPI_APPL_CONST) pcHWUnitConfig =
	.d2line		2523
	lwz		r4,0(r3)		# pcHWUnitConfig=r4 pDspiDev=r3
	mr		r4,r4		# pcHWUnitConfig=r4 pcHWUnitConfig=r4
#         pDspiDev->pcHWUnitConfig;
#     VAR(uint8, AUTOMATIC) u8HWoffset = pcHWUnitConfig->u8Offset;
	.d2line		2525
	lbz		r0,0(r4)		# pcHWUnitConfig=r4
.Llo92:
	mr		r0,r0		# u8HWoffset=r0 u8HWoffset=r0
# 
#     /* set the async mode for the HWUnit */
#     pDspiDev->AsyncMode = AsyncMode;
	.d2line		2528
	stw		r5,60(r3)		# pDspiDev=r3 AsyncMode=r5
# 
#     /* activate/deactivate TCF interrupts for Async HWUnits */
#     if (SPI_PHYUNIT_ASYNC_U32 == pcHWUnitConfig->u32IsSync)
	.d2line		2531
	lwz		r3,4(r4)		# pDspiDev=r3 pcHWUnitConfig=r4
	se_cmpi		r3,0		# pDspiDev=r3
	bc		0,2,.L545	# ne
#     {
# #if (SPI_DMA_USED == STD_ON)
#         if (pcHWUnitConfig->u16UseDma)
#         {
#             Spi_Dspi_DmaIrqConfig(pDspiDev, AsyncMode);
#         }
#         else
#         {
#             /* Do nothing */
#         }
# #endif /* SPI_DMA_USED == STD_ON */
# 
#         if (SPI_INTERRUPT_MODE == AsyncMode)
	.d2line		2544
.Llo87:
	se_cmpi		r5,1		# AsyncMode=r5
	bc		0,2,.L547	# ne
#         {
#         #if (SPI_DMA_USED == STD_ON)
#             if (pcHWUnitConfig->u16UseDma)
#             {
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_BIT_CLEAR32(DSPI_RSER_ADDR32(u8HWoffset), DSPI_RSER_TCF_RE_MASK_U32);
#             } 
#             else
#             {
#             #if (SPI_SLAVE_SUPPORT == STD_ON)
#                 if (SPI_SLAVE == (Spi_ModeType)pcHWUnitConfig->u8SpiPhyUnitMode)
#                 {
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     REG_BIT_CLEAR32(DSPI_RSER_ADDR32(u8HWoffset), DSPI_RSER_TCF_RE_MASK_U32);
#                 }
#                 else
#                 {
#             #endif
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     REG_BIT_SET32(DSPI_RSER_ADDR32(u8HWoffset), DSPI_RSER_TCF_RE_MASK_U32);
#             #if (SPI_SLAVE_SUPPORT == STD_ON)
#                 }
#             #endif
#             }
#         #else
#             #if (SPI_SLAVE_SUPPORT == STD_ON)
#                 if (SPI_SLAVE == (Spi_ModeType)pcHWUnitConfig->u8SpiPhyUnitMode)
#                 {
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     REG_BIT_CLEAR32(DSPI_RSER_ADDR32(u8HWoffset), DSPI_RSER_TCF_RE_MASK_U32);
#                 }
#                 else
#                 {
#             #endif
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     REG_BIT_SET32(DSPI_RSER_ADDR32(u8HWoffset), DSPI_RSER_TCF_RE_MASK_U32);
	.d2line		2600
.Llo86:
	lis		r3,Spi_Dspi_au32BaseAddrs@ha		# pDspiDev=r3
.Llo88:
	e_add16i		r3,r3,Spi_Dspi_au32BaseAddrs@l		# pDspiDev=r3 pDspiDev=r3
.Llo93:
	rlwinm		r0,r0,2,22,29		# u8HWoffset=r0 u8HWoffset=r0
.Llo94:
	lwzx		r3,r3,r0		# pDspiDev=r3 pDspiDev=r3
	lwz		r0,48(r3)		# u8HWoffset=r0 pDspiDev=r3
.Llo95:
	.diab.bseti		r0,0		# u8HWoffset=r0
	stw		r0,48(r3)		# pDspiDev=r3 u8HWoffset=r0
	b		.L545
.L547:
#             #if (SPI_SLAVE_SUPPORT == STD_ON)
#                 }
#             #endif
#         #endif /* SPI_DMA_USED == STD_ON */
#         }
#         else
#         {
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_CLEAR32(DSPI_RSER_ADDR32(u8HWoffset), DSPI_RSER_TCF_RE_MASK_U32);
	.d2line		2613
.Llo89:
	lis		r3,Spi_Dspi_au32BaseAddrs@ha		# pDspiDev=r3
.Llo90:
	e_add16i		r3,r3,Spi_Dspi_au32BaseAddrs@l		# pDspiDev=r3 pDspiDev=r3
.Llo96:
	rlwinm		r0,r0,2,22,29		# u8HWoffset=r0 u8HWoffset=r0
.Llo97:
	lwzx		r3,r3,r0		# pDspiDev=r3 pDspiDev=r3
	lwz		r0,48(r3)		# u8HWoffset=r0 pDspiDev=r3
.Llo98:
	.diab.bclri		r0,0		# u8HWoffset=r0
	stw		r0,48(r3)		# pDspiDev=r3 u8HWoffset=r0
.L545:
#         }
#     }
# }
	.d2line		2616
	.d2epilogue_begin
.Llo91:
	lwz		r0,20(r1)		# u8HWoffset=r0
	mtspr		lr,r0		# u8HWoffset=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L789:
	.type		Spi_Dspi_IrqConfig,@function
	.size		Spi_Dspi_IrqConfig,.-Spi_Dspi_IrqConfig
# Number of nodes = 59

# Allocations for Spi_Dspi_IrqConfig
#	?a4		HWUnit
#	?a5		AsyncMode
#	?a6		$$116
#	?a7		$$115
#	?a8		pDspiDev
#	?a9		pcHWUnitConfig
#	?a10		u8HWoffset
# FUNC(void, SPI_CODE) Spi_Dspi_IsrFifoRx
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2810,22
#$$ld
.L803:

#$$bf	Spi_Dspi_IsrFifoRx,interprocedural,rasave,nostackparams
	.globl		Spi_Dspi_IsrFifoRx
	.d2_cfa_start __cie
Spi_Dspi_IsrFifoRx:
.Llo99:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pDspiDev=r31 pDspiDev=r3
	mr		r4,r4		# u8HWoffset=r4 u8HWoffset=r4
	.d2prologue_end
#     (
#         P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev,
#         VAR(uint8, AUTOMATIC) u8HWoffset
#     )
# {
#     VAR(Spi_AsyncModeType, AUTOMATIC) AsyncMode = pDspiDev->AsyncMode;
#     VAR(uint32, AUTOMATIC) u32IsrStatus = 0u;
	.d2line		2817
	diab.li		r5,0		# u32IsrStatus=r5
	.d2line		2816
.Llo125:
	lwz		r0,60(r31)		# pDspiDev=r31
.Llo105:
	mr		r0,r0		# AsyncMode=r0 AsyncMode=r0
# #if ((SPI_DMA_USED == STD_ON) && (SPI_SLAVE_SUPPORT == STD_ON))
#     VAR(uint32, AUTOMATIC) u32TFUF_Flag = 0u;
# #endif
#     
#     /* Check if the driver has been initialized */
#     if (NULL_PTR != Spi_pcSpiConfigPtr)
	.d2line		2823
	lis		r3,Spi_pcSpiConfigPtr@ha
.Llo100:
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)
	se_cmpi		r3,0
	bc		1,2,.L567	# eq
#     {
#         if (SPI_POLLING_MODE != AsyncMode)
	.d2line		2825
.Llo101:
	se_cmpi		r0,0		# AsyncMode=r0
	bc		1,2,.L568	# eq
#         {
#             if((uint8)SPI_MASTER == pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode)
	.d2line		2827
.Llo103:
	lwz		r3,0(r31)		# pDspiDev=r31
	lbz		r0,2(r3)		# AsyncMode=r0
.Llo106:
	se_cmpi		r0,0		# AsyncMode=r0
	bc		0,2,.L571	# ne
#             {
#                 /*Not in pooling mode: read status register and interrupts enabled register */
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 u32IsrStatus = REG_READ32(pDspiDev->u32DspiSRAddress) & DSPI_SR_TCF_W1C;
	.d2line		2835
.Llo107:
	lwz		r3,52(r31)		# u32IsrStatus=r3 pDspiDev=r31
	lwz		r0,0(r3)		# AsyncMode=r0 u32IsrStatus=r3
.Llo108:
	rlwinm		r0,r0,0,0,0		# AsyncMode=r0 AsyncMode=r0
.Llo109:
	mr		r0,r0		# u32IsrStatus=r0 u32IsrStatus=r0
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 Conversions shall not be performed between
#                 * a pointer to a function and any type other than an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 u32IsrStatus &= REG_READ32(DSPI_RSER_ADDR32(pDspiDev->pcHWUnitConfig->u8Offset)) & DSPI_RSER_TCF_RE_MASK_U32;
	.d2line		2841
.Llo110:
	lis		r3,Spi_Dspi_au32BaseAddrs@ha		# u32IsrStatus=r3
	e_add16i		r3,r3,Spi_Dspi_au32BaseAddrs@l		# u32IsrStatus=r3 u32IsrStatus=r3
	lwz		r4,0(r31)		# pDspiDev=r31
	lbz		r4,0(r4)
	rlwinm		r4,r4,2,22,29
	lwzx		r3,r3,r4		# u32IsrStatus=r3 u32IsrStatus=r3
	lwz		r3,48(r3)		# u32IsrStatus=r3 u32IsrStatus=r3
	and		r0,r0,r3		# AsyncMode=r0 AsyncMode=r0 u32IsrStatus=r3
	rlwinm		r0,r0,0,0,0		# AsyncMode=r0 AsyncMode=r0
.Llo111:
	mr		r5,r0		# u32IsrStatus=r5 u32IsrStatus=r0
	b		.L571
.L568:
#             }
#             else
#             {
#     #if (SPI_SLAVE_SUPPORT == STD_ON)
# 
#                 /*Not in pooling mode: read status register and interrupts enabled register */
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 u32IsrStatus = REG_READ32(pDspiDev->u32DspiSRAddress) & DSPI_SR_RFDF_W1C;
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 Conversions shall not be performed between
#                 * a pointer to a function and any type other than an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 u32IsrStatus &= REG_READ32(DSPI_RSER_ADDR32(pDspiDev->pcHWUnitConfig->u8Offset)) & DSPI_SR_RFDF_W1C;
#     #endif
#             }
#         }
#         else
#         {
#             /* Operation mode is SPI_POLLING_MODE: set u32IsrStatus to poll request flag */
#             u32IsrStatus = pDspiDev->u8IsPollRequest;
	.d2line		2866
	lbz		r5,70(r31)		# u32IsrStatus=r5 pDspiDev=r31
	mr		r5,r5		# u32IsrStatus=r5 u32IsrStatus=r5
#             /* Clear poll request flag */
#             pDspiDev->u8IsPollRequest = 0u;
	.d2line		2868
	diab.li		r0,0		# AsyncMode=r0
.Llo112:
	stb		r0,70(r31)		# pDspiDev=r31 AsyncMode=r0
.L571:
#         }
# 
#         /* check if any enabled isr had been triggered */
#         if (0u != u32IsrStatus)
	.d2line		2872
.Llo113:
	se_cmpi		r5,0		# u32IsrStatus=r5
	bc		1,2,.L572	# eq
#         {
#             #if (SPI_DMA_USED == STD_ON)
#             if (0u != pDspiDev->pcHWUnitConfig->u16UseDma)
#             {
#                 #if (SPI_SLAVE_SUPPORT == STD_ON)
#                 if(SPI_SLAVE == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode)
#                 {
#                     /* 
#                     * In case of Slave using DMA to transfer, It will enable interrupt request of RFDF flag and 
#                     * Slave will discard the received data if Master send extra frames 
#                     */
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     Spi_Dspi_u32ReadDiscard = REG_READ32(pDspiDev->u32DspiPOPRAddress);
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     REG_WRITE32(pDspiDev->u32DspiSRAddress, DSPI_SR_RFDF_W1C & DSPI_SR_RESERVED_MASK_U32);
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     u32TFUF_Flag = REG_READ32(pDspiDev->u32DspiSRAddress) & DSPI_SR_TFUF_W1C;
#                     if(u32TFUF_Flag!=0u)
#                     {
#                         /*
#                         * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                         *     type and an integral type.
#                         * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                         */
#                         REG_WRITE32(pDspiDev->u32DspiSRAddress, DSPI_SR_TFUF_W1C & DSPI_SR_RESERVED_MASK_U32);
#                     }
#                     else
#                     {
#                         /* Do nothing */
#                     }
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#                 #endif  /* (SPI_SLAVE_SUPPORT == STD_ON) */
#             }
#             else
#             #endif  /* (SPI_DMA_USED == STD_ON) */
#             {
#                 /* clear TCF Flag, in order to unlock next TX transmission */
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_WRITE32(pDspiDev->u32DspiSRAddress, DSPI_SR_TCF_W1C);
	.d2line		2931
.Llo126:
	e_lis		r0,-32768		# AsyncMode=r0
.Llo114:
	lwz		r3,52(r31)		# u32IsrStatus=r3 pDspiDev=r31
.Llo127:
	stw		r0,0(r3)		# u32IsrStatus=r3 AsyncMode=r0
# 
#                 /* Copy data from DSPI FIFOD to channels */
#                 Spi_Dspi_JobTransferFifoDrain(pDspiDev);
	.d2line		2934
	mr		r3,r31		# pDspiDev=r3 pDspiDev=r31
.Llo128:
	bl		Spi_Dspi_JobTransferFifoDrain
# 
#             #if (SPI_SLAVE_SUPPORT == STD_ON)
#                 if( SPI_SLAVE == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode)
#                 {
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     REG_WRITE32(pDspiDev->u32DspiSRAddress, DSPI_SR_RFDF_W1C & DSPI_SR_RESERVED_MASK_U32);
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     u32IsrStatus = REG_READ32(pDspiDev->u32DspiSRAddress) & DSPI_SR_TFUF_W1C;
#                     if(u32IsrStatus!=0u)
#                     {
#                         /*
#                         * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                         *     type and an integral type.
#                         * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                         */
#                         REG_WRITE32(pDspiDev->u32DspiSRAddress, DSPI_SR_TFUF_W1C & DSPI_SR_RESERVED_MASK_U32);
#                     }
#                     else
#                     {
#                          /* Do nothing */
#                     }
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#             #endif
#                 if ((boolean)FALSE == pDspiDev->bIsEndOfJob)
	.d2line		2970
.Llo115:
	lbz		r0,20(r31)		# AsyncMode=r0 pDspiDev=r31
.Llo116:
	se_cmpi		r0,0		# AsyncMode=r0
	bc		0,2,.L573	# ne
#                 {
#                     /* check for the channel switch */
#                     if ( 0u == pDspiDev->RemainingData )
	.d2line		2973
.Llo117:
	lhz		r0,38(r31)		# AsyncMode=r0 pDspiDev=r31
.Llo118:
	e_cmphl16i	r0,0		# AsyncMode=r0
	bc		0,2,.L577	# ne
#                     {
#                         /* reached the end of channel => move to the next channel */
#                         /* Increase Channel indexes */
#                         pDspiDev->RemainingChannels--;
	.d2line		2977
.Llo119:
	lbz		r3,36(r31)		# pDspiDev=r3 pDspiDev=r31
	diab.addi		r3,r3,255		# pDspiDev=r3 pDspiDev=r3
	stb		r3,36(r31)		# pDspiDev=r31 pDspiDev=r3
#                         /*
#                         * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                         *       the only allowed form of pointer arithmetic.
#                         */
#                         pDspiDev->pcCurrentChannelIndexPointer++;
	.d2line		2982
	lwz		r3,8(r31)		# pDspiDev=r3 pDspiDev=r31
	se_addi		r3,1		# pDspiDev=r3 pDspiDev=r3
	stw		r3,8(r31)		# pDspiDev=r31 pDspiDev=r3
#                  
#                         if(SPI_MASTER == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode )
	.d2line		2984
	lwz		r3,0(r31)		# pDspiDev=r3 pDspiDev=r31
	lbz		r0,2(r3)		# AsyncMode=r0 pDspiDev=r3
.Llo120:
	se_cmpi		r0,0		# AsyncMode=r0
	bc		0,2,.L577	# ne
#                         {
#                             /* prepare next channel transmission */
#                             Spi_Dspi_ChannelTransferFifoInit(pDspiDev, *(pDspiDev->pcCurrentChannelIndexPointer));
	.d2line		2987
.Llo121:
	lwz		r3,8(r31)		# pDspiDev=r3 pDspiDev=r31
	lbz		r4,0(r3)		# pDspiDev=r3
	mr		r3,r31		# pDspiDev=r3 pDspiDev=r31
	bl		Spi_Dspi_ChannelTransferFifoInit
.L577:
#                         }
#                         else
#                         {
#                             /* Do nothing */
#                         }
#                     }
#                     else
#                     {
#                         /* Do nothing */
#                     }
# 
#                     /* perform the next chunk transmission */
#                     Spi_Dspi_JobTransferFifoFill(pDspiDev);
	.d2line		3000
	mr		r3,r31		# pDspiDev=r3 pDspiDev=r31
	bl		Spi_Dspi_JobTransferFifoFill
	b		.L566
.L573:
#                 }
#                 else
#                 {
#                     if(SPI_JOB_OK != pDspiDev->pcCurrentJob->pJobState->Result)
	.d2line		3004
	lwz		r3,16(r31)		# pDspiDev=r3 pDspiDev=r31
	lwz		r3,20(r3)		# pDspiDev=r3 pDspiDev=r3
	lwz		r0,0(r3)		# AsyncMode=r0 pDspiDev=r3
.Llo122:
	se_cmpi		r0,0		# AsyncMode=r0
	bc		1,2,.L566	# eq
#                     {
#                         /* finish job transfer */
#                         Spi_JobTransferFinished(pDspiDev->pcCurrentJob);
	.d2line		3007
.Llo123:
	lwz		r3,16(r31)		# pDspiDev=r3 pDspiDev=r31
	bl		Spi_JobTransferFinished
	b		.L566
.L572:
#                     }
#                     else
#                     {
#                         /* Do nothing */
#                     }                
#                 }
#             }
#         }
#         else
#         {
#             /* Driver has been initialized and received an unconfigured interrupt, clear status flags */
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_WRITE32(pDspiDev->u32DspiSRAddress, DSPI_SR_INT_MASK_U32 & DSPI_SR_RESERVED_MASK_U32);
	.d2line		3024
	e_lis		r0,-9606		# AsyncMode=r0
.Llo124:
	lwz		r3,52(r31)		# u32IsrStatus=r3 pDspiDev=r31
.Llo129:
	stw		r0,0(r3)		# u32IsrStatus=r3 AsyncMode=r0
	b		.L566
.L567:
#         }
#     }
#     else
#     {
#         /* Driver has not been initialized, clear status flags and Reset the DSPI Regs*/
#             /* Need to make sure that SPI unit in Stop mode */    
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_SET32(DSPI_MCR_ADDR32(u8HWoffset), DSPI_MCR_HALT_U32);
	.d2line		3036
.Llo104:
	lis		r3,Spi_Dspi_au32BaseAddrs@ha
	e_add16i		r3,r3,Spi_Dspi_au32BaseAddrs@l
	rlwinm		r6,r4,2,22,29		# u8HWoffset=r4
	lwzx		r4,r3,r6		# u8HWoffset=r4
	lwz		r0,0(r4)		# u8HWoffset=r4
	.diab.bseti		r0,31
	stw		r0,0(r4)		# u8HWoffset=r4
#             /* Flush the TX and RX FIFOs */
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_SET32(DSPI_MCR_ADDR32(u8HWoffset), (DSPI_MCR_CLR_TXF_U32 | DSPI_MCR_CLR_RXF_U32));
	.d2line		3043
	lwzx		r4,r3,r6		# u8HWoffset=r4
	lwz		r0,0(r4)		# u8HWoffset=r4
	e_ori		r0,r0,3072
	stw		r0,0(r4)		# u8HWoffset=r4
#             /* Clear Status register */
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_WRITE32(DSPI_SR_ADDR32(u8HWoffset), DSPI_SR_INT_MASK_U32 & DSPI_SR_RESERVED_MASK_U32);
	.d2line		3050
	e_lis		r0,-9606
	mr		r5,r3
.Llo130:
	lwzux		r4,r5,r6		# u8HWoffset=r4 u32IsrStatus=r5
	stw		r0,44(r4)		# u8HWoffset=r4
#             /* Clear HALT bit for next transmission */
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_BIT_CLEAR32(DSPI_MCR_ADDR32(u8HWoffset), DSPI_MCR_HALT_U32);
	.d2line		3057
	lwzx		r3,r3,r6
	lwz		r0,0(r3)
	.diab.bclri		r0,31
	stw		r0,0(r3)
.L566:
#     }
# }
	.d2line		3059
	.d2epilogue_begin
.Llo102:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# AsyncMode=r0
	mtspr		lr,r0		# AsyncMode=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L804:
	.type		Spi_Dspi_IsrFifoRx,@function
	.size		Spi_Dspi_IsrFifoRx,.-Spi_Dspi_IsrFifoRx
# Number of nodes = 198

# Allocations for Spi_Dspi_IsrFifoRx
#	?a4		pDspiDev
#	?a5		u8HWoffset
#	?a6		$$119
#	?a7		$$118
#	?a8		$$117
#	?a9		AsyncMode
#	?a10		u32IsrStatus
# FUNC(void, SPI_CODE) Spi_Dspi_IrqPoll
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2632,22
#$$ld
.L814:

#$$bf	Spi_Dspi_IrqPoll,interprocedural,rasave,nostackparams
	.globl		Spi_Dspi_IrqPoll
	.d2_cfa_start __cie
Spi_Dspi_IrqPoll:
.Llo131:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# HWUnit=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HWUnit=r0 HWUnit=r3
	.d2prologue_end
#     (
#         VAR(Spi_HWUnitType, AUTOMATIC) HWUnit
#     )
# {
#     P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev;
# #if (SPI_DMA_USED == STD_ON)
#     P2CONST(Spi_HWUnitConfigType, AUTOMATIC, SPI_APPL_CONST) pcHWUnitConfig;
# #endif
# 
#     pDspiDev = DSPI_HWUNIT2DSPI(HWUnit);
	.d2line		2642
	lis		r3,Spi_Dspi_aDeviceState@ha		# pDspiDev=r3
.Llo132:
	e_add16i		r3,r3,Spi_Dspi_aDeviceState@l		# pDspiDev=r3 pDspiDev=r3
.Llo133:
	rlwinm		r0,r0,0,24,31		# HWUnit=r0 HWUnit=r0
	e_mulli		r0,r0,72		# HWUnit=r0 HWUnit=r0
	se_add		r0,r3		# HWUnit=r0 HWUnit=r0 pDspiDev=r3
.Llo134:
	mr		r3,r0		# pDspiDev=r3 pDspiDev=r0
# 
#     if ((SPI_POLLING_MODE == pDspiDev->AsyncMode) &&
	.d2line		2644
.Llo141:
	lwz		r0,60(r3)		# HWUnit=r0 pDspiDev=r3
.Llo135:
	se_cmpi		r0,0		# HWUnit=r0
	bc		0,2,.L551	# ne
.Llo136:
	lwz		r4,0(r3)		# pDspiDev=r3
	lwz		r0,4(r4)		# HWUnit=r0
.Llo137:
	se_cmpi		r0,0		# HWUnit=r0
	bc		0,2,.L551	# ne
#         (SPI_PHYUNIT_ASYNC_U32 == pDspiDev->pcHWUnitConfig->u32IsSync)
#        )
#     {
# #if (SPI_DMA_USED == STD_ON)
#         pcHWUnitConfig = pDspiDev->pcHWUnitConfig;
# #endif
#         /* Set pool request flag */
#         pDspiDev->u8IsPollRequest = 1u;
	.d2line		2652
.Llo138:
	diab.li		r0,1		# HWUnit=r0
.Llo139:
	stb		r0,70(r3)		# pDspiDev=r3 HWUnit=r0
# 
# #if (SPI_DMA_USED == STD_ON)
#         if (pcHWUnitConfig->u16UseDma)
#         {
#             /* Get status from TCD[7] register */
#             /* Emulate IRQ */
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             *
#             */
#             if (0u != Mcl_DmaIsTransferCompleted(pcHWUnitConfig->u8RxDmaChannel))
#             {
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 Conversions shall not be performed between
#                 * a pointer to a function and any type other than an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 Mcl_DmaTcdClearDone(pcHWUnitConfig->u8RxDmaChannel) ;
#                 Spi_Dspi_IsrDmaRx(pDspiDev);
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#         }
#         else
# #endif /* (SPI_DMA_USED == STD_ON) */
#         {
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             if (0u != (REG_READ32(pDspiDev->u32DspiSRAddress) & DSPI_SR_TCF_W1C))
	.d2line		2688
	lwz		r4,52(r3)		# pDspiDev=r3
	lwz		r0,0(r4)		# HWUnit=r0
	se_btsti		r0,0		# HWUnit=r0
	bc		1,2,.L551	# eq
#             {
#                 /* Emulate IRQ in PIO_FIFO mode */
#                 Spi_Dspi_IsrFifoRx(pDspiDev, pDspiDev->pcHWUnitConfig->u8Offset);
	.d2line		2691
.Llo140:
	lwz		r4,0(r3)		# pDspiDev=r3
	lbz		r4,0(r4)
	mr		r3,r3		# pDspiDev=r3 pDspiDev=r3
.Llo142:
	bl		Spi_Dspi_IsrFifoRx
.L551:
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#         }
#     }
#     else
#     {
#         /* Do nothing */
#     }
# }
	.d2line		2703
	.d2epilogue_begin
	lwz		r0,20(r1)		# HWUnit=r0
	mtspr		lr,r0		# HWUnit=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L815:
	.type		Spi_Dspi_IrqPoll,@function
	.size		Spi_Dspi_IrqPoll,.-Spi_Dspi_IrqPoll
# Number of nodes = 47

# Allocations for Spi_Dspi_IrqPoll
#	?a4		HWUnit
#	?a5		pDspiDev
# FUNC(void, SPI_CODE) Spi_Dspi_DeInit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2716,22
#$$ld
.L822:

#$$bf	Spi_Dspi_DeInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Spi_Dspi_DeInit
	.d2_cfa_start __cie
Spi_Dspi_DeInit:
.Llo143:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# HWUnit=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HWUnit=r0 HWUnit=r3
	.d2prologue_end
#     (
#         VAR(Spi_HWUnitType, AUTOMATIC) HWUnit
#     )
# {
#     P2CONST(Spi_HWUnitConfigType, AUTOMATIC, SPI_CONST) pcHWUnitConfig;
#     VAR(uint8, AUTOMATIC) u8HWoffset;
#     VAR(uint8, AUTOMATIC) u8NrOfCTAR;
#     VAR(uint32, AUTOMATIC) u32RxCtrVal;
#     VAR(uint32, AUTOMATIC) u32SRVal;
# 
#     /* Get physical device handler */
#     pcHWUnitConfig = &(*Spi_pcSpiConfigPtr->pcHWUnitConfig)[HWUnit];
	.d2line		2728
	lis		r3,Spi_pcSpiConfigPtr@ha		# u8HWoffset=r3
.Llo144:
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)		# u8HWoffset=r3 u8HWoffset=r3
	lwz		r4,24(r3)		# pcHWUnitConfig=r4 u8HWoffset=r3
.Llo145:
	rlwinm		r0,r0,3,21,28		# HWUnit=r0 HWUnit=r0
	se_add		r0,r4		# HWUnit=r0 HWUnit=r0 pcHWUnitConfig=r4
.Llo146:
	mr		r4,r0		# pcHWUnitConfig=r4 pcHWUnitConfig=r0
# 
#     /* Pointer to peripheral registers */
#     u8HWoffset = pcHWUnitConfig->u8Offset;
	.d2line		2731
.Llo151:
	lbz		r3,0(r4)		# u8HWoffset=r3 pcHWUnitConfig=r4
.Llo152:
	mr		r3,r3		# u8HWoffset=r3 u8HWoffset=r3
#     
#     /* Pointer to the number of CTAR registers available for the HW unit */
#     u8NrOfCTAR = pcHWUnitConfig->u8NrOfCTAR;
	.d2line		2734
	lbz		r4,1(r4)		# pcHWUnitConfig=r4 pcHWUnitConfig=r4
.Llo156:
	mr		r4,r4		# u8NrOfCTAR=r4 u8NrOfCTAR=r4
#     
#     /* Reset the DSPI Regs and Read until the RXCTR becomes zero*/    
#     /*
#     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#     *     type and an integral type.
#     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#     */
#     u32RxCtrVal = DSPI_SR_RXCTR_VAL_U32(REG_READ32(DSPI_SR_ADDR32(u8HWoffset)));
	.d2line		2742
	lis		r5,Spi_Dspi_au32BaseAddrs@ha
	e_add16i		r5,r5,Spi_Dspi_au32BaseAddrs@l
	rlwinm		r31,r3,2,22,29		# u8HWoffset=r3
	lwzx		r5,r5,r31
	lwz		r5,44(r5)
	rlwinm		r5,r5,28,28,31
.Llo158:
	mr		r5,r5		# u32RxCtrVal=r5 u32RxCtrVal=r5
.L558:
#     while(u32RxCtrVal)
	.d2line		2743
.Llo153:
	se_cmpi		r5,0		# u32RxCtrVal=r5
	bc		1,2,.L559	# eq
#     {
#         /*
#         * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#         *     type and an integral type.
#         * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_READ32(DSPI_POPR_ADDR32(u8HWoffset));
	.d2line		2750
	lis		r6,Spi_Dspi_au32BaseAddrs@ha
	e_add16i		r6,r6,Spi_Dspi_au32BaseAddrs@l
	rlwinm		r31,r3,2,22,29		# u8HWoffset=r3
	lwzx		r6,r6,r31
	lwz		r0,56(r6)		# HWUnit=r0
#         u32RxCtrVal--;
	.d2line		2751
	diab.addi		r0,r5,-1		# HWUnit=r0 u32RxCtrVal=r5
	diab.addi		r5,r5,-1		# u32RxCtrVal=r5 u32RxCtrVal=r5
	b		.L558
.L559:
#     }
#     /*
#     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#     *     type and an integral type.
#     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#     */
#     u32SRVal = REG_READ32(DSPI_SR_ADDR32(u8HWoffset));
	.d2line		2758
.Llo159:
	lis		r5,Spi_Dspi_au32BaseAddrs@ha		# u32RxCtrVal=r5
.Llo160:
	e_add16i		r5,r5,Spi_Dspi_au32BaseAddrs@l		# u32RxCtrVal=r5 u32RxCtrVal=r5
	rlwinm		r31,r3,2,22,29		# u8HWoffset=r3
	lwzx		r6,r5,r31		# u32RxCtrVal=r6 u32RxCtrVal=r5
	lwz		r0,44(r6)		# HWUnit=r0 u32RxCtrVal=r6
.Llo166:
	mr		r0,r0		# u32SRVal=r0 u32SRVal=r0
#     /*
#     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#     *     type and an integral type.
#     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#     */   
#     REG_WRITE32(DSPI_SR_ADDR32(u8HWoffset), (u32SRVal & DSPI_SR_RESERVED_MASK_U32));
	.d2line		2764
.Llo147:
	e_lis		r6,-257		# u32RxCtrVal=r6
.Llo167:
	and		r0,r0,r6		# HWUnit=r0 HWUnit=r0 u32SRVal=r6
	mr		r6,r5		# u32RxCtrVal=r6
.Llo168:
	lwzux		r7,r6,r31		# u32RxCtrVal=r6
	stw		r0,44(r7)		# HWUnit=r0
#     /*
#     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#     *     type and an integral type.
#     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#     */
#     REG_WRITE32(DSPI_MCR_ADDR32(u8HWoffset), (DSPI_MCR_RESET_U32 & DSPI_MCR_RESERVED_MASK_U32));
	.d2line		2770
	diab.li		r0,16385		# HWUnit=r0
	mr		r6,r5		# u32RxCtrVal=r6
	lwzux		r7,r6,r31		# u32RxCtrVal=r6
	stw		r0,0(r7)		# HWUnit=r0
#     
#     /*
#     * @violates @ref Spi_DSPI_c_REF_3 Conversions shall not be performed between
#     * a pointer to a function and any type other than an integral type.
#     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#     */
#     REG_WRITE32(DSPI_RSER_ADDR32(u8HWoffset), (DSPI_RSER_RESET_MASK_U32 & DSPI_RSER_RESERVED_MASK_U32));
	.d2line		2777
	diab.li		r0,0		# HWUnit=r0
	lwzx		r5,r5,r31		# u32RxCtrVal=r5 u32RxCtrVal=r5
	stw		r0,48(r5)		# u32RxCtrVal=r5 HWUnit=r0
.L560:
#     
#     while( (uint8)0 < u8NrOfCTAR  )
	.d2line		2779
.Llo148:
	rlwinm		r5,r4,0,24,31		# u32RxCtrVal=r5 u8NrOfCTAR=r4
.Llo161:
	se_cmpi		r5,0		# u32RxCtrVal=r5
	bc		0,1,.L561	# le
#     {
#         /*
#         * @violates @ref Spi_DSPI_c_REF_3 Conversions shall not be performed between
#         * a pointer to a function and any type other than an integral type.
#         * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_WRITE32(DSPI_CTAR_ADDR32(u8HWoffset, (uint32)u8NrOfCTAR), DSPI_CTAR_RESET_U32);
	.d2line		2786
.Llo162:
	e_lis		r0,30720		# HWUnit=r0
.Llo149:
	lis		r5,Spi_Dspi_au32BaseAddrs@ha		# u32RxCtrVal=r5
.Llo163:
	e_add16i		r5,r5,Spi_Dspi_au32BaseAddrs@l		# u32RxCtrVal=r5 u32RxCtrVal=r5
	rlwinm		r31,r3,2,22,29		# u8HWoffset=r3
	lwzx		r6,r5,r31		# u32RxCtrVal=r6 u32RxCtrVal=r5
	rlwinm		r5,r4,2,22,29		# u32RxCtrVal=r5 u8NrOfCTAR=r4
	se_add		r5,r6		# u32RxCtrVal=r5 u32RxCtrVal=r5 u32RxCtrVal=r6
	stw		r0,8(r5)		# u32RxCtrVal=r5 HWUnit=r0
#         u8NrOfCTAR--;
	.d2line		2787
	diab.addi		r5,r4,255		# u32RxCtrVal=r5 u8NrOfCTAR=r4
.Llo164:
	diab.addi		r4,r4,255		# u8NrOfCTAR=r4 u8NrOfCTAR=r4
	b		.L560
.L561:
#     }
# 
#     /*
#     * @violates @ref Spi_DSPI_c_REF_3 Conversions shall not be performed between
#     * a pointer to a function and any type other than an integral type.
#     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#     */
#     REG_WRITE32(DSPI_TCR_ADDR32(u8HWoffset), (DSPI_TCR_RESET_U32 & DSPI_TCR_RESERVED_MASK_U32));
	.d2line		2795
.Llo150:
	diab.li		r4,0		# u8NrOfCTAR=r4
.Llo157:
	lis		r5,Spi_Dspi_au32BaseAddrs@ha		# u32RxCtrVal=r5
.Llo165:
	e_add16i		r5,r5,Spi_Dspi_au32BaseAddrs@l		# u32RxCtrVal=r5 u32RxCtrVal=r5
.Llo154:
	rlwinm		r3,r3,2,22,29		# u8HWoffset=r3 u8HWoffset=r3
	lwzx		r3,r5,r3		# u8HWoffset=r3 u32RxCtrVal=r5
	stw		r4,8(r3)		# u8HWoffset=r3 u8NrOfCTAR=r4
# }
	.d2line		2796
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# HWUnit=r0
	mtspr		lr,r0		# HWUnit=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo155:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L823:
	.type		Spi_Dspi_DeInit,@function
	.size		Spi_Dspi_DeInit,.-Spi_Dspi_DeInit
# Number of nodes = 145

# Allocations for Spi_Dspi_DeInit
#	?a4		HWUnit
#	?a5		pcHWUnitConfig
#	?a6		u8HWoffset
#	?a7		u8NrOfCTAR
#	?a8		u32RxCtrVal
#	?a9		u32SRVal
# FUNC(void, SPI_CODE) Spi_Dspi_JobTransfer
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3234,22
#$$ld
.L838:

#$$bf	Spi_Dspi_JobTransfer,interprocedural,rasave,nostackparams
	.globl		Spi_Dspi_JobTransfer
	.d2_cfa_start __cie
Spi_Dspi_JobTransfer:
.Llo169:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pcJobConfig=r31 pcJobConfig=r3
	.d2prologue_end
#     (
#         P2CONST(Spi_JobConfigType, AUTOMATIC, SPI_APPL_CONST) pcJobConfig
#     )
# {
#     P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev =
	.d2line		3239
	lis		r30,Spi_Dspi_aDeviceState@ha
	e_add16i		r30,r30,Spi_Dspi_aDeviceState@l
	lbz		r0,24(r31)		# pcJobConfig=r31
	e_mulli		r0,r0,72
	se_add		r0,r30
.Llo173:
	mr		r30,r0		# pDspiDev=r30 pDspiDev=r0
#         &Spi_Dspi_aDeviceState[pcJobConfig->HWUnit];
#     P2CONST(Spi_ChannelType, AUTOMATIC, SPI_APPL_CONST) pcChannelList =
	.d2line		3241
	lwz		r29,4(r31)		# pcJobConfig=r31
.Llo175:
	mr		r29,r29		# pcChannelList=r29 pcChannelList=r29
#             (*pcJobConfig->pcChannelIndexList);
#     VAR(uint32, AUTOMATIC) u32SelectedCTAR;
#     #if (SPI_DMA_USED == STD_ON)
#         #if (SPI_SLAVE_SUPPORT == STD_ON)
#             VAR(uint8, AUTOMATIC) u8HWoffset = pDspiDev->pcHWUnitConfig->u8Offset;
#         #endif
#     #endif
#     #if (SPI_SLAVE_SUPPORT == STD_ON)
#         VAR(uint32, AUTOMATIC) u32SRval;
#         VAR(uint32, AUTOMATIC) u32Timeout=SPI_TIMEOUT_COUNTER;
#     #endif
#     
#     #if (SPI_SLAVE_SUPPORT == STD_ON)
#     if(SPI_SLAVE == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode)
#     {
#         /* 
#         * Maybe exist a frame data is not shift to RX FIFO when Master send extra frames with low baudrate, 
#         * Slave need discard extra frame before preparing for a new job 
#         */
#         /*
#         * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#         *     type and an integral type.
#         * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#         */
#         u32SRval = REG_READ32(pDspiDev->u32DspiSRAddress) & DSPI_SR_TFUF_W1C;
#         if(u32SRval!=0u)
#         {
#             /* 
#             * Slave will wait until TFUF flag is cleared before prepare next Job of new sequence,
#             * It will clear TFUF flag by Spi_Dspi_IsrFifoRx() function 
#             */
#             do
#             {
#                 u32Timeout--;
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 u32SRval = REG_READ32(pDspiDev->u32DspiSRAddress) & DSPI_SR_TFUF_W1C;
#             }while((u32SRval!=0u) && (u32Timeout>0u));
#             if(u32Timeout == 0u)
#             {
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_WRITE32(pDspiDev->u32DspiSRAddress, DSPI_SR_TFUF_W1C & DSPI_SR_RESERVED_MASK_U32);
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#         }
#         else
#         {
#             /* Do nothing */
#         }
#     } 
#     else
#     {
#          /* Do nothing */
#     }
#     #endif  /* (SPI_SLAVE_SUPPORT == STD_ON) */
#     
#     /* start job notification to assert the non-cs pin,
#      when non-cs pin is used as chipselect*/
#     if (NULL_PTR != pcJobConfig->pfStartNotification)
	.d2line		3310
	lwz		r0,12(r31)		# pcJobConfig=r31
.Llo174:
	se_cmpi		r0,0
	bc		1,2,.L592	# eq
#     {
#         pcJobConfig->pfStartNotification();
	.d2line		3312
.Llo170:
	lwz		r0,12(r31)		# pcJobConfig=r31
.Llo171:
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L592:
#     }
#     else
#     {
#         /* Do nothing */
#     }
#     
# #if (SPI_DUAL_CLOCK_MODE == STD_ON)
#     pDspiDev->u32ExternalDeviceCTAR = pcJobConfig->ExternalDeviceAttrs.u32CTAR[Spi_Dspi_ClockMode];
# #else
#     pDspiDev->u32ExternalDeviceCTAR = pcJobConfig->ExternalDeviceAttrs.u32CTAR;
	.d2line		3322
	lwz		r0,36(r31)		# pcJobConfig=r31
	stw		r0,4(r30)		# pDspiDev=r30
# #endif
# 
#     /* Generate CTAR selection */
#     u32SelectedCTAR = DSPI_GENERATE_CTAR_U32((uint32)pDspiDev->pcHWUnitConfig->u8NrOfCTAR);
	.d2line		3326
	lwz		r3,0(r30)		# pDspiDev=r3 pDspiDev=r30
	lbz		r0,1(r3)		# pDspiDev=r3
	se_slwi		r0,28
.Llo176:
	e_add2is		r0,61440
	mr		r0,r0		# u32SelectedCTAR=r0 u32SelectedCTAR=r0
# 
#     /* setup job specific ctar and cmd */
#     pDspiDev->u32CurrentCmd = (pcJobConfig->ExternalDeviceAttrs.u32CMD | u32SelectedCTAR);
	.d2line		3329
.Llo177:
	lwz		r3,40(r31)		# pDspiDev=r3 pcJobConfig=r31
.Llo178:
	or		r0,r0,r3		# u32SelectedCTAR=r3
	stw		r0,32(r30)		# pDspiDev=r30
# 
#     /* initialize starting channel index */
#     pDspiDev->pcCurrentChannelIndexPointer = pcChannelList;
	.d2line		3332
	stw		r29,8(r30)		# pDspiDev=r30 pcChannelList=r29
#     pDspiDev->RemainingChannels = pcJobConfig->NumChannels - (Spi_ChannelType) 1u;
	.d2line		3333
	lbz		r3,0(r31)		# u32SelectedCTAR=r3 pcJobConfig=r31
	diab.addi		r3,r3,255		# u32SelectedCTAR=r3 u32SelectedCTAR=r3
	stb		r3,36(r30)		# pDspiDev=r30 u32SelectedCTAR=r3
# 
#     /* memorize the current job */
#     pDspiDev->pcCurrentJob = pcJobConfig;
	.d2line		3336
	stw		r31,16(r30)		# pDspiDev=r30 pcJobConfig=r31
# 
# #if (SPI_DMA_USED == STD_ON)
#     #if (SPI_SLAVE_SUPPORT == STD_ON)
#         if(SPI_SLAVE == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode)
#         {
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             u32SRval = REG_READ32(pDspiDev->u32DspiSRAddress) & DSPI_SR_RFDF_W1C;
#             if(0u != u32SRval)
#             {
#                 /* Need to change the state of SPI unit to Stop mode */
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_BIT_SET32(DSPI_MCR_ADDR32(u8HWoffset), DSPI_MCR_HALT_U32); 
#                 /* Discard all frames in FIFO */
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_BIT_SET32(DSPI_MCR_ADDR32(u8HWoffset), (DSPI_MCR_CLR_RXF_U32 | DSPI_MCR_CLR_TXF_U32)); 
#                 /* Clear Status register */
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_WRITE32(DSPI_SR_ADDR32(u8HWoffset), DSPI_SR_INT_MASK_U32 & DSPI_SR_RESERVED_MASK_U32);
#                 /* Clear HALT bit for continuing transmission */
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                 *     type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                 REG_BIT_CLEAR32(DSPI_MCR_ADDR32(u8HWoffset), DSPI_MCR_HALT_U32);
#             }
#         }
#         else
#         {
#             /* Do nothing */
#         }   
#     #endif
#     if (0u != pDspiDev->pcHWUnitConfig->u16UseDma)
#     {
#         #if (SPI_SLAVE_SUPPORT == STD_ON)
#         if(SPI_SLAVE == (Spi_ModeType)pDspiDev->pcHWUnitConfig->u8SpiPhyUnitMode)
#         {
#             /* Enable DMA request of RFDF flag */
#             /*
#              * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#              *     type and an integral type.
#              * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#              */
#             REG_BIT_SET32(DSPI_RSER_ADDR32(pDspiDev->pcHWUnitConfig->u8Offset), DSPI_RSER_RFDF_DIRS_MASK_U32);
#         }
#         else
#         {
#             /* Do nothing */
#         }
#         #endif 
#         /* initialize the transfer parameters for the first channel */
#         Spi_Dspi_ChannelTransferDmaInit(pDspiDev, *pcChannelList);
#     }
#     else
# #endif /* (SPI_DMA_USED == STD_ON) */
#     {
#         pDspiDev->bIsEndOfJob = (boolean)FALSE;
	.d2line		3409
	diab.li		r0,0
	stb		r0,20(r30)		# pDspiDev=r30
# 
#         /* initialize the transfer parameters for the first channel */
#         Spi_Dspi_ChannelTransferFifoInit(pDspiDev, *pcChannelList);
	.d2line		3412
	lbz		r4,0(r29)		# pcChannelList=r29
	mr		r3,r30		# pDspiDev=r3 pDspiDev=r30
.Llo179:
	bl		Spi_Dspi_ChannelTransferFifoInit
#         Spi_Dspi_JobTransferFifoFill(pDspiDev);
	.d2line		3413
	mr		r3,r30		# pDspiDev=r3 pDspiDev=r30
	bl		Spi_Dspi_JobTransferFifoFill
#     }
# }
	.d2line		3415
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo172:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L839:
	.type		Spi_Dspi_JobTransfer,@function
	.size		Spi_Dspi_JobTransfer,.-Spi_Dspi_JobTransfer
# Number of nodes = 101

# Allocations for Spi_Dspi_JobTransfer
#	?a4		pcJobConfig
#	?a5		pDspiDev
#	?a6		pcChannelList
#	?a7		u32SelectedCTAR
# LOCAL_INLINE FUNC(Std_ReturnType, SPI_CODE) Spi_Dspi_SyncTransmitChannel
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         3789,45
#$$ld
.L852:

#$$bf	Spi_Dspi_SyncTransmitChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r24,r25,r26,r27,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
Spi_Dspi_SyncTransmitChannel:
.Llo180:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	24,31,1,1
	stw		r0,52(r1)		# Channel=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pDspiDev=r3 pDspiDev=r3
	mr		r0,r4		# Channel=r0 Channel=r4
	.d2prologue_end
#     (
#         P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev,
#         VAR(Spi_ChannelType, AUTOMATIC) Channel
#     )
# {
#     VAR(Spi_NumberOfDataType, AUTOMATIC) LengthTX = pDspiDev->RemainingData;
#     VAR(Spi_NumberOfDataType, AUTOMATIC) LengthRX;
#      P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA) pBufferTX = pDspiDev->pCurrentTxBuffer;
#     P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA) pBufferRX = pDspiDev->pCurrentRxBuffer;
#      VAR(uint32, AUTOMATIC) u32TempXferData = pDspiDev->u32CurrentCmd;
# #if (SPI_FORCE_DATA_TYPE == STD_ON)
#     P2CONST(Spi_Ipw_ChannelAttributesConfigType, AUTOMATIC, SPI_APPL_CONST) pcDspiChannelAttributesConfig =
#         &(*Spi_pcSpiConfigPtr->pcAttributesConfig->pcChannelAttributesConfig)[Channel];
#     P2VAR(uint16, AUTOMATIC, SPI_APPL_DATA) pu16BufferFullTX;
#     P2VAR(uint16, AUTOMATIC, SPI_APPL_DATA) pu16BufferFullRX;
# #endif
#     VAR(uint32, AUTOMATIC) u32StatusReset = 0u;
	.d2line		3806
.Llo182:
	diab.li		r29,0		# u32StatusReset=r29
#     VAR(uint32, AUTOMATIC) u32nEmptyPlaces = SPI_FIFO_SIZE;
	.d2line		3807
.Llo183:
	diab.li		r28,4		# u32nEmptyPlaces=r28
#     VAR(uint32, AUTOMATIC) u32Timeout = SPI_TIMEOUT_COUNTER;
	.d2line		3808
.Llo217:
	diab.li		r27,434782		# u32Timeout=r27
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		3809
.Llo218:
	diab.li		r26,0
	.d2line		3795
.Llo219:
	lhz		r4,38(r3)		# pDspiDev=r3
.Llo208:
	mr		r4,r4		# LengthTX=r4 LengthTX=r4
	.d2line		3797
.Llo209:
	lwz		r6,24(r3)		# pDspiDev=r3
.Llo211:
	mr		r6,r6		# pBufferTX=r6 pBufferTX=r6
	.d2line		3798
.Llo215:
	lwz		r7,28(r3)		# pDspiDev=r3
.Llo212:
	mr		r7,r7		# pBufferRX=r7 pBufferRX=r7
	.d2line		3799
.Llo216:
	lwz		r31,32(r3)		# pDspiDev=r3
.Llo213:
	mr		r31,r31		# u32TempXferData=r31 u32TempXferData=r31
	.d2line		3801
	lis		r5,Spi_pcSpiConfigPtr@ha
	lwz		r30,Spi_pcSpiConfigPtr@l(r5)
	lwz		r30,20(r30)
	lwz		r25,0(r30)		# Channel=r25
	rlwinm		r30,r0,3,21,28		# Channel=r0
	se_add		r30,r25		# Channel=r25
.Llo214:
	mr		r30,r30		# pcDspiChannelAttributesConfig=r30 pcDspiChannelAttributesConfig=r30
#     P2CONST(Spi_ChannelConfigType, AUTOMATIC, SPI_APPL_CONST) pcChannelConfig = 
	.d2line		3810
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)
	lwz		r25,8(r5)		# Channel=r25
	rlwinm		r0,r0,4,20,27		# Channel=r0 Channel=r0
	se_add		r0,r25		# Channel=r0 Channel=r0 Channel=r25
.Llo184:
	mr		r25,r0		# pcChannelConfig=r25 pcChannelConfig=r0
#         &(*Spi_pcSpiConfigPtr->pcChannelConfig)[Channel];
#     VAR(uint32, AUTOMATIC) u32DspiPUSHRAddress = pDspiDev->u32DspiPUSHRAddress;
	.d2line		3812
	lwz		r24,44(r3)		# pDspiDev=r3
.Llo221:
	mr		r24,r24		# u32DspiPUSHRAddress=r24 u32DspiPUSHRAddress=r24
#     VAR(uint32, AUTOMATIC) u32DspiPOPRAddress = pDspiDev->u32DspiPOPRAddress;
	.d2line		3813
	lwz		r9,48(r3)		# pDspiDev=r3
.Llo222:
	mr		r9,r9		# u32DspiPOPRAddress=r9 u32DspiPOPRAddress=r9
#     
#     LengthRX = LengthTX;
	.d2line		3815
	mr		r5,r4		# LengthRX=r5 LengthRX=r4
.L595:
#     /* while there is still something to read or to write */
#     /* a kind of: while ((LengthTX > 0) || (LengthRX > 0)) */
#     while (0u < (LengthTX | LengthRX))
	.d2line		3818
.Llo210:
	rlwinm		r0,r4,0,16,31		# Channel=r0 LengthTX=r4
.Llo185:
	rlwinm		r8,r5,0,16,31		# LengthRX=r5
	or.		r0,r0,r8		# Channel=r0 Channel=r0
.Llo186:
	bc		1,2,.L615	# eq
#     {
#         /* --------- Transmit ---------- */
#         /* there is something to write and Transmit FIFO not full */
#         if ((LengthTX > 0u) && (u32nEmptyPlaces > 0u))
	.d2line		3822
	e_cmphl16i	r4,0		# LengthTX=r4
	bc		1,2,.L597	# eq
	se_cmpi		r28,0		# u32nEmptyPlaces=r28
	bc		1,2,.L597	# eq
#         {
#             LengthTX--;
	.d2line		3824
	diab.li		r0,65535		# Channel=r0
.Llo187:
	se_add		r0,r4		# Channel=r0 Channel=r0 LengthTX=r4
.Llo188:
	mr		r4,r0		# LengthTX=r4 LengthTX=r0
#             u32nEmptyPlaces--;
	.d2line		3825
	diab.addi		r0,r28,-1		# Channel=r0 u32nEmptyPlaces=r28
	diab.addi		r28,r28,-1		# u32nEmptyPlaces=r28 u32nEmptyPlaces=r28
#             /* reset the timeout */
#             u32Timeout = SPI_TIMEOUT_COUNTER;
	.d2line		3827
	diab.li		r27,434782		# u32Timeout=r27
#             /* prepare the data to be transmitted */
#             if (NULL_PTR == pBufferTX)
	.d2line		3829
	se_cmpi		r6,0		# pBufferTX=r6
	bc		0,2,.L598	# ne
#             {
#                 /* Get default data if TX buffer is NULL_PTR */
#                 u32TempXferData =
	.d2line		3832
	rlwinm		r31,r31,0,0,15		# u32TempXferData=r31 u32TempXferData=r31
	lbz		r0,4(r25)		# Channel=r0 pcChannelConfig=r25
.Llo189:
	or		r0,r0,r31		# Channel=r0 Channel=r0 u32TempXferData=r31
.Llo190:
	mr		r31,r0		# u32TempXferData=r31 u32TempXferData=r0
	b		.L599
.L598:
#                     (u32TempXferData & DSPI_TX_CMD_MASK_U32) |
#                     pcChannelConfig->DefaultTransmitValue;
#             }
#             else
#             {
#                 /* Read transmit data */
#                 #if (SPI_FORCE_DATA_TYPE == STD_ON)
#                 if (SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		3840
	lbz		r0,4(r30)		# Channel=r0 pcDspiChannelAttributesConfig=r30
.Llo191:
	se_cmpi		r0,1		# Channel=r0
	bc		0,2,.L600	# ne
#                 {
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_4 A cast should not be performed
#                     * between a pointer to object type and a different pointer to object
#                     * type.
#                     */
#                     pu16BufferFullTX = (uint16 *) pBufferTX;
	.d2line		3847
.Llo192:
	mr		r0,r6		# pu16BufferFullTX=r0 pu16BufferFullTX=r6
#                     u32TempXferData =
	.d2line		3848
	rlwinm		r31,r31,0,0,15		# u32TempXferData=r31 u32TempXferData=r31
	lhz		r0,0(r6)		# pBufferTX=r0 pBufferTX=r6
	or		r0,r0,r31		# pBufferTX=r0 pBufferTX=r0 u32TempXferData=r31
	mr		r31,r0		# u32TempXferData=r31 u32TempXferData=r0
	b		.L601
.L600:
#                         (u32TempXferData & DSPI_TX_CMD_MASK_U32) | (*pu16BufferFullTX);
#                 }
#                 else
#                 {
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed
#                     *  between a pointer type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     u32TempXferData =
	.d2line		3858
	rlwinm		r31,r31,0,0,15		# u32TempXferData=r31 u32TempXferData=r31
	lbz		r0,0(r6)		# Channel=r0 pBufferTX=r6
.Llo193:
	or		r0,r0,r31		# Channel=r0 Channel=r0 u32TempXferData=r31
.Llo194:
	mr		r31,r0		# u32TempXferData=r31 u32TempXferData=r0
.L601:
#                         (u32TempXferData & DSPI_TX_CMD_MASK_U32) | (*pBufferTX);
#                 }
#                 #else
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed
#                 * between a pointer type and an integral type.
#                 * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                 */
#                  u32TempXferData = (u32TempXferData & DSPI_TX_CMD_MASK_U32) | (*pBufferTX);
#                 #endif
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                 *       the only allowed form of pointer arithmetic.
#                 */
#                 pBufferTX++;
	.d2line		3873
	se_addi		r6,1		# pBufferTX=r6 pBufferTX=r6
#                 #if (SPI_FORCE_DATA_TYPE == STD_ON)
#                 if (SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		3875
	lbz		r0,4(r30)		# pBufferTX=r0 pcDspiChannelAttributesConfig=r30
	se_cmpi		r0,1		# pBufferTX=r0
	bc		0,2,.L599	# ne
#                 {
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                     *       the only allowed form of pointer arithmetic.
#                     */
#                     pBufferTX++;
	.d2line		3881
	se_addi		r6,1		# pBufferTX=r6 pBufferTX=r6
.L599:
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#                 #endif
#             }
#             /* For the last frame, clear the continous CS assertion */
#             /* a kind of: ((0u == LengthTX) && (0u == RemainingChannels))*/
#             /* if (0u == (LengthTX | RemainingChannels)) */
#             if (0u == (LengthTX | pDspiDev->RemainingChannels))
	.d2line		3892
	rlwinm		r0,r4,0,16,31		# Channel=r0 LengthTX=r4
.Llo195:
	lbz		r8,36(r3)		# pDspiDev=r3
	or.		r0,r0,r8		# Channel=r0 Channel=r0
.Llo196:
	bc		0,2,.L605	# ne
#             {
#                 /* clear the continuous CS assertion */
#                 u32TempXferData = u32TempXferData & ~DSPI_CONT_MASK_U32;
	.d2line		3895
	rlwinm		r31,r31,0,1,31		# u32TempXferData=r31 u32TempXferData=r31
	mr		r0,r31		# u32TempXferData=r0 u32TempXferData=r31
.L605:
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#             /* Transmit the data */
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_WRITE32(u32DspiPUSHRAddress, u32TempXferData);
	.d2line		3907
	stw		r31,0(r24)		# u32DspiPUSHRAddress=r24 u32TempXferData=r31
#             
#             /* Transmit FIFO Fill Flag must be reset */
#             u32StatusReset |= DSPI_SR_TFFF_W1C;
	.d2line		3910
	.diab.bseti		r29,6		# u32StatusReset=r29
	mr		r0,r29		# u32StatusReset=r0 u32StatusReset=r29
.L597:
#         }
# 
#         /* --------- Receive ---------- */
#         /* there is still something to read and Receive FIFO has data */
#         if (0u < LengthRX)
	.d2line		3915
	e_cmphl16i	r5,0		# LengthRX=r5
	bc		1,2,.L613	# eq
#         {
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#             *     type and an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             if (0u != ((REG_READ32(pDspiDev->u32DspiSRAddress)) &DSPI_SR_RFDF_W1C))
	.d2line		3922
	lwz		r8,52(r3)		# pDspiDev=r3
	lwz		r0,0(r8)		# Channel=r0
.Llo197:
	se_btsti		r0,14		# Channel=r0
	bc		1,2,.L613	# eq
#             {
#                 LengthRX--;
	.d2line		3924
.Llo198:
	diab.li		r0,65535		# Channel=r0
.Llo199:
	se_add		r0,r5		# Channel=r0 Channel=r0 LengthRX=r5
.Llo200:
	mr		r5,r0		# LengthRX=r5 LengthRX=r0
#                 u32nEmptyPlaces++;
	.d2line		3925
	diab.addi		r0,r28,1		# Channel=r0 u32nEmptyPlaces=r28
	se_addi		r28,1		# u32nEmptyPlaces=r28 u32nEmptyPlaces=r28
#                 /* reset the timeout */
#                 u32Timeout = SPI_TIMEOUT_COUNTER;
	.d2line		3927
	diab.li		r27,434782		# u32Timeout=r27
#                 /* Read Data from RX FIFO */
#                 if (NULL_PTR == pBufferRX)
	.d2line		3929
	se_cmpi		r7,0		# pBufferRX=r7
	bc		0,2,.L608	# ne
#                 {
#                     /* discard data if RX buffer is NULL_PTR */
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                     Spi_Dspi_u32ReadDiscard = REG_READ32(u32DspiPOPRAddress);
	.d2line		3937
	lwz		r0,0(r9)		# Channel=r0 u32DspiPOPRAddress=r9
.Llo201:
	lis		r8,Spi_Dspi_u32ReadDiscard@ha
	e_add16i		r8,r8,Spi_Dspi_u32ReadDiscard@l
	stw		r0,0(r8)		# Channel=r0
	b		.L609
.L608:
#                 }
#                 else
#                 {
#                     #if (SPI_FORCE_DATA_TYPE == STD_ON)
#                     if (SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		3942
.Llo202:
	lbz		r0,4(r30)		# Channel=r0 pcDspiChannelAttributesConfig=r30
.Llo203:
	se_cmpi		r0,1		# Channel=r0
	bc		0,2,.L610	# ne
#                     {
#                         /*
#                         * @violates @ref Spi_DSPI_c_REF_4 A cast should not be
#                         * performed between a pointer
#                         *       to object type and a different pointer to object type.
#                         */
#                         pu16BufferFullRX = (uint16 *) pBufferRX;
	.d2line		3949
.Llo204:
	mr		r0,r7		# pu16BufferFullRX=r0 pu16BufferFullRX=r7
#                         /*
#                         * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                         *     type and an integral type.
#                         * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                         */
#                         *pu16BufferFullRX = (uint16)REG_READ32(u32DspiPOPRAddress);
	.d2line		3955
	lwz		r0,0(r9)		# pBufferRX=r0 u32DspiPOPRAddress=r9
	sth		r0,0(r7)		# pBufferRX=r7 pBufferRX=r0
#                         /*
#                         * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                         *       the only allowed form of pointer arithmetic.
#                         */
#                         pBufferRX += 2u;
	.d2line		3960
	diab.addi		r0,r7,2		# pBufferRX=r0 pBufferRX=r7
	se_addi		r7,2		# pBufferRX=r7 pBufferRX=r7
	b		.L609
.L610:
#                     }
#                     else
#                     {
#                         /*
#                         * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                         *     type and an integral type.
#                         * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                         */
#                           *pBufferRX = (Spi_DataType)REG_READ32(u32DspiPOPRAddress);
	.d2line		3969
	lwz		r0,0(r9)		# Channel=r0 u32DspiPOPRAddress=r9
.Llo205:
	stb		r0,0(r7)		# pBufferRX=r7 Channel=r0
#                          /*
#                         * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                         *       the only allowed form of pointer arithmetic.
#                         */
#                         pBufferRX++;
	.d2line		3974
	se_addi		r7,1		# pBufferRX=r7 pBufferRX=r7
.L609:
#                     }
#                     #else
#                     /*
#                     * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#                     *     type and an integral type.
#                     * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#                     */
#                       *pBufferRX = (Spi_DataType)REG_READ32(u32DspiPOPRAddress);
#                      /*
#                     * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                     *       the only allowed form of pointer arithmetic.
#                     */
#                     pBufferRX++;
#                     #endif
#                 }
#                 /* Receive FIFO Drain Flag must be reset */
#                 u32StatusReset |= DSPI_SR_RFDF_W1C;
	.d2line		3991
.Llo206:
	.diab.bseti		r29,14		# u32StatusReset=r29
	mr		r0,r29		# u32StatusReset=r0 u32StatusReset=r29
.L613:
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#         }
#         else
#         {
#             /* Do nothing */
#         }
#         /*
#         * @violates @ref Spi_DSPI_c_REF_3 A cast should not be performed between a pointer
#         *     type and an integral type.
#         * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_WRITE32(pDspiDev->u32DspiSRAddress, u32StatusReset);
	.d2line		4007
	lwz		r8,52(r3)		# pDspiDev=r3
	stw		r29,0(r8)		# u32StatusReset=r29
# 
#         u32Timeout--;
	.d2line		4009
	diab.addi		r0,r27,-1		# Channel=r0 u32Timeout=r27
	diab.addi		r27,r27,-1		# u32Timeout=r27 u32Timeout=r27
#         /* end the loop if timeout expired */
#         if (0u == u32Timeout)
	.d2line		4011
	se_cmpi		r27,0		# u32Timeout=r27
	bc		0,2,.L595	# ne
#         {
#             /* force the end of the outer loop too */
#             pDspiDev->RemainingChannels = 0U;
	.d2line		4014
	diab.li		r0,0		# Channel=r0
.Llo207:
	stb		r0,36(r3)		# pDspiDev=r3 Channel=r0
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		4015
	diab.li		r26,1		# Status=r26
.L615:
#             break;
#         }
#         else
#         {
#             /* Do nothing */
#         }
#     } /* while ((LengthTX > 0) || (LengthRX > 0)) */
#     return Status;
	.d2line		4023
.Llo181:
	rlwinm		r3,r26,0,24,31		# pDspiDev=r3 Status=r26
# }
	.d2line		4024
	.d2epilogue_begin
	lmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	2,10
.Llo220:
	lwz		r0,52(r1)		# Channel=r0
	mtspr		lr,r0		# Channel=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L853:
	.type		Spi_Dspi_SyncTransmitChannel,@function
	.size		Spi_Dspi_SyncTransmitChannel,.-Spi_Dspi_SyncTransmitChannel
# Number of nodes = 255

# Allocations for Spi_Dspi_SyncTransmitChannel
#	?a4		pDspiDev
#	?a5		Channel
#	?a6		LengthTX
#	?a7		LengthRX
#	?a8		pBufferTX
#	?a9		pBufferRX
#	?a10		u32TempXferData
#	?a11		pcDspiChannelAttributesConfig
#	?a12		pu16BufferFullTX
#	?a13		pu16BufferFullRX
#	?a14		u32StatusReset
#	?a15		u32nEmptyPlaces
#	?a16		u32Timeout
#	?a17		Status
#	?a18		pcChannelConfig
#	?a19		u32DspiPUSHRAddress
#	?a20		u32DspiPOPRAddress
# FUNC(Std_ReturnType, SPI_CODE) Spi_Dspi_SyncTransmit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         4045,32
#$$ld
.L890:

#$$bf	Spi_Dspi_SyncTransmit,interprocedural,rasave,nostackparams
	.globl		Spi_Dspi_SyncTransmit
	.d2_cfa_start __cie
Spi_Dspi_SyncTransmit:
.Llo223:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	24,31,1,1
	stw		r0,52(r1)		# Sequence=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Sequence=r0 Sequence=r3
	.d2prologue_end
#     (
#         VAR(Spi_SequenceType, AUTOMATIC) Sequence
#     )
# {
#     P2CONST(Spi_SequenceConfigType, AUTOMATIC, SPI_APPL_CONST) pcSequenceConfig;
#     P2CONST(Spi_ChannelConfigType, AUTOMATIC, SPI_APPL_CONST) pcChannelConfig;
#     P2CONST(Spi_JobConfigType, AUTOMATIC, SPI_APPL_CONST) pcJobConfig;
#     P2VAR(Spi_Dspi_DeviceStateType, AUTOMATIC, SPI_APPL_DATA) pDspiDev;
#     P2CONST(Spi_Ipw_ChannelAttributesConfigType, AUTOMATIC, SPI_APPL_CONST)
#         pcDspiChannelAttributesConfig;
#     VAR(Spi_JobType, AUTOMATIC) JobsCount;
#     VAR(Spi_JobType, AUTOMATIC) Job;
#     P2CONST(Spi_JobType, AUTOMATIC, SPI_APPL_CONST) pcJobIndexList;
#     P2CONST(Spi_ChannelType, AUTOMATIC, SPI_APPL_CONST) pcChannelIndexList;
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		4060
	diab.li		r28,0		# Status=r28
#     VAR(Std_ReturnType, AUTOMATIC) TransmitChannelStatus = (Std_ReturnType)E_NOT_OK;
	.d2line		4061
.Llo286:
	diab.li		r27,1		# TransmitChannelStatus=r27
#     P2VAR(Spi_JobStateType, AUTOMATIC, SPI_APPL_DATA) pJobState;
#     P2VAR(Spi_ChannelStateType, AUTOMATIC, SPI_APPL_DATA) pChannelState;
#     VAR(Spi_ChannelType, AUTOMATIC) Channel;
#     VAR(Spi_NumberOfDataType, AUTOMATIC) LengthTX;
#     VAR(uint32, AUTOMATIC) u32Ctar;
#     VAR(uint32, AUTOMATIC) u32SelectedCTAR;
# 
#     /* Get sequence configuration */
#     pcSequenceConfig = &(*Spi_pcSpiConfigPtr->pcSequenceConfig)[Sequence];
	.d2line		4070
.Llo288:
	lis		r3,Spi_pcSpiConfigPtr@ha		# pcSequenceConfig=r3
.Llo224:
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)		# pcSequenceConfig=r3 pcSequenceConfig=r3
	lwz		r3,16(r3)		# pcSequenceConfig=r3 pcSequenceConfig=r3
.Llo225:
	rlwinm		r0,r0,4,20,27		# Sequence=r0 Sequence=r0
	se_add		r0,r3		# Sequence=r0 Sequence=r0 pcSequenceConfig=r3
.Llo226:
	mr		r3,r0		# pcSequenceConfig=r3 pcSequenceConfig=r0
#     /* Get the number of jobs in the sequence */
#     JobsCount = pcSequenceConfig->NumJobs;
	.d2line		4072
.Llo227:
	lhz		r30,0(r3)		# pcSequenceConfig=r3
.Llo228:
	mr		r30,r30		# JobsCount=r30 JobsCount=r30
# 
#     pcJobIndexList = (*pcSequenceConfig->pcJobIndexList);
	.d2line		4074
	lwz		r29,4(r3)		# pcSequenceConfig=r3
.Llo284:
	mr		r29,r29		# pcJobIndexList=r29 pcJobIndexList=r29
.L630:
#     while (0u < JobsCount)
	.d2line		4075
.Llo229:
	e_cmphl16i	r30,0		# JobsCount=r30
	bc		1,2,.L631	# eq
#     {
#         /* Get the job id */
#         Job = *pcJobIndexList;
	.d2line		4078
	lhz		r0,0(r29)		# Sequence=r0 pcJobIndexList=r29
.Llo255:
	mr		r0,r0		# Job=r0 Job=r0
#         /* Set the job status as pending */
#         pJobState = &Spi_aSpiJobState[Job];
	.d2line		4080
	rlwinm		r0,r0,0,16,31		# Job=r0 Job=r0
	lis		r26,Spi_aSpiJobState@ha		# pJobState=r26
.Llo291:
	e_add16i		r26,r26,Spi_aSpiJobState@l		# pJobState=r26 pJobState=r26
	rlwinm		r4,r0,4,0,27		# pcJobConfig=r4 Job=r0
.Llo240:
	rlwinm		r3,r0,2,0,29		# pcSequenceConfig=r3 Job=r0
.Llo230:
	subf		r3,r3,r4		# pcSequenceConfig=r3 pcSequenceConfig=r3 pcJobConfig=r4
	se_add		r3,r26		# pcSequenceConfig=r3 pcSequenceConfig=r3 pJobState=r26
.Llo231:
	mr		r26,r3		# pJobState=r26 pJobState=r3
#         pJobState->Result = SPI_JOB_PENDING;
	.d2line		4081
	diab.li		r3,1		# pcSequenceConfig=r3
.Llo232:
	stw		r3,0(r26)		# pJobState=r26 pcSequenceConfig=r3
#         pcJobConfig = &(*Spi_pcSpiConfigPtr->pcJobConfig)[Job];
	.d2line		4082
	lis		r3,Spi_pcSpiConfigPtr@ha		# pcSequenceConfig=r3
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)		# pcSequenceConfig=r3 pcSequenceConfig=r3
	lwz		r31,12(r3)		# pcJobConfig=r31 pcSequenceConfig=r3
	se_slwi		r0,6		# Job=r0 Job=r0
	subf		r4,r4,r0		# pcJobConfig=r4 pcJobConfig=r4 Job=r0
	se_add		r4,r31		# pcJobConfig=r4 pcJobConfig=r4 pcJobConfig=r31
	mr		r31,r4		# pcJobConfig=r31 pcJobConfig=r4
#         
#         /* start job notification to assert the non-cs pin,
#             when non-cs pin is used as chipselect*/
#         if (NULL_PTR != pcJobConfig->pfStartNotification)
	.d2line		4086
	lwz		r0,12(r31)		# Job=r0 pcJobConfig=r31
	se_cmpi		r0,0		# Job=r0
	bc		1,2,.L633	# eq
#         {
#             pcJobConfig->pfStartNotification();
	.d2line		4088
.Llo233:
	lwz		r0,12(r31)		# Job=r0 pcJobConfig=r31
.Llo241:
	mtspr		ctr,r0		# Job=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L633:
#         }
#         else
#         {
#             /* Do nothing */
#         }
#         
#         pDspiDev = &Spi_Dspi_aDeviceState[pcJobConfig->HWUnit];
	.d2line		4095
	lis		r25,Spi_Dspi_aDeviceState@ha		# pDspiDev=r25
.Llo249:
	e_add16i		r25,r25,Spi_Dspi_aDeviceState@l		# pDspiDev=r25 pDspiDev=r25
	lbz		r0,24(r31)		# Job=r0 pcJobConfig=r31
.Llo256:
	e_mulli		r0,r0,72		# Job=r0 Job=r0
	se_add		r0,r25		# Job=r0 Job=r0 pDspiDev=r25
.Llo257:
	mr		r25,r0		# pDspiDev=r25 pDspiDev=r0
#         /* Generate CTAR selection */
#         u32SelectedCTAR = DSPI_GENERATE_CTAR_U32((uint32)pDspiDev->pcHWUnitConfig->u8NrOfCTAR);
	.d2line		4097
	lwz		r3,0(r25)		# pcSequenceConfig=r3 pDspiDev=r25
.Llo234:
	lbz		r3,1(r3)		# pcSequenceConfig=r3 pcSequenceConfig=r3
	se_slwi		r3,28		# pcSequenceConfig=r3 pcSequenceConfig=r3
.Llo298:
	e_add2is		r3,61440		# pcSequenceConfig=r3
	mr		r3,r3		# u32SelectedCTAR=r3 u32SelectedCTAR=r3
# 
#         /* mark HW unit as busy */
#         *(pDspiDev->pStatus) = SPI_BUSY;
	.d2line		4100
.Llo235:
	diab.li		r0,2		# Job=r0
.Llo258:
	lwz		r4,64(r25)		# pcJobConfig=r4 pDspiDev=r25
	stw		r0,0(r4)		# pcJobConfig=r4 Job=r0
# 
#         /* retrieve the CTAR setting for the corresponding external device */
# #if (SPI_DUAL_CLOCK_MODE == STD_ON)
#         u32Ctar = pcJobConfig->ExternalDeviceAttrs.u32CTAR[Spi_Dspi_ClockMode];
# #else
#         u32Ctar = pcJobConfig->ExternalDeviceAttrs.u32CTAR;
	.d2line		4106
	lwz		r10,36(r31)		# u32Ctar=r10 pcJobConfig=r31
.Llo297:
	mr		r10,r10		# u32Ctar=r10 u32Ctar=r10
# #endif
# 
#         /* set the CMD part of the word to be transmitted */
#         pDspiDev->u32CurrentCmd = (pcJobConfig->ExternalDeviceAttrs.u32CMD | u32SelectedCTAR);
	.d2line		4110
	lwz		r0,40(r31)		# Job=r0 pcJobConfig=r31
	or		r0,r0,r3		# Job=r0 Job=r0 u32SelectedCTAR=r3
	stw		r0,32(r25)		# pDspiDev=r25 Job=r0
# 
#         /* iterate on all channels in job */
#         pDspiDev->RemainingChannels = pcJobConfig->NumChannels;
	.d2line		4113
	lbz		r0,0(r31)		# Job=r0 pcJobConfig=r31
	stb		r0,36(r25)		# pDspiDev=r25 Job=r0
#         pcChannelIndexList = (*pcJobConfig->pcChannelIndexList);
	.d2line		4114
	lwz		r24,4(r31)		# pcChannelIndexList=r24 pcJobConfig=r31
.Llo285:
	mr		r24,r24		# pcChannelIndexList=r24 pcChannelIndexList=r24
.L634:
#         while((Spi_ChannelType)0u < pDspiDev->RemainingChannels)
	.d2line		4115
.Llo259:
	lbz		r0,36(r25)		# Job=r0 pDspiDev=r25
.Llo260:
	se_cmpi		r0,0		# Job=r0
	bc		0,1,.L635	# le
#         {
#             pDspiDev->RemainingChannels--;
	.d2line		4117
.Llo261:
	lbz		r3,36(r25)		# u32SelectedCTAR=r3 pDspiDev=r25
.Llo299:
	diab.addi		r3,r3,255		# u32SelectedCTAR=r3 u32SelectedCTAR=r3
	stb		r3,36(r25)		# pDspiDev=r25 u32SelectedCTAR=r3
# 
#             /* Get the channel ID & configuration */
#             Channel = *pcChannelIndexList;
	.d2line		4120
	lbz		r4,0(r24)		# Channel=r4 pcChannelIndexList=r24
.Llo293:
	mr		r4,r4		# Channel=r4 Channel=r4
#             pcChannelConfig = &(*Spi_pcSpiConfigPtr->pcChannelConfig)[Channel];
	.d2line		4121
	lis		r5,Spi_pcSpiConfigPtr@ha		# pcDspiChannelAttributesConfig=r5
.Llo251:
	lwz		r3,Spi_pcSpiConfigPtr@l(r5)		# u32SelectedCTAR=r3 pcDspiChannelAttributesConfig=r5
	lwz		r3,8(r3)		# u32SelectedCTAR=r3 u32SelectedCTAR=r3
	rlwinm		r0,r4,4,20,27		# Job=r0 Channel=r4
.Llo262:
	se_add		r0,r3		# Job=r0 Job=r0 u32SelectedCTAR=r3
.Llo236:
	mr		r3,r0		# pcChannelConfig=r3 pcChannelConfig=r0
#             pChannelState = pcChannelConfig->pChannelState;
	.d2line		4122
.Llo300:
	lwz		r7,12(r3)		# pChannelState=r7 pcChannelConfig=r3
.Llo292:
	mr		r7,r7		# pChannelState=r7 pChannelState=r7
#             /* Get Channel Attributes */
#             pcDspiChannelAttributesConfig = &(*Spi_pcSpiConfigPtr->pcAttributesConfig->pcChannelAttributesConfig)[Channel];
	.d2line		4124
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)		# pcDspiChannelAttributesConfig=r5 pcDspiChannelAttributesConfig=r5
	lwz		r5,20(r5)		# pcDspiChannelAttributesConfig=r5 pcDspiChannelAttributesConfig=r5
	lwz		r5,0(r5)		# pcDspiChannelAttributesConfig=r5 pcDspiChannelAttributesConfig=r5
	rlwinm		r0,r4,3,21,28		# Job=r0 Channel=r4
.Llo237:
	se_add		r0,r5		# Job=r0 Job=r0 pcDspiChannelAttributesConfig=r5
.Llo263:
	mr		r5,r0		# pcDspiChannelAttributesConfig=r5 pcDspiChannelAttributesConfig=r0
#             /* set CTAR register */
#             /**
#             * @note The call is blocking till the HWUnit exits
#             *       the running state.
#             */
#             /*
#             * @violates @ref Spi_DSPI_c_REF_3 Conversions shall not be performed between
#             * a pointer to a function and any type other than an integral type.
#             * @violates @ref Spi_DSPI_c_REF_12 A cast should not be performed between a pointer type and an integral type.
#             */
#             REG_WRITE32(pDspiDev->u32DspiCTARAddress,(u32Ctar | pcDspiChannelAttributesConfig->u32CMD));
	.d2line		4135
.Llo252:
	lwz		r0,0(r5)		# Job=r0 pcDspiChannelAttributesConfig=r5
.Llo264:
	or		r0,r0,r10		# Job=r0 Job=r0 u32Ctar=r10
	lwz		r6,56(r25)		# pDspiDev=r25
	stw		r0,0(r6)		# Job=r0
# 
#             /* retrieve RX/TX buffers and the transmitted/received lengths */
#             if (pChannelState->u8Flags & ((uint8)SPI_CHANNEL_FLAG_TX_DEFAULT_U8))
	.d2line		4138
	lbz		r0,0(r7)		# Job=r0 pChannelState=r7
	se_btsti		r0,31		# Job=r0
	bc		1,2,.L636	# eq
#             {
#                 pDspiDev->pCurrentTxBuffer = NULL_PTR;
	.d2line		4140
.Llo238:
	diab.li		r0,0		# Job=r0
.Llo265:
	stw		r0,24(r25)		# pDspiDev=r25 Job=r0
	b		.L637
.L636:
#             }
#             else
#             {
#                 pDspiDev->pCurrentTxBuffer = pcChannelConfig->pcBufferDescriptor->pBufferTX;
	.d2line		4144
.Llo266:
	lwz		r6,8(r3)		# pcChannelConfig=r3
	lwz		r0,0(r6)		# Job=r0
.Llo267:
	stw		r0,24(r25)		# pDspiDev=r25 Job=r0
.L637:
#             }
#             pDspiDev->pCurrentRxBuffer = pcChannelConfig->pcBufferDescriptor->pBufferRX;
	.d2line		4146
.Llo268:
	lwz		r3,8(r3)		# pcChannelConfig=r3 pcChannelConfig=r3
	lwz		r0,4(r3)		# Job=r0 pcChannelConfig=r3
.Llo269:
	stw		r0,28(r25)		# pDspiDev=r25 Job=r0
# 
#             LengthTX = pChannelState->Length;
	.d2line		4148
	lhz		r3,2(r7)		# pcChannelConfig=r3 pChannelState=r7
.Llo239:
	mr		r3,r3		# LengthTX=r3 LengthTX=r3
#             #if (SPI_FORCE_DATA_TYPE == STD_ON)
#             /*
#             * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#             *       the only allowed form of pointer arithmetic.
#             */
#             if (1u == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		4154
	lbz		r0,4(r5)		# Job=r0 pcDspiChannelAttributesConfig=r5
	se_cmpi		r0,1		# Job=r0
	bc		0,2,.L641	# ne
#             {
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                 *       the only allowed form of pointer arithmetic.
#                 */
#                 if (SPI_DATA_WIDTH_16 == pcDspiChannelAttributesConfig->u8DataWidth)
	.d2line		4160
.Llo270:
	lbz		r0,4(r5)		# Job=r0 pcDspiChannelAttributesConfig=r5
.Llo271:
	se_cmpi		r0,1		# Job=r0
	bc		0,2,.L641	# ne
#                 {
#                     LengthTX /= 2u;
	.d2line		4162
.Llo253:
	rlwinm		r3,r3,31,17,31		# LengthTX=r3 LengthTX=r3
	mr		r0,r3		# LengthTX=r0 LengthTX=r3
.L641:
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#             #endif
#             /* Update RemainingData for new channel */
#             pDspiDev->RemainingData = LengthTX;
	.d2line		4175
.Llo294:
	sth		r3,38(r25)		# pDspiDev=r25 LengthTX=r3
#             
#             /* synchronous transmission for a channel */
#             TransmitChannelStatus = Spi_Dspi_SyncTransmitChannel(pDspiDev, Channel);
	.d2line		4178
	mr		r3,r25		# pDspiDev=r3 pDspiDev=r25
.Llo295:
	mr		r4,r4		# Channel=r4 Channel=r4
.Llo296:
	bl		Spi_Dspi_SyncTransmitChannel
.Llo289:
	mr		r27,r3		# TransmitChannelStatus=r27 TransmitChannelStatus=r3
#             
#             /*
#             * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#             *       the only allowed form of pointer arithmetic.
#             */
#             pcChannelIndexList++;
	.d2line		4184
	se_addi		r24,1		# pcChannelIndexList=r24 pcChannelIndexList=r24
	b		.L634
.L635:
#         } /* while (RemainingChannels) */
# 
#         /* release the HW unit */
#         *(pDspiDev->pStatus) = SPI_IDLE;
	.d2line		4188
.Llo290:
	diab.li		r0,1		# Job=r0
.Llo272:
	lwz		r3,64(r25)		# u32SelectedCTAR=r3 pDspiDev=r25
.Llo301:
	stw		r0,0(r3)		# u32SelectedCTAR=r3 Job=r0
# 
#         if ((Std_ReturnType)E_OK == TransmitChannelStatus)
	.d2line		4190
	rlwinm		r3,r27,0,24,31		# u32SelectedCTAR=r3 TransmitChannelStatus=r27
	se_cmpi		r3,0		# u32SelectedCTAR=r3
	bc		0,2,.L646	# ne
#         {
#             /* Job is done set the status as OK */
#             pJobState->Result = SPI_JOB_OK;
	.d2line		4193
.Llo250:
	diab.li		r0,0		# Job=r0
.Llo273:
	stw		r0,0(r26)		# pJobState=r26 Job=r0
#             /* Perform job EndNotification (if there is one) */
#             if (NULL_PTR != pcJobConfig->pfEndNotification)
	.d2line		4195
	lwz		r0,8(r31)		# Job=r0 pcJobConfig=r31
	se_cmpi		r0,0		# Job=r0
	bc		1,2,.L645	# eq
#             {
#                 pcJobConfig->pfEndNotification();
	.d2line		4197
.Llo274:
	lwz		r0,8(r31)		# Job=r0 pcJobConfig=r31
	mtspr		ctr,r0		# Job=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.Llo242:
	b		.L645
.L646:
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#         }
#         else
#         {
#             /* transmission failed */
#             /* set the remaining job status (including the current one) as FAILED */
#             do
#             {
#                 /* Set the job status as FAILED */
#                 Spi_aSpiJobState[*pcJobIndexList].Result = SPI_JOB_FAILED;
	.d2line		4211
.Llo243:
	lhz		r0,0(r29)		# Job=r0 pcJobIndexList=r29
.Llo275:
	diab.li		r4,2		# pcJobConfig=r4
	lis		r3,Spi_aSpiJobState@ha		# u32SelectedCTAR=r3
.Llo302:
	e_add16i		r3,r3,Spi_aSpiJobState@l		# u32SelectedCTAR=r3 u32SelectedCTAR=r3
	rlwinm		r5,r0,4,0,27		# pcDspiChannelAttributesConfig=r5 Job=r0
.Llo254:
	se_slwi		r0,2		# Job=r0 Job=r0
	subf		r0,r0,r5		# Job=r0 Job=r0 pcDspiChannelAttributesConfig=r5
.Llo276:
	stwx		r4,r3,r0		# u32SelectedCTAR=r3 pcJobConfig=r4
#                 /* Update pointer position for pcJobConfig */
#                 pcJobConfig = &(*Spi_pcSpiConfigPtr->pcJobConfig)[*pcJobIndexList];
	.d2line		4213
	lhz		r0,0(r29)		# Job=r0 pcJobIndexList=r29
.Llo277:
	lis		r3,Spi_pcSpiConfigPtr@ha		# u32SelectedCTAR=r3
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)		# u32SelectedCTAR=r3 u32SelectedCTAR=r3
	lwz		r4,12(r3)		# pcJobConfig=r4 u32SelectedCTAR=r3
	rlwinm		r3,r0,6,0,25		# u32SelectedCTAR=r3 Job=r0
	se_slwi		r0,4		# Job=r0 Job=r0
	subf		r0,r0,r3		# Job=r0 Job=r0 u32SelectedCTAR=r3
	se_add		r0,r4		# Job=r0 Job=r0 pcJobConfig=r4
.Llo278:
	mr		r4,r0		# pcJobConfig=r4 pcJobConfig=r0
#                 /* Perform job EndNotification (if there is one) */
#                 if (NULL_PTR != pcJobConfig->pfEndNotification)
	.d2line		4215
	lwz		r0,8(r4)		# Job=r0 pcJobConfig=r4
.Llo279:
	se_cmpi		r0,0		# Job=r0
	bc		1,2,.L648	# eq
#                 {
#                     pcJobConfig->pfEndNotification();
	.d2line		4217
.Llo244:
	lwz		r0,8(r4)		# Job=r0 pcJobConfig=r4
.Llo245:
	mtspr		ctr,r0		# Job=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L648:
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#                 /*
#                 * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#                 *       the only allowed form of pointer arithmetic.
#                 */
#                 pcJobIndexList++;
	.d2line		4227
	se_addi		r29,2		# pcJobIndexList=r29 pcJobIndexList=r29
#                 JobsCount--;
	.d2line		4228
	diab.li		r0,65535		# Job=r0
.Llo280:
	se_add		r0,r30		# Job=r0 Job=r0 JobsCount=r30
.Llo281:
	mr		r30,r0		# JobsCount=r30 JobsCount=r0
#             } while (0u < JobsCount);
	.d2line		4229
	e_cmphl16i	r30,0		# JobsCount=r30
	bc		0,2,.L646	# ne
#             JobsCount = 1u;  /* needed to end correctly the outer loop */
	.d2line		4230
.Llo246:
	diab.li		r30,1		# JobsCount=r30
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		4231
	diab.li		r28,1		# Status=r28
.L645:
#         }
#         /* iterate to next job in sequence */
#         /*
#         * @violates @ref Spi_DSPI_c_REF_6 Array indexing shall be
#         *       the only allowed form of pointer arithmetic.
#         */
#         pcJobIndexList++;
	.d2line		4238
.Llo247:
	se_addi		r29,2		# pcJobIndexList=r29 pcJobIndexList=r29
#         JobsCount--;
	.d2line		4239
	diab.li		r0,65535		# Job=r0
.Llo282:
	se_add		r0,r30		# Job=r0 Job=r0 JobsCount=r30
.Llo283:
	mr		r30,r0		# JobsCount=r30 JobsCount=r0
	b		.L630
.L631:
#     } /* while (JobsCount > 0u) */
# 
#     if ((Std_ReturnType)E_OK != Status)
#     {
# #if (SPI_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)        
#         /* Call Dem_ReportErrorStatus. */
#         if ((uint32)STD_ON == Spi_pcSpiConfigPtr->Spi_E_Hardware_ErrorCfg.state)
#         {
#             Dem_ReportErrorStatus((Dem_EventIdType)Spi_pcSpiConfigPtr->Spi_E_Hardware_ErrorCfg.id, DEM_EVENT_STATUS_FAILED);
#         }
#         else
#         {
#             /* Do nothing */
#         }
# #endif
#     }
#     else
#     {
#         /* Do nothing */
#     }
#     return Status;
	.d2line		4260
.Llo248:
	rlwinm		r3,r28,0,24,31		# pcSequenceConfig=r3 Status=r28
# }
	.d2line		4261
	.d2epilogue_begin
	lmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	2,10
.Llo287:
	lwz		r0,52(r1)		# Sequence=r0
	mtspr		lr,r0		# Sequence=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L891:
	.type		Spi_Dspi_SyncTransmit,@function
	.size		Spi_Dspi_SyncTransmit,.-Spi_Dspi_SyncTransmit
# Number of nodes = 353

# Allocations for Spi_Dspi_SyncTransmit
#	?a4		Sequence
#	?a5		$$124
#	?a6		$$123
#	?a7		$$122
#	?a8		$$121
#	?a9		pcSequenceConfig
#	?a10		pcChannelConfig
#	?a11		pcJobConfig
#	?a12		pDspiDev
#	?a13		pcDspiChannelAttributesConfig
#	?a14		JobsCount
#	?a15		Job
#	?a16		pcJobIndexList
#	?a17		pcChannelIndexList
#	?a18		Status
#	?a19		TransmitChannelStatus
#	?a20		pJobState
#	?a21		pChannelState
#	?a22		Channel
#	?a23		LengthTX
#	?a24		u32Ctar
#	?a25		u32SelectedCTAR

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L939
	.section	.mcal_bss,,b
	.0byte		.L945
	.section	.mcal_const,,r
	.0byte		.L948
	.section	.mcal_const,,r
	.type		Spi_Dspi_au32BaseAddrs,@object
	.size		Spi_Dspi_au32BaseAddrs,52
	.align		2
	.globl		Spi_Dspi_au32BaseAddrs
Spi_Dspi_au32BaseAddrs:
	.long		-1638400
	.long		-68747264
	.long		-1622016
	.long		-68730880
	.long		-1605632
	.long		-1589248
	.long		-68714496
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.section	.mcal_bss,,b
	.0byte		.L953
	.section	.mcal_bss,,b
	.type		Spi_Dspi_u32ReadDiscard,@object
	.size		Spi_Dspi_u32ReadDiscard,4
	.align		2
Spi_Dspi_u32ReadDiscard:
	.space		4
	.section	.mcal_bss,,b
	.0byte		.L955
	.section	.mcal_bss,,b
	.type		Spi_Dspi_aDeviceState,@object
	.size		Spi_Dspi_aDeviceState,360
	.align		2
	.globl		Spi_Dspi_aDeviceState
Spi_Dspi_aDeviceState:
	.space		360
	.section	.text_vle
#$$ld
.L5:
.L1016:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L949:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi_DSPI.c"
.L940:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L666:
.L674:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi_DSPI.c"
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi_DSPI.c"
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
.L663:
	.4byte		.L664-.L662
.L662:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L668-.L663
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi_DSPI.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L665
	.4byte		.L666
	.4byte		.L669
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L675:
	.sleb128	2
	.4byte		.L671-.L663
	.byte		"Spi_Dspi_ChannelTransferFifoInit"
	.byte		0
	.4byte		.L674
	.uleb128	1689
	.uleb128	35
	.byte		0x1
	.4byte		.L672
	.4byte		.L673
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L674
	.uleb128	1689
	.uleb128	35
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L679
	.sleb128	3
	.4byte		.L674
	.uleb128	1689
	.uleb128	35
	.byte		"Channel"
	.byte		0
	.4byte		.L680
	.4byte		.L683
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L684:
	.sleb128	4
	.4byte		.L674
	.uleb128	1696
	.uleb128	9
	.byte		"pcDspiChannelAttributesConfig"
	.byte		0
	.4byte		.L685
	.4byte		.L689
.L690:
	.sleb128	4
	.4byte		.L674
	.uleb128	1697
	.uleb128	63
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L691
	.4byte		.L695
.L696:
	.sleb128	4
	.4byte		.L674
	.uleb128	1698
	.uleb128	59
	.byte		"pChannelState"
	.byte		0
	.4byte		.L697
	.4byte		.L700
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L671:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L705:
	.sleb128	2
	.4byte		.L702-.L663
	.byte		"Spi_Dspi_JobTransferFifoFill"
	.byte		0
	.4byte		.L674
	.uleb128	1774
	.uleb128	35
	.byte		0x1
	.4byte		.L703
	.4byte		.L704
	.sleb128	3
	.4byte		.L674
	.uleb128	1774
	.uleb128	35
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L706
.L707:
	.sleb128	4
	.4byte		.L674
	.uleb128	1779
	.uleb128	28
	.byte		"u32Cmd"
	.byte		0
	.4byte		.L708
	.4byte		.L710
.L711:
	.sleb128	4
	.4byte		.L674
	.uleb128	1780
	.uleb128	52
	.byte		"pBufferTX"
	.byte		0
	.4byte		.L712
	.4byte		.L714
.L715:
	.sleb128	4
	.4byte		.L674
	.uleb128	1781
	.uleb128	43
	.byte		"nFramesCount"
	.byte		0
	.4byte		.L716
	.4byte		.L719
.L720:
	.sleb128	4
	.4byte		.L674
	.uleb128	1782
	.uleb128	42
	.byte		"nRemainingData"
	.byte		0
	.4byte		.L716
	.4byte		.L721
.L722:
	.sleb128	4
	.4byte		.L674
	.uleb128	1783
	.uleb128	27
	.byte		"u8EndOfJob"
	.byte		0
	.4byte		.L681
	.4byte		.L723
.L724:
	.sleb128	4
	.4byte		.L674
	.uleb128	1786
	.uleb128	9
	.byte		"pcDspiChannelAttributesConfig"
	.byte		0
	.4byte		.L685
	.4byte		.L725
.L726:
	.sleb128	4
	.4byte		.L674
	.uleb128	1787
	.uleb128	45
	.byte		"pu16BufferFullTX"
	.byte		0
	.4byte		.L727
	.4byte		.L728
.L729:
	.sleb128	4
	.4byte		.L674
	.uleb128	1790
	.uleb128	28
	.byte		"u32DspiPUSHRAddress"
	.byte		0
	.4byte		.L708
	.4byte		.L730
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L702:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L735:
	.sleb128	2
	.4byte		.L732-.L663
	.byte		"Spi_Dspi_JobTransferFifoDrain"
	.byte		0
	.4byte		.L674
	.uleb128	2024
	.uleb128	35
	.byte		0x1
	.4byte		.L733
	.4byte		.L734
	.sleb128	3
	.4byte		.L674
	.uleb128	2024
	.uleb128	35
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L736
.L737:
	.sleb128	4
	.4byte		.L674
	.uleb128	2029
	.uleb128	52
	.byte		"pBufferRx"
	.byte		0
	.4byte		.L712
	.4byte		.L738
.L739:
	.sleb128	4
	.4byte		.L674
	.uleb128	2030
	.uleb128	43
	.byte		"nFramesCount"
	.byte		0
	.4byte		.L716
	.4byte		.L740
.L741:
	.sleb128	4
	.4byte		.L674
	.uleb128	2031
	.uleb128	28
	.byte		"u32DspiPOPRAddress"
	.byte		0
	.4byte		.L708
	.4byte		.L742
.L743:
	.sleb128	4
	.4byte		.L674
	.uleb128	2034
	.uleb128	9
	.byte		"pcDspiChannelAttributesConfig"
	.byte		0
	.4byte		.L685
	.4byte		.L744
.L745:
	.sleb128	4
	.4byte		.L674
	.uleb128	2035
	.uleb128	45
	.byte		"pu16BufferFullRX"
	.byte		0
	.4byte		.L727
	.4byte		.L746
.L747:
	.sleb128	4
	.4byte		.L674
	.uleb128	2040
	.uleb128	42
	.byte		"TempFramesCount"
	.byte		0
	.4byte		.L716
	.4byte		.L748
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L732:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L753:
	.sleb128	5
	.4byte		.L750-.L663
	.byte		"Spi_Dspi_Init"
	.byte		0
	.4byte		.L674
	.uleb128	2393
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L751
	.4byte		.L752
	.sleb128	3
	.4byte		.L674
	.uleb128	2393
	.uleb128	22
	.byte		"HWUnit"
	.byte		0
	.4byte		.L754
	.4byte		.L755
	.sleb128	3
	.4byte		.L674
	.uleb128	2393
	.uleb128	22
	.byte		"pStatus"
	.byte		0
	.4byte		.L756
	.4byte		.L759
.L760:
	.sleb128	4
	.4byte		.L674
	.uleb128	2400
	.uleb128	9
	.byte		"pcDspiDeviceAttributesConfig"
	.byte		0
	.4byte		.L761
	.4byte		.L765
.L766:
	.sleb128	4
	.4byte		.L674
	.uleb128	2401
	.uleb128	63
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L767
.L768:
	.sleb128	4
	.4byte		.L674
	.uleb128	2402
	.uleb128	62
	.byte		"pcHWUnitConfig"
	.byte		0
	.4byte		.L769
	.4byte		.L773
.L774:
	.sleb128	4
	.4byte		.L674
	.uleb128	2403
	.uleb128	28
	.byte		"u32Job"
	.byte		0
	.4byte		.L708
	.4byte		.L775
.L776:
	.sleb128	4
	.4byte		.L674
	.uleb128	2404
	.uleb128	59
	.byte		"pcJobConfig"
	.byte		0
	.4byte		.L777
	.4byte		.L781
.L782:
	.sleb128	4
	.4byte		.L674
	.uleb128	2405
	.uleb128	28
	.byte		"u32MCR1"
	.byte		0
	.4byte		.L708
	.4byte		.L783
.L784:
	.sleb128	4
	.4byte		.L674
	.uleb128	2406
	.uleb128	27
	.byte		"u8HWoffset"
	.byte		0
	.4byte		.L681
	.4byte		.L785
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L750:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L790:
	.sleb128	5
	.4byte		.L787-.L663
	.byte		"Spi_Dspi_IrqConfig"
	.byte		0
	.4byte		.L674
	.uleb128	2515
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L788
	.4byte		.L789
	.sleb128	3
	.4byte		.L674
	.uleb128	2515
	.uleb128	22
	.byte		"HWUnit"
	.byte		0
	.4byte		.L754
	.4byte		.L791
	.sleb128	3
	.4byte		.L674
	.uleb128	2515
	.uleb128	22
	.byte		"AsyncMode"
	.byte		0
	.4byte		.L792
	.4byte		.L794
.L795:
	.sleb128	4
	.4byte		.L674
	.uleb128	2521
	.uleb128	63
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L796
.L797:
	.sleb128	4
	.4byte		.L674
	.uleb128	2523
	.uleb128	62
	.byte		"pcHWUnitConfig"
	.byte		0
	.4byte		.L769
	.4byte		.L798
.L799:
	.sleb128	4
	.4byte		.L674
	.uleb128	2525
	.uleb128	27
	.byte		"u8HWoffset"
	.byte		0
	.4byte		.L681
	.4byte		.L800
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L787:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L805:
	.sleb128	5
	.4byte		.L802-.L663
	.byte		"Spi_Dspi_IsrFifoRx"
	.byte		0
	.4byte		.L674
	.uleb128	2810
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L803
	.4byte		.L804
	.sleb128	3
	.4byte		.L674
	.uleb128	2810
	.uleb128	22
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L806
	.sleb128	3
	.4byte		.L674
	.uleb128	2810
	.uleb128	22
	.byte		"u8HWoffset"
	.byte		0
	.4byte		.L681
	.4byte		.L807
.L808:
	.sleb128	4
	.4byte		.L674
	.uleb128	2816
	.uleb128	39
	.byte		"AsyncMode"
	.byte		0
	.4byte		.L792
	.4byte		.L809
.L810:
	.sleb128	4
	.4byte		.L674
	.uleb128	2817
	.uleb128	28
	.byte		"u32IsrStatus"
	.byte		0
	.4byte		.L708
	.4byte		.L811
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L802:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L816:
	.sleb128	5
	.4byte		.L813-.L663
	.byte		"Spi_Dspi_IrqPoll"
	.byte		0
	.4byte		.L674
	.uleb128	2632
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L814
	.4byte		.L815
	.sleb128	3
	.4byte		.L674
	.uleb128	2632
	.uleb128	22
	.byte		"HWUnit"
	.byte		0
	.4byte		.L754
	.4byte		.L817
.L818:
	.sleb128	4
	.4byte		.L674
	.uleb128	2637
	.uleb128	63
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L819
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L813:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L824:
	.sleb128	5
	.4byte		.L821-.L663
	.byte		"Spi_Dspi_DeInit"
	.byte		0
	.4byte		.L674
	.uleb128	2716
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L822
	.4byte		.L823
	.sleb128	3
	.4byte		.L674
	.uleb128	2716
	.uleb128	22
	.byte		"HWUnit"
	.byte		0
	.4byte		.L754
	.4byte		.L825
.L826:
	.sleb128	4
	.4byte		.L674
	.uleb128	2721
	.uleb128	57
	.byte		"pcHWUnitConfig"
	.byte		0
	.4byte		.L769
	.4byte		.L827
.L828:
	.sleb128	4
	.4byte		.L674
	.uleb128	2722
	.uleb128	27
	.byte		"u8HWoffset"
	.byte		0
	.4byte		.L681
	.4byte		.L829
.L830:
	.sleb128	4
	.4byte		.L674
	.uleb128	2723
	.uleb128	27
	.byte		"u8NrOfCTAR"
	.byte		0
	.4byte		.L681
	.4byte		.L831
.L832:
	.sleb128	4
	.4byte		.L674
	.uleb128	2724
	.uleb128	28
	.byte		"u32RxCtrVal"
	.byte		0
	.4byte		.L708
	.4byte		.L833
.L834:
	.sleb128	4
	.4byte		.L674
	.uleb128	2725
	.uleb128	28
	.byte		"u32SRVal"
	.byte		0
	.4byte		.L708
	.4byte		.L835
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L821:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L840:
	.sleb128	5
	.4byte		.L837-.L663
	.byte		"Spi_Dspi_JobTransfer"
	.byte		0
	.4byte		.L674
	.uleb128	3234
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L838
	.4byte		.L839
	.sleb128	3
	.4byte		.L674
	.uleb128	3234
	.uleb128	22
	.byte		"pcJobConfig"
	.byte		0
	.4byte		.L777
	.4byte		.L841
.L842:
	.sleb128	4
	.4byte		.L674
	.uleb128	3239
	.uleb128	63
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L843
.L844:
	.sleb128	4
	.4byte		.L674
	.uleb128	3241
	.uleb128	57
	.byte		"pcChannelList"
	.byte		0
	.4byte		.L845
	.4byte		.L847
.L848:
	.sleb128	4
	.4byte		.L674
	.uleb128	3243
	.uleb128	28
	.byte		"u32SelectedCTAR"
	.byte		0
	.4byte		.L708
	.4byte		.L849
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L837:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L855:
	.sleb128	6
	.4byte		.L851-.L663
	.byte		"Spi_Dspi_SyncTransmitChannel"
	.byte		0
	.4byte		.L674
	.uleb128	3789
	.uleb128	45
	.4byte		.L854
	.byte		0x1
	.4byte		.L852
	.4byte		.L853
	.sleb128	3
	.4byte		.L674
	.uleb128	3789
	.uleb128	45
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L856
	.sleb128	3
	.4byte		.L674
	.uleb128	3789
	.uleb128	45
	.byte		"Channel"
	.byte		0
	.4byte		.L680
	.4byte		.L857
.L858:
	.sleb128	4
	.4byte		.L674
	.uleb128	3795
	.uleb128	42
	.byte		"LengthTX"
	.byte		0
	.4byte		.L716
	.4byte		.L859
.L860:
	.sleb128	4
	.4byte		.L674
	.uleb128	3796
	.uleb128	42
	.byte		"LengthRX"
	.byte		0
	.4byte		.L716
	.4byte		.L861
.L862:
	.sleb128	4
	.4byte		.L674
	.uleb128	3797
	.uleb128	52
	.byte		"pBufferTX"
	.byte		0
	.4byte		.L712
	.4byte		.L863
.L864:
	.sleb128	4
	.4byte		.L674
	.uleb128	3798
	.uleb128	51
	.byte		"pBufferRX"
	.byte		0
	.4byte		.L712
	.4byte		.L865
.L866:
	.sleb128	4
	.4byte		.L674
	.uleb128	3799
	.uleb128	29
	.byte		"u32TempXferData"
	.byte		0
	.4byte		.L708
	.4byte		.L867
.L868:
	.sleb128	4
	.4byte		.L674
	.uleb128	3801
	.uleb128	77
	.byte		"pcDspiChannelAttributesConfig"
	.byte		0
	.4byte		.L685
	.4byte		.L869
.L870:
	.sleb128	4
	.4byte		.L674
	.uleb128	3803
	.uleb128	45
	.byte		"pu16BufferFullTX"
	.byte		0
	.4byte		.L727
	.4byte		.L871
.L872:
	.sleb128	4
	.4byte		.L674
	.uleb128	3804
	.uleb128	45
	.byte		"pu16BufferFullRX"
	.byte		0
	.4byte		.L727
	.4byte		.L873
.L874:
	.sleb128	4
	.4byte		.L674
	.uleb128	3806
	.uleb128	28
	.byte		"u32StatusReset"
	.byte		0
	.4byte		.L708
	.4byte		.L875
.L876:
	.sleb128	4
	.4byte		.L674
	.uleb128	3807
	.uleb128	28
	.byte		"u32nEmptyPlaces"
	.byte		0
	.4byte		.L708
	.4byte		.L877
.L878:
	.sleb128	4
	.4byte		.L674
	.uleb128	3808
	.uleb128	28
	.byte		"u32Timeout"
	.byte		0
	.4byte		.L708
	.4byte		.L879
.L880:
	.sleb128	4
	.4byte		.L674
	.uleb128	3809
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L854
	.4byte		.L881
.L882:
	.sleb128	4
	.4byte		.L674
	.uleb128	3810
	.uleb128	63
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L691
	.4byte		.L883
.L884:
	.sleb128	4
	.4byte		.L674
	.uleb128	3812
	.uleb128	28
	.byte		"u32DspiPUSHRAddress"
	.byte		0
	.4byte		.L708
	.4byte		.L885
.L886:
	.sleb128	4
	.4byte		.L674
	.uleb128	3813
	.uleb128	28
	.byte		"u32DspiPOPRAddress"
	.byte		0
	.4byte		.L708
	.4byte		.L887
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L851:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L892:
	.sleb128	7
	.4byte		.L889-.L663
	.byte		"Spi_Dspi_SyncTransmit"
	.byte		0
	.4byte		.L674
	.uleb128	4045
	.uleb128	32
	.4byte		.L854
	.byte		0x1
	.byte		0x1
	.4byte		.L890
	.4byte		.L891
	.sleb128	3
	.4byte		.L674
	.uleb128	4045
	.uleb128	32
	.byte		"Sequence"
	.byte		0
	.4byte		.L893
	.4byte		.L894
.L895:
	.sleb128	4
	.4byte		.L674
	.uleb128	4050
	.uleb128	64
	.byte		"pcSequenceConfig"
	.byte		0
	.4byte		.L896
	.4byte		.L900
.L901:
	.sleb128	4
	.4byte		.L674
	.uleb128	4051
	.uleb128	63
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L691
	.4byte		.L902
.L903:
	.sleb128	4
	.4byte		.L674
	.uleb128	4052
	.uleb128	59
	.byte		"pcJobConfig"
	.byte		0
	.4byte		.L777
	.4byte		.L904
.L905:
	.sleb128	4
	.4byte		.L674
	.uleb128	4053
	.uleb128	63
	.byte		"pDspiDev"
	.byte		0
	.4byte		.L676
	.4byte		.L906
.L907:
	.sleb128	4
	.4byte		.L674
	.uleb128	4055
	.uleb128	9
	.byte		"pcDspiChannelAttributesConfig"
	.byte		0
	.4byte		.L685
	.4byte		.L908
.L909:
	.sleb128	4
	.4byte		.L674
	.uleb128	4056
	.uleb128	33
	.byte		"JobsCount"
	.byte		0
	.4byte		.L910
	.4byte		.L911
.L912:
	.sleb128	4
	.4byte		.L674
	.uleb128	4057
	.uleb128	33
	.byte		"Job"
	.byte		0
	.4byte		.L910
	.4byte		.L913
.L914:
	.sleb128	4
	.4byte		.L674
	.uleb128	4058
	.uleb128	53
	.byte		"pcJobIndexList"
	.byte		0
	.4byte		.L915
	.4byte		.L917
.L918:
	.sleb128	4
	.4byte		.L674
	.uleb128	4059
	.uleb128	57
	.byte		"pcChannelIndexList"
	.byte		0
	.4byte		.L845
	.4byte		.L919
.L920:
	.sleb128	4
	.4byte		.L674
	.uleb128	4060
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L854
	.4byte		.L921
.L922:
	.sleb128	4
	.4byte		.L674
	.uleb128	4061
	.uleb128	36
	.byte		"TransmitChannelStatus"
	.byte		0
	.4byte		.L854
	.4byte		.L923
.L924:
	.sleb128	4
	.4byte		.L674
	.uleb128	4062
	.uleb128	55
	.byte		"pJobState"
	.byte		0
	.4byte		.L925
	.4byte		.L928
.L929:
	.sleb128	4
	.4byte		.L674
	.uleb128	4063
	.uleb128	59
	.byte		"pChannelState"
	.byte		0
	.4byte		.L697
	.4byte		.L930
.L931:
	.sleb128	4
	.4byte		.L674
	.uleb128	4064
	.uleb128	37
	.byte		"Channel"
	.byte		0
	.4byte		.L680
	.4byte		.L932
.L933:
	.sleb128	4
	.4byte		.L674
	.uleb128	4065
	.uleb128	42
	.byte		"LengthTX"
	.byte		0
	.4byte		.L716
	.4byte		.L934
.L935:
	.sleb128	4
	.4byte		.L674
	.uleb128	4066
	.uleb128	28
	.byte		"u32Ctar"
	.byte		0
	.4byte		.L708
	.4byte		.L936
.L937:
	.sleb128	4
	.4byte		.L674
	.uleb128	4067
	.uleb128	28
	.byte		"u32SelectedCTAR"
	.byte		0
	.4byte		.L708
	.4byte		.L938
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L889:
	.section	.debug_info,,n
.L939:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L940
	.uleb128	848
	.uleb128	57
	.byte		"Spi_pcSpiConfigPtr"
	.byte		0
	.4byte		.L941
	.section	.debug_info,,n
.L945:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L940
	.uleb128	872
	.uleb128	39
	.byte		"Spi_aSpiJobState"
	.byte		0
	.4byte		.L946
	.section	.debug_info,,n
	.section	.debug_info,,n
.L948:
	.sleb128	9
	.byte		0x1
	.4byte		.L949
	.uleb128	327
	.uleb128	26
	.byte		"Spi_Dspi_au32BaseAddrs"
	.byte		0
	.4byte		.L950
	.sleb128	5
	.byte		0x3
	.4byte		Spi_Dspi_au32BaseAddrs
	.section	.debug_info,,n
	.section	.debug_info,,n
.L953:
	.sleb128	10
	.4byte		.L949
	.uleb128	422
	.uleb128	38
	.byte		"Spi_Dspi_u32ReadDiscard"
	.byte		0
	.4byte		.L954
	.sleb128	5
	.byte		0x3
	.4byte		Spi_Dspi_u32ReadDiscard
	.section	.debug_info,,n
	.section	.debug_info,,n
.L955:
	.sleb128	9
	.byte		0x1
	.4byte		.L949
	.uleb128	506
	.uleb128	40
	.byte		"Spi_Dspi_aDeviceState"
	.byte		0
	.4byte		.L956
	.sleb128	5
	.byte		0x3
	.4byte		Spi_Dspi_aDeviceState
	.section	.debug_info,,n
	.section	.debug_info,,n
.L678:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L958-.L2
	.uleb128	72
	.section	.debug_info,,n
.L452:
	.sleb128	12
	.byte		"pcHWUnitConfig"
	.byte		0
	.4byte		.L769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L453:
	.sleb128	12
	.byte		"u32ExternalDeviceCTAR"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L454:
	.sleb128	12
	.byte		"pcCurrentChannelIndexPointer"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L455:
	.sleb128	12
	.byte		"SentFrames"
	.byte		0
	.4byte		.L716
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L456:
	.sleb128	12
	.byte		"pcCurrentJob"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L457:
	.sleb128	12
	.byte		"bIsEndOfJob"
	.byte		0
	.4byte		.L959
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L458:
	.sleb128	12
	.byte		"pCurrentTxBuffer"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L459:
	.sleb128	12
	.byte		"pCurrentRxBuffer"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L460:
	.sleb128	12
	.byte		"u32CurrentCmd"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L461:
	.sleb128	12
	.byte		"RemainingChannels"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L462:
	.sleb128	12
	.byte		"RemainingData"
	.byte		0
	.4byte		.L716
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L463:
	.sleb128	12
	.byte		"u32DspiBaseAddress"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L464:
	.sleb128	12
	.byte		"u32DspiPUSHRAddress"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L465:
	.sleb128	12
	.byte		"u32DspiPOPRAddress"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L466:
	.sleb128	12
	.byte		"u32DspiSRAddress"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L467:
	.sleb128	12
	.byte		"u32DspiCTARAddress"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L468:
	.sleb128	12
	.byte		"AsyncMode"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L469:
	.sleb128	12
	.byte		"pStatus"
	.byte		0
	.4byte		.L756
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L470:
	.sleb128	12
	.byte		"ReceivedData"
	.byte		0
	.4byte		.L716
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L471:
	.sleb128	12
	.byte		"u8IsPollRequest"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	70
	.byte		0x1
	.sleb128	0
.L958:
.L944:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L960-.L2
	.uleb128	28
.L443:
	.sleb128	12
	.byte		"u16MaxExternalDevice"
	.byte		0
	.4byte		.L717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"Spi_Max_Channel"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L445:
	.sleb128	12
	.byte		"Spi_Max_Job"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L446:
	.sleb128	12
	.byte		"Spi_Max_Sequence"
	.byte		0
	.4byte		.L893
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L447:
	.sleb128	12
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L448:
	.sleb128	12
	.byte		"pcJobConfig"
	.byte		0
	.4byte		.L965
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"pcSequenceConfig"
	.byte		0
	.4byte		.L969
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L450:
	.sleb128	12
	.byte		"pcAttributesConfig"
	.byte		0
	.4byte		.L973
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L451:
	.sleb128	12
	.byte		"pcHWUnitConfig"
	.byte		0
	.4byte		.L977
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L960:
.L772:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L981-.L2
	.uleb128	8
.L439:
	.sleb128	12
	.byte		"u8Offset"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"u8NrOfCTAR"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L441:
	.sleb128	12
	.byte		"u8SpiPhyUnitMode"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"u32IsSync"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L981:
.L694:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L982-.L2
	.uleb128	16
.L434:
	.sleb128	12
	.byte		"BufferType"
	.byte		0
	.4byte		.L983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L435:
	.sleb128	12
	.byte		"DefaultTransmitValue"
	.byte		0
	.4byte		.L713
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L436:
	.sleb128	12
	.byte		"Length"
	.byte		0
	.4byte		.L716
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L437:
	.sleb128	12
	.byte		"pcBufferDescriptor"
	.byte		0
	.4byte		.L985
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"pChannelState"
	.byte		0
	.4byte		.L697
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L982:
.L699:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L988-.L2
	.uleb128	4
.L432:
	.sleb128	12
	.byte		"u8Flags"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L433:
	.sleb128	12
	.byte		"Length"
	.byte		0
	.4byte		.L716
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L988:
.L987:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L989-.L2
	.uleb128	8
.L430:
	.sleb128	12
	.byte		"pBufferTX"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	12
	.byte		"pBufferRX"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L989:
.L780:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L990-.L2
	.uleb128	48
.L420:
	.sleb128	12
	.byte		"NumChannels"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L421:
	.sleb128	12
	.byte		"pcChannelIndexList"
	.byte		0
	.4byte		.L991
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L422:
	.sleb128	12
	.byte		"pfEndNotification"
	.byte		0
	.4byte		.L995
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L423:
	.sleb128	12
	.byte		"pfStartNotification"
	.byte		0
	.4byte		.L995
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L424:
	.sleb128	12
	.byte		"s8Priority"
	.byte		0
	.4byte		.L999
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L425:
	.sleb128	12
	.byte		"pJobState"
	.byte		0
	.4byte		.L925
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L426:
	.sleb128	12
	.byte		"HWUnit"
	.byte		0
	.4byte		.L754
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L427:
	.sleb128	12
	.byte		"u32HWoffset"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L428:
	.sleb128	12
	.byte		"ExternalDevice"
	.byte		0
	.4byte		.L1001
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L429:
	.sleb128	12
	.byte		"ExternalDeviceAttrs"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L990:
.L927:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L1002-.L2
	.uleb128	12
.L417:
	.sleb128	12
	.byte		"Result"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	12
	.byte		"pAsyncCrtSequenceState"
	.byte		0
	.4byte		.L1005
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	12
	.byte		"AsyncNextJob"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1002:
.L1007:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L1008-.L2
	.uleb128	16
.L413:
	.sleb128	12
	.byte		"Result"
	.byte		0
	.4byte		.L1009
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L414:
	.sleb128	12
	.byte		"pcSequence"
	.byte		0
	.4byte		.L896
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L415:
	.sleb128	12
	.byte		"pcCurrentJobIndexPointer"
	.byte		0
	.4byte		.L915
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L416:
	.sleb128	12
	.byte		"RemainingJobs"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1008:
.L899:
	.sleb128	11
	.4byte		.L940
	.uleb128	495
	.uleb128	1
	.4byte		.L1011-.L2
	.uleb128	16
.L409:
	.sleb128	12
	.byte		"NumJobs"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	12
	.byte		"pcJobIndexList"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L411:
	.sleb128	12
	.byte		"pfEndNotification"
	.byte		0
	.4byte		.L995
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L412:
	.sleb128	12
	.byte		"u8Interruptible"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1011:
.L976:
	.sleb128	11
	.4byte		.L1016
	.uleb128	34
	.uleb128	14
	.4byte		.L1017-.L2
	.uleb128	8
.L407:
	.sleb128	12
	.byte		"pcChannelAttributesConfig"
	.byte		0
	.4byte		.L1018
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L408:
	.sleb128	12
	.byte		"pcDeviceAttributesConfig"
	.byte		0
	.4byte		.L1022
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1017:
.L764:
	.sleb128	11
	.4byte		.L1016
	.uleb128	34
	.uleb128	14
	.4byte		.L1026-.L2
	.uleb128	12
.L404:
	.sleb128	12
	.byte		"u32CTAR"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L405:
	.sleb128	12
	.byte		"u32CMD"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L406:
	.sleb128	12
	.byte		"u32MCR"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1026:
.L688:
	.sleb128	11
	.4byte		.L1016
	.uleb128	34
	.uleb128	14
	.4byte		.L1027-.L2
	.uleb128	8
.L402:
	.sleb128	12
	.byte		"u32CMD"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L403:
	.sleb128	12
	.byte		"u8DataWidth"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1027:
	.section	.debug_info,,n
.L793:
	.sleb128	13
	.4byte		.L940
	.uleb128	467
	.uleb128	1
	.4byte		.L1028-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"SPI_POLLING_MODE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"SPI_INTERRUPT_MODE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1028:
.L984:
	.sleb128	13
	.4byte		.L940
	.uleb128	451
	.uleb128	1
	.4byte		.L1029-.L2
	.uleb128	4
	.sleb128	14
	.byte		"IB"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"EB"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1029:
.L1010:
	.sleb128	13
	.4byte		.L940
	.uleb128	439
	.uleb128	1
	.4byte		.L1030-.L2
	.uleb128	4
	.sleb128	14
	.byte		"SPI_SEQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"SPI_SEQ_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"SPI_SEQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"SPI_SEQ_CANCELLED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1030:
.L1004:
	.sleb128	13
	.4byte		.L940
	.uleb128	425
	.uleb128	1
	.4byte		.L1031-.L2
	.uleb128	4
	.sleb128	14
	.byte		"SPI_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"SPI_JOB_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"SPI_JOB_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"SPI_JOB_QUEUED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1031:
.L758:
	.sleb128	13
	.4byte		.L940
	.uleb128	413
	.uleb128	1
	.4byte		.L1032-.L2
	.uleb128	4
	.sleb128	14
	.byte		"SPI_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"SPI_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"SPI_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1032:
	.section	.debug_info,,n
.L677:
	.sleb128	15
	.byte		"Spi_Dspi_DeviceStateType"
	.byte		0
	.4byte		.L678
	.section	.debug_info,,n
.L676:
	.sleb128	16
	.4byte		.L677
	.section	.debug_info,,n
.L682:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L681:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L682
.L680:
	.sleb128	15
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L681
.L687:
	.sleb128	15
	.byte		"Spi_Ipw_ChannelAttributesConfigType"
	.byte		0
	.4byte		.L688
	.section	.debug_info,,n
.L686:
	.sleb128	18
	.4byte		.L687
.L685:
	.sleb128	16
	.4byte		.L686
.L693:
	.sleb128	15
	.byte		"Spi_ChannelConfigType"
	.byte		0
	.4byte		.L694
.L692:
	.sleb128	18
	.4byte		.L693
.L691:
	.sleb128	16
	.4byte		.L692
.L698:
	.sleb128	15
	.byte		"Spi_ChannelStateType"
	.byte		0
	.4byte		.L699
.L697:
	.sleb128	16
	.4byte		.L698
.L709:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L708:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L709
.L713:
	.sleb128	15
	.byte		"Spi_DataType"
	.byte		0
	.4byte		.L681
.L712:
	.sleb128	16
	.4byte		.L713
.L718:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L717:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L718
.L716:
	.sleb128	15
	.byte		"Spi_NumberOfDataType"
	.byte		0
	.4byte		.L717
.L727:
	.sleb128	16
	.4byte		.L717
.L754:
	.sleb128	15
	.byte		"Spi_HWUnitType"
	.byte		0
	.4byte		.L681
.L757:
	.sleb128	15
	.byte		"Spi_StatusType"
	.byte		0
	.4byte		.L758
.L756:
	.sleb128	16
	.4byte		.L757
.L763:
	.sleb128	15
	.byte		"Spi_Ipw_DeviceAttributesConfigType"
	.byte		0
	.4byte		.L764
.L762:
	.sleb128	18
	.4byte		.L763
.L761:
	.sleb128	16
	.4byte		.L762
.L771:
	.sleb128	15
	.byte		"Spi_HWUnitConfigType"
	.byte		0
	.4byte		.L772
.L770:
	.sleb128	18
	.4byte		.L771
.L769:
	.sleb128	16
	.4byte		.L770
.L779:
	.sleb128	15
	.byte		"Spi_JobConfigType"
	.byte		0
	.4byte		.L780
.L778:
	.sleb128	18
	.4byte		.L779
.L777:
	.sleb128	16
	.4byte		.L778
.L792:
	.sleb128	15
	.byte		"Spi_AsyncModeType"
	.byte		0
	.4byte		.L793
.L846:
	.sleb128	18
	.4byte		.L680
.L845:
	.sleb128	16
	.4byte		.L846
.L854:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L681
.L893:
	.sleb128	15
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L681
.L898:
	.sleb128	15
	.byte		"Spi_SequenceConfigType"
	.byte		0
	.4byte		.L899
.L897:
	.sleb128	18
	.4byte		.L898
.L896:
	.sleb128	16
	.4byte		.L897
.L910:
	.sleb128	15
	.byte		"Spi_JobType"
	.byte		0
	.4byte		.L717
.L916:
	.sleb128	18
	.4byte		.L910
.L915:
	.sleb128	16
	.4byte		.L916
.L926:
	.sleb128	15
	.byte		"Spi_JobStateType"
	.byte		0
	.4byte		.L927
.L925:
	.sleb128	16
	.4byte		.L926
.L943:
	.sleb128	15
	.byte		"Spi_ConfigType"
	.byte		0
	.4byte		.L944
.L942:
	.sleb128	18
	.4byte		.L943
.L941:
	.sleb128	16
	.4byte		.L942
	.section	.debug_info,,n
.L946:
	.sleb128	19
	.4byte		.L947-.L2
	.4byte		.L926
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	5
	.sleb128	0
.L947:
.L952:
	.sleb128	18
	.4byte		.L708
.L950:
	.sleb128	19
	.4byte		.L951-.L2
	.4byte		.L952
	.sleb128	20
	.uleb128	12
	.sleb128	0
.L951:
	.section	.debug_info,,n
.L954:
	.sleb128	21
	.4byte		.L708
.L956:
	.sleb128	19
	.4byte		.L957-.L2
	.4byte		.L677
	.sleb128	20
	.uleb128	4
	.sleb128	0
.L957:
.L959:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L682
.L963:
	.sleb128	19
	.4byte		.L964-.L2
	.4byte		.L692
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L964:
.L962:
	.sleb128	16
	.4byte		.L963
.L961:
	.sleb128	18
	.4byte		.L962
.L967:
	.sleb128	19
	.4byte		.L968-.L2
	.4byte		.L778
	.sleb128	22
	.sleb128	0
.L968:
.L966:
	.sleb128	16
	.4byte		.L967
.L965:
	.sleb128	18
	.4byte		.L966
.L971:
	.sleb128	19
	.4byte		.L972-.L2
	.4byte		.L897
	.sleb128	22
	.sleb128	0
.L972:
.L970:
	.sleb128	16
	.4byte		.L971
.L969:
	.sleb128	18
	.4byte		.L970
.L975:
	.sleb128	15
	.byte		"Spi_AttributesConfigType"
	.byte		0
	.4byte		.L976
.L974:
	.sleb128	18
	.4byte		.L975
.L973:
	.sleb128	16
	.4byte		.L974
.L979:
	.sleb128	19
	.4byte		.L980-.L2
	.4byte		.L770
	.sleb128	22
	.sleb128	0
.L980:
.L978:
	.sleb128	16
	.4byte		.L979
.L977:
	.sleb128	18
	.4byte		.L978
.L983:
	.sleb128	15
	.byte		"Spi_BufferType"
	.byte		0
	.4byte		.L984
.L986:
	.sleb128	15
	.byte		"Spi_BufferDescriptorType"
	.byte		0
	.4byte		.L987
.L985:
	.sleb128	16
	.4byte		.L986
.L993:
	.sleb128	19
	.4byte		.L994-.L2
	.4byte		.L846
	.sleb128	22
	.sleb128	0
.L994:
.L992:
	.sleb128	16
	.4byte		.L993
.L991:
	.sleb128	18
	.4byte		.L992
	.section	.debug_info,,n
.L997:
	.sleb128	23
	.4byte		.L998-.L2
	.byte		0x1
	.sleb128	0
.L998:
.L996:
	.sleb128	15
	.byte		"Spi_NotifyType"
	.byte		0
	.4byte		.L997
.L995:
	.sleb128	16
	.4byte		.L996
.L1000:
	.sleb128	17
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L999:
	.sleb128	15
	.byte		"sint8"
	.byte		0
	.4byte		.L1000
.L1001:
	.sleb128	15
	.byte		"Spi_ExternalDeviceType"
	.byte		0
	.4byte		.L681
.L1003:
	.sleb128	15
	.byte		"Spi_JobResultType"
	.byte		0
	.4byte		.L1004
.L1006:
	.sleb128	15
	.byte		"Spi_SequenceStateType"
	.byte		0
	.4byte		.L1007
.L1005:
	.sleb128	16
	.4byte		.L1006
.L1009:
	.sleb128	15
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L1010
.L1014:
	.sleb128	19
	.4byte		.L1015-.L2
	.4byte		.L916
	.sleb128	22
	.sleb128	0
.L1015:
.L1013:
	.sleb128	16
	.4byte		.L1014
.L1012:
	.sleb128	18
	.4byte		.L1013
.L1020:
	.sleb128	19
	.4byte		.L1021-.L2
	.4byte		.L686
	.sleb128	22
	.sleb128	0
.L1021:
.L1019:
	.sleb128	16
	.4byte		.L1020
.L1018:
	.sleb128	18
	.4byte		.L1019
.L1024:
	.sleb128	19
	.4byte		.L1025-.L2
	.4byte		.L762
	.sleb128	22
	.sleb128	0
.L1025:
.L1023:
	.sleb128	16
	.4byte		.L1024
.L1022:
	.sleb128	18
	.4byte		.L1023
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L668:
	.sleb128	0
.L664:

	.section	.debug_loc,,n
	.align	0
.L679:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L683:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),4
	.d2locend
.L689:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo2),4
	.d2locend
.L695:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),6
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo2),6
	.d2locend
.L700:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo10),5
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),5
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo3),5
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo2),5
	.d2locend
.L706:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L710:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo17),0
	.d2locend
.L714:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),4
	.d2locend
.L719:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo17),7
	.d2locend
.L721:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),4
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),4
	.d2locend
.L723:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo28),29
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo17),29
	.d2locend
.L725:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo20),5
	.d2locend
.L728:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo20),4
	.d2locend
.L730:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo17),6
	.d2locend
.L736:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locend
.L738:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo39),4
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),4
	.d2locend
.L740:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locend
.L742:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo46),5
	.d2locend
.L744:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),4
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo39),6
	.d2locend
.L746:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo39),4
	.d2locend
.L748:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),0
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),30
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo46),30
	.d2locend
.L755:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locend
.L759:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo58),4
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),0
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),0
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),0
	.d2locend
.L765:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),0
	.d2locend
.L767:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo57),4
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),4
	.d2locend
.L773:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo60),5
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo62),5
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),5
	.d2locend
.L775:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo57),7
	.d2locend
.L781:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),0
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo77),5
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo57),5
	.d2locend
.L783:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo57),4
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locend
.L785:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo57),6
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),6
	.d2locend
.L791:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locend
.L794:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),5
	.d2locend
.L796:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo87),3
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locend
.L798:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo87),4
	.d2locend
.L800:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo86),0
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo89),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),0
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo91),0
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),3
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),31
	.d2locend
.L807:
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo103),4
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo102),4
	.d2locend
.L809:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo103),0
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),0
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),0
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),0
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),0
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),0
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),0
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),0
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),0
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),0
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo104),0
	.d2locend
.L811:
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),5
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),3
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo104),3
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo102),5
	.d2locend
.L817:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),3
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),0
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),0
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),0
	.d2locend
.L819:
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo141),3
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo142),3
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),3
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),0
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),0
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),0
	.d2locend
.L827:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo151),4
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),0
	.d2locend
.L829:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo150),3
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),3
	.d2locend
.L831:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo150),4
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo155),4
	.d2locend
.L833:
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),5
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo148),5
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),5
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),5
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo155),5
	.d2locend
.L835:
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo147),0
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),6
	.d2locend
.L841:
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),3
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),31
	.d2locend
.L843:
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),0
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo172),30
	.d2locend
.L847:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo172),29
	.d2locend
.L849:
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),0
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),3
	.d2locend
.L856:
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),3
	.d2locend
.L857:
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo182),4
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),0
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo186),0
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo188),0
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo190),0
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),0
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),0
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),0
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo198),0
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo200),0
	.d2locreg	%offsetof(.Llo201), %offsetof(.Llo202),0
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo204),0
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),0
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo181),0
	.d2locend
.L859:
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo181),4
	.d2locend
.L861:
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),4
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo181),5
	.d2locend
.L863:
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo181),6
	.d2locend
.L865:
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo181),7
	.d2locend
.L867:
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo181),31
	.d2locend
.L869:
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo181),30
	.d2locend
.L871:
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo181),6
	.d2locend
.L873:
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo181),7
	.d2locend
.L875:
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo181),29
	.d2locend
.L877:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo181),28
	.d2locend
.L879:
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo181),27
	.d2locend
.L881:
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo220),26
	.d2locend
.L883:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo210),0
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo181),25
	.d2locend
.L885:
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo181),24
	.d2locend
.L887:
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo181),9
	.d2locend
.L894:
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),3
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),0
	.d2locend
.L900:
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo227),3
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo229),0
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),3
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo233),3
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),3
	.d2locend
.L902:
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),0
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),3
	.d2locend
.L904:
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo233),4
	.d2locreg	%offsetof(.Llo241), %offsetof(.Llo242),31
	.d2locreg	%offsetof(.Llo243), %offsetof(.Llo244),31
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo246),4
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo248),31
	.d2locend
.L906:
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo250),25
	.d2locend
.L908:
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo252),5
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo253),5
	.d2locreg	%offsetof(.Llo254), %offsetof(.Llo244),5
	.d2locend
.L911:
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo248),30
	.d2locend
.L913:
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo233),0
	.d2locreg	%offsetof(.Llo256), %offsetof(.Llo257),0
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo259),0
	.d2locreg	%offsetof(.Llo260), %offsetof(.Llo261),0
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo236),0
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo263),0
	.d2locreg	%offsetof(.Llo264), %offsetof(.Llo238),0
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo266),0
	.d2locreg	%offsetof(.Llo267), %offsetof(.Llo268),0
	.d2locreg	%offsetof(.Llo269), %offsetof(.Llo270),0
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo253),0
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo250),0
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo274),0
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),0
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),0
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo244),0
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo281),0
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo283),0
	.d2locend
.L917:
	.d2locreg	%offsetof(.Llo284), %offsetof(.Llo248),29
	.d2locend
.L919:
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo250),24
	.d2locend
.L921:
	.d2locreg	%offsetof(.Llo286), %offsetof(.Llo244),28
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo287),28
	.d2locend
.L923:
	.d2locreg	%offsetof(.Llo288), %offsetof(.Llo238),27
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo290),3
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo248),27
	.d2locend
.L928:
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo274),26
	.d2locreg	%offsetof(.Llo243), %offsetof(.Llo244),26
	.d2locend
.L930:
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo270),7
	.d2locend
.L932:
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),4
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo296),4
	.d2locend
.L934:
	.d2locreg	%offsetof(.Llo239), %offsetof(.Llo295),3
	.d2locend
.L936:
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo250),10
	.d2locend
.L938:
	.d2locreg	%offsetof(.Llo298), %offsetof(.Llo259),3
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo300),3
	.d2locreg	%offsetof(.Llo301), %offsetof(.Llo250),3
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo244),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Spi_Dspi_SyncTransmit"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Spi_Dspi_SyncTransmitChannel"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_SyncTransmitChannel"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_JobTransfer"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Spi_Dspi_ChannelTransferFifoInit","Spi_Dspi_JobTransferFifoFill"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_DeInit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_IrqPoll"
	.wrcm.nstrlist "calls", "Spi_Dspi_IsrFifoRx"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_IsrFifoRx"
	.wrcm.nstrlist "calls", "Spi_Dspi_ChannelTransferFifoInit","Spi_Dspi_JobTransferFifoDrain","Spi_Dspi_JobTransferFifoFill","Spi_JobTransferFinished"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_IrqConfig"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_JobTransferFifoDrain"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_JobTransferFifoFill"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Spi_Dspi_ChannelTransferFifoInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Spi_DSPI.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Spi_DSPI.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Spi_DSPI.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Spi_DSPI.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Spi_DSPI.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Spi_DSPI.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Spi\ssc\make\..\..\generator\integration_package\src\Spi_DSPI.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
