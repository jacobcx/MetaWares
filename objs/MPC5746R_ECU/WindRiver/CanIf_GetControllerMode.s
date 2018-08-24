#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_GetControllerMode.c"
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
# FUNC(Std_ReturnType, CANIF_CODE)CanIf_GetControllerMode
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_GetControllerMode.c"
        .d2line         59,33
#$$ld
.L196:

#$$bf	CanIf_GetControllerMode,interprocedural,rasave,nostackparams
	.globl		CanIf_GetControllerMode
	.d2_cfa_start __cie
CanIf_GetControllerMode:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# ControllerId=r31 ControllerId=r3
	mr		r30,r4		# ControllerModePtr=r30 ControllerModePtr=r4
	.d2prologue_end
# (
#     VAR(uint8,AUTOMATIC) ControllerId,
#     P2VAR(CanIf_ControllerModeType, AUTOMATIC, CANIF_APPL_DATA)
#     ControllerModePtr
# )
# {
#     /* REQ: [CANIF229] */
#     /* Initialize return value */
#     VAR(Std_ReturnType, AUTOMATIC) CanIfRet = E_OK; /* PRQA S 3204 */
	.d2line		68
.Llo5:
	diab.li		r3,0		# CanIfRet=r3
# 
# /* REQ: [CANIF018], [CANIF661] */
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
# 
#     /* REQ: [CANIF316] */
#     /* If the CanIf module was not initialized */
#     if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
#     {
# 
#         /* Report error to DET */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_GET_CNTRLR_MODE,
#                          CANIF_E_UNINIT );
# 
#         /* set return value to not ok */
#         CanIfRet = E_NOT_OK;
#     }
# 
#     else
#     {
#         /* REQ: [CANIF313] */
#         /* If ControllerId is invalid */
#         if ( ControllerId >= CanIf_NumberOfCanCtrlUnits_u8 )
#         {
#             /* Report error to DET */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_GET_CNTRLR_MODE,
#                              CANIF_E_PARAM_CONTROLLERID );
# 
#             /* set return value to not ok */
#             CanIfRet = E_NOT_OK;
# 
#         }
#         else
#         {
#             /* REQ: [CANIF656] */
#             /* If ControllerModePtr is not valid */
#             if ( NULL_PTR == ControllerModePtr )
#             {
#                 /* Report error to DET */
#                 (void)Det_ReportError( CANIF_MODULE_ID,
#                         CANIF_INSTANCE_ID,
#                         CANIF_SID_GET_CNTRLR_MODE,
#                         CANIF_E_PARAM_POINTER );
# 
#                 /* set return value to not ok */
#                 CanIfRet = E_NOT_OK;
# 
#             }/* End if ( NULL_PTR == ControllerModePtr ) */
#         }/* End if ( Controller >= CanIf_NumberOfCanCtrlUnits_u8 ) */
# 
#     }/* End if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 ) */
# 
#     /* if DET error is not reported */
#     if ( E_OK == CanIfRet )
# 
# #endif/* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
#     {
#         /* Enter critical section */
#         SchM_Enter_CanIf( SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		132
.Llo2:
	bl		SchM_Enter_CanIf
# 
#         /* REQ: [CANIF541] */
#         /* Copy the current mode of controller */
#         /* PRQA S 505 1 */ /* Misra 1.2 ControllerModePtr is not NULL here */
#         *ControllerModePtr = CanIf_ControllerMode_a[ControllerId];
	.d2line		137
	lis		r3,CanIf_ControllerMode_a@ha		# CanIfRet=r3
.Llo7:
	e_add16i		r3,r3,CanIf_ControllerMode_a@l		# CanIfRet=r3 CanIfRet=r3
.Llo3:
	rlwinm		r31,r31,2,22,29		# ControllerId=r31 ControllerId=r31
.Llo4:
	lwzx		r0,r3,r31		# CanIfRet=r3
	stw		r0,0(r30)		# ControllerModePtr=r30
# 
#         /* Leave critical section */
#         SchM_Exit_CanIf( SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		140
	diab.li		r3,0		# CanIfRet=r3
.Llo8:
	bl		SchM_Exit_CanIf
# 
#     } /* End if ( E_OK == CanIfRet ) */
# 
#     return CanIfRet;
	.d2line		144
	diab.li		r3,0		# CanIfRet=r3
# 
# } /* End of CanIf_GetControllerMode() */
	.d2line		146
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo6:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L197:
	.type		CanIf_GetControllerMode,@function
	.size		CanIf_GetControllerMode,.-CanIf_GetControllerMode
# Number of nodes = 24

# Allocations for CanIf_GetControllerMode
#	?a4		ControllerId
#	?a5		ControllerModePtr
#	?a6		CanIfRet

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L214:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L211:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L198:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_GetControllerMode.c"
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_GetControllerMode.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info,,n
.L202:
	.sleb128	2
	.4byte		.L195-.L2
	.byte		"CanIf_GetControllerMode"
	.byte		0
	.4byte		.L198
	.uleb128	59
	.uleb128	33
	.4byte		.L199
	.byte		0x1
	.byte		0x1
	.4byte		.L196
	.4byte		.L197
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L198
	.uleb128	59
	.uleb128	33
	.byte		"ControllerId"
	.byte		0
	.4byte		.L200
	.4byte		.L203
	.sleb128	3
	.4byte		.L198
	.uleb128	59
	.uleb128	33
	.byte		"ControllerModePtr"
	.byte		0
	.4byte		.L204
	.4byte		.L207
	.section	.debug_info,,n
.L208:
	.sleb128	4
	.4byte		.L198
	.uleb128	68
	.uleb128	36
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L199
	.4byte		.L209
	.section	.debug_info,,n
	.sleb128	0
.L195:
	.section	.debug_info,,n
.L210:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L211
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L212
	.0byte		.L210
	.section	.debug_info,,n
.L206:
	.sleb128	6
	.4byte		.L214
	.uleb128	74
	.uleb128	1
	.4byte		.L215-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L215:
	.section	.debug_info,,n
.L201:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L200:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L201
.L199:
	.sleb128	9
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L200
.L205:
	.sleb128	9
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L206
	.section	.debug_info,,n
.L204:
	.sleb128	10
	.4byte		.L205
	.section	.debug_info,,n
.L212:
	.sleb128	11
	.4byte		.L213-.L2
	.4byte		.L205
	.section	.debug_info,,n
	.sleb128	12
	.sleb128	0
.L213:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L203:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L207:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo6),30
	.d2locend
.L209:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_GetControllerMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_CanIf","SchM_Exit_CanIf"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_GetControllerMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_GetControllerMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_GetControllerMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_GetControllerMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_GetControllerMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_GetControllerMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_GetControllerMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
