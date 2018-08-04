/**
*   @file    Lin_PBcfg.c
*   @implements Lin_PBcfg.c_Artifact
*   @version 1.0.2
*
*   @brief   AUTOSAR Lin - Brief file description (one line).
*   @details Detailed file description (can be multiple lines).
*
*   @addtogroup LIN
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : LINFlex
*   Dependencies         : 
*
*   Autosar Version      : 4.0.3
*   Autosar Revision     : ASR_REL_4_0_REV_0003
*   Autosar Conf.Variant :
*   SW Version           : 1.0.2
*   Build Version        : MPC574XR_MCAL_1_0_2_RTM_ASR_REL_4_0_REV_0003_20170331
*
*   (c) Copyright (c) 2006-2016 Freescale Semiconductor, Inc. 
*       Copyright 2017 NXP
*   All Rights Reserved.
==================================================================================================*/
/*==================================================================================================
ENGR00307762 and ENGR00308882
Tu Tran(b52564)               12/09/2014    ENGR00331267  [LIN] Fix Misra comments
Tu Tran(b52564)               16/09/2014    ENGR00331726  [LIN] Update Misra for rainier
Tu Tran(b52564)               17/09/2014    ENGR00331841  [LIN] Update Misra
Tu Tran(b52564)               11/12/2014    ENGR00342545  [LIN] RICR Rainier
                                                          [LIN] Module cannot compile with Dem errors configured
                                                          [LIN] Wrong usage of Dem functionality
                                                          [LIN] Code review against checklist
Tu Tran(b52564)               06/03/2015    ENGR00350569  [LIN] Remove tabulator characters
Tu Tran(b52564)               27/05/2015    ENGR00358237  [LIN] RICR Rainier
                                                          [LIN] The short name of Std_Types is Std but not STD_TYPES
Hoang Manh(B53912)            30/11/2015    ENGR00370363  [LIN] RICR for Rainier
                                                          [LIN] Inconsistent/Incorrect usage of Compiler Abstraction Keywords and Memory Allocation Sections
Tran Luong(B29516)            01/19/2017    ENGR00387625  [LIN] RICR for Rainier
Tran Minh Viet(nxf24988)      2/13/2017     ENGR00387625  [LIN] RICR for Rainier
                                                          
---------------------------   ----------    ------------  ------------------------------------------
'==================================================================================================*/

#ifdef __cplusplus
extern "C"
{
#endif

/**
* @page misra_violations MISRA-C:2004 violations
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely
* on the significance of more than 31 characters. The used compilers use more than 31 chars for
* identifiers.
*
* @section Lin_PBcfg_c_REF_1
* Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken
* in order to prevent the contents of a header file being included twice.
* This comes from the order of includes in the .c file and from
* include dependencies. As a safe approach, any file must include all
* its dependencies. Header files are already protected against double
* inclusions. The inclusion of MemMap.h is as per Autosar
* requirement MEMMAP003.
*
* @section Lin_PBcfg_c_REF_2
* Violates MISRA 2004 Advisory Rule 19.1, #include statements in a
* file should only be preceded by other preprocessor directives or
* comments. AUTOSAR imposes the specification of the sections in which
* certain parts of the driver must be placed.
*
* @section Lin_PBcfg_c_REF_3
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall
* be checked to ensure that 31 character signifiance and
* case sensitivity are supported for external identifiers.
* This violation is due to the requirement that requests to have
* a file version check.
*
* @section Lin_PBcfg_c_REF_6
* Violates MISRA 2004 Required Rule 8.10,
* All declarations and definitions of objects or functions at file scope shall have
* internal linkage unless external linkage is required.
* Structure shall be public as it is used by Reg_eSys_DSPI.h which may be sed outside DSPI module.
*
*/


/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/
#include "Std_Types.h"
#include "Lin_Cfg.h"

#if (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#include "Dem.h"
#endif /* (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */

/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/
/**
* @file           Lin_PBcfg.c
*/
#define LIN_VENDOR_ID_PBCFG_C                      43
/*
* @violates @ref Lin_PBcfg_c_REF_3 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define LIN_AR_RELEASE_MAJOR_VERSION_PBCFG_C       4
/*
* @violates @ref Lin_PBcfg_c_REF_3 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define LIN_AR_RELEASE_MINOR_VERSION_PBCFG_C       0
/*
* @violates @ref Lin_PBcfg_c_REF_3 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define LIN_AR_RELEASE_REVISION_VERSION_PBCFG_C    3
#define LIN_SW_MAJOR_VERSION_PBCFG_C               1
#define LIN_SW_MINOR_VERSION_PBCFG_C               0
#define LIN_SW_PATCH_VERSION_PBCFG_C               2

/*==================================================================================================
*                                     FILE VERSION CHECKS
==================================================================================================*/
/* Check if current file and LIN header file are of the same vendor */
#if (LIN_VENDOR_ID_PBCFG_C != LIN_VENDOR_ID_CFG)
    #error "Lin_PBcfg.c and Lin_Cfg.h have different vendor ids"
#endif
/* Check if current file and LIN header file are of the same Autosar version */
#if ((LIN_AR_RELEASE_MAJOR_VERSION_PBCFG_C    != LIN_AR_RELEASE_MAJOR_VERSION_CFG) || \
     (LIN_AR_RELEASE_MINOR_VERSION_PBCFG_C    != LIN_AR_RELEASE_MINOR_VERSION_CFG) || \
     (LIN_AR_RELEASE_REVISION_VERSION_PBCFG_C != LIN_AR_RELEASE_REVISION_VERSION_CFG) \
    )
    #error "AutoSar Version Numbers of Lin_PBcfg.c and Lin_Cfg.h are different"
#endif
/* Check if current file and LIN header file are of the same Software version */
#if ((LIN_SW_MAJOR_VERSION_PBCFG_C != LIN_SW_MAJOR_VERSION_CFG) || \
     (LIN_SW_MINOR_VERSION_PBCFG_C != LIN_SW_MINOR_VERSION_CFG) || \
     (LIN_SW_PATCH_VERSION_PBCFG_C != LIN_SW_PATCH_VERSION_CFG) \
    )
    #error "Software Version Numbers of Lin_PBcfg.c and Lin_Cfg.h are different"
#endif

#ifndef DISABLE_MCAL_INTERMODULE_ASR_CHECK
  #if ((LIN_AR_RELEASE_MAJOR_VERSION_PBCFG_C != STD_AR_RELEASE_MAJOR_VERSION) || \
       (LIN_AR_RELEASE_MINOR_VERSION_PBCFG_C != STD_AR_RELEASE_MINOR_VERSION) \
      )
    #error "AutoSar Version Numbers of Lin_PBCfg.c and Std_Types.h are different"
  #endif
  #if (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
    /* Check if current file and Dem.h header file are of the same Autosar version */
    #if ((LIN_AR_RELEASE_MAJOR_VERSION_PBCFG_C != DEM_AR_RELEASE_MAJOR_VERSION) || \
         (LIN_AR_RELEASE_MINOR_VERSION_PBCFG_C != DEM_AR_RELEASE_MINOR_VERSION) \
        )
        #error "AutoSar Version Numbers of Lin_PBcfg.c and Dem.h are different"
    #endif
  #endif /* (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */
#endif

/*==================================================================================================
*                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
==================================================================================================*/


/*==================================================================================================
*                                       LOCAL MACROS
==================================================================================================*/


/*==================================================================================================
*                                      LOCAL CONSTANTS
==================================================================================================*/


/*==================================================================================================
*                                      LOCAL VARIABLES
==================================================================================================*/


/*==================================================================================================
*                                      GLOBAL CONSTANTS
==================================================================================================*/
#define LIN_START_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Lin_PBcfg_c_REF_1 #include statements in a file should
* only be preceded by other preprocessor directives or comments.
*/
#include "MemMap.h"


#if (LIN_PRECOMPILE_SUPPORT == STD_OFF)


/**
* @brief          Configuration for Lin Channel 0 - Configuration:
*                 LinGlobalConfig.
*
* @api
*/
/*
* @violates @ref Lin_PBcfg_c_REF_6 All declarations and definitions of objects or functions at
* file scope shall have internal linkage unless external linkage is required.
*/
CONST(Lin_ChannelConfigType,LIN_CONST) Lin_LinChannel_SBC_C=
{
    (uint8)0U,     /* Lin Channel ID */
    LinHWCh_3,             /* Lin Hardware channel*/
    0x00014508U,               /* Baudrate 19200 */

    (uint16)STD_OFF,               /* Wakeup support disabled */
    (EcuM_WakeupSourceType)((uint32)1U<<(uint32)0U), /* Wakeup Source transmitted to the Ecu State Manager (used only when Wakeup Support is true) */
    0x03U                /* BreakLength = BL_13 bits */
};



/**
* @brief          Lin Configuration data for LinGlobalConfig.
*
* @api
*/
/*
* @violates @ref Lin_PBcfg_c_REF_6 All declarations and definitions of objects or functions at
* file scope shall have internal linkage unless external linkage is required.
*/
CONST(Lin_ConfigType,LIN_CONST)LinGlobalConfig =
{
    /**
     * @brief   DEM error parameters
     */
#if (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)

    {(uint32)STD_OFF, 0U}, /* LIN_E_TIMEOUT parameters*/
        
#endif /* LIN_DISABLE_DEM_REPORT_ERROR_STATUS== STD_OFF */

     /**
     * @brief   Number of configured hardware channels
     */
    1U,
    {

        /**
        * @brief   Configuration for Lin Channel 0.
        */
                
        &Lin_LinChannel_SBC_C
                    
    }
};

#endif /* LIN_PRECOMPILE_SUPPORT == STD_OFF */


#define LIN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Lin_PBcfg_c_REF_1 #include statements in a file should
* only be preceded by other preprocessor directives or comments.
* @violates @ref Lin_PBcfg_c_REF_2 Precautions shall be taken in
*                order to prevent the contents of a header file being
*                included twice.
*/
#include "MemMap.h"

/*==================================================================================================
*                                      GLOBAL VARIABLES
==================================================================================================*/

/*==================================================================================================
*                                   LOCAL FUNCTION PROTOTYPES
==================================================================================================*/


/*==================================================================================================
*                                       LOCAL FUNCTIONS
==================================================================================================*/


/*==================================================================================================
*                                       GLOBAL FUNCTIONS
==================================================================================================*/



#ifdef __cplusplus
}
#endif

/** @} */
