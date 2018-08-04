/**
*   @file     Wdg_Cfg.h
*   @implements Wdg_Cfg.h_Artifact
*   @version  1.0.2
*
*   @brief    AUTOSAR Wdg - Contains the implementation of the Watchdog API
*   @details  It contains the layer requested by autosar. The functions are independent of
*             hardware settings.
*
*   @addtogroup  Wdg  
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : Swt
*   Dependencies         : none
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
==================================================================================================*/

#ifndef WDG_CFG_H
#define WDG_CFG_H

#ifdef __cplusplus
extern "C"{
#endif

/**
* @page misra_violations MISRA-C:2004 violations
*
* @section Wdg_Cfg_h_REF_1
*          Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken in order to
*          prevent the contents of a header file being included twice. All header files are
*          protected against multiple inclusions.
* @section Wdg_Cfg_h_REF_2
*          Violates MISRA 2004 Required Rule 19.4, C macros shall only expand to a braced initialiser, 
*          a constant, a parenthesised expression, a type qualifier, a storage class specifier, or a
*          do-while-zero construct. 
*          This is used to abstract the export of configuration sets
* @section [global]
*          Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
*          on the significance of more than 31 characters. The used compilers use more than 31 chars 
*          for identifiers.
* @section Wdg_Cfg_h_REF_3
*          Violates MISRA 2004 Required Rule 8.7, Objects shall be defined at block scope if they are 
*          only accessed from within a single function.
*          These objects are used in various parts of the code
*/

/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/

#include "WdgIf_Types.h"
/** @violates @ref Wdg_Cfg_h_REF_1 MISRA 2004 Required Rule 19.15 precautions to prevent the contents
 *                of a header file being included twice */
#include "Mcal.h"



/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/
/**
* @file           Wdg_Cfg.h
*/
#define WDG_VENDOR_ID_CFG                    43
#define WDG_MODULE_ID_CFG                    102
#define WDG_AR_RELEASE_MAJOR_VERSION_CFG     4
#define WDG_AR_RELEASE_MINOR_VERSION_CFG     0
#define WDG_AR_RELEASE_REVISION_VERSION_CFG  3
#define WDG_SW_MAJOR_VERSION_CFG             1
#define WDG_SW_MINOR_VERSION_CFG             0
#define WDG_SW_PATCH_VERSION_CFG             2

/*==================================================================================================
*                                     FILE VERSION CHECKS
==================================================================================================*/


/* Check if source file and WdgIf_Types header file are of the same Autosar version */
#ifndef DISABLE_MCAL_INTERMODULE_ASR_CHECK
    #if (( WDG_AR_RELEASE_MAJOR_VERSION_CFG != WDGIF_TYPES_AR_RELEASE_MAJOR_VERSION) || \
         ( WDG_AR_RELEASE_MINOR_VERSION_CFG != WDGIF_TYPES_AR_RELEASE_MINOR_VERSION))
        #error "AutoSar Version Numbers of Wdg_Cfg.h and WdgIf_Types.h are different"
    #endif
#endif

/*==================================================================================================
*                                       GLOBAL CONSTANTS
==================================================================================================*/

 
 /**
 * @brief Dem error codes
 */


 /**
 * @brief Dem error codes
 */

/*==================================================================================================
*                                      DEFINES AND MACROS
==================================================================================================*/















/**
  * @brief  This constant specifies if the instance of the WDG is selected or not
  */
#define WDG_INSTANCE0 (STD_OFF)




/**
  * @brief  This constant specifies if the instance of the WDG is selected or not
  */
#define WDG_INSTANCE1 (STD_ON)




/**
  * @brief  This constant specifies if the instance of the WDG is selected or not
  */
#define WDG_INSTANCE3 (STD_OFF)



/**
* @brief  This constant specifies what value of the CR's master access protection will be used
*/
#define SWT_MAP_ENABLE_BITS      (SWT_MAP_ENABLE_8BITS_U32)

/**
* @brief  This define indicate that the watchdog is internal
*/
#define WDG_INTERNAL_MODULE         (0U)

/**
* @brief  This define indicate that the watchdog is external connected on SPI
*/
#define WDG_EXTERNAL_MODULE_SPI     (1U)

/**
* @brief  This define indicate that the watchdog is external connected on DIO
*/
#define WDG_EXTERNAL_MODULE_DIO     (2U)

 /**
 * @brief  This define indicate the number of HW IPs available on the Platform
 */
#define WDG_NO_OF_INSTANCES            (4U)
/**
* @brief  This variable will indicate which type of driver is in use
*/
#define WDG_TYPE (          WDG_INTERNAL_MODULE)

/**
* @brief  Compile switch to enable/disable development error detection for this module
*/
#define WDG_DEV_ERROR_DETECT   (STD_OFF)

/** 
* @brief  Switch to globaly enable/disable the production error reporting.
*/
#define WDG_DISABLE_DEM_REPORT_ERROR_STATUS           (STD_ON)

/**
* @brief  Compile switch to allow/forbid disabling the watchdog driver during runtime
*/
#define WDG_DISABLE_ALLOWED    (STD_ON)

/**
* @brief  Compile switch to enable/disable the version information
*/
#define WDG_VERSION_INFO_API   (STD_ON)

/**
* @brief  This variable will indicate the index of instance 0
*/
#define WdgConf_WdgGeneral_WdgIndex_U8 ((uint8)0)

/**
* @brief  This variable will indicate the index of instance 1
*/
#define WdgConf_WdgGeneral_WdgIndex1_U8 ((uint8)1)

/**
* @brief  This variable will indicate the index of instance 2 - used to fix misra violation
*/
#define WdgConf_WdgGeneral_WdgIndex2_U8 ((uint8)255)

/**
* @brief  This variable will indicate the index of instance 3
*/
#define WdgConf_WdgGeneral_WdgIndex3_U8 ((uint8)3)

/**
* @brief  This variable will indicate the Wdg Initial Timeout parameter in miliseconds
*/
#define WDG_INITIAL_TIMEOUT_U16 ((uint16)5000)

/**
* @brief  This variable will indicate the Wdg Max Timeout parameter in miliseconds
*/
#define WDG_MAX_TIMEOUT_U16     ((uint16)50000)

/**
* @brief  This macro indicate Wdg Max Timeout to fix compiler warning comparision always true
*/
#define WDG_MAX_TIMEOUT_VALUE (50000U)
/**
* @brief  This macro will indicate max value of 16bits integer type
*/
#define WDG_MAX_VALUE_TYPE16      (65535U)










/** 
* @brief  This variable will indicate RAM/ROM execution
*/
#define WDG_ROM

/**
* @brief Defines the external configuration sets
*/
/* @violates @ref Wdg_Cfg_h_REF_2 MISRA 2004 Required Rule 19.4 C macros shall only expand to...
 */
#define WDG_CFG_EXTERN_DECLARATIONS \
    extern CONST(Wdg_ConfigType, WDG_CONST) WdgSettingsConfig;    


    #define WDG_PRECOMPILE_SUPPORT (STD_OFF)
#define WDG_LINKTIME_SUPPORT   (STD_OFF)
#define WDG_POSTBUILD_SUPPORT  (STD_ON)
    
/*==================================================================================================
*                                             ENUMS
==================================================================================================*/

/*==================================================================================================
*                                STRUCTURES AND OTHER TYPEDEFS
==================================================================================================*/

/*==================================================================================================
*                                GLOBAL VARIABLE DECLARATIONS
==================================================================================================*/

/*==================================================================================================
*                                   FUNCTION PROTOTYPES
==================================================================================================*/


#ifdef __cplusplus
}
#endif

#endif /* WDG_CFG_H */
/** @} */
