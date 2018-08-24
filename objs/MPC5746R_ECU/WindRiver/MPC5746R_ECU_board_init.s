#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"MPC5746R_ECU_board_init.c"
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
# void System_Clk_160mhz(void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\TTs\\PowerPC\\compiler_common\\platform\\MPC5746R_ECU\\make\\..\\src\\MPC5746R_ECU_board_init.c"
        .d2line         28,6
#$$ld
.L10571:

#$$bf	System_Clk_160mhz,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		System_Clk_160mhz
	.d2_cfa_start __cie
System_Clk_160mhz:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 	#if 0
#     /* F160 - max 160 MHz */
#     MC_CGM.SC_DC[0].B.DIV = 0;
#     MC_CGM.SC_DC[0].B.DE  = 1;
#     /* S80 - max 80 MHz */
#     /* MC_CGM_SC_DC1[DIV] and MC_CGM_SC_DC5[DIV] must be equal at all times */
#     MC_CGM.SC_DC[1].B.DIV = 1;
#     MC_CGM.SC_DC[1].B.DE  = 1;
#     /* FS80 - max 80 MHz */
#     /* MC_CGM_SC_DC1[DIV] and MC_CGM_SC_DC5[DIV] must be equal at all times */
#     //MC_CGM.SC_DC5.R = MC_CGM.SC_DC1.R;  /* 80 MHz max */
#     /* S40 - max 40 MHz */
#     MC_CGM.SC_DC[2].B.DIV = 3;
#     MC_CGM.SC_DC[2].B.DE  = 1;
# 	#endif
# 	
#     /* F40 - max 40 MHz */
#    // MC_CGM.SC_DC3.B.DIV = 3;
#     //MC_CGM.SC_DC3.B.DE  = 1;
#     /* F80 - max 80 MHz */
#    // MC_CGM.SC_DC4.B.DIV = 1;
#     //MC_CGM.SC_DC4.B.DE  = 1;
# 
# 	
# 	#if 0
#     /* Connect XOSC to PLL */
#     MC_CGM.AC5_SC.B.SELCTL = 1;
#     /* Configure PLL0 Dividers - 160MHz from 40Mhx XOSC */
#     PLLDIG.PLL0DV.B.PREDIV  = 2;
#     PLLDIG.PLL0DV.B.MFD     = 32;
#     PLLDIG.PLL0DV.B.RFDPHI  = 2;
#     //PLLDIG.PLLCAL3.R       = 0x09C3C000;   // replacement ??
#     //PLLDIG.PLL1FD.B.SMDEN   = 1;       /* Sigma delta modulation disabled */
#     /* switch to PLL */
#     MC_ME.DRUN_MC.R  = 0x00130172;    /* FLASH in normal mode, PLLON, FXOSC ON, Use
# PLL_PHI_0 */
# 	
# 	
# 	/* enable all modes, enable all peripherals */
#     MC_ME.ME.R        = 0x000005FF;
#     MC_ME.RUN_PC[0].R = 0x000000FE;
#     MC_ME.MCTL.R     = 0x30005AF0;    /* DRUN target mode + KEY */
#     MC_ME.MCTL.R     = 0x3000A50F;    /* DRUN target mode + KEY Inverted */
# 
#     while(MC_ME.GS.B.S_MTRANS == 1); /* Wait for mode transition complete */
# #endif	
# }
	.d2line		76
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L10572:
	.type		System_Clk_160mhz,@function
	.size		System_Clk_160mhz,.-System_Clk_160mhz
# Number of nodes = 0

# Allocations for System_Clk_160mhz
# void BoardInit (void)
	.align		2
	.section	.text_vle
        .d2line         80,6
#$$ld
.L10577:

#$$bf	BoardInit,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r5,r8,r9,r10,cr0,lr,ctr
	.globl		BoardInit
	.d2_cfa_start __cie
BoardInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# { 
#     System_Clk_160mhz();
	.d2line		82
	bl		System_Clk_160mhz
	e_lis		r5,RC_RAMCODE_SIZE@h
#$$ep
	e_or2i		r5,RC_RAMCODE_SIZE@l
#$$ep
	or.		r5,r5,r5
#$$ep
	bc		1,2,data_copy4	# eq
#$$ep
	mtspr		ctr,r5
#$$ep
	e_lis		r8,RC_RAMCODE_SRC@h
#$$ep
	e_or2i		r8,RC_RAMCODE_SRC@l
#$$ep
	e_addi		r8,r8,-4
#$$ep
	e_lis		r9,RC_RAMCODE_DEST@h
#$$ep
	e_or2i		r9,RC_RAMCODE_DEST@l
#$$ep
	e_addi		r9,r9,-4
#$$ep
data_copy_loop4:
#$$ep
	e_lwzu		r10,4(r8)
#$$ep
	e_stwu		r10,4(r9)
#$$ep
	e_bc		2,0,data_copy_loop4
#$$ep
data_copy4:
#$$ep
	e_lis		r5,RC_PPC_SDATA2_SIZE@h
#$$ep
	e_or2i		r5,RC_PPC_SDATA2_SIZE@l
#$$ep
	or.		r5,r5,r5
#$$ep
	bc		1,2,data_copy1	# eq
#$$ep
	mtspr		ctr,r5
#$$ep
	e_lis		r8,RC_PPC_SDATA2_SRC@h
#$$ep
	e_or2i		r8,RC_PPC_SDATA2_SRC@l
#$$ep
	e_addi		r8,r8,-4
#$$ep
	e_lis		r9,RC_PPC_SDATA2_DEST@h
#$$ep
	e_or2i		r9,RC_PPC_SDATA2_DEST@l
#$$ep
	e_addi		r9,r9,-4
#$$ep
data_copy_loop1:
#$$ep
	e_lwzu		r10,4(r8)
#$$ep
	e_stwu		r10,4(r9)
#$$ep
	e_bc		2,0,data_copy_loop1
#$$ep
data_copy1:
#$$ep
	e_lis		r5,RC_SDATA_SIZE@h
#$$ep
	e_or2i		r5,RC_SDATA_SIZE@l
#$$ep
	or.		r5,r5,r5
#$$ep
	bc		1,2,data_copy2	# eq
#$$ep
	mtspr		ctr,r5
#$$ep
	e_lis		r8,RC_SDATA_SRC@h
#$$ep
	e_or2i		r8,RC_SDATA_SRC@l
#$$ep
	e_addi		r8,r8,-4
#$$ep
	e_lis		r9,RC_SDATA_DEST@h
#$$ep
	e_or2i		r9,RC_SDATA_DEST@l
#$$ep
	e_addi		r9,r9,-4
#$$ep
data_copy_loop2:
#$$ep
	e_lwzu		r10,4(r8)
#$$ep
	e_stwu		r10,4(r9)
#$$ep
	e_bc		2,0,data_copy_loop2
#$$ep
data_copy2:
#$$ep
	e_lis		r5,RC_DATA_SIZE@h
#$$ep
	e_or2i		r5,RC_DATA_SIZE@l
#$$ep
	or.		r5,r5,r5
#$$ep
	bc		1,2,data_copy3	# eq
#$$ep
	mtspr		ctr,r5
#$$ep
	e_lis		r8,RC_DATA_SRC@h
#$$ep
	e_or2i		r8,RC_DATA_SRC@l
#$$ep
	e_addi		r8,r8,-4
#$$ep
	e_lis		r9,RC_DATA_DEST@h
#$$ep
	e_or2i		r9,RC_DATA_DEST@l
#$$ep
	e_addi		r9,r9,-4
#$$ep
data_copy_loop3:
#$$ep
	e_lwzu		r10,4(r8)
#$$ep
	e_stwu		r10,4(r9)
#$$ep
	e_bc		2,0,data_copy_loop3
#$$ep
data_copy3:
#$$ep
# //	Clock_and_Mode_Init();
# //	demo_main();
# //  Sys_Init();
# //  SUIL2_Init();
# //  Flash_Controller_Init();
#   /*while(1);*/
#   
# /************/
# /* .ramcode */
# /************/
#      asm(" e_lis   r5, RC_RAMCODE_SIZE@h");      /* Number of words */
#      asm(" e_or2i    r5, RC_RAMCODE_SIZE@l");      /* Number of words */
#      asm(" or.   r5, r5, r5");                     /* Number of words */
#      asm(" e_beq   data_copy4");
#      asm(" se_mtctr r5");                       /* configure control register for use with e_bdnz */
# 
# /* source address of the section */
#      asm(" e_lis   r8, RC_RAMCODE_SRC@h");
#      asm(" e_or2i    r8, RC_RAMCODE_SRC@l");
#      asm(" e_subi  r8,r8,4");                   /* decrement by 4 to prepare for e_stwu in loop */
# 
# /* Destination address of the section */
#      asm(" e_lis   r9, RC_RAMCODE_DEST@h");
#      asm(" e_or2i    r9, RC_RAMCODE_DEST@l");
#      asm(" e_subi  r9,r9,4");                   /* decrement by 4 to prepare for e_stwu in loop */
# 
# /* Repeat */
#      asm("data_copy_loop4:");
#      asm(" e_lwzu  r10,4(r8)");
#      asm(" e_stwu  r10,4(r9)");
#      asm(" e_bdnz  data_copy_loop4");
#      asm("data_copy4:");
# 	 
# /*******************/
# /* .PPC.EMB.sdata0 */
# /*******************/
#      asm(" e_lis   r5, RC_PPC_SDATA2_SIZE@h");      /* Number of words */
#      asm(" e_or2i    r5, RC_PPC_SDATA2_SIZE@l");    /* Number of words */
#      asm(" or.   r5, r5, r5");                      /* Number of words */
#      asm(" e_beq   data_copy1");
#      asm(" se_mtctr r5");                       /* configure control register for use with e_bdnz */
# 
# /* source address of the section */
#      asm(" e_lis   r8, RC_PPC_SDATA2_SRC@h");
#      asm(" e_or2i    r8, RC_PPC_SDATA2_SRC@l");
#      asm(" e_subi  r8,r8,4");                   /* decrement by 4 to prepare for e_stwu in loop */
# 
# /* Destination address of the section */
#      asm(" e_lis   r9, RC_PPC_SDATA2_DEST@h");
#      asm(" e_or2i    r9, RC_PPC_SDATA2_DEST@l");
#      asm(" e_subi  r9,r9,4");                   /* decrement by 4 to prepare for e_stwu in loop */
# 
# /* Repeat */
#      asm("data_copy_loop1:");
#      asm(" e_lwzu  r10,4(r8)");
#      asm(" e_stwu  r10,4(r9)");
#      asm(" e_bdnz  data_copy_loop1");
#     asm("data_copy1:");
#   
# /**********/
# /* .sdata */
# /**********/
#      asm(" e_lis   r5, RC_SDATA_SIZE@h");       /* Number of words */
#      asm(" e_or2i    r5, RC_SDATA_SIZE@l");     /* Number of words */
#      asm(" or.   r5, r5, r5");                  /* Number of words */
#      asm(" e_beq   data_copy2");
#      asm(" se_mtctr r5");                       /* configure control register for use with e_bdnz */
# 
# /* source address of the section */
#      asm(" e_lis   r8, RC_SDATA_SRC@h");
#      asm(" e_or2i    r8, RC_SDATA_SRC@l");
#      asm(" e_subi  r8,r8,4");                   /* decrement by 4 to prepare for e_stwu in loop */
# 
# /* Destination address of the section */
#      asm(" e_lis   r9, RC_SDATA_DEST@h");
#      asm(" e_or2i    r9, RC_SDATA_DEST@l");
#      asm(" e_subi  r9,r9,4");                   /* decrement by 4 to prepare for e_stwu in loop */
# 
# /* Repeat */
#      asm("data_copy_loop2:");
#      asm(" e_lwzu  r10,4(r8)");
#      asm(" e_stwu  r10,4(r9)");
#      asm(" e_bdnz  data_copy_loop2");
#      asm("data_copy2:");
# 	 
# /**********/
# /* .data */
# /**********/
#      asm(" e_lis   r5, RC_DATA_SIZE@h");        /* Number of words */
#      asm(" e_or2i    r5, RC_DATA_SIZE@l");      /* Number of words */
#      asm(" or.   r5, r5, r5");                  /* Number of words */
#      asm(" e_beq   data_copy3");
#      asm(" se_mtctr r5");                       /* configure control register for use with e_bdnz */
# 
# /* source address of the section */
#      asm(" e_lis   r8, RC_DATA_SRC@h");
#      asm(" e_or2i    r8, RC_DATA_SRC@l");
#      asm(" e_subi  r8,r8,4");                   /* decrement by 4 to prepare for e_stwu in loop */
# 
# /* Destination address of the section */
#      asm(" e_lis   r9, RC_DATA_DEST@h");
#      asm(" e_or2i    r9, RC_DATA_DEST@l");
#      asm(" e_subi  r9,r9,4");                   /* decrement by 4 to prepare for e_stwu in loop */
# 
# /* Repeat */
#      asm("data_copy_loop3:");
#      asm(" e_lwzu  r10,4(r8)");
#      asm(" e_stwu  r10,4(r9)");
#      asm(" e_bdnz  data_copy_loop3");
#      asm("data_copy3:");
# 	 
# 
# 
# }
	.d2line		196
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L10578:
	.type		BoardInit,@function
	.size		BoardInit,.-BoardInit
# Number of nodes = 66

# Allocations for BoardInit
# void BoardInit2 (void)
	.align		2
	.section	.text_vle
        .d2line         197,6
#$$ld
.L10582:

#$$bf	BoardInit2,interprocedural,nostackparams

# Regs written: r0,r1,r4,r5,lr
	.globl		BoardInit2
	.d2_cfa_start __cie
BoardInit2:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
  .equ AIPS_A_MPRA, 0xFC000000 
#$$ep
	.d2line		667
	e_lis		r4,AIPS_A_MPRA@ha
#$$ep
	e_or2i		r4,AIPS_A_MPRA@l
#$$ep
	e_lis		r5,30583
#$$ep
	e_or2i		r5,30583
#$$ep
	e_stw		r5,0(r4)
#$$ep
	diab.li		r5,0
#$$ep
  .equ AIPS_A_PACRA, 0xFC000100 
#$$ep
	e_lis		r4,AIPS_A_PACRA@ha
#$$ep
	e_or2i		r4,AIPS_A_PACRA@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_PACRB, 0xFC000104 
#$$ep
	e_lis		r4,AIPS_A_PACRB@ha
#$$ep
	e_or2i		r4,AIPS_A_PACRB@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_PACRC, 0xFC000108 
#$$ep
	e_lis		r4,AIPS_A_PACRC@ha
#$$ep
	e_or2i		r4,AIPS_A_PACRC@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_PACRD, 0xFC00010C 
#$$ep
	e_lis		r4,AIPS_A_PACRD@ha
#$$ep
	e_or2i		r4,AIPS_A_PACRD@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_PACRF, 0xFC000114 
#$$ep
	e_lis		r4,AIPS_A_PACRF@ha
#$$ep
	e_or2i		r4,AIPS_A_PACRF@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_PACRG, 0xFC000118 
#$$ep
	e_lis		r4,AIPS_A_PACRG@ha
#$$ep
	e_or2i		r4,AIPS_A_PACRG@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_PACRH, 0xFC00011C 
#$$ep
	e_lis		r4,AIPS_A_PACRH@ha
#$$ep
	e_or2i		r4,AIPS_A_PACRH@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRA, 0xFC000140 
#$$ep
	e_lis		r4,AIPS_A_OPACRA@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRA@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRB, 0xFC000144 
#$$ep
	e_lis		r4,AIPS_A_OPACRB@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRB@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRC, 0xFC000148 
#$$ep
	e_lis		r4,AIPS_A_OPACRC@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRC@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRD, 0xFC00014C 
#$$ep
	e_lis		r4,AIPS_A_OPACRD@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRD@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRE, 0xFC000150 
#$$ep
	e_lis		r4,AIPS_A_OPACRE@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRE@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRF, 0xFC000154 
#$$ep
	e_lis		r4,AIPS_A_OPACRF@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRF@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRG, 0xFC000158 
#$$ep
	e_lis		r4,AIPS_A_OPACRG@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRG@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRH, 0xFC00015C 
#$$ep
	e_lis		r4,AIPS_A_OPACRH@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRH@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRI, 0xFC000160 
#$$ep
	e_lis		r4,AIPS_A_OPACRI@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRI@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRJ, 0xFC000164 
#$$ep
	e_lis		r4,AIPS_A_OPACRJ@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRJ@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRK, 0xFC000168 
#$$ep
	e_lis		r4,AIPS_A_OPACRK@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRK@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRL, 0xFC00016C 
#$$ep
	e_lis		r4,AIPS_A_OPACRL@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRL@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRM, 0xFC000170 
#$$ep
	e_lis		r4,AIPS_A_OPACRM@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRM@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRN, 0xFC000174 
#$$ep
	e_lis		r4,AIPS_A_OPACRN@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRN@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRO, 0xFC000178 
#$$ep
	e_lis		r4,AIPS_A_OPACRO@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRO@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRP, 0xFC00017C 
#$$ep
	e_lis		r4,AIPS_A_OPACRP@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRP@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRQ, 0xFC000180 
#$$ep
	e_lis		r4,AIPS_A_OPACRQ@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRQ@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRR, 0xFC000184 
#$$ep
	e_lis		r4,AIPS_A_OPACRR@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRR@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRS, 0xFC000188 
#$$ep
	e_lis		r4,AIPS_A_OPACRS@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRS@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRT, 0xFC00018C 
#$$ep
	e_lis		r4,AIPS_A_OPACRT@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRT@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRU, 0xFC000190 
#$$ep
	e_lis		r4,AIPS_A_OPACRU@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRU@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRV, 0xFC000194 
#$$ep
	e_lis		r4,AIPS_A_OPACRV@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRV@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRW, 0xFC000198 
#$$ep
	e_lis		r4,AIPS_A_OPACRW@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRW@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRX, 0xFC00019C 
#$$ep
	e_lis		r4,AIPS_A_OPACRX@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRX@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRY, 0xFC0001A0 
#$$ep
	e_lis		r4,AIPS_A_OPACRY@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRY@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRZ, 0xFC0001A4 
#$$ep
	e_lis		r4,AIPS_A_OPACRZ@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRZ@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRAA, 0xFC0001A8 
#$$ep
	e_lis		r4,AIPS_A_OPACRAA@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRAA@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRAB, 0xFC0001AC 
#$$ep
	e_lis		r4,AIPS_A_OPACRAB@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRAB@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRAC, 0xFC0001B0 
#$$ep
	e_lis		r4,AIPS_A_OPACRAC@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRAC@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRAD, 0xFC0001B4 
#$$ep
	e_lis		r4,AIPS_A_OPACRAD@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRAD@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRAE, 0xFC0001B8 
#$$ep
	e_lis		r4,AIPS_A_OPACRAE@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRAE@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_A_OPACRAF, 0xFC0001BC 
#$$ep
	e_lis		r4,AIPS_A_OPACRAF@ha
#$$ep
	e_or2i		r4,AIPS_A_OPACRAF@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_MPRA, 0xF8000000 
#$$ep
	e_lis		r4,AIPS_B_MPRA@ha
#$$ep
	e_or2i		r4,AIPS_B_MPRA@l
#$$ep
	e_lis		r5,30583
#$$ep
	e_or2i		r5,30583
#$$ep
	e_stw		r5,0(r4)
#$$ep
	diab.li		r5,0
#$$ep
  .equ AIPS_B_PACRA, 0xF8000100 
#$$ep
	e_lis		r4,AIPS_B_PACRA@ha
#$$ep
	e_or2i		r4,AIPS_B_PACRA@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_PACRB, 0xF8000104 
#$$ep
	e_lis		r4,AIPS_B_PACRB@ha
#$$ep
	e_or2i		r4,AIPS_B_PACRB@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_PACRC, 0xF8000108 
#$$ep
	e_lis		r4,AIPS_B_PACRC@ha
#$$ep
	e_or2i		r4,AIPS_B_PACRC@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_PACRD, 0xF800010C 
#$$ep
	e_lis		r4,AIPS_B_PACRD@ha
#$$ep
	e_or2i		r4,AIPS_B_PACRD@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_PACRF, 0xF8000114 
#$$ep
	e_lis		r4,AIPS_B_PACRF@ha
#$$ep
	e_or2i		r4,AIPS_B_PACRF@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_PACRG, 0xF8000118 
#$$ep
	e_lis		r4,AIPS_B_PACRG@ha
#$$ep
	e_or2i		r4,AIPS_B_PACRG@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_PACRH, 0xF800011C 
#$$ep
	e_lis		r4,AIPS_B_PACRH@ha
#$$ep
	e_or2i		r4,AIPS_B_PACRH@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRA, 0xF8000140 
#$$ep
	e_lis		r4,AIPS_B_OPACRA@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRA@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRB, 0xF8000144 
#$$ep
	e_lis		r4,AIPS_B_OPACRB@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRB@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRC, 0xF8000148 
#$$ep
	e_lis		r4,AIPS_B_OPACRC@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRC@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRD, 0xF800014C 
#$$ep
	e_lis		r4,AIPS_B_OPACRD@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRD@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRE, 0xF8000150 
#$$ep
	e_lis		r4,AIPS_B_OPACRE@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRE@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRF, 0xF8000154 
#$$ep
	e_lis		r4,AIPS_B_OPACRF@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRF@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRG, 0xF8000158 
#$$ep
	e_lis		r4,AIPS_B_OPACRG@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRG@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRH, 0xF800015C 
#$$ep
	e_lis		r4,AIPS_B_OPACRH@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRH@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRI, 0xF8000160 
#$$ep
	e_lis		r4,AIPS_B_OPACRI@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRI@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRJ, 0xF8000164 
#$$ep
	e_lis		r4,AIPS_B_OPACRJ@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRJ@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRK, 0xF8000168 
#$$ep
	e_lis		r4,AIPS_B_OPACRK@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRK@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRL, 0xF800016C 
#$$ep
	e_lis		r4,AIPS_B_OPACRL@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRL@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRM, 0xF8000170 
#$$ep
	e_lis		r4,AIPS_B_OPACRM@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRM@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRN, 0xF8000174 
#$$ep
	e_lis		r4,AIPS_B_OPACRN@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRN@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRO, 0xF8000178 
#$$ep
	e_lis		r4,AIPS_B_OPACRO@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRO@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRP, 0xF800017C 
#$$ep
	e_lis		r4,AIPS_B_OPACRP@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRP@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRQ, 0xF8000180 
#$$ep
	e_lis		r4,AIPS_B_OPACRQ@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRQ@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRR, 0xF8000184 
#$$ep
	e_lis		r4,AIPS_B_OPACRR@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRR@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRS, 0xF8000188 
#$$ep
	e_lis		r4,AIPS_B_OPACRS@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRS@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRT, 0xF800018C 
#$$ep
	e_lis		r4,AIPS_B_OPACRT@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRT@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRU, 0xF8000190 
#$$ep
	e_lis		r4,AIPS_B_OPACRU@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRU@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRV, 0xF8000194 
#$$ep
	e_lis		r4,AIPS_B_OPACRV@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRV@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRW, 0xF8000198 
#$$ep
	e_lis		r4,AIPS_B_OPACRW@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRW@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRX, 0xF800019C 
#$$ep
	e_lis		r4,AIPS_B_OPACRX@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRX@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRY, 0xF80001A0 
#$$ep
	e_lis		r4,AIPS_B_OPACRY@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRY@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRZ, 0xF80001A4 
#$$ep
	e_lis		r4,AIPS_B_OPACRZ@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRZ@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRAA, 0xF80001A8 
#$$ep
	e_lis		r4,AIPS_B_OPACRAA@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRAA@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRAB, 0xF80001AC 
#$$ep
	e_lis		r4,AIPS_B_OPACRAB@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRAB@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRAC, 0xF80001B0 
#$$ep
	e_lis		r4,AIPS_B_OPACRAC@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRAC@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRAD, 0xF80001B4 
#$$ep
	e_lis		r4,AIPS_B_OPACRAD@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRAD@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRAE, 0xF80001B8 
#$$ep
	e_lis		r4,AIPS_B_OPACRAE@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRAE@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
  .equ AIPS_B_OPACRAF, 0xF80001BC 
#$$ep
	e_lis		r4,AIPS_B_OPACRAF@ha
#$$ep
	e_or2i		r4,AIPS_B_OPACRAF@l
#$$ep
	e_stw		r5,0(r4)
#$$ep
# {
# 	
# /******************************************************************/
# /* Autosar Guidance 11 - The start-up code shall enable           */
# /* protection mechanisms for special function registers(SFR抯),   */
# /* if supported by the MCU.                                       */
# /* N/A - will be handled by Autosar OS                            */
# /******************************************************************/
# /* Setup the AIPS bus bridge and its protection features. Avoid that any access  */
# /* to a peripheral fails due to protection settings  For this purpose remove any */
# /* protection feature that might have been defined by default settings.          */
# /* To do so, we write b'0111 (0x7) into every protection field MPROT of the      */
# 
# /* AIPS_A_MPROT register, which will setup all 8 master ports accordingly.         */
# /*  The meaning of these four bits is as follows:                                */
# /*   0 - Master Buffer Writes: no (Write accesses are not bufferable)            */
# /*   1 - Master Trusted for Reads                                                */
# /*   1 - Master Trusted for Writes                                               */
# /*   1 - Master Priviledge Level: accesses are not forced to user-mode           */
# /* NOTE: we do only setup the masters M0-M7, M8-M15 are not modified at all.     */
#    
#     asm(" .equ AIPS_A_MPRA, 0xFC000000 ");
#     asm(" e_lis   r4, AIPS_A_MPRA@ha ");
#     asm(" e_or2i  r4, AIPS_A_MPRA@l ");
#     asm(" e_lis   r5, 0x77777777@ha ");
#     asm(" e_or2i  r5, 0x77777777@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     asm(" e_li r5, 0 ");
#     
# /* Allow non-priviledged access to all peripherals (on and off-platform). This is */
# /* achieved by modifying the PACR and OPACR registers in the AIPS.                */
# /* To do so, we write b'0000 (0x0) into every peripheral access control reg.      */
# /* The meaning of these four bits is as follows:                                  */
# /*   0 - Buffer Writes: no                                                        */
# /*   0 - Supervisor Protect: periph. doesn't require supervisor priviledge level  */
# /*   0 - Write Protect: no (peripheral allows write accesses)                     */
# /*   0 - Trusted Protect: no (accesses from an untrusted master allowed)          */
# 
#     asm(" .equ AIPS_A_PACRA, 0xFC000100 ");
#     asm(" e_lis   r4, AIPS_A_PACRA@ha ");
#     asm(" e_or2i  r4, AIPS_A_PACRA@l ");
#     asm(" e_stw   r5, 0(r4) ");
# 
#     asm(" .equ AIPS_A_PACRB, 0xFC000104 ");
#     asm(" e_lis   r4, AIPS_A_PACRB@ha ");
#     asm(" e_or2i  r4, AIPS_A_PACRB@l ");
#     asm(" e_stw   r5, 0(r4) ");
#      
#     asm(" .equ AIPS_A_PACRC, 0xFC000108 ");
#     asm(" e_lis   r4, AIPS_A_PACRC@ha ");
#     asm(" e_or2i  r4, AIPS_A_PACRC@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_A_PACRD, 0xFC00010C ");
#     asm(" e_lis   r4, AIPS_A_PACRD@ha ");
#     asm(" e_or2i  r4, AIPS_A_PACRD@l ");
#     asm(" e_stw   r5, 0(r4) ");
# /*    
#     asm(" .equ AIPS_A_PACRE, 0xFC000110 ");
#     asm(" e_lis   r4, AIPS_A_PACRE@ha ");
#     asm(" e_or2i  r4, AIPS_A_PACRE@l ");
#     asm(" e_stw   r5, 0(r4) ");        
# */
#     asm(" .equ AIPS_A_PACRF, 0xFC000114 ");
#     asm(" e_lis   r4, AIPS_A_PACRF@ha ");
#     asm(" e_or2i  r4, AIPS_A_PACRF@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_PACRG, 0xFC000118 ");
#     asm(" e_lis   r4, AIPS_A_PACRG@ha ");
#     asm(" e_or2i  r4, AIPS_A_PACRG@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_PACRH, 0xFC00011C ");
#     asm(" e_lis   r4, AIPS_A_PACRH@ha ");
#     asm(" e_or2i  r4, AIPS_A_PACRH@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_OPACRA, 0xFC000140 ");
#     asm(" e_lis   r4, AIPS_A_OPACRA@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRA@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#   
#     asm(" .equ AIPS_A_OPACRB, 0xFC000144 ");
#     asm(" e_lis   r4, AIPS_A_OPACRB@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRB@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_OPACRC, 0xFC000148 ");
#     asm(" e_lis   r4, AIPS_A_OPACRC@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRC@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_A_OPACRD, 0xFC00014C ");
#     asm(" e_lis   r4, AIPS_A_OPACRD@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRD@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_A_OPACRE, 0xFC000150 ");
#     asm(" e_lis   r4, AIPS_A_OPACRE@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRE@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_OPACRF, 0xFC000154 ");
#     asm(" e_lis   r4, AIPS_A_OPACRF@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRF@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_A_OPACRG, 0xFC000158 ");
#     asm(" e_lis   r4, AIPS_A_OPACRG@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRG@l ");
#     asm(" e_stw   r5, 0(r4) ");    
#  
#     asm(" .equ AIPS_A_OPACRH, 0xFC00015C ");
#     asm(" e_lis   r4, AIPS_A_OPACRH@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRH@l ");
#     asm(" e_stw   r5, 0(r4) ");    
#     
#     asm(" .equ AIPS_A_OPACRI, 0xFC000160 ");
#     asm(" e_lis   r4, AIPS_A_OPACRI@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRI@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_A_OPACRJ, 0xFC000164 ");
#     asm(" e_lis   r4, AIPS_A_OPACRJ@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRJ@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#         
#     asm(" .equ AIPS_A_OPACRK, 0xFC000168 ");
#     asm(" e_lis   r4, AIPS_A_OPACRK@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRK@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_A_OPACRL, 0xFC00016C ");
#     asm(" e_lis   r4, AIPS_A_OPACRL@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRL@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_A_OPACRM, 0xFC000170 ");
#     asm(" e_lis   r4, AIPS_A_OPACRM@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRM@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_OPACRN, 0xFC000174 ");
#     asm(" e_lis   r4, AIPS_A_OPACRN@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRN@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_OPACRO, 0xFC000178 ");
#     asm(" e_lis   r4, AIPS_A_OPACRO@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRO@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_OPACRP, 0xFC00017C ");
#     asm(" e_lis   r4, AIPS_A_OPACRP@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRP@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_OPACRQ, 0xFC000180 ");
#     asm(" e_lis   r4, AIPS_A_OPACRQ@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRQ@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_A_OPACRR, 0xFC000184 ");
#     asm(" e_lis   r4, AIPS_A_OPACRR@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRR@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_A_OPACRS, 0xFC000188 ");
#     asm(" e_lis   r4, AIPS_A_OPACRS@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRS@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_A_OPACRT, 0xFC00018C ");
#     asm(" e_lis   r4, AIPS_A_OPACRT@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRT@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_A_OPACRU, 0xFC000190 ");
#     asm(" e_lis   r4, AIPS_A_OPACRU@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRU@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRV, 0xFC000194 ");
#     asm(" e_lis   r4, AIPS_A_OPACRV@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRV@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRW, 0xFC000198 ");
#     asm(" e_lis   r4, AIPS_A_OPACRW@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRW@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRX, 0xFC00019C ");
#     asm(" e_lis   r4, AIPS_A_OPACRX@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRX@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRY, 0xFC0001A0 ");
#     asm(" e_lis   r4, AIPS_A_OPACRY@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRY@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRZ, 0xFC0001A4 ");
#     asm(" e_lis   r4, AIPS_A_OPACRZ@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRZ@l ");
#     asm(" e_stw   r5, 0(r4) ");
#   
#     asm(" .equ AIPS_A_OPACRAA, 0xFC0001A8 ");
#     asm(" e_lis   r4, AIPS_A_OPACRAA@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRAA@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRAB, 0xFC0001AC ");
#     asm(" e_lis   r4, AIPS_A_OPACRAB@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRAB@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRAC, 0xFC0001B0 ");
#     asm(" e_lis   r4, AIPS_A_OPACRAC@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRAC@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRAD, 0xFC0001B4 ");
#     asm(" e_lis   r4, AIPS_A_OPACRAD@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRAD@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRAE, 0xFC0001B8 ");
#     asm(" e_lis   r4, AIPS_A_OPACRAE@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRAE@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_A_OPACRAF, 0xFC0001BC ");
#     asm(" e_lis   r4, AIPS_A_OPACRAF@ha ");
#     asm(" e_or2i  r4, AIPS_A_OPACRAF@l ");
#     asm(" e_stw   r5, 0(r4) ");
#   
# 
# 
# 
# /* AIPS_B_MPROT register, which will setup all 8 master ports accordingly.         */
# /*  The meaning of these four bits is as follows:                                */
# /*   0 - Master Buffer Writes: no (Write accesses are not bufferable)            */
# /*   1 - Master Trusted for Reads                                                */
# /*   1 - Master Trusted for Writes                                               */
# /*   1 - Master Priviledge Level: accesses are not forced to user-mode           */
# /* NOTE: we do only setup the masters M0-M7, M8-M15 are not modified at all.     */
#    
#     asm(" .equ AIPS_B_MPRA, 0xF8000000 ");
#     asm(" e_lis   r4, AIPS_B_MPRA@ha ");
#     asm(" e_or2i  r4, AIPS_B_MPRA@l ");
#     asm(" e_lis   r5, 0x77777777@ha ");
#     asm(" e_or2i  r5, 0x77777777@l ");
#     asm(" e_stw   r5, 0(r4)");
#     asm(" e_li r5, 0" );
#     
# /* Allow non-priviledged access to all peripherals (on and off-platform). This is */
# /* achieved by modifying the PACR and OPACR registers in the AIPS.                */
# /* To do so, we write b'0000 (0x0) into every peripheral access control reg.      */
# /* The meaning of these four bits is as follows:                                  */
# /*   0 - Buffer Writes: no                                                        */
# /*   0 - Supervisor Protect: periph. doesn't require supervisor priviledge level  */
# /*   0 - Write Protect: no (peripheral allows write accesses)                     */
# /*   0 - Trusted Protect: no (accesses from an untrusted master allowed)          */
# 
#     asm(" .equ AIPS_B_PACRA, 0xF8000100 ");
#     asm(" e_lis   r4, AIPS_B_PACRA@ha ");
#     asm(" e_or2i  r4, AIPS_B_PACRA@l ");
#     asm(" e_stw   r5, 0(r4) ");
# 
#     asm(" .equ AIPS_B_PACRB, 0xF8000104 ");
#     asm(" e_lis   r4, AIPS_B_PACRB@ha ");
#     asm(" e_or2i  r4, AIPS_B_PACRB@l ");
#     asm(" e_stw   r5, 0(r4) ");
#      
#     asm(" .equ AIPS_B_PACRC, 0xF8000108 ");
#     asm(" e_lis   r4, AIPS_B_PACRC@ha ");
#     asm(" e_or2i  r4, AIPS_B_PACRC@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_B_PACRD, 0xF800010C ");
#     asm(" e_lis   r4, AIPS_B_PACRD@ha ");
#     asm(" e_or2i  r4, AIPS_B_PACRD@l ");
#     asm(" e_stw   r5, 0(r4) ");
# /*    
#     asm(" .equ AIPS_B_PACRE, 0xF8000110 ");
#     asm(" e_lis   r4, AIPS_B_PACRE@ha ");
#     asm(" e_or2i  r4, AIPS_B_PACRE@l ");
#     asm(" e_stw   r5, 0(r4) ");        
# */
#     asm(" .equ AIPS_B_PACRF, 0xF8000114 ");
#     asm(" e_lis   r4, AIPS_B_PACRF@ha ");
#     asm(" e_or2i  r4, AIPS_B_PACRF@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_PACRG, 0xF8000118 ");
#     asm(" e_lis   r4, AIPS_B_PACRG@ha ");
#     asm(" e_or2i  r4, AIPS_B_PACRG@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_PACRH, 0xF800011C ");
#     asm(" e_lis   r4, AIPS_B_PACRH@ha ");
#     asm(" e_or2i  r4, AIPS_B_PACRH@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_OPACRA, 0xF8000140 ");
#     asm(" e_lis   r4, AIPS_B_OPACRA@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRA@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#   
#     asm(" .equ AIPS_B_OPACRB, 0xF8000144 ");
#     asm(" e_lis   r4, AIPS_B_OPACRB@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRB@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_OPACRC, 0xF8000148 ");
#     asm(" e_lis   r4, AIPS_B_OPACRC@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRC@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_B_OPACRD, 0xF800014C ");
#     asm(" e_lis   r4, AIPS_B_OPACRD@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRD@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_B_OPACRE, 0xF8000150 ");
#     asm(" e_lis   r4, AIPS_B_OPACRE@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRE@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_OPACRF, 0xF8000154 ");
#     asm(" e_lis   r4, AIPS_B_OPACRF@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRF@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_B_OPACRG, 0xF8000158 ");
#     asm(" e_lis   r4, AIPS_B_OPACRG@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRG@l ");
#     asm(" e_stw   r5, 0(r4) ");    
#  
#     asm(" .equ AIPS_B_OPACRH, 0xF800015C ");
#     asm(" e_lis   r4, AIPS_B_OPACRH@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRH@l ");
#     asm(" e_stw   r5, 0(r4) ");    
#     
#     asm(" .equ AIPS_B_OPACRI, 0xF8000160 ");
#     asm(" e_lis   r4, AIPS_B_OPACRI@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRI@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_B_OPACRJ, 0xF8000164 ");
#     asm(" e_lis   r4, AIPS_B_OPACRJ@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRJ@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#         
#     asm(" .equ AIPS_B_OPACRK, 0xF8000168 ");
#     asm(" e_lis   r4, AIPS_B_OPACRK@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRK@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_B_OPACRL, 0xF800016C ");
#     asm(" e_lis   r4, AIPS_B_OPACRL@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRL@l ");
#     asm(" e_stw   r5, 0(r4) ");   
#     
#     asm(" .equ AIPS_B_OPACRM, 0xF8000170 ");
#     asm(" e_lis   r4, AIPS_B_OPACRM@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRM@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_OPACRN, 0xF8000174 ");
#     asm(" e_lis   r4, AIPS_B_OPACRN@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRN@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_OPACRO, 0xF8000178 ");
#     asm(" e_lis   r4, AIPS_B_OPACRO@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRO@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_OPACRP, 0xF800017C ");
#     asm(" e_lis   r4, AIPS_B_OPACRP@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRP@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_OPACRQ, 0xF8000180 ");
#     asm(" e_lis   r4, AIPS_B_OPACRQ@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRQ@l ");
#     asm(" e_stw   r5, 0(r4) ");  
#     
#     asm(" .equ AIPS_B_OPACRR, 0xF8000184 ");
#     asm(" e_lis   r4, AIPS_B_OPACRR@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRR@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_B_OPACRS, 0xF8000188 ");
#     asm(" e_lis   r4, AIPS_B_OPACRS@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRS@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_B_OPACRT, 0xF800018C ");
#     asm(" e_lis   r4, AIPS_B_OPACRT@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRT@l ");
#     asm(" e_stw   r5, 0(r4) "); 
#     
#     asm(" .equ AIPS_B_OPACRU, 0xF8000190 ");
#     asm(" e_lis   r4, AIPS_B_OPACRU@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRU@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRV, 0xF8000194 ");
#     asm(" e_lis   r4, AIPS_B_OPACRV@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRV@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRW, 0xF8000198 ");
#     asm(" e_lis   r4, AIPS_B_OPACRW@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRW@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRX, 0xF800019C ");
#     asm(" e_lis   r4, AIPS_B_OPACRX@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRX@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRY, 0xF80001A0 ");
#     asm(" e_lis   r4, AIPS_B_OPACRY@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRY@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRZ, 0xF80001A4 ");
#     asm(" e_lis   r4, AIPS_B_OPACRZ@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRZ@l ");
#     asm(" e_stw   r5, 0(r4) ");
#   
#     asm(" .equ AIPS_B_OPACRAA, 0xF80001A8 ");
#     asm(" e_lis   r4, AIPS_B_OPACRAA@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRAA@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRAB, 0xF80001AC ");
#     asm(" e_lis   r4, AIPS_B_OPACRAB@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRAB@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRAC, 0xF80001B0 ");
#     asm(" e_lis   r4, AIPS_B_OPACRAC@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRAC@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRAD, 0xF80001B4 ");
#     asm(" e_lis   r4, AIPS_B_OPACRAD@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRAD@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRAE, 0xF80001B8 ");
#     asm(" e_lis   r4, AIPS_B_OPACRAE@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRAE@l ");
#     asm(" e_stw   r5, 0(r4) ");
#     
#     asm(" .equ AIPS_B_OPACRAF, 0xF80001BC ");
#     asm(" e_lis   r4, AIPS_B_OPACRAF@ha ");
#     asm(" e_or2i  r4, AIPS_B_OPACRAF@l ");
#     asm(" e_stw   r5, 0(r4) ");  
# 	
# 	
# 
# 	
# }
	.d2line		667
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L10583:
	.type		BoardInit2,@function
	.size		BoardInit2,.-BoardInit2
# Number of nodes = 326

# Allocations for BoardInit2

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L10573:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\TTs\\PowerPC\\compiler_common\\platform\\MPC5746R_ECU\\make\\..\\src\\MPC5746R_ECU_board_init.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\TTs\\PowerPC\\compiler_common\\platform\\MPC5746R_ECU\\make\\..\\src\\MPC5746R_ECU_board_init.c"
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
.L10574:
	.sleb128	2
	.4byte		.L10570-.L2
	.byte		"System_Clk_160mhz"
	.byte		0
	.4byte		.L10573
	.uleb128	28
	.uleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L10571
	.4byte		.L10572
	.section	.debug_info,,n
	.sleb128	0
.L10570:
	.section	.debug_info,,n
.L10579:
	.sleb128	2
	.4byte		.L10576-.L2
	.byte		"BoardInit"
	.byte		0
	.4byte		.L10573
	.uleb128	80
	.uleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L10577
	.4byte		.L10578
	.section	.debug_info,,n
	.sleb128	0
.L10576:
	.section	.debug_info,,n
.L10584:
	.sleb128	2
	.4byte		.L10581-.L2
	.byte		"BoardInit2"
	.byte		0
	.4byte		.L10573
	.uleb128	197
	.uleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L10582
	.4byte		.L10583
	.section	.debug_info,,n
	.sleb128	0
.L10581:
	.section	.debug_info,,n
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "BoardInit2"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "BoardInit"
	.wrcm.nstrlist "calls", "System_Clk_160mhz"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "System_Clk_160mhz"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\MPC5746R_ECU_board_init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\MPC5746R_ECU_board_init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\MPC5746R_ECU_board_init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\MPC5746R_ECU_board_init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\MPC5746R_ECU_board_init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\MPC5746R_ECU_board_init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\TTs\PowerPC\compiler_common\platform\MPC5746R_ECU\make\..\src\MPC5746R_ECU_board_init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
