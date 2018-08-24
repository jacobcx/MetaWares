#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145_MainFunctionDiagnostics.c"
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
# FUNC(void, CANTRCV_31_TJA1145_CODE)CANTRCV_31_TJA1145_MAINFUNCTIONDIAGNOSTICS( void )
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L677:
	.section	.invalid_TEXT,,c
#$$ld
.L673:
	.0byte		.L671
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_MainFunctionDiagnostics.c"
        .d2line         84,36
#$$ld
.L680:

#$$bf	CanTrcv_31_TJA1145_MainFunctionDiagnostics,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		CanTrcv_31_TJA1145_MainFunctionDiagnostics
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_MainFunctionDiagnostics:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
# #if(CANTRCV_31_TJA1145_WAKEUP_NOT_SUPPORTED != CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
# 
#     VAR(uint16, AUTOMATIC) EventStatusReg;
# 
#     VAR(uint16, AUTOMATIC) StatusReg;
# 
#     VAR(uint16, AUTOMATIC) ControlReg;
#     
#     VAR(uint8, AUTOMATIC) Count_u8;
#     
#     VAR(uint8, AUTOMATIC) CantrcvPnErr_u8;
# 
#     VAR(uint8, AUTOMATIC) CanTrcvPnConfigErr_u8;
#     
#     VAR(uint8, AUTOMATIC) CanTrcvTxDominant_u8;
#     
#     /* Pointer to the Status array for each Channel. */
#     P2VAR (CanTrcv_31_TJA1145_StatusType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_DATA )Status_p ;
#     
#     /* Pointer to index the constant LinkTime Congiguration Array. */
#     P2CONST (CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)LtConfig_p ;
#     
#     for(Count_u8 = 0; Count_u8 < CANTRCV_31_TJA1145_MAXCHANNELS_U16; Count_u8++)
#     {
#     
#         LtConfig_p = &(CANTRCV_31_TJA1145_LT_CONFIG_P[Count_u8]);
#         
#         Status_p = &(CANTRCV_31_TJA1145_STATUS_P[Count_u8]);
#         
#         if (TRUE == LtConfig_p->CanTrcvChannelUsed)
#         {
#         
#             if ( TRUE != Status_p->CanTrcvInitialised_bt)
#             {
#             
# /* Check whether DEV  error detection enabled. */
# #if(STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)
#                 /* Report to DET. */
#                 Det_ReportError ( CANTRCV_31_TJA1145_MODULE_ID, 
#                                   CANTRCV_31_TJA1145_INSTANCE_ID,
#                                   CANTRCV_31_TJA1145_MAIN_FUNCTION_DIAGNOSTICS_SID, 
#                                   CANTRCV_31_TJA1145_E_UNINIT);
# #endif
# 
#             }
#             else
#             {
#             
#                 SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_6();
#                 
#                 if (TRUE == Status_p->CanTrcvMainDiagnosticRxFlag)
#                 {
#                     /* Read Event Status Register Value */
#                     EventStatusReg = Status_p->CanTrcvMainFuncRxBuf[EVENT_STATUS_REG_INDEX_RX_BUFF];
# 
#                     /* Read Status Register Value */
#                     StatusReg = Status_p->CanTrcvMainFuncRxBuf[STATUS_REG_INDEX_RX_BUFF];
# 
#                     /* Read Control Register Value */
#                     ControlReg = Status_p->CanTrcvMainFuncRxBuf[CONTROL_REG_INDEX_RX_BUFF];
#                     
#                     Status_p->CanTrcvMainDiagnosticRxFlag = FALSE;
#                     
#                     SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_6();
#                     
#                     CantrcvPnErr_u8 = CANTRCV_31_TJA1145_READ_BITN(EventStatusReg, CANTRCV_31_TJA1145_PNFDE_BIT);  
#                     
#                     CanTrcvPnConfigErr_u8 = CANTRCV_31_TJA1145_READ_BITN(ControlReg, CANTRCV_31_TJA1145_PNCOK_BIT);  
#                     
#                     CanTrcvTxDominant_u8 = CANTRCV_31_TJA1145_READ_BITN(StatusReg, CANTRCV_31_TJA1145_CFS_BIT);  
#                     
#                     /* If there is a PN error and the configuration is ok, then it is PN frame detection error */
#                     /* or if transmission disabled due to a TXD dominant time out Exception */
#                     if ( ( (CantrcvPnErr_u8 != 0) || (CanTrcvPnConfigErr_u8 != 1) ) ||
#                          ( CanTrcvTxDominant_u8 != 0) )
#                     {
#                     
# /* Check whether DEV  error detection enabled. */
# #if(STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)
#                         /* Report to DET. */
#                         Det_ReportError ( CANTRCV_31_TJA1145_MODULE_ID, 
#                                           CANTRCV_31_TJA1145_INSTANCE_ID,
#                                           CANTRCV_31_TJA1145_MAIN_FUNCTION_DIAGNOSTICS_SID, 
#                                           CANTRCV_31_TJA1145_E_BUS_ERROR);
# #endif
# 
#                     }                            
#                     
#                 }
#                 else
#                 {
#                 
#                     SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_6();
#                     
#                 }
#                              
#             }
#             
#         }
#         
#     }
# 
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
#     
# }/* End of CanTrcv_31_TJA1145_MainFunctionDiagnostics () */
	.d2line		191
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L681:
	.type		CanTrcv_31_TJA1145_MainFunctionDiagnostics,@function
	.size		CanTrcv_31_TJA1145_MainFunctionDiagnostics,.-CanTrcv_31_TJA1145_MainFunctionDiagnostics
# Number of nodes = 0

# Allocations for CanTrcv_31_TJA1145_MainFunctionDiagnostics

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L674:
.L682:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_MainFunctionDiagnostics.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_MainFunctionDiagnostics.c"
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
.L671:
	.4byte		.L672-.L670
.L670:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L676-.L671
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_MainFunctionDiagnostics.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L673
	.4byte		.L674
	.4byte		.L677
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L683:
	.sleb128	2
	.4byte		.L679-.L671
	.byte		"CanTrcv_31_TJA1145_MainFunctionDiagnostics"
	.byte		0
	.4byte		.L682
	.uleb128	84
	.uleb128	36
	.byte		0x1
	.byte		0x1
	.4byte		.L680
	.4byte		.L681
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L679:
	.section	.debug_info,,n
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L676:
	.sleb128	0
.L672:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_TJA1145_MainFunctionDiagnostics"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunctionDiagnostics.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunctionDiagnostics.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunctionDiagnostics.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunctionDiagnostics.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunctionDiagnostics.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunctionDiagnostics.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\TJA1145\make\..\src\CanTrcv_31_TJA1145_MainFunctionDiagnostics.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
