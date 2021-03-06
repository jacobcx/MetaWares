/******************************************************************************
* This file is automatically generated by VSC.
* Do not edit manually.
* VSC Version    : 2.5.4
* Plugin Version : com.mentor.bsw.os.PowerPC.MPC5746R 4.8.0
*==============================================================================
*
* Module:       Os
*
* File Name:    Os_Cfg.h
*
* Description:  This file shall contain the configuration Precompile Time parameters
*
******************************************************************************/
#ifndef OS_CFG_H
#define OS_CFG_H

/*============================== VERSION INFO ===============================*/

#define OS_CFG_H_SW_MAJOR_VERSION    (4U)
#define OS_CFG_H_SW_MINOR_VERSION    (8U)
#define OS_CFG_H_SW_PATCH_VERSION    (0U)

/*=============================== INCLUSIONS ================================*/

#include "Std_Types.h"

/*============================ TYPE DEFINITIONS =============================*/

typedef VAR(uint64, TYPEDEF) EventMaskType;

typedef VAR(uint8, TYPEDEF) Os_LockResourceType;

/*============================ MACRO DEFINITIONS ============================*/

/**********************************************
 * General Os Configuration
 *********************************************/

#define OS_AR422
#define OS_AR_MAJOR_VERSION             (4U)
#define OS_AR_MINOR_VERSION             (2U)
#define OS_AR_PATCH_VERSION             (2U)

#define OS_MEMMAP_HEADER                "Os_MemMap.h"

#define OS_CONFIG_SC1
#define OS_CONFIG_STATUS_EXTENDED
#define OS_CONFIG_USEPARAMETERACCESS
#define OS_CONFIG_USESERVICEID
#define OS_CONFIG_STACKMONITORING
#define OS_CONFIG_ORTISUPPORT
#define OS_CONFIG_GETSTACKUSAGEAPI
#define OS_CONFIG_INTERNAL_VALIDATIONS   /* [OS-MGC-0108-01] [OS-MGC-0109] */
#define OS_CONFIG_INTERRUPTSERVICE_VALIDATION
#define OS_CONFIG_SAFEKERNELINIT
#define OS_CONFIG_APPLICATION
#define OS_CONFIG_SEPARATE_ISR_STACKS_PER_APP
#define OS_CONFIG_SPINLOCK
#define OS_CONFIG_FLOATINGPOINT
#define OS_CONFIG_HAS_COMMON_MEMORYPROTECTION_UNIT

#define OS_LINKTIME_GUARD               (Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2)
#define OS_MCU_DERIVATIVE               MPC5746R /* KW MISRA.DEFINE.BADEXP */

/**********************************************
 * Core identifiers
 *********************************************/

#define OS_CORE_NO_DEF                  (2)
#define OS_AUTOSAR_CORE_NO_DEF          (2)
#define OS_NONAUTOSAR_CORE_NO_DEF       (0)

#define OS_CORE_NO                      ((CoreIdType) 2U)
#define OS_AUTOSAR_CORE_NO              ((CoreIdType) 2U)
#define OS_NONAUTOSAR_CORE_NO           ((CoreIdType) 0U)

#define OS_CORE_ID_0                    ((CoreIdType) 0U)
#define OS_CORE_ID_1                    ((CoreIdType) 1U)

#define OS_CORE_ID_MASTER               OS_CORE_ID_1

#define OS_CORE_ID_SLAVE_0              OS_CORE_ID_0

/**********************************************
 * Process Configuration
 *********************************************/

#define OS_STACKGUARDINGSIZE            (1U)

/**********************************************
 * Os Hooks Configuration
 *********************************************/

#define OS_CONFIG_HOOK
#define OS_ERRORHOOK                    (STD_ON)
#define OS_PREAPPHOOK                   (STD_OFF)
#define OS_POSTAPPHOOK                  (STD_OFF)
#define OS_PRETASKHOOK                  (STD_OFF)
#define OS_POSTTASKHOOK                 (STD_OFF)
#define OS_STARTUPHOOK                  (STD_ON)
#define OS_SHUTDOWNHOOK                 (STD_ON)
#define OS_PROTECTIONHOOK               (STD_OFF)

#define OS_APP_ERRORHOOK                (STD_OFF)
#define OS_APP_STARTUPHOOK              (STD_ON)
#define OS_APP_SHUTDOWNHOOK             (STD_ON)

/**********************************************
 * Os IOC Configuration
 *********************************************/

#define OS_CONFIG_IOC
#define OS_IOC_PARAMNUM                 (2U)


/*================================ EXTERNALS ================================*/

/* ============================== */
#define OS_START_SEC_CONST
#include OS_MEMMAP_HEADER /* KW MISRA.INCL.INSIDE */
/* ============================== */

extern CONST(uint8, OS_CONST) Os_SC1_2C_SPSSOS_IK____480_MPC5746R_WindRiver_MULTICORE2;

/* ============================== */
#define OS_STOP_SEC_CONST
#include OS_MEMMAP_HEADER /* KW MISRA.INCL.INSIDE */
/* ============================== */

/**********************************************************************/
#endif /* OS_CFG_H */
/**********************************************************************/
/* End of Os_Cfg.h - Core part */

#ifndef OS_CFG_H_TARGET_
#define OS_CFG_H_TARGET_

/*****************************************************************************/
/****************************** TARGET - START *******************************/
/*****************************************************************************/

#define OS_PLATFORM_REQUIRES_OS_CORE_LOCKINIT

#define OS_USE_Z4
#define OS_Z4_SPRG_NUMBER      4
#define OS_Z4_FLAOTINGPOINT

/*****************************************************************************/
/******************************* TARGET - END* *******************************/
/*****************************************************************************/

#endif /* OS_CFG_H_TARGET_ */

/* End of Os_Cfg.h - Target part */

/*=============================== END OF FILE ===============================*/

