
;******************************************************************************
;*
;*                      Mentor Graphics Corporation
;*                          All rights reserved
;*
;******************************************************************************
;*               File: Os_IsrMap.s
;*        Description: Interrupt vector table
;*            Product: VSTAR
;*             Module: Operating system
;*         Dependency: PowerPC
;*
;******************************************************************************

; GNU or MGCGCC
.set PID_SUPERVISOR, 4
    .include    "Os_Cfg.s"

    .file           "Os_IsrMap.c"
    .text
    .globl          Os_SysCallHandler_Z4_1
    .globl          Os_SysCallHandler_Z4_0
    .align          2
    .set            noreorder


    .org  0x1001478
i_OS_CROSSCOREISR_1:
    e_b         ii_OS_CROSSCOREISR_1
    .org  0x100347C
i_OS_CROSSCOREISR_0:
    e_b         ii_OS_CROSSCOREISR_0
    .org  0x1001788
i_Timer:
    e_b         ii_Timer
    .org  0x100178C
i_Timer2:
    e_b         ii_Timer2
    .org  0x10017A4
i_Gpt_PIT_0_TIMER_7_ISR:
    e_b         ii_Gpt_PIT_0_TIMER_7_ISR
    .org  0x10017C0
i_MasterButton:
    e_b         ii_MasterButton
    .org  0x10017C4
i_SlaveButton:
    e_b         ii_SlaveButton
    .org  0x1001C40
i_Adc_Adcdig_EndGroupConvUnit0:
    e_b         ii_Adc_Adcdig_EndGroupConvUnit0

    .section ".Os_TEXT_VTAB_Z4_1", 16, "x"
ii_OS_CROSSCOREISR_1:
    mtspr       SPRG0, r15
    mtspr       DSRR0, r31
    e_li        r31, 5
    e_li        r15, 0x8007
    e_b         Os_Context_Save_Intr_Z4

    .section ".Os_TEXT_VTAB_Z4_0", 16, "x"
ii_OS_CROSSCOREISR_0:
    mtspr       SPRG0, r15
    mtspr       DSRR0, r31
    e_li        r31, 1
    e_li        r15, 0x8006
    e_b         Os_Context_Save_Intr_Z4

    .section ".Os_TEXT_VTAB_Z4_1", 16, "x"
ii_Timer:
    mtspr       SPRG0, r15
    mtspr       DSRR0, r31
    e_li        r31, 4
    e_li        r15, 0x1000
    e_b         Os_Context_Save_Intr_Z4

    .section ".Os_TEXT_VTAB_Z4_1", 16, "x"
ii_Timer2:
    mtspr       SPRG0, r15
    mtspr       DSRR0, r31
    e_li        r31, 4
    e_li        r15, 0x1001
    e_b         Os_Context_Save_Intr_Z4

    .section ".Os_TEXT_VTAB_Z4_1", 16, "x"
ii_Gpt_PIT_0_TIMER_7_ISR:
    mtspr       SPRG0, r15
    mtspr       DSRR0, r31
    e_li        r31, 3
    e_li        r15, 0x1
    e_b         Os_Context_Save_Intr_Z4

    .section ".Os_TEXT_VTAB_Z4_1", 16, "x"
ii_MasterButton:
    mtspr       SPRG0, r15
    mtspr       DSRR0, r31
    e_li        r31, 1
    e_li        r15, 0x3
    e_b         Os_Context_Save_Intr_Z4

    .section ".Os_TEXT_VTAB_Z4_1", 16, "x"
ii_SlaveButton:
    mtspr       SPRG0, r15
    mtspr       DSRR0, r31
    e_li        r31, 1
    e_li        r15, 0xA
    e_b         Os_Context_Save_Intr_Z4

    .section ".Os_TEXT_VTAB_Z4_1", 16, "x"
ii_Adc_Adcdig_EndGroupConvUnit0:
    mtspr       SPRG0, r15
    mtspr       DSRR0, r31
    e_li        r31, 2
    e_li        r15, 0x0
    e_b         Os_Context_Save_Intr_Z4


    .org   0x1000400
Os_CriticalInputException_Z4_1:
    e_li        r1, 1
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1000410
Os_MachineCheckException_Z4_1:
    e_li        r1, 2
    e_b         Os_Context_Save_MachineCheck_Z4

    .org   0x1000420
Os_DataStorageException_Z4_1:
    e_li        r1, 3
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1000430
Os_InstructionStorageException_Z4_1:
    e_li        r1, 4
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1000440
Os_ExternalInputException_Z4_1:
    e_li        r1, 5
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1000450
Os_AlignmentException_Z4_1:
    e_li        r1, 6
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1000460
Os_ProgramException_Z4_1:
    e_li        r1, 7
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1000470
Os_PerformanceMonitorException_Z4_1:
    e_li        r1, 8
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1000490
Os_DebugException_Z4_1:
    e_li        r1, 9
    e_b         Os_Context_Save_DebugException_Z4

    .org   0x10004A0
Os_EFPDataException_Z4_1:
    e_li        r1, 10
    e_b         Os_Context_Save_Exception_Z4

    .org   0x10004B0
Os_EFPRoundException_Z4_1:
    e_li        r1, 11
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1002400
Os_CriticalInputException_Z4_0:
    e_li        r1, 1
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1002410
Os_MachineCheckException_Z4_0:
    e_li        r1, 2
    e_b         Os_Context_Save_MachineCheck_Z4

    .org   0x1002420
Os_DataStorageException_Z4_0:
    e_li        r1, 3
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1002430
Os_InstructionStorageException_Z4_0:
    e_li        r1, 4
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1002440
Os_ExternalInputException_Z4_0:
    e_li        r1, 5
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1002450
Os_AlignmentException_Z4_0:
    e_li        r1, 6
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1002460
Os_ProgramException_Z4_0:
    e_li        r1, 7
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1002470
Os_PerformanceMonitorException_Z4_0:
    e_li        r1, 8
    e_b         Os_Context_Save_Exception_Z4

    .org   0x1002490
Os_DebugException_Z4_0:
    e_li        r1, 9
    e_b         Os_Context_Save_DebugException_Z4

    .org   0x10024A0
Os_EFPDataException_Z4_0:
    e_li        r1, 10
    e_b         Os_Context_Save_Exception_Z4

    .org   0x10024B0
Os_EFPRoundException_Z4_0:
    e_li        r1, 11
    e_b         Os_Context_Save_Exception_Z4



    .org   0x1000480
Os_SysCallHandler_Z4_1:
    e_cmpl16i   r3, 0x0
    e_beq       Os_CoreIdSysCall_Z4_1
    e_b         Os_NormalSysCall_Z4_1

    .section ".Os_TEXT_VTAB_Z4_1", 16, "x"
    .align   4
Os_CoreIdSysCall_Z4_1:
    mfspr       r3, PIR
    se_rfi

Os_NormalSysCall_Z4_1:
    e_cmpl16i   r4, 0x0
    e_bne       Os_LightSysCall_Z4_1
    e_b         Os_SysCall_Z4

Os_LightSysCall_Z4_1:
    se_mtlr     r4

    mfspr       r4, SRR0
    e_stwu      r4, -4(r1)
    mfspr       r4, SRR1
    e_stwu      r4, -4(r1)
    se_subi     r1, 0x8
    mfspr       r4, LR
    e_bl        Os_Dispatch_LightSyscall
    e_lwzu      r4, 8(r1)
    mtspr       SRR1, r4
    e_lwzu      r4, 4(r1)
    mtspr       SRR0, r4

    se_addi     r1, 0x4

    se_rfi

    .org   0x1002480
Os_SysCallHandler_Z4_0:
    e_cmpl16i   r3, 0x0
    e_beq       Os_CoreIdSysCall_Z4_0
    e_b         Os_NormalSysCall_Z4_0

    .section ".Os_TEXT_VTAB_Z4_0", 16, "x"
    .align   4
Os_CoreIdSysCall_Z4_0:
    mfspr       r3, PIR
    se_rfi

Os_NormalSysCall_Z4_0:
    e_cmpl16i   r4, 0x0
    e_bne       Os_LightSysCall_Z4_0
    e_b         Os_SysCall_Z4

Os_LightSysCall_Z4_0:
    se_mtlr     r4

    mfspr       r4, SRR0
    e_stwu      r4, -4(r1)
    mfspr       r4, SRR1
    e_stwu      r4, -4(r1)
    se_subi     r1, 0x8
    mfspr       r4, LR
    e_bl        Os_Dispatch_LightSyscall
    e_lwzu      r4, 8(r1)
    mtspr       SRR1, r4
    e_lwzu      r4, 4(r1)
    mtspr       SRR0, r4

    se_addi     r1, 0x4

    se_rfi



























