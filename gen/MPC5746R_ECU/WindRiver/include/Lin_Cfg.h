/**
*   @file    Lin_Cfg.h
*   @version 1.0.2
*
*   @brief   AUTOSAR Lin - High level header of LIN driver.
*   @details This file contains declarations of the functions defined by AutoSAR.
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
==================================================================================================*/

#ifndef LIN_CFG_H
#define LIN_CFG_H

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
* @section Lin_Cfg_h_REF_1
* Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken
* in order to prevent the contents of a header file being included twice.
* This comes from the order of includes in the .c file and from
* include dependencies. As a safe approach, any file must include all
* its dependencies. Header files are already protected against double
* inclusions. The inclusion of MemMap.h is as per Autosar
* requirement MEMMAP003.
*
* @section Lin_Cfg_h_REF_2
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall
* be checked to ensure that 31 character signifiance and
* case sensitivity are supported for external identifiers.
* This violation is due to the requirement that requests to have
* a file version check.
*
* @section Lin_Cfg_h_REF_3
* Violates MISRA 2004 Required Rule 8.7, Objects shall be defined at block scope if they are only
* accessed from within a single function
*
* @section Lin_Cfg_h_REF_4
* Violates MISRA 2004 Required Rule 8.8, Precautions shall be taken
* in order to prevent external objects or functions to be declared
* in more than one file.
*/

/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/
#include "EcuM_Cbk.h"

/** 
* @violates @ref Lin_Cfg_h_REF_1 Precautions shall be taken in order to prevent the contents
* of a header file being included twice.
*/
#include "Mcal.h"

/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/
/**
* @file           Lin_Cfg.h
*/

/* Inclusion of incompatible header files shall be avoided */

#define LIN_VENDOR_ID_CFG                    43
#define LIN_MODULE_ID_CFG                    82
#define LIN_AR_RELEASE_MAJOR_VERSION_CFG     4
#define LIN_AR_RELEASE_MINOR_VERSION_CFG     0
/*
* @violates @ref Lin_Cfg_h_REF_2 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define LIN_AR_RELEASE_REVISION_VERSION_CFG  3
#define LIN_SW_MAJOR_VERSION_CFG             1
#define LIN_SW_MINOR_VERSION_CFG             0
#define LIN_SW_PATCH_VERSION_CFG             2
/*==================================================================================================
                                      FILE VERSION CHECKS
==================================================================================================*/
#ifndef DISABLE_MCAL_INTERMODULE_ASR_CHECK
  /* Check if the source file and EcuM_Cbk header file are of the same version */
  #if ((LIN_AR_RELEASE_MAJOR_VERSION_CFG != ECUM_CBK_AR_RELEASE_MAJOR_VERSION) || \
       (LIN_AR_RELEASE_MINOR_VERSION_CFG != ECUM_CBK_AR_RELEASE_MINOR_VERSION) \
      )
    #error "AutoSar Version Numbers of Lin_Cfg.h and EcuM_Cbk.h are different"
  #endif
  /* Check if current file and Mcal.h header file are of the same Autosar version */
    #if ((LIN_AR_RELEASE_MAJOR_VERSION_CFG != MCAL_AR_RELEASE_MAJOR_VERSION) || \
         (LIN_AR_RELEASE_MINOR_VERSION_CFG != MCAL_AR_RELEASE_MINOR_VERSION) \
        )
        #error "AutoSar Version Numbers of Lin_Cfg.h and Mcal.h are different"
    #endif
#endif


/*==================================================================================================
*                                          CONSTANTS
==================================================================================================*/
/**
* @brief          Precompile Support On.
* @details        VARIANT-PRE-COMPILE: Only parameters with "Pre-compile time"
*                 configuration are allowed in this variant.
*
* @api
*/
#define LIN_PRECOMPILE_SUPPORT (STD_OFF)

/**
* @brief          Unified Interrupt.
* @details        This define was enable when the platform has only one
*                 interrupt for each LINFlex channel
*
* @api
*/
#define LIN_UNIFIED_INTERRUPTS (STD_OFF)

#if (LIN_PRECOMPILE_SUPPORT == STD_ON)
/**
* @brief   No of Channels configured.
*
*
* @api
*/
#define LIN_HW_MAX_MODULES 1U

#else /* LIN_PRECOMPILE_SUPPORT == STD_OFF */


#define LIN_HW_MAX_MODULES 1U

#endif


/**
* @brief   Total number of available hardware lin channels.
*
*
* @api
*/
#define LIN_HW_MAX_AVAILABLE_MODULES 6U

/**
* @brief   Max data length of the LIN SDU buffer to be returned.
*
* @api
*/
#define LIN_MAX_DATA_LENGTH  8U

/**
* @brief   Number of loops before returning LIN_E_TIMEOUT.
*
* @api
*/
#define  LIN_TIMEOUT_LOOPS 1000U

/**
* @brief   Switches the Development Error Detection and Notification ON or OFF.
*
* @api
*/
#define LIN_DEV_ERROR_DETECT      (STD_OFF) /* Disable Development Error Detection */

/**
* @brief          Support for version info API.
* @details        Switches the Lin_GetVersionInfo() API ON or OFF.
*
* @api
*/
#define LIN_VERSION_INFO_API      (STD_ON)  /* Enable API Lin_GetVersionInfo      */

/**
* @brief          Enable Non-Autosar API for Dual-Clock support.
* @details        Enable/Disable API Lin_SetClockMode() to set the
*                 clock to be used by the LIN driver (Normal clock: default mode;
*                 Alternate clock: when the driver is in Low-Power mode).
*                 This can be set to STD_ON only if it is activated from xdm file
*                 (Lin.NonAutosar.LinEnableDualClockMode = STD_ON).
*
* @api
*/
#define LIN_DUAL_CLOCK_MODE       (STD_OFF) /* Disable API Lin_SetClockMode       */

/**
* @brief          Disable Frame Timeout Feature.
* @details        When NonAutosar/LinDisableFrameTimeout == STD_ON,
*                 the LIN Master will accept the frame that is longer than TFrame_Maximum.
*
* @api
*/
#define LIN_DISABLE_FRAME_TIMEOUT   (STD_OFF) /* The master will not accept the frame that is longer than TFrame_Maximum. */


/**
* @brief          Link Lin channels symbolic names with Lin channel IDs.
* @details        Link Lin channels symbolic names with Lin channel IDs.
*
* @api
*/

#define LinHWCh_3    3U
                    

/**
* @brief          Symbolic names for configured channels.
* @details        Symbolic names for configured channels.
*
* @api
*/
/*
* @violates @ref Lin_Cfg_h_REF_2 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define LinConf_LinChannelConfiguration_LinChannel_SBC         0

/**
* @brief   Switches the Production Error Detection and Notification OFF
*
* @api
*/


#define LIN_DISABLE_DEM_REPORT_ERROR_STATUS   (STD_ON) /* Disable Production Error Detection */

/*==================================================================================================
*                                      DEFINES AND MACROS
==================================================================================================*/

/*==================================================================================================
*                                             ENUMS
==================================================================================================*/

/*==================================================================================================
*                                STRUCTURES AND OTHER TYPEDEFS
==================================================================================================*/

/**
* @brief          LIN channel configuration type structure.
* @details        This is the type of the external data structure containing
*                 the overall initialization data for one LIN Channel.
*                 A pointer to such a structure is provided to the LIN channel
*                 initialization routine for configuration of the LIN hardware
*                 channel.
*
* @api
*/
typedef struct
{
    VAR(uint8, LIN_VAR) u8LinChannelID;             /*!< Lin Channel ID */
    VAR(uint8, LIN_VAR) u8LinHwChannel;             /*!< Hardware channel.*/

    VAR(uint32, LIN_VAR) u32Lin_BaudRate_RegValue;   /*!< LIN baudrate value.*/
    VAR(uint16, LIN_VAR) u16LinChannelWakeupSupport; /*!< Is wake-up supported by the LIN channel ?.*/
    VAR(EcuM_WakeupSourceType, LIN_VAR) LinChannelEcuMWakeupSource;    /*!< [LIN098] This parameter contains a reference to the Wakeup Source for this controller as defined in the ECU State Manager.*/
    VAR(uint8, LIN_VAR) u8LinChannelBreakLength;    /*!< These bits indicate the Break length in Master mode.*/
} Lin_ChannelConfigType;

/**
* @brief          LIN driver configuration type structure.
* @details        This is the type of the pointer to the external data
*                 LIN Channels.
*                 A pointer of such a structure is provided to the LIN driver
*                 initialization routine for configuration of the LIN hardware
*                 channel.
*
* @api
*
* @implements Lin_ConfigType_struct
*/
typedef struct
{
    /**
     * @brief LIN Driver DEM Error: LIN_E_TIMEOUT
     */
    #if (LIN_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
        CONST(Mcal_DemErrorType, LIN_CONST) Lin_E_TimeoutCfg;
    #endif

    /**
     * @brief     Maximum Configured Hardware channels.
     * @details   Gives the number of the maximum configured hardware
     *            channels in this configuration.
     */
    CONST(uint8, LIN_CONST) u8Lin_MaxHWChannels;

    /**
     * @brief     Hardware channel.
     * @details   Constant pointer of the constant external data
     *            structure containing the overall initialization data
     *            for all the LIN Channels.
     */
    CONSTP2CONST (Lin_ChannelConfigType,LIN_APPL_CONST,LIN_CONST) pLin_Channel[LIN_HW_MAX_MODULES];
} Lin_ConfigType;

/*==================================================================================================
*                                GLOBAL VARIABLE DECLARATIONS
==================================================================================================*/

/*==================================================================================================
*                                    FUNCTION PROTOTYPES
==================================================================================================*/

/*==================================================================================================
*                                  EXTERNAL CONSTANTS
==================================================================================================*/

#define LIN_START_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Lin_Cfg_h_REF_1 Precautions shall be taken in order to prevent the contents
* of a header file being included twice.
*/
#include "MemMap.h"


#if (LIN_PRECOMPILE_SUPPORT == STD_OFF)

/**
* @brief          Lin Configuration data for LinGlobalConfig.
*
* @api
*/
/** @violates @ref Lin_Cfg_h_REF_3 MISRA 2004 Required Rule 8.7, object defined external because of autosar
*
*   @violates @ref Lin_Cfg_h_REF_4 MISRA 2004 Required Rule 8.8, precautions shall be taken in order to
* prevent variables being declared as external in more than one file.
*/
extern CONST(Lin_ConfigType,LIN_CONST)LinGlobalConfig;
    
#endif /* LIN_PRECOMPILE_SUPPORT == STD_OFF */

#define LIN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Lin_Cfg_h_REF_1 Precautions shall be taken in order to prevent the contents
* of a header file being included twice.
*/
#include "MemMap.h"

#endif /* LIN_CFG_H */

#ifdef __cplusplus
}
#endif
