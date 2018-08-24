#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Spi_Dspi_Irq.c"
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
# ISR(Spi_Dspi_IsrTCF_DSPI_0)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L484:
	.section	.invalid_TEXT,,c
#$$ld
.L480:
	.0byte		.L478
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi_Dspi_Irq.c"
        .d2line         975,1
#$$ld
.L487:

#$$bf	OS_ISR_Spi_Dspi_IsrTCF_DSPI_0,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Spi_Dspi_IsrTCF_DSPI_0
	.d2_cfa_start __cie
OS_ISR_Spi_Dspi_IsrTCF_DSPI_0:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Spi_Dspi_IsrFifoRx(DSPI_HWUNIT2DSPI(DSPI_0_HWUNIT), DSPI_0_OFFSET);
	.d2line		977
	lis		r3,(Spi_Dspi_aDeviceState+72)@ha
	e_add16i		r3,r3,(Spi_Dspi_aDeviceState+72)@l
	diab.li		r4,0
	bl		Spi_Dspi_IsrFifoRx
#     /*
#     * @violates @ref Spi_Dspi_Irq_c_REF_5 Conversions shall not be performed between a pointer to a function
#     *       and any type other than an integral type.
#     */
#     EXIT_INTERRUPT();
# }
	.d2line		983
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
.L488:
	.type		OS_ISR_Spi_Dspi_IsrTCF_DSPI_0,@function
	.size		OS_ISR_Spi_Dspi_IsrTCF_DSPI_0,.-OS_ISR_Spi_Dspi_IsrTCF_DSPI_0
# Number of nodes = 9

# Allocations for OS_ISR_Spi_Dspi_IsrTCF_DSPI_0
# ISR(Spi_Dspi_IsrTCF_DSPI_1)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1003,1
#$$ld
.L493:

#$$bf	OS_ISR_Spi_Dspi_IsrTCF_DSPI_1,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Spi_Dspi_IsrTCF_DSPI_1
	.d2_cfa_start __cie
OS_ISR_Spi_Dspi_IsrTCF_DSPI_1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Spi_Dspi_IsrFifoRx(DSPI_HWUNIT2DSPI(DSPI_1_HWUNIT), DSPI_1_OFFSET);
	.d2line		1005
	lis		r3,(Spi_Dspi_aDeviceState+144)@ha
	e_add16i		r3,r3,(Spi_Dspi_aDeviceState+144)@l
	diab.li		r4,1
	bl		Spi_Dspi_IsrFifoRx
#     /*
#     * @violates @ref Spi_Dspi_Irq_c_REF_5 Conversions shall not be performed between a pointer to a function
#     *       and any type other than an integral type.
#     */
#     EXIT_INTERRUPT();
# }
	.d2line		1011
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
.L494:
	.type		OS_ISR_Spi_Dspi_IsrTCF_DSPI_1,@function
	.size		OS_ISR_Spi_Dspi_IsrTCF_DSPI_1,.-OS_ISR_Spi_Dspi_IsrTCF_DSPI_1
# Number of nodes = 9

# Allocations for OS_ISR_Spi_Dspi_IsrTCF_DSPI_1
# ISR(Spi_Dspi_IsrTCF_DSPI_2)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1031,1
#$$ld
.L498:

#$$bf	OS_ISR_Spi_Dspi_IsrTCF_DSPI_2,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Spi_Dspi_IsrTCF_DSPI_2
	.d2_cfa_start __cie
OS_ISR_Spi_Dspi_IsrTCF_DSPI_2:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Spi_Dspi_IsrFifoRx(DSPI_HWUNIT2DSPI(DSPI_2_HWUNIT), DSPI_2_OFFSET);
	.d2line		1033
	lis		r3,Spi_Dspi_aDeviceState@ha
	e_add16i		r3,r3,Spi_Dspi_aDeviceState@l
	diab.li		r4,2
	bl		Spi_Dspi_IsrFifoRx
#     /*
#     * @violates @ref Spi_Dspi_Irq_c_REF_5 Conversions shall not be performed between a pointer to a function
#     *       and any type other than an integral type.
#     */
#     EXIT_INTERRUPT();
# }
	.d2line		1039
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
.L499:
	.type		OS_ISR_Spi_Dspi_IsrTCF_DSPI_2,@function
	.size		OS_ISR_Spi_Dspi_IsrTCF_DSPI_2,.-OS_ISR_Spi_Dspi_IsrTCF_DSPI_2
# Number of nodes = 7

# Allocations for OS_ISR_Spi_Dspi_IsrTCF_DSPI_2
# ISR(Spi_Dspi_IsrTCF_DSPI_3)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1059,1
#$$ld
.L503:

#$$bf	OS_ISR_Spi_Dspi_IsrTCF_DSPI_3,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Spi_Dspi_IsrTCF_DSPI_3
	.d2_cfa_start __cie
OS_ISR_Spi_Dspi_IsrTCF_DSPI_3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Spi_Dspi_IsrFifoRx(DSPI_HWUNIT2DSPI(DSPI_3_HWUNIT), DSPI_3_OFFSET);
	.d2line		1061
	lis		r3,(Spi_Dspi_aDeviceState+216)@ha
	e_add16i		r3,r3,(Spi_Dspi_aDeviceState+216)@l
	diab.li		r4,3
	bl		Spi_Dspi_IsrFifoRx
#     /*
#     * @violates @ref Spi_Dspi_Irq_c_REF_5 Conversions shall not be performed between a pointer to a function
#     *       and any type other than an integral type.
#     */
#     EXIT_INTERRUPT();
# }
	.d2line		1067
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
.L504:
	.type		OS_ISR_Spi_Dspi_IsrTCF_DSPI_3,@function
	.size		OS_ISR_Spi_Dspi_IsrTCF_DSPI_3,.-OS_ISR_Spi_Dspi_IsrTCF_DSPI_3
# Number of nodes = 9

# Allocations for OS_ISR_Spi_Dspi_IsrTCF_DSPI_3
# ISR(Spi_Dspi_IsrTCF_DSPI_4)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1087,1
#$$ld
.L508:

#$$bf	OS_ISR_Spi_Dspi_IsrTCF_DSPI_4,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Spi_Dspi_IsrTCF_DSPI_4
	.d2_cfa_start __cie
OS_ISR_Spi_Dspi_IsrTCF_DSPI_4:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Spi_Dspi_IsrFifoRx(DSPI_HWUNIT2DSPI(DSPI_4_HWUNIT), DSPI_4_OFFSET);
	.d2line		1089
	lis		r3,(Spi_Dspi_aDeviceState+288)@ha
	e_add16i		r3,r3,(Spi_Dspi_aDeviceState+288)@l
	diab.li		r4,4
	bl		Spi_Dspi_IsrFifoRx
#     /*
#     * @violates @ref Spi_Dspi_Irq_c_REF_5 Conversions shall not be performed between a pointer to a function
#     *       and any type other than an integral type.
#     */
#     EXIT_INTERRUPT();
# }
	.d2line		1095
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
.L509:
	.type		OS_ISR_Spi_Dspi_IsrTCF_DSPI_4,@function
	.size		OS_ISR_Spi_Dspi_IsrTCF_DSPI_4,.-OS_ISR_Spi_Dspi_IsrTCF_DSPI_4
# Number of nodes = 9

# Allocations for OS_ISR_Spi_Dspi_IsrTCF_DSPI_4

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L511
	.section	.text_vle
#$$ld
.L5:
.L585:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L517:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L512:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi_DSPI.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L481:
.L489:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi_Dspi_Irq.c"
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
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi_Dspi_Irq.c"
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
.L478:
	.4byte		.L479-.L477
.L477:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L483-.L478
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi_Dspi_Irq.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L480
	.4byte		.L481
	.4byte		.L484
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L490:
	.sleb128	2
	.4byte		.L486-.L478
	.byte		"OS_ISR_Spi_Dspi_IsrTCF_DSPI_0"
	.byte		0
	.4byte		.L489
	.uleb128	975
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L487
	.4byte		.L488
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L486:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L495:
	.sleb128	2
	.4byte		.L492-.L478
	.byte		"OS_ISR_Spi_Dspi_IsrTCF_DSPI_1"
	.byte		0
	.4byte		.L489
	.uleb128	1003
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L493
	.4byte		.L494
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L492:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L500:
	.sleb128	2
	.4byte		.L497-.L478
	.byte		"OS_ISR_Spi_Dspi_IsrTCF_DSPI_2"
	.byte		0
	.4byte		.L489
	.uleb128	1031
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L498
	.4byte		.L499
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L497:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L505:
	.sleb128	2
	.4byte		.L502-.L478
	.byte		"OS_ISR_Spi_Dspi_IsrTCF_DSPI_3"
	.byte		0
	.4byte		.L489
	.uleb128	1059
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L503
	.4byte		.L504
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L502:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L510:
	.sleb128	2
	.4byte		.L507-.L478
	.byte		"OS_ISR_Spi_Dspi_IsrTCF_DSPI_4"
	.byte		0
	.4byte		.L489
	.uleb128	1087
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L508
	.4byte		.L509
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L507:
	.section	.debug_info,,n
.L511:
	.sleb128	3
	.byte		0x1
	.byte		0x1
	.4byte		.L512
	.uleb128	347
	.uleb128	47
	.byte		"Spi_Dspi_aDeviceState"
	.byte		0
	.4byte		.L513
	.section	.debug_info,,n
	.section	.debug_info,,n
.L516:
	.sleb128	4
	.4byte		.L517
	.uleb128	495
	.uleb128	1
	.4byte		.L518-.L2
	.uleb128	72
	.section	.debug_info,,n
.L452:
	.sleb128	5
	.byte		"pcHWUnitConfig"
	.byte		0
	.4byte		.L519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L453:
	.sleb128	5
	.byte		"u32ExternalDeviceCTAR"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L454:
	.sleb128	5
	.byte		"pcCurrentChannelIndexPointer"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L455:
	.sleb128	5
	.byte		"SentFrames"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L456:
	.sleb128	5
	.byte		"pcCurrentJob"
	.byte		0
	.4byte		.L533
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L457:
	.sleb128	5
	.byte		"bIsEndOfJob"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L458:
	.sleb128	5
	.byte		"pCurrentTxBuffer"
	.byte		0
	.4byte		.L538
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L459:
	.sleb128	5
	.byte		"pCurrentRxBuffer"
	.byte		0
	.4byte		.L538
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L460:
	.sleb128	5
	.byte		"u32CurrentCmd"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L461:
	.sleb128	5
	.byte		"RemainingChannels"
	.byte		0
	.4byte		.L527
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L462:
	.sleb128	5
	.byte		"RemainingData"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L463:
	.sleb128	5
	.byte		"u32DspiBaseAddress"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L464:
	.sleb128	5
	.byte		"u32DspiPUSHRAddress"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L465:
	.sleb128	5
	.byte		"u32DspiPOPRAddress"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L466:
	.sleb128	5
	.byte		"u32DspiSRAddress"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L467:
	.sleb128	5
	.byte		"u32DspiCTARAddress"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L468:
	.sleb128	5
	.byte		"AsyncMode"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L469:
	.sleb128	5
	.byte		"pStatus"
	.byte		0
	.4byte		.L542
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L470:
	.sleb128	5
	.byte		"ReceivedData"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L471:
	.sleb128	5
	.byte		"u8IsPollRequest"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	70
	.byte		0x1
	.sleb128	0
.L518:
.L522:
	.sleb128	4
	.4byte		.L517
	.uleb128	495
	.uleb128	1
	.4byte		.L545-.L2
	.uleb128	8
.L439:
	.sleb128	5
	.byte		"u8Offset"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L440:
	.sleb128	5
	.byte		"u8NrOfCTAR"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L441:
	.sleb128	5
	.byte		"u8SpiPhyUnitMode"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L442:
	.sleb128	5
	.byte		"u32IsSync"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L545:
.L536:
	.sleb128	4
	.4byte		.L517
	.uleb128	495
	.uleb128	1
	.4byte		.L546-.L2
	.uleb128	48
.L420:
	.sleb128	5
	.byte		"NumChannels"
	.byte		0
	.4byte		.L527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L421:
	.sleb128	5
	.byte		"pcChannelIndexList"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L422:
	.sleb128	5
	.byte		"pfEndNotification"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L423:
	.sleb128	5
	.byte		"pfStartNotification"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L424:
	.sleb128	5
	.byte		"s8Priority"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L425:
	.sleb128	5
	.byte		"pJobState"
	.byte		0
	.4byte		.L557
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L426:
	.sleb128	5
	.byte		"HWUnit"
	.byte		0
	.4byte		.L560
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L427:
	.sleb128	5
	.byte		"u32HWoffset"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L428:
	.sleb128	5
	.byte		"ExternalDevice"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L429:
	.sleb128	5
	.byte		"ExternalDeviceAttrs"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L546:
.L559:
	.sleb128	4
	.4byte		.L517
	.uleb128	495
	.uleb128	1
	.4byte		.L564-.L2
	.uleb128	12
.L417:
	.sleb128	5
	.byte		"Result"
	.byte		0
	.4byte		.L565
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	5
	.byte		"pAsyncCrtSequenceState"
	.byte		0
	.4byte		.L567
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	5
	.byte		"AsyncNextJob"
	.byte		0
	.4byte		.L570
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L564:
.L569:
	.sleb128	4
	.4byte		.L517
	.uleb128	495
	.uleb128	1
	.4byte		.L571-.L2
	.uleb128	16
.L413:
	.sleb128	5
	.byte		"Result"
	.byte		0
	.4byte		.L572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L414:
	.sleb128	5
	.byte		"pcSequence"
	.byte		0
	.4byte		.L574
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L415:
	.sleb128	5
	.byte		"pcCurrentJobIndexPointer"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L416:
	.sleb128	5
	.byte		"RemainingJobs"
	.byte		0
	.4byte		.L570
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L571:
.L577:
	.sleb128	4
	.4byte		.L517
	.uleb128	495
	.uleb128	1
	.4byte		.L580-.L2
	.uleb128	16
.L409:
	.sleb128	5
	.byte		"NumJobs"
	.byte		0
	.4byte		.L570
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	5
	.byte		"pcJobIndexList"
	.byte		0
	.4byte		.L581
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L411:
	.sleb128	5
	.byte		"pfEndNotification"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L412:
	.sleb128	5
	.byte		"u8Interruptible"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L580:
.L563:
	.sleb128	4
	.4byte		.L585
	.uleb128	34
	.uleb128	14
	.4byte		.L586-.L2
	.uleb128	12
.L404:
	.sleb128	5
	.byte		"u32CTAR"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L405:
	.sleb128	5
	.byte		"u32CMD"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L406:
	.sleb128	5
	.byte		"u32MCR"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L586:
	.section	.debug_info,,n
.L541:
	.sleb128	6
	.4byte		.L517
	.uleb128	467
	.uleb128	1
	.4byte		.L587-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"SPI_POLLING_MODE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"SPI_INTERRUPT_MODE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L587:
.L573:
	.sleb128	6
	.4byte		.L517
	.uleb128	439
	.uleb128	1
	.4byte		.L588-.L2
	.uleb128	4
	.sleb128	7
	.byte		"SPI_SEQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"SPI_SEQ_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"SPI_SEQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"SPI_SEQ_CANCELLED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L588:
.L566:
	.sleb128	6
	.4byte		.L517
	.uleb128	425
	.uleb128	1
	.4byte		.L589-.L2
	.uleb128	4
	.sleb128	7
	.byte		"SPI_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"SPI_JOB_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"SPI_JOB_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"SPI_JOB_QUEUED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L589:
.L544:
	.sleb128	6
	.4byte		.L517
	.uleb128	413
	.uleb128	1
	.4byte		.L590-.L2
	.uleb128	4
	.sleb128	7
	.byte		"SPI_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"SPI_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"SPI_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L590:
	.section	.debug_info,,n
.L515:
	.sleb128	8
	.byte		"Spi_Dspi_DeviceStateType"
	.byte		0
	.4byte		.L516
	.section	.debug_info,,n
.L513:
	.sleb128	9
	.4byte		.L514-.L2
	.4byte		.L515
	.section	.debug_info,,n
	.sleb128	10
	.uleb128	4
	.sleb128	0
.L514:
.L521:
	.sleb128	8
	.byte		"Spi_HWUnitConfigType"
	.byte		0
	.4byte		.L522
	.section	.debug_info,,n
.L520:
	.sleb128	11
	.4byte		.L521
	.section	.debug_info,,n
.L519:
	.sleb128	12
	.4byte		.L520
	.section	.debug_info,,n
.L524:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L523:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L524
.L529:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L528:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L529
.L527:
	.sleb128	8
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L528
.L526:
	.sleb128	11
	.4byte		.L527
.L525:
	.sleb128	12
	.4byte		.L526
.L532:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L531:
	.sleb128	8
	.byte		"uint16"
	.byte		0
	.4byte		.L532
.L530:
	.sleb128	8
	.byte		"Spi_NumberOfDataType"
	.byte		0
	.4byte		.L531
.L535:
	.sleb128	8
	.byte		"Spi_JobConfigType"
	.byte		0
	.4byte		.L536
.L534:
	.sleb128	11
	.4byte		.L535
.L533:
	.sleb128	12
	.4byte		.L534
.L537:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L529
.L539:
	.sleb128	8
	.byte		"Spi_DataType"
	.byte		0
	.4byte		.L528
.L538:
	.sleb128	12
	.4byte		.L539
.L540:
	.sleb128	8
	.byte		"Spi_AsyncModeType"
	.byte		0
	.4byte		.L541
.L543:
	.sleb128	8
	.byte		"Spi_StatusType"
	.byte		0
	.4byte		.L544
.L542:
	.sleb128	12
	.4byte		.L543
.L549:
	.sleb128	9
	.4byte		.L550-.L2
	.4byte		.L526
	.section	.debug_info,,n
	.sleb128	14
	.sleb128	0
.L550:
.L548:
	.sleb128	12
	.4byte		.L549
.L547:
	.sleb128	11
	.4byte		.L548
	.section	.debug_info,,n
.L553:
	.sleb128	15
	.4byte		.L554-.L2
	.byte		0x1
	.sleb128	0
.L554:
.L552:
	.sleb128	8
	.byte		"Spi_NotifyType"
	.byte		0
	.4byte		.L553
.L551:
	.sleb128	12
	.4byte		.L552
.L556:
	.sleb128	13
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L555:
	.sleb128	8
	.byte		"sint8"
	.byte		0
	.4byte		.L556
.L558:
	.sleb128	8
	.byte		"Spi_JobStateType"
	.byte		0
	.4byte		.L559
.L557:
	.sleb128	12
	.4byte		.L558
.L560:
	.sleb128	8
	.byte		"Spi_HWUnitType"
	.byte		0
	.4byte		.L528
.L561:
	.sleb128	8
	.byte		"Spi_ExternalDeviceType"
	.byte		0
	.4byte		.L528
.L562:
	.sleb128	8
	.byte		"Spi_Ipw_DeviceAttributesConfigType"
	.byte		0
	.4byte		.L563
.L565:
	.sleb128	8
	.byte		"Spi_JobResultType"
	.byte		0
	.4byte		.L566
.L568:
	.sleb128	8
	.byte		"Spi_SequenceStateType"
	.byte		0
	.4byte		.L569
.L567:
	.sleb128	12
	.4byte		.L568
.L570:
	.sleb128	8
	.byte		"Spi_JobType"
	.byte		0
	.4byte		.L531
.L572:
	.sleb128	8
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L573
.L576:
	.sleb128	8
	.byte		"Spi_SequenceConfigType"
	.byte		0
	.4byte		.L577
.L575:
	.sleb128	11
	.4byte		.L576
.L574:
	.sleb128	12
	.4byte		.L575
.L579:
	.sleb128	11
	.4byte		.L570
.L578:
	.sleb128	12
	.4byte		.L579
.L583:
	.sleb128	9
	.4byte		.L584-.L2
	.4byte		.L579
	.sleb128	14
	.sleb128	0
.L584:
.L582:
	.sleb128	12
	.4byte		.L583
.L581:
	.sleb128	11
	.4byte		.L582
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L483:
	.sleb128	0
.L479:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "OS_ISR_Spi_Dspi_IsrTCF_DSPI_4"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Spi_Dspi_IsrFifoRx"
	.wrcm.end
	.wrcm.nelem "OS_ISR_Spi_Dspi_IsrTCF_DSPI_3"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Spi_Dspi_IsrFifoRx"
	.wrcm.end
	.wrcm.nelem "OS_ISR_Spi_Dspi_IsrTCF_DSPI_2"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Spi_Dspi_IsrFifoRx"
	.wrcm.end
	.wrcm.nelem "OS_ISR_Spi_Dspi_IsrTCF_DSPI_1"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Spi_Dspi_IsrFifoRx"
	.wrcm.end
	.wrcm.nelem "OS_ISR_Spi_Dspi_IsrTCF_DSPI_0"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Spi_Dspi_IsrFifoRx"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Spi_Dspi_Irq.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Spi_Dspi_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Spi_Dspi_Irq.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Spi_Dspi_Irq.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Spi_Dspi_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Spi_Dspi_Irq.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Spi\ssc\make\..\..\generator\integration_package\src\Spi_Dspi_Irq.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
