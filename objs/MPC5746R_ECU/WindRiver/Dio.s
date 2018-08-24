#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Dio.c"
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
# FUNC(void, DIO_CODE) Dio_Init
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L408:
	.section	.invalid_TEXT,,c
#$$ld
.L404:
	.0byte		.L402
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Dio\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Dio.c"
        .d2line         585,22
#$$ld
.L411:

#$$bf	Dio_Init,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		Dio_Init
	.d2_cfa_start __cie
Dio_Init:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     P2CONST(Dio_ConfigType, AUTOMATIC, DIO_APPL_CONST) ConfigPtr
# )
# {
#     if (NULL_PTR == ConfigPtr)
#     {
#         /* dio init */
#     }
# }
	.d2line		594
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L412:
	.type		Dio_Init,@function
	.size		Dio_Init,.-Dio_Init
# Number of nodes = 3

# Allocations for Dio_Init
#	not allocated	ConfigPtr
# FUNC(Dio_LevelType, DIO_CODE) Dio_ReadChannel
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         657,31
#$$ld
.L421:

#$$bf	Dio_ReadChannel,interprocedural,rasave,nostackparams
	.globl		Dio_ReadChannel
	.d2_cfa_start __cie
Dio_ReadChannel:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# ChannelLevel=r0
.Llo3:
	stw		r0,20(r1)		# ChannelLevel=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     CONST(Dio_ChannelType, AUTOMATIC) ChannelId
# )
# {
#     VAR(Dio_LevelType, AUTOMATIC) ChannelLevel = (Dio_LevelType)STD_LOW;
	.d2line		662
	diab.li		r0,0		# ChannelLevel=r0
# 
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     VAR(Std_ReturnType, AUTOMATIC) Valid = Dio_ValidateChannelForRead(ChannelId, DIO_READCHANNEL_ID);
#     
#     if ((Std_ReturnType)E_OK == Valid)
#     {
# #endif
#         ChannelLevel = Dio_Ipw_ReadChannel(ChannelId);
	.d2line		670
.Llo4:
	rlwinm		r3,r3,0,16,31		# ChannelId=r3 ChannelId=r3
.Llo2:
	bl		Dio_Siul2_ReadChannel
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     }
# #endif
# 
#     return ChannelLevel;
	.d2line		675
.Llo5:
	rlwinm		r3,r3,0,24,31		# ChannelLevel=r3 ChannelLevel=r3
# }
	.d2line		676
	.d2epilogue_begin
.Llo6:
	lwz		r0,20(r1)		# ChannelLevel=r0
	mtspr		lr,r0		# ChannelLevel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L422:
	.type		Dio_ReadChannel,@function
	.size		Dio_ReadChannel,.-Dio_ReadChannel
# Number of nodes = 12

# Allocations for Dio_ReadChannel
#	?a4		ChannelId
#	?a5		ChannelLevel
# FUNC(void, DIO_CODE) Dio_WriteChannel
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         696,22
#$$ld
.L436:

#$$bf	Dio_WriteChannel,interprocedural,rasave,nostackparams
	.globl		Dio_WriteChannel
	.d2_cfa_start __cie
Dio_WriteChannel:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     CONST(Dio_ChannelType,  AUTOMATIC) ChannelId,
#     CONST(Dio_LevelType,    AUTOMATIC) Level
# )
# {
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     VAR(Std_ReturnType, AUTOMATIC) Valid = Dio_ValidateChannelForWrite(ChannelId, DIO_WRITECHANNEL_ID);
#     
#     if ((Std_ReturnType) E_OK == Valid)
#     {
#         Valid = Dio_ValidateChannelLevel(Level);
#         if ((Std_ReturnType) E_OK == Valid)
#         {
# #endif
#             Dio_Ipw_WriteChannel(ChannelId, Level);
	.d2line		711
	rlwinm		r3,r3,0,16,31		# ChannelId=r3 ChannelId=r3
.Llo8:
	rlwinm		r4,r4,0,24,31		# Level=r4 Level=r4
.Llo9:
	bl		Dio_Siul2_WriteChannel
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#         }
#     }
# #endif
# 
# }
	.d2line		717
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
.L437:
	.type		Dio_WriteChannel,@function
	.size		Dio_WriteChannel,.-Dio_WriteChannel
# Number of nodes = 8

# Allocations for Dio_WriteChannel
#	?a4		ChannelId
#	?a5		Level
# FUNC(Dio_LevelType, DIO_CODE) Dio_FlipChannel
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         745,31
#$$ld
.L444:

#$$bf	Dio_FlipChannel,interprocedural,rasave,nostackparams
	.globl		Dio_FlipChannel
	.d2_cfa_start __cie
Dio_FlipChannel:
.Llo10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# ChannelLevel=r0
.Llo12:
	stw		r0,20(r1)		# ChannelLevel=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     CONST(Dio_ChannelType, AUTOMATIC) ChannelId
# )
# {
#     VAR(Dio_LevelType, AUTOMATIC) ChannelLevel = (Dio_LevelType)STD_LOW;
	.d2line		750
	diab.li		r0,0		# ChannelLevel=r0
# 
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     VAR(Std_ReturnType, AUTOMATIC) Valid = Dio_ValidateChannelForWrite(ChannelId, DIO_FLIPCHANNEL_ID);
#     
#     if ((Std_ReturnType)E_OK == Valid)
#     {
# #endif
#         ChannelLevel = Dio_Ipw_FlipChannel(ChannelId);
	.d2line		758
.Llo13:
	rlwinm		r3,r3,0,16,31		# ChannelId=r3 ChannelId=r3
.Llo11:
	bl		Dio_Siul2_FlipChannel
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     }
# #endif
# 
#    return ChannelLevel;
	.d2line		763
.Llo14:
	rlwinm		r3,r3,0,24,31		# ChannelLevel=r3 ChannelLevel=r3
# }
	.d2line		764
	.d2epilogue_begin
.Llo15:
	lwz		r0,20(r1)		# ChannelLevel=r0
	mtspr		lr,r0		# ChannelLevel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L445:
	.type		Dio_FlipChannel,@function
	.size		Dio_FlipChannel,.-Dio_FlipChannel
# Number of nodes = 12

# Allocations for Dio_FlipChannel
#	?a4		ChannelId
#	?a5		ChannelLevel
# FUNC(Dio_PortLevelType, DIO_CODE) Dio_ReadPort
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         782,35
#$$ld
.L452:

#$$bf	Dio_ReadPort,interprocedural,rasave,nostackparams
	.globl		Dio_ReadPort
	.d2_cfa_start __cie
Dio_ReadPort:
.Llo16:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# PortLevel=r0
.Llo18:
	stw		r0,20(r1)		# PortLevel=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     CONST(Dio_PortType, AUTOMATIC) PortId
# )
# {
#    VAR(Dio_PortLevelType, AUTOMATIC) PortLevel = (Dio_PortLevelType)STD_LOW;
	.d2line		787
	diab.li		r0,0		# PortLevel=r0
# 
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     VAR(Std_ReturnType, AUTOMATIC) Valid = Dio_ValidatePortForRead(PortId, DIO_READPORT_ID);
#     
#     if ((Std_ReturnType) E_OK == Valid)
#     {
# #endif
#         PortLevel = Dio_Ipw_ReadPort(PortId);
	.d2line		795
.Llo19:
	rlwinm		r3,r3,0,24,31		# PortId=r3 PortId=r3
.Llo17:
	bl		Dio_Siul2_ReadPort
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     }
# #endif
# 
#     return PortLevel;
	.d2line		800
.Llo20:
	rlwinm		r3,r3,0,16,31		# PortLevel=r3 PortLevel=r3
# }
	.d2line		801
	.d2epilogue_begin
.Llo21:
	lwz		r0,20(r1)		# PortLevel=r0
	mtspr		lr,r0		# PortLevel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L453:
	.type		Dio_ReadPort,@function
	.size		Dio_ReadPort,.-Dio_ReadPort
# Number of nodes = 12

# Allocations for Dio_ReadPort
#	?a4		PortId
#	?a5		PortLevel
# FUNC(void, DIO_CODE) Dio_WritePort
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         817,22
#$$ld
.L463:

#$$bf	Dio_WritePort,interprocedural,rasave,nostackparams
	.globl		Dio_WritePort
	.d2_cfa_start __cie
Dio_WritePort:
.Llo22:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     CONST(Dio_PortType,      AUTOMATIC) PortId,
#     CONST(Dio_PortLevelType, AUTOMATIC) Level
# )
# {
#  #if (STD_ON == DIO_VALIDATE_PARAMS)
#     VAR(Std_ReturnType, AUTOMATIC) Valid = Dio_ValidatePortForWrite(PortId, DIO_WRITEPORT_ID);
#     
#     if ((Std_ReturnType)E_OK == Valid)
#     {
# #endif
#         Dio_Ipw_WritePort(PortId, Level);
	.d2line		829
	rlwinm		r3,r3,0,24,31		# PortId=r3 PortId=r3
.Llo23:
	rlwinm		r4,r4,0,16,31		# Level=r4 Level=r4
.Llo24:
	bl		Dio_Siul2_WritePort
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     }
# #endif
# }
	.d2line		833
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
.L464:
	.type		Dio_WritePort,@function
	.size		Dio_WritePort,.-Dio_WritePort
# Number of nodes = 8

# Allocations for Dio_WritePort
#	?a4		PortId
#	?a5		Level
# FUNC(Dio_PortLevelType, DIO_CODE) Dio_ReadChannelGroup
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         850,35
#$$ld
.L471:

#$$bf	Dio_ReadChannelGroup,interprocedural,rasave,nostackparams
	.globl		Dio_ReadChannelGroup
	.d2_cfa_start __cie
Dio_ReadChannelGroup:
.Llo25:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# PortLevel=r0
.Llo27:
	stw		r0,20(r1)		# PortLevel=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     P2CONST(Dio_ChannelGroupType, AUTOMATIC, DIO_APPL_CONST) ChannelGroupIdPtr
# )
# {
#     VAR(Dio_PortLevelType, AUTOMATIC) PortLevel = (Dio_PortLevelType)STD_LOW;
	.d2line		855
	diab.li		r0,0		# PortLevel=r0
# 
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     VAR(Std_ReturnType,AUTOMATIC) Valid = Dio_ValidateChannelGroupForRead(ChannelGroupIdPtr, DIO_READCHANNELGROUP_ID);
#     
#     if ((Std_ReturnType)E_OK == Valid)
#     {
# #endif
#         PortLevel = Dio_Ipw_ReadChannelGroup(ChannelGroupIdPtr);
	.d2line		863
.Llo28:
	mr		r0,r3		# ChannelGroupIdPtr=r0 ChannelGroupIdPtr=r3
	bl		Dio_Siul2_ReadChannelGroup
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     }
# #endif
# 
#     return PortLevel;
	.d2line		868
.Llo26:
	rlwinm		r3,r3,0,16,31		# PortLevel=r3 PortLevel=r3
# }
	.d2line		869
	.d2epilogue_begin
.Llo29:
	lwz		r0,20(r1)		# PortLevel=r0
	mtspr		lr,r0		# PortLevel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L472:
	.type		Dio_ReadChannelGroup,@function
	.size		Dio_ReadChannelGroup,.-Dio_ReadChannelGroup
# Number of nodes = 11

# Allocations for Dio_ReadChannelGroup
#	?a4		ChannelGroupIdPtr
#	?a5		PortLevel
# FUNC(void, DIO_CODE) Dio_WriteChannelGroup
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         891,22
#$$ld
.L483:

#$$bf	Dio_WriteChannelGroup,interprocedural,rasave,nostackparams
	.globl		Dio_WriteChannelGroup
	.d2_cfa_start __cie
Dio_WriteChannelGroup:
.Llo30:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     P2CONST(Dio_ChannelGroupType, AUTOMATIC, DIO_APPL_CONST) ChannelGroupIdPtr,
#     CONST  (Dio_PortLevelType,    AUTOMATIC)                 Level
# )
# {
#  #if (STD_ON == DIO_VALIDATE_PARAMS)
#     VAR(Std_ReturnType, AUTOMATIC) Valid = Dio_ValidateChannelGroupForWrite(ChannelGroupIdPtr, DIO_WRITECHANNELGROUP_ID);
#     
#     if ((Std_ReturnType)E_OK == Valid)
#     {
# #endif
#         Dio_Ipw_WriteChannelGroup(ChannelGroupIdPtr, Level);
	.d2line		903
	rlwinm		r4,r4,0,16,31		# Level=r4 Level=r4
.Llo32:
	mr		r0,r3		# ChannelGroupIdPtr=r0 ChannelGroupIdPtr=r3
	bl		Dio_Siul2_WriteChannelGroup
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     }
# #endif
# }
	.d2line		907
	.d2epilogue_begin
.Llo31:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L484:
	.type		Dio_WriteChannelGroup,@function
	.size		Dio_WriteChannelGroup,.-Dio_WriteChannelGroup
# Number of nodes = 7

# Allocations for Dio_WriteChannelGroup
#	?a4		ChannelGroupIdPtr
#	?a5		Level
# FUNC(void, DIO_CODE) Dio_MaskedWritePort
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         927,22
#$$ld
.L490:

#$$bf	Dio_MaskedWritePort,interprocedural,rasave,nostackparams
	.globl		Dio_MaskedWritePort
	.d2_cfa_start __cie
Dio_MaskedWritePort:
.Llo33:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     CONST(Dio_PortType,      AUTOMATIC) PortId,
#     CONST(Dio_PortLevelType, AUTOMATIC) Level,
#     CONST(Dio_PortLevelType, AUTOMATIC) Mask
# )
# {
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     VAR(Std_ReturnType, AUTOMATIC) Valid = Dio_ValidatePortForWrite(PortId, DIO_MASKEDWRITEPORT_ID);
#     
#     if ((Std_ReturnType)E_OK == Valid)
#     {
# #endif
#         Dio_Ipw_MaskedWritePort(PortId, Level, Mask);
	.d2line		940
	rlwinm		r3,r3,0,24,31		# PortId=r3 PortId=r3
.Llo34:
	rlwinm		r4,r4,0,16,31		# Level=r4 Level=r4
.Llo35:
	rlwinm		r5,r5,0,16,31		# Mask=r5 Mask=r5
.Llo36:
	bl		Dio_Siul2_MaskedWritePort
# #if (STD_ON == DIO_VALIDATE_PARAMS)
#     }
# #endif
# }
	.d2line		944
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
.L491:
	.type		Dio_MaskedWritePort,@function
	.size		Dio_MaskedWritePort,.-Dio_MaskedWritePort
# Number of nodes = 11

# Allocations for Dio_MaskedWritePort
#	?a4		PortId
#	?a5		Level
#	?a6		Mask

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L496:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L405:
.L413:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Dio\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Dio.c"
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
	.uleb128	9
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
	.uleb128	6
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
	.uleb128	6
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Dio\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Dio.c"
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
.L402:
	.4byte		.L403-.L401
.L401:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L407-.L402
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Dio\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Dio.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L404
	.4byte		.L405
	.4byte		.L408
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L414:
	.sleb128	2
	.4byte		.L410-.L402
	.byte		"Dio_Init"
	.byte		0
	.4byte		.L413
	.uleb128	585
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L411
	.4byte		.L412
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L413
	.uleb128	585
	.uleb128	22
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L410:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L426:
	.sleb128	4
	.4byte		.L420-.L402
	.byte		"Dio_ReadChannel"
	.byte		0
	.4byte		.L413
	.uleb128	657
	.uleb128	31
	.4byte		.L423
	.byte		0x1
	.byte		0x1
	.4byte		.L421
	.4byte		.L422
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	5
	.4byte		.L413
	.uleb128	657
	.uleb128	31
	.byte		"ChannelId"
	.byte		0
	.4byte		.L427
	.4byte		.L431
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L432:
	.sleb128	6
	.4byte		.L413
	.uleb128	662
	.uleb128	35
	.byte		"ChannelLevel"
	.byte		0
	.4byte		.L423
	.4byte		.L433
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L420:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L438:
	.sleb128	2
	.4byte		.L435-.L402
	.byte		"Dio_WriteChannel"
	.byte		0
	.4byte		.L413
	.uleb128	696
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L436
	.4byte		.L437
	.sleb128	5
	.4byte		.L413
	.uleb128	696
	.uleb128	22
	.byte		"ChannelId"
	.byte		0
	.4byte		.L427
	.4byte		.L439
	.sleb128	5
	.4byte		.L413
	.uleb128	696
	.uleb128	22
	.byte		"Level"
	.byte		0
	.4byte		.L440
	.4byte		.L441
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L435:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L446:
	.sleb128	4
	.4byte		.L443-.L402
	.byte		"Dio_FlipChannel"
	.byte		0
	.4byte		.L413
	.uleb128	745
	.uleb128	31
	.4byte		.L423
	.byte		0x1
	.byte		0x1
	.4byte		.L444
	.4byte		.L445
	.sleb128	5
	.4byte		.L413
	.uleb128	745
	.uleb128	31
	.byte		"ChannelId"
	.byte		0
	.4byte		.L427
	.4byte		.L447
.L448:
	.sleb128	6
	.4byte		.L413
	.uleb128	750
	.uleb128	35
	.byte		"ChannelLevel"
	.byte		0
	.4byte		.L423
	.4byte		.L449
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L443:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L455:
	.sleb128	4
	.4byte		.L451-.L402
	.byte		"Dio_ReadPort"
	.byte		0
	.4byte		.L413
	.uleb128	782
	.uleb128	35
	.4byte		.L454
	.byte		0x1
	.byte		0x1
	.4byte		.L452
	.4byte		.L453
	.sleb128	5
	.4byte		.L413
	.uleb128	782
	.uleb128	35
	.byte		"PortId"
	.byte		0
	.4byte		.L456
	.4byte		.L458
.L459:
	.sleb128	6
	.4byte		.L413
	.uleb128	787
	.uleb128	38
	.byte		"PortLevel"
	.byte		0
	.4byte		.L454
	.4byte		.L460
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L451:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L465:
	.sleb128	2
	.4byte		.L462-.L402
	.byte		"Dio_WritePort"
	.byte		0
	.4byte		.L413
	.uleb128	817
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L463
	.4byte		.L464
	.sleb128	5
	.4byte		.L413
	.uleb128	817
	.uleb128	22
	.byte		"PortId"
	.byte		0
	.4byte		.L456
	.4byte		.L466
	.sleb128	5
	.4byte		.L413
	.uleb128	817
	.uleb128	22
	.byte		"Level"
	.byte		0
	.4byte		.L467
	.4byte		.L468
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L462:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L473:
	.sleb128	4
	.4byte		.L470-.L402
	.byte		"Dio_ReadChannelGroup"
	.byte		0
	.4byte		.L413
	.uleb128	850
	.uleb128	35
	.4byte		.L454
	.byte		0x1
	.byte		0x1
	.4byte		.L471
	.4byte		.L472
	.sleb128	5
	.4byte		.L413
	.uleb128	850
	.uleb128	35
	.byte		"ChannelGroupIdPtr"
	.byte		0
	.4byte		.L474
	.4byte		.L478
.L479:
	.sleb128	6
	.4byte		.L413
	.uleb128	855
	.uleb128	39
	.byte		"PortLevel"
	.byte		0
	.4byte		.L454
	.4byte		.L480
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L470:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L485:
	.sleb128	2
	.4byte		.L482-.L402
	.byte		"Dio_WriteChannelGroup"
	.byte		0
	.4byte		.L413
	.uleb128	891
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L483
	.4byte		.L484
	.sleb128	5
	.4byte		.L413
	.uleb128	891
	.uleb128	22
	.byte		"ChannelGroupIdPtr"
	.byte		0
	.4byte		.L474
	.4byte		.L486
	.sleb128	5
	.4byte		.L413
	.uleb128	891
	.uleb128	22
	.byte		"Level"
	.byte		0
	.4byte		.L467
	.4byte		.L487
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L482:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L492:
	.sleb128	2
	.4byte		.L489-.L402
	.byte		"Dio_MaskedWritePort"
	.byte		0
	.4byte		.L413
	.uleb128	927
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L490
	.4byte		.L491
	.sleb128	5
	.4byte		.L413
	.uleb128	927
	.uleb128	22
	.byte		"PortId"
	.byte		0
	.4byte		.L456
	.4byte		.L493
	.sleb128	5
	.4byte		.L413
	.uleb128	927
	.uleb128	22
	.byte		"Level"
	.byte		0
	.4byte		.L467
	.4byte		.L494
	.sleb128	5
	.4byte		.L413
	.uleb128	927
	.uleb128	22
	.byte		"Mask"
	.byte		0
	.4byte		.L467
	.4byte		.L495
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L489:
	.section	.debug_info,,n
.L418:
	.sleb128	7
	.4byte		.L496
	.uleb128	34
	.uleb128	14
	.4byte		.L497-.L2
	.uleb128	8
	.section	.debug_info,,n
.L388:
	.sleb128	8
	.byte		"u8NumChannelGroups"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L389:
	.sleb128	8
	.byte		"pChannelGroupList"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L497:
.L477:
	.sleb128	7
	.4byte		.L496
	.uleb128	34
	.uleb128	14
	.4byte		.L498-.L2
	.uleb128	4
.L385:
	.sleb128	8
	.byte		"port"
	.byte		0
	.4byte		.L457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L386:
	.sleb128	8
	.byte		"offset"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L387:
	.sleb128	8
	.byte		"mask"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L498:
	.section	.debug_info,,n
.L417:
	.sleb128	9
	.byte		"Dio_ConfigType"
	.byte		0
	.4byte		.L418
	.section	.debug_info,,n
.L416:
	.sleb128	10
	.4byte		.L417
	.section	.debug_info,,n
.L415:
	.sleb128	11
	.4byte		.L416
	.section	.debug_info,,n
.L425:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L424:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L425
.L423:
	.sleb128	9
	.byte		"Dio_LevelType"
	.byte		0
	.4byte		.L424
.L430:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L429:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L430
.L428:
	.sleb128	9
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L429
.L427:
	.sleb128	10
	.4byte		.L428
.L440:
	.sleb128	10
	.4byte		.L423
.L454:
	.sleb128	9
	.byte		"Dio_PortLevelType"
	.byte		0
	.4byte		.L429
.L457:
	.sleb128	9
	.byte		"Dio_PortType"
	.byte		0
	.4byte		.L424
.L456:
	.sleb128	10
	.4byte		.L457
.L467:
	.sleb128	10
	.4byte		.L454
.L476:
	.sleb128	9
	.byte		"Dio_ChannelGroupType"
	.byte		0
	.4byte		.L477
.L475:
	.sleb128	10
	.4byte		.L476
.L474:
	.sleb128	11
	.4byte		.L475
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L407:
	.sleb128	0
.L403:

	.section	.debug_loc,,n
	.align	0
.L431:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L433:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L439:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L441:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo9),4
	.d2locend
.L447:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locend
.L449:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
.L458:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L460:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L466:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locend
.L468:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo24),4
	.d2locend
.L478:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L480:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo29),3
	.d2locend
.L486:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locend
.L487:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo32),4
	.d2locend
.L493:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L494:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo35),4
	.d2locend
.L495:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo36),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Dio_MaskedWritePort"
	.wrcm.nstrlist "calls", "Dio_Siul2_MaskedWritePort"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_WriteChannelGroup"
	.wrcm.nstrlist "calls", "Dio_Siul2_WriteChannelGroup"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_ReadChannelGroup"
	.wrcm.nstrlist "calls", "Dio_Siul2_ReadChannelGroup"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_WritePort"
	.wrcm.nstrlist "calls", "Dio_Siul2_WritePort"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_ReadPort"
	.wrcm.nstrlist "calls", "Dio_Siul2_ReadPort"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_FlipChannel"
	.wrcm.nstrlist "calls", "Dio_Siul2_FlipChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_WriteChannel"
	.wrcm.nstrlist "calls", "Dio_Siul2_WriteChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_ReadChannel"
	.wrcm.nstrlist "calls", "Dio_Siul2_ReadChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dio.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dio.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dio.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dio.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dio.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dio.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Dio\ssc\make\..\..\generator\integration_package\src\Dio.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
