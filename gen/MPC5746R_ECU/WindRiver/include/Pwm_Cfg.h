/**
*   @file       Pwm_Cfg.h
*   @implements Pwm_Cfg.h_Artifact
*   @version    1.0.2
*
*   @brief      AUTOSAR Pwm - Pwm configuration file.
*   @details    Precompile parameters and extern configuration.
*
*   @addtogroup PWM_MODULE
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : eMios
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

#ifndef PWM_CFG_H
#define PWM_CFG_H

#ifdef __cplusplus
extern "C" {
#endif

/**
* @page misra_violations MISRA-C:2004 violations
*
* @section Pwm_Cfg_H_REF_1
* Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken in order to
* prevent the contents of a header file being included twice. All header files are
* protected against multiple inclusions.
*
* @section Pwm_Cfg_H_REF_2
* Violates MISRA 2004 Required Rule 19.4, C macros should only extend to braced initializer,
* a constant, a paranthesised expression, a type qualifier, a storage class specifier or 
* a  do-while-zero construct. 
* Macro used to define external constant in order to reduce code complexity.*
*
* @section Pwm_Cfg_H_REF_3
* Violates MISRA 2004 Required Rule 8.7, Objects shall be defined at block scope if they
* are accessed from within a sigle function.
* These symbols are used in the entire driver.*
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not 
* rely on the significance of more than 31 characters.
* This is not a violation since all the compilers used interpret the identifiers correctly.
*
* @section [global]
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure 31
* character significance and case sensitivity are supported for external identifiers.
* This is not a violation since all the compilers used interpret the identifiers correctly.
*/

/*==================================================================================================
*                                         INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/
/** @violates @ref Pwm_Cfg_H_REF_1 MISRA 2004 Required Rule 19.15, precautions to prevent the 
*   contents of a header file being included twice.*/
#include "Pwm_EnvCfg.h"
#include "Pwm_Types.h"

/*==================================================================================================
*                               SOURCE FILE VERSION INFORMATION
==================================================================================================*/
/**
* @{
* @file           Pwm_Cfg.h
*/
#define PWM_CFG_VENDOR_ID                         43
#define PWM_CFG_MODULE_ID                         121
#define PWM_CFG_AR_RELEASE_MAJOR_VERSION          4
#define PWM_CFG_AR_RELEASE_MINOR_VERSION          0
#define PWM_CFG_AR_RELEASE_REVISION_VERSION       3
#define PWM_CFG_SW_MAJOR_VERSION                  1
#define PWM_CFG_SW_MINOR_VERSION                  0
#define PWM_CFG_SW_PATCH_VERSION                  2
/**@}*/

/*==================================================================================================
*                                      FILE VERSION CHECKS
==================================================================================================*/
#if (PWM_CFG_VENDOR_ID != PWM_CFG_ENV_VENDOR_ID)
    #error "Pwm_Cfg.h and Pwm_EnvCfg.h have different vendor ids"
#endif
/* Check if current file and Pwm_EnvCfg header file are of the same Autosar version */
#if (( PWM_CFG_AR_RELEASE_MAJOR_VERSION != PWM_CFG_ENV_AR_RELEASE_MAJOR_VERSION) || \
     ( PWM_CFG_AR_RELEASE_MINOR_VERSION != PWM_CFG_ENV_AR_RELEASE_MINOR_VERSION) || \
     ( PWM_CFG_AR_RELEASE_REVISION_VERSION !=  PWM_CFG_ENV_AR_RELEASE_REVISION_VERSION))
     #error "AutoSar Version Numbers of Pwm_Cfg.h and Pwm_EnvCfg.h are different"
#endif
/* Check if current file and Pwm_EnvCfg header file are of the same software version */
#if ((PWM_CFG_SW_MAJOR_VERSION != PWM_CFG_ENV_SW_MAJOR_VERSION) || \
     (PWM_CFG_SW_MINOR_VERSION != PWM_CFG_ENV_SW_MINOR_VERSION) || \
     (PWM_CFG_SW_PATCH_VERSION != PWM_CFG_ENV_SW_PATCH_VERSION))
     #error "Software Version Numbers of Pwm_Cfg.h and Pwm_EnvCfg.h are different"
#endif

#if (PWM_CFG_VENDOR_ID != PWM_TYPES_VENDOR_ID)
    #error "Pwm_Cfg.h and Pwm_Types.h have different vendor ids"
#endif
/* Check if current file and Pwm_Types header file are of the same Autosar version */
#if (( PWM_CFG_AR_RELEASE_MAJOR_VERSION != PWM_TYPES_AR_RELEASE_MAJOR_VERSION) || \
     ( PWM_CFG_AR_RELEASE_MINOR_VERSION != PWM_TYPES_AR_RELEASE_MINOR_VERSION) || \
     ( PWM_CFG_AR_RELEASE_REVISION_VERSION !=  PWM_TYPES_AR_RELEASE_REVISION_VERSION))
     #error "AutoSar Version Numbers of Pwm_Cfg.h and Pwm_Types.h are different"
#endif
/* Check if current file and Pwm_Types header file are of the same software version */
#if ((PWM_CFG_SW_MAJOR_VERSION != PWM_TYPES_SW_MAJOR_VERSION) || \
     (PWM_CFG_SW_MINOR_VERSION != PWM_TYPES_SW_MINOR_VERSION) || \
     (PWM_CFG_SW_PATCH_VERSION != PWM_TYPES_SW_PATCH_VERSION))
     #error "Software Version Numbers of Pwm_Cfg.h and Pwm_Types.h are different"
#endif

/*==================================================================================================
*                                           CONSTANTS
==================================================================================================*/


/*==================================================================================================
*                                       PLATFORM SPECIFIC DEFINES AND MACROS
==================================================================================================*/
/**
* @brief          API service ID
*
*/
#define PWM_PROCESSNOTIFICATION_ID    0x0AU

/*==================================================================================================
*                                       DEFINES AND MACROS
==================================================================================================*/

/**
* @brief          Switch to indicate that Pwm_DeInit API is supported
*
*/

#define PWM_DE_INIT_API             (STD_ON)

/**
* @brief          Switch to indicate that Pwm_GetOutputState API is supported
*
*/

#define PWM_GET_OUTPUT_STATE_API    (STD_ON)

/**
* @brief        Switch to indicate that Pwm_SetDutyCycle API is supported
*
*/
#define PWM_SET_DUTY_CYCLE_API      (STD_ON)

/**
* @brief   Switch to indicate that Pwm_SetOutputToIdle API is supported
*
*/
#define PWM_SET_OUTPUT_TO_IDLE_API  (STD_ON)

/**
* @brief   Switch to indicate that Pwm_SetPeriodAndDuty API is supported
*
*/
#define PWM_SET_PERIOD_AND_DUTY_API (STD_ON)

/**
* @brief   Switch to indicate that Pwm_SetClockMode API is supported
*/
#define PWM_VERSION_INFO_API              (STD_ON)

/**
* @brief      Switch to indicate that Pwm_GetChannelState API is supported
*
*/
#define PWM_GET_CHANNEL_STATE_API         (STD_ON)

/**
* @brief      Switch to indicate that Pwm_ForceOutputToZero API is supported
*
*/
#define PWM_FORCE_OUTPUT_TO_ZERO_API       (STD_OFF)

/**
* @brief   Switch for enabling the development error detection.
*
*/
#define PWM_DEV_ERROR_DETECT (STD_OFF)

/**
* @brief   Switch for enabling the update of the duty cycle parameter at the end of the current period
*
*/
#define PWM_DUTYCYCLE_UPDATED_ENDPERIOD   (STD_ON)

/**
* @brief   Switch to indicate that the notifications are supported
*
*/
#define PWM_NOTIFICATION_SUPPORTED        (STD_ON)

/**
* @brief   Switch to indicate that register A is updated at dutycycle change for OPWMT mode
*
*/
#define PWM_CHANGE_REGISTER_A_SWITCH    (STD_OFF)

/**
* @brief      Switch for enabling the fault functionality
*
*/
#define PWM_FAULT_SUPPORTED               (STD_OFF)

/**
* @brief      Switch for enabling Pwm_SetPhaseShift API
*
*/
#define PWM_SET_PHASE_SHIFT_API            (STD_OFF)
/**
* @brief      Switch for enabling Pwm_SetPhaseShift_NoUpdate API
*
*/
#define PWM_SET_PHASE_SHIFT_NO_UPDATE_API            (STD_OFF)

/**
* @brief      Switch for enabling Pwm_EnableTrigger API
*
*/
#define PWM_ENABLE_TRIGEER_API            (STD_OFF)

/**
* @brief      Switch for enabling Pwm_DisableTrigger API
*
*/
#define PWM_DIABLE_TRIGEER_API            (STD_OFF)

/**
* @brief      Switch for enabling Pwm_SwResetCounter API
*
*/
#define PWM_RESET_COUNTER_API            (STD_OFF)

/**
* @brief      Switch for enabling MaskOutput API
*
*/
#define PWM_ENABLE_MASKING_OPERATIONS            (STD_OFF)


/**
* @brief      FTM is not supported
*
*/
#define PWM_ALLOW_SUBMODULE_SYNC            (STD_ON)

/**
* @brief   Switch for enabling the update of the period parameter at the end of the current period
*
*/
#define PWM_DUTY_PERIOD_UPDATED_ENDPERIOD (STD_ON)


/**
* @brief   Switch to indicate that Pwm_SetCounterBus API is supported
*
*/
#define PWM_SET_COUNTER_BUS_API         (STD_ON)

/**
* @brief   Switch to indicate that Pwm_SetChannelOutput API is supported
*
*/
#define PWM_SET_CHANNEL_OUTPUT_API  (STD_ON)

/**
* @brief   Switch to indicate that Pwm_SetTriggerDelay API is supported
*
*/
#define PWM_SET_TRIGGER_DELAY_API  (STD_OFF)

/**
* @brief   Specifies if multiple pwm channel synchronization feature is available
*
*/
#define PWM_BUFFER_TRANSFER_EN_DIS_API  (STD_ON)


/**
* @brief      Switch to indicate that PwmSetDutyCycle_NoUpdate API is supported
*
*/
#define PWM_SET_DUTY_CYCLE_NO_UPDATE_API       (STD_OFF)

/**
* @brief      Switch to indicate that PwmSetPeriodAndDuty_NoUpdate API is supported
*
*/
#define PWM_SET_PERIOD_AND_DUTY_NO_UPDATE_API  (STD_OFF)

/**
* @brief      Switch to indicate that Pwm_SyncUpdate API is no supported
*
*/
#define PWM_SYNC_UPDATE_API                    (STD_OFF)

/**
* @brief      Switch to indicate that Pwm_SelectCommonTimebase API is supported
*
*/
#define PWM_SELECT_COMMON_TIMEBASE_API         (STD_OFF)

/**
* @brief      Switch to indicate that the notifications are supported
*
*/
#define PWM_UPDATE_DUTY_SYNCHRONOUS       (STD_OFF)

/**
* @brief      Switch for enabling the dual clock functionality (Pwm_SetClockMode API)
*
*/
#define PWM_SET_CLOCK_MODE_API            (STD_OFF)

/**
* @brief Support for User mode.
*        If this parameter has been configured to 'TRUE' the Pwm driver code can be executed from both supervisor and user mode.
*
*/  
#define PWM_ENABLE_USER_MODE_SUPPORT    (STD_OFF)

/**
* @brief      Specifies the InstanceId of this module instance.
* @details    Specifies the InstanceId of this module instance.
*             If only one instance is present it shall have the Id 0.
*             Not used in the current implementation
*
*/
#define PWM_INDEX    (0U)

/**
* @brief      Switch to indicate that platform-specific validations of the notification function are supported
*
*/
#define PWM_NOTIFICATON_PLAUSABILITY          (STD_ON)

/**
* @brief      Switch to indicate that platform-specific validation of the offset (phase shift) of duty-cycle is supported
*
*/
#define PWM_OFFSET_PLAUSABILITY               (STD_ON)

/**
* @brief      Switch to indicate that platform-specific validation of the output state parameter is supported
*
*/
#define PWM_OUTPUT_STATE_PLAUSABILITY         (STD_OFF)

/**
* @brief      Switch to indicate that platform-specific validation of the period is supported
*
*/
#define PWM_MAX_PERIOD_PLAUSABILITY           (STD_ON)

/**
* @brief      Switch to indicate that timer precision is 16bits or 24bits
*
*/
#define PWM_EMIOS_16_BITS_VARIANT              (STD_ON)

/**
@brief   Switch to indicate that  atleast one channel is configured in OPWMT mode
*
*/
#define PWM_FEATURE_OPWMT  (STD_OFF)

/**
 @brief Switch to indicate that  atleast one channel is configured in OPWMCB mode
*
*/
#define PWM_FEATURE_OPWMCB (STD_OFF)

/**
@brief   Switch to indicate that  atleast one channel is configured in DAOC mode
*
*/
#define PWM_FEATURE_DAOC   (STD_OFF)

/**
@brief   Switch to indicate that  atleast one channel is configured in OPWFM mode
*
*/
#define PWM_FEATURE_OPWFM   (STD_OFF)

/**
@brief   Switch to indicate that  atleast one channel is configured in OPWM mode
*
*/
#define PWM_FEATURE_OPWM   (STD_OFF)


#define PWM_DAOC_COUNTER    ((uint32)0x0000FFFF)

/**
* @brief   Specific the max channels of one config set in all config sets.
*/
#define PWM_MAX_CHANNELS_U8  (1U)




#define PWM_PRECOMPILE_SUPPORT (STD_OFF)

/**
* @brief Symbolic Names for configured channels
*/
#define PwmChannel_LS_DRI_IN1         ((Pwm_ChannelType)0U)

/** 
* @brief           Symbolic Names for configured channels - ecuc 2108 compliant.
*/
#define  PwmConf_PwmChannelConfigSet_PwmChannel_LS_DRI_IN1         ((Pwm_ChannelType)0U)

/**
* @brief ISRs configured for Pwm channels
*
@{
*/
     
/**
* @brief use for resource conflict check
*
@{
*/
#define PWM_EMIOS_0_CH_12_USED
     

/* @brief maximum number of EMIOS channels configurable on this platform = modules * channels */
#define PWM_EMIOS_HW_MODULES_CFG_U8  (2UL)

/* @brief maximum number of emios hardware channels */
#define PWM_EMIOS_HW_CHANNELS_U8        (32U * PWM_EMIOS_HW_MODULES_CFG_U8)

/* @brief maximum number of hardware channels configurable on this platform = modules * channels */
#define PWM_HW_CHANNELS_NO_U8           (PWM_EMIOS_HW_CHANNELS_U8)

#define PWM_HW_MODULES_CFG_U8           (PWM_EMIOS_HW_MODULES_CFG_U8)

/** @brief Defines the maximum value of the period - this value is hardware/platform dependent */
#if (PWM_EMIOS_16_BITS_VARIANT == STD_OFF)
#define PWM_MAX_PERIOD              (0xFFFFFFU)
#else
#define PWM_MAX_PERIOD              (0xFFFFU)
#endif

#if (PWM_SET_PERIOD_AND_DUTY_API == STD_ON)
/** @brief Symbolic Name for period det error */
#define PWM_E_PERIODVALUE (0x1AU)

#endif

/** @brief Maximum number of FTM channels configured */
#define PWM_EMIOS_HW_CHANNELS_MAX_U8    (1U)

/*==================================================================================================
*                                              ENUMS
==================================================================================================*/

/*==================================================================================================
*                                  STRUCTURES AND OTHER TYPEDEFS
==================================================================================================*/
/** 
* @brief      Pwm Period type (the value of the period is platform dependent and thus configurable) 
*/
#if (PWM_EMIOS_16_BITS_VARIANT == STD_OFF)
/** @implements Pwm_PeriodType_typedef*/
typedef uint32 Pwm_PeriodType;
#else
/** @implements Pwm_PeriodType_typedef*/
typedef uint16 Pwm_PeriodType;
#endif

/*==================================================================================================
*                                  GLOBAL VARIABLE DECLARATIONS
==================================================================================================*/
#define PWM_START_SEC_CONFIG_DATA_UNSPECIFIED
/*
* @violates @ref Pwm_Cfg_H_REF_1 precautions to prevent the contents
*        of a header file being included twice
*/
#include "MemMap.h"

/* @brief declaration of config sets for PB configuration */
#if (PWM_PRECOMPILE_SUPPORT == STD_OFF )
/* @violates @ref Pwm_Cfg_H_REF_2 Macro not expanded to paranthesised expression. */
#define PWM_INIT_CONFIG_PB_DEFINES  extern CONST(Pwm_ConfigType, PWM_CONST) PwmChannelConfigSet;

#endif /* PWM_PRECOMPILE_SUPPORT */

#define PWM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/*
* @violates @ref Pwm_Cfg_H_REF_1 precautions to prevent the contents
*        of a header file being included twice
*/
#include "MemMap.h"

/*==================================================================================================
*                                      FUNCTION PROTOTYPES
==================================================================================================*/
#define PWM_START_SEC_CODE
/*
* @violates @ref Pwm_Cfg_H_REF_1 precautions to prevent the contents
*        of a header file being included twice
*/
#include "MemMap.h"


/** @brief Prototypes of Pwm channels User Notifications */  
  
#define PWM_STOP_SEC_CODE
/*
* @violates @ref Pwm_Cfg_H_REF_1 precautions to prevent the contents
*        of a header file being included twice
*/
#include "MemMap.h"


#ifdef __cplusplus
}
#endif

#endif    /*PWM_CFG_H*/

/** @} */

