/**
*   @file    Gpt_Cfg.h
*   @implements    Gpt_Cfg.h_Artifact
*   @version 1.0.2
*
*   @brief   AUTOSAR Gpt  - Gpt driver configuration header file.
*   @details GPT driver header file, containing C and XPath constructs for generating Gpt
*            configuration header file.
*
*   @addtogroup GPT_MODULE
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : eMios_Stm_Pit
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

#ifndef GPT_CFG_H
#define GPT_CFG_H

#ifdef __cplusplus
extern "C"{
#endif
/**
* @page misra_violations MISRA-C:2004 violations
*
* @section [global]
*     Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely
*     on the significance of more than 31 characters. The used compilers use more than 31 chars for
*     identifiers.
*
* @section GPT_CFG_H_REF_1
* Violates MISRA 2004 Required Rule 19.15, Repeated include file
* This comes from the order of includes in the .c file and from include dependencies. As a safe
* approach, any file must include all its dependencies. Header files are already protected against
* double inclusions.
*
* @section GPT_CFG_H_REF_2
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure
* that 31 character significance and case sensitivity are supported for external identifiers.
* Compilers and linkers checked. Feature is supported
*
* @section GPT_CFG_H_REF_3
* Violates MISRA 2004 Required Rule 19.4, Braces not used for some macros
* Braces are not used for macros which expand to multiple statements separated by ";" character.
*
* @section GPT_CFG_H_REF_4
* Violates MISRA 2004 Required Rule 8.7, Some global variables used by a single driver function shall be
* exported to user application.
*/
/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/

/** @violates @ref GPT_CFG_H_REF_1 MISRA 2004 Required Rule 19.15, precautions to prevent the 
*   contents of a header file being included twice.*/
#include "Mcal.h"

/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/




#define GPT_VENDOR_ID_CFG                    43
#define GPT_AR_RELEASE_MAJOR_VERSION_CFG     4
#define GPT_AR_RELEASE_MINOR_VERSION_CFG     0
#define GPT_AR_RELEASE_REVISION_VERSION_CFG  3
#define GPT_SW_MAJOR_VERSION_CFG             1
#define GPT_SW_MINOR_VERSION_CFG             0
#define GPT_SW_PATCH_VERSION_CFG             2

/*==================================================================================================
*                                     FILE VERSION CHECKS
==================================================================================================*/
#ifndef DISABLE_MCAL_INTERMODULE_ASR_CHECK
     /* Check if this header file and Mcal.h file are of the same Autosar version */
    #if ((GPT_AR_RELEASE_MAJOR_VERSION_CFG != MCAL_AR_RELEASE_MAJOR_VERSION) || \
         (GPT_AR_RELEASE_MINOR_VERSION_CFG != MCAL_AR_RELEASE_MINOR_VERSION))
        #error "AutoSar Version Numbers of Gpt_Cfg.h and Mcal.h are different"
    #endif

#endif
/*==================================================================================================
*                                          CONSTANTS
==================================================================================================*/

/*==================================================================================================
*                                      DEFINES AND MACROS
==================================================================================================*/

/**
* @brief Gpt Dev error detect switch
*
*/
#define GPT_DEV_ERROR_DETECT (STD_OFF)

/**
* @brief Report Wakeup Source switch
*/
#define GPT_REPORT_WAKEUP_SOURCE (STD_ON)

/**
* @brief GPT_VERSION_INFO_API switch
*
*/
#define GPT_VERSION_INFO_API (STD_ON)

/**
* @brief GPT_DEINIT_API switch
*
*/
#define GPT_DEINIT_API (STD_ON)

/**
* @brief GPT_TIME_ELAPSED_API switch
*
*/
#define GPT_TIME_ELAPSED_API (STD_ON)

/**
* @brief GPT_TIME_REMAINING_API switch
*
*/
#define GPT_TIME_REMAINING_API (STD_ON)

/**
* @brief GPT_ENABLE_DISABLE_NOTIFICATION_API switch
*
*/
#define GPT_ENABLE_DISABLE_NOTIFICATION_API (STD_ON)

/**
* @brief GPT_WAKEUP_FUNCTIONALITY_API switch
*
*/
#define GPT_WAKEUP_FUNCTIONALITY_API (STD_ON)

/**
* @brief Enable/disable support for changing timeout value during timer running
*
*/
#define GPT_CHANGE_NEXT_TIMEOUT_VALUE (STD_OFF)

/**
* @brief Enable/disable API for Dual Mode support.
*/
#define GPT_SET_CLOCK_MODE           (STD_OFF)

/**
* @brief Support Clock Source Selection for STM Timers
*/
#define GPT_STM_ENABLECLOCKSWITCH   (STD_ON)

/**
*   @brief   Enables or disables the access to a hardware register from user mode
*            USER_MODE_SOFT_LOCKING:        All reads to hw registers will be done via REG_PROT, user mode access
*            SUPERVISOR_MODE_SOFT_LOCKING:  Locks the access to the registers only for supervisor mode
*
*
*/
#define GPT_USER_MODE_SOFT_LOCKING       (STD_OFF)






#define GPT_PRECOMPILE_SUPPORT (STD_OFF)





/**
* @brief These defines indicate that at least one chennel from each module is used in all configurations.
*
*/
#define GPT_STM_USED (STD_OFF)
#define GPT_EMIOS_USED (STD_ON)
#define GPT_PIT_USED (STD_ON)
#define GPT_PIT_RTI_USED (STD_OFF)

/**
* @{
* @brief Symbolic names of channels
*/

/** @violates @ref GPT_CFG_H_REF_2 Identifier clash */
#define GptConf_GptChannelConfiguration_GptChannelConfiguration  (0U)


/** @violates @ref GPT_CFG_H_REF_2 Identifier clash */
#define GptConf_GptChannelConfiguration_GptChannel_Wdg  (1U)


/*@}*/

/**
* @brief This define is a reserved logical channel name representing a not existing/configured
*        hardware channel.
*
*/
#define GPT_CHN_NOT_USED    (255U)

/**
* @{
* @brief IRQ Defines
*/
#define GPT_PIT_0_CH_7_ISR_USED
/** @} */

/**
* @{
* @brief IRQ Defines for eMIOS
*/
#define GPT_EMIOS_0_CH_8_USED

/* Configuration structures for PB*/
/** @violates @ref GPT_CFG_H_REF_3 MISRA 2004 Required Rule 19.4, braces not used */
#define GPT_CFG_EXTERN_DECLARATIONS \
extern CONST(Gpt_ConfigType, GPT_CONST) GptChannelConfigSet;



/**
* @brief The maxiumum number of HW channels. This is used to allocate memory space for channel runtime info.
*/
#define GPT_HW_CHANNEL_NUM   (2U)

#define GPT_PIT_MODULE_SINGLE_INTERRUPT (STD_OFF)
#define GPT_STM_MODULE_SINGLE_INTERRUPT (STD_OFF)


#define GPT_PIT_ISR_USED (STD_ON)





/* The number of channels in EMIOS_0 */
#define GPT_EMIOS_0_NUM_CHANNEL_U8   (16U)
            
/* The number of channels in EMIOS_1 */
#define GPT_EMIOS_1_NUM_CHANNEL_U8   (16U)
            
/* The maximum number of channels in EMIOS */
#define GPT_EMIOS_CHAN_NUM_U8         (64U)

/* The number of modules in EMIOS */
#define GPT_EMIOS_MODULES_NUM_U8      (2U)
        


/* The number of channels in PIT_0 */
#define GPT_PIT_0_NUM_CHANNEL_U8   (9U)
            
/* The number of channels in PIT_1 */
#define GPT_PIT_1_NUM_CHANNEL_U8   (2U)
            
/* The maximum number of channels in PIT */
#define GPT_PIT_CHAN_NUM_U8         (64U)

/* The number of modules in PIT */
#define GPT_PIT_MODULES_NUM_U8      (2U)
        


/* The number of channels in STM_0 */
#define GPT_STM_0_NUM_CHANNEL_U8   (4U)
            
/* The number of channels in STM_1 */
#define GPT_STM_1_NUM_CHANNEL_U8   (4U)
            
/* The maximum number of channels in STM */
#define GPT_STM_CHAN_NUM_U8         (8U)

/* The number of modules in STM */
#define GPT_STM_MODULES_NUM_U8      (2U)
        


/**
* @brief The total number of indexes used by the hardware to logic channel map
*/
#define GPT_CHANNEL_IDX_NUM    (GPT_EMIOS_CHAN_NUM_U8 + GPT_PIT_CHAN_NUM_U8 + GPT_STM_CHAN_NUM_U8)

/**
@{
@brief ID for peripheral. This ID need to match the order in the hardware to logic channels mapping table
*      because it is used as a base index.
*/
#define GPT_STM_MODULE       (0U)                                           /** @brief index where the STM channels start */
#define GPT_PIT_MODULE       (GPT_STM_CHAN_NUM_U8)                          /** @brief index where the PIT channels start */
#define GPT_EMIOS_MODULE     (GPT_STM_CHAN_NUM_U8 + GPT_PIT_CHAN_NUM_U8)    /** @brief index where the EMIOS channels start */

/** @} */

/** 
* @brief  Switch to enable/disable the production error reporting.
*/
#define GPT_DISABLE_DEM_REPORT_ERROR_STATUS           (STD_ON)

/** 
* @brief  This is a timeout value which is used to wait till PIT_RTI_LDVAL is synchronized into the RTI clock domain
*/
#define GPT_TIMEOUT_COUNTER  (65535UL)

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
*                                    FUNCTION PROTOTYPES
==================================================================================================*/

#ifdef __cplusplus
}
#endif

#endif  /* GPT_CFG_H */

/** @} */
