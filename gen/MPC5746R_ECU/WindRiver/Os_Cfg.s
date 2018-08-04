;******************************************************************************
;*
;*                      Mentor Graphics Corporation
;*                          All rights reserved
;*
;******************************************************************************
;*               File: Os_Cfg.s
;*        Description: Low level configuration
;*            Product: VSTAR
;*             Module: Operating system
;*         Dependency: PowerPC
;*
;******************************************************************************

.set OS_CONFIG_SAFEKERNELINIT,1
.set OS_CONFIG_PHYSICAL_CORE_NO,2
.set OS_CONFIG_LOGICAL_CORE_NO,2

.set OS_CONFIG_CORE_0_IS_AUTOSAR,1
.set OS_CONFIG_CORE_1_IS_AUTOSAR,1

.set OS_CONFIG_MULTITABLE, 1

.set OS_CONFIG_GHS,0
.set OS_CONFIG_WINDRIVER,1
.set OS_CONFIG_MGCGCC,0

.set OS_CONFIG_MEMORYPROTECTION,0

.set OS_CONFIG_STACKSHARING, 0

.set OS_USE_Z4, 1
.set OS_Z4_SPRG_NUMBER, 4
.set OS_Z4_FLOATINGPOINT, 1
.set OS_Z4_SPE, 0

