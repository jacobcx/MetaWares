/**
*   @file       Pwm_Cfg.c
*   @version    1.0.2
*
*   @brief      AUTOSAR Pwm - Pwm pre-compile configuration file.
*   @details    Pre-compile configuration structure instances.
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


#ifdef __cplusplus
extern "C" {
#endif

/**
* @page misra_violations MISRA-C:2004 violations
*
* @section Pwm_Cfg_C_REF_1
* Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken in order to
* prevent the contents of a header file being included twice. All header files are
* protected against multiple inclusions.
*
* @section Pwm_Cfg_C_REF_2
* Violates MISRA 2004 Required Rule 8.10, external ... could be made static
* The respective code could not be made static because of layers architecture design of the driver.
* 
* @section Pwm_Cfg_C_REF_3
* Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments
* before "#include". This violation  is not  fixed since  the inclusion  of MemMap.h
* is as  per Autosar  requirement MEMMAP003.
*
* @section Pwm_Cfg_C_REF_4
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not 
* rely on the significance of more than 31 characters.
* This is not a violation since all the compilers used interpret the identifiers correctly.
*
* @section Pwm_Cfg_C_REF_5
* Violates MISRA 2004 Required Rule 16.9, A function identifier shall only be used with either 
* preceing &, or with a paranhesised parameter list which may be empty.
*
* @section Pwm_Cfg_C_REF_6
* Violates MISRA 2004 Required Rule 12.8, The right-hand operand of a shift operator shall lie 
* between zero and one less than the width in bits of the underlying type of the left-hand operand.
*
*

*/

/*==================================================================================================
*                                         INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/
#include "Pwm.h"

/*==================================================================================================
*                               SOURCE FILE VERSION INFORMATION
==================================================================================================*/
/**
* @{
* @file           Pwm_Cfg.c
*/

#define PWM_PC_CFG_VENDOR_ID_C                      43
#define PWM_PC_CFG_MODULE_ID_C                      121
/* @violates @ref Pwm_Cfg_C_REF_4 Identifier exceeds 31 chars. */
#define PWM_PC_CFG_AR_RELEASE_MAJOR_VERSION_C       4
/* @violates @ref Pwm_Cfg_C_REF_4 Identifier exceeds 31 chars. */
#define PWM_PC_CFG_AR_RELEASE_MINOR_VERSION_C       0
/* @violates @ref Pwm_Cfg_C_REF_4 Identifier exceeds 31 chars. */
#define PWM_PC_CFG_AR_RELEASE_REVISION_VERSION_C    3

#define PWM_PC_CFG_SW_MAJOR_VERSION_C               1
#define PWM_PC_CFG_SW_MINOR_VERSION_C               0
#define PWM_PC_CFG_SW_PATCH_VERSION_C               2
/**@}*/

/*==================================================================================================
*                                      FILE VERSION CHECKS
==================================================================================================*/
#if (PWM_PC_CFG_VENDOR_ID_C != PWM_VENDOR_ID)
    #error "Pwm_Cfg.c and Pwm.h have different vendor ids"
#endif

#if ((PWM_PC_CFG_AR_RELEASE_MAJOR_VERSION_C != PWM_AR_RELEASE_MAJOR_VERSION) || \
        (PWM_PC_CFG_AR_RELEASE_MINOR_VERSION_C != PWM_AR_RELEASE_MINOR_VERSION) || \
        (PWM_PC_CFG_AR_RELEASE_REVISION_VERSION_C != PWM_AR_RELEASE_REVISION_VERSION))
    #error "AutoSar Version Numbers of Pwm_Cfg.c and Pwm.h are different"
#endif

#if ((PWM_PC_CFG_SW_MAJOR_VERSION_C != PWM_SW_MAJOR_VERSION) || \
        (PWM_PC_CFG_SW_MINOR_VERSION_C != PWM_SW_MINOR_VERSION)  || \
        (PWM_PC_CFG_SW_PATCH_VERSION_C != PWM_SW_PATCH_VERSION))
    #error "Software Version Numbers of Pwm_Cfg.c and Pwm.h are different"
#endif

/*==================================================================================================
*                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
==================================================================================================*/

/*==================================================================================================
*                                       LOCAL CONSTANTS
==================================================================================================*/

/*==================================================================================================
*                                       LOCAL VARIABLES
==================================================================================================*/

/*==================================================================================================
*                                       GLOBAL CONSTANTS
==================================================================================================*/
#if ( PWM_PRECOMPILE_SUPPORT == STD_ON )

/* @violates @ref Pwm_Cfg_C_REF_4 Identifier exceeds 31 chars. */
#define PWM_START_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref Pwm_Cfg_C_REF_1 MISRA 2004 Required Rule 19.15, precautions to prevent the 
*   contents of a header file being included twice.*/
#include "MemMap.h"


/** 
* @brief Number of configured Pwm channels 
*/
#define PWM_CONF_CHANNELS_PC            1

/** 
* @brief Number of configured EMIOS channels
*/
#define PWM_EMIOS_CONF_CHANNELS_PC     1


/* @brief Configurations for Pwm channels using EMIOS */
static CONST(Pwm_eMios_ChannelConfigType, PWM_CONST) Pwm_eMios_ChannelConfigPc[PWM_EMIOS_CONF_CHANNELS_PC] =
{
    /* @brief PwmChannel_LS_DRI_IN1 */
    {
        /** @brief Pwm channel polarity */
        PWM_HIGH,
        /** @brief Pwm channel idle state */
        PWM_LOW,
        /** @brief Default duty cycle value */
        (uint16)0x4000,
        /** @brief Default period value50000.0 */
        (Pwm_PeriodType)50000.0,
        /** @brief EMIOS HW Module and Channel used by the Pwm channel */
        PWM_EMIOS_M0_C12,
        /* @brief EMIOS channel configuration parameters */
        /* @violates @ref Pwm_Cfg_C_REF_6 The right-hand operand of a shift operator shall... */
        (Pwm_eMios_ControlType)(PWM_BUS_INTERNAL_COUNTER_U32 | PWM_MODE_OPWFMB_U32  | (PWM_PRES_4_U32)),
        (Pwm_PeriodType)0,/* leading edge of the PWM output pulse in OPWMB, OPWMT modes */
        (uint8)0,
        #if (PWM_FEATURE_DAOC == STD_ON)
        (Pwm_PeriodType)0,/* only use for DAOC mode */
        #endif
        #if (PWM_FEATURE_OPWMT == STD_ON)
        (Pwm_PeriodType)0,/* delay for generating the trigger event in OPWMT mode */
        #endif
        #if (PWM_FEATURE_OPWMCB == STD_ON)
        (uint16)0,/*deadtime parameter */
        #endif
        (boolean)FALSE/* Pwm_Offset and Pwm_TriggerDelay adjusted during runtime */
    }
};

/**
@brief EMIOS IP configuration
*/
static CONST(Pwm_eMios_IpConfigType, PWM_CONST) Pwm_eMios_IpConfigPc =
{
    /** @brief Number of EMIOS channels in the Pwm configuration */
    (uint8)1,
    /** @brief Pointer to the array of EMIOS enabled Pwm channel configurations */
    &Pwm_eMios_ChannelConfigPc 
};


/** @brief Array of configured Pwm channels */
static CONST(Pwm_ChannelConfigType, PWM_CONST) Pwm_ChannelsPc[PWM_CONF_CHANNELS_PC] =
{
    /* @brief PwmChannel_LS_DRI_IN1 */
    {
        /* @brief Channel class: Variable/Fixed/Fixed_Shifted period */
        PWM_FIXED_PERIOD,
#if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
        /** @brief Pwm notification function */
        NULL_PTR
#endif
    }
};

/**
@brief   Pwm channels IP related configuration array
*/
static CONST(Pwm_IpChannelConfigType, PWM_CONST) Pwm_IpChannelConfigPc[PWM_CONF_CHANNELS_PC] =
{
    /** @brief PwmChannel_LS_DRI_IN1 */
    {
        /* @brief Index in the configuration table of the EMIOS channels */
        (uint8)0,
    }
};

/**
@brief   Pwm high level configuration structure
*/
/* @violates @ref Pwm_Cfg_C_REF_2 external ... could be made static */
CONST(Pwm_ConfigType, PWM_CONST) Pwm_InitConfigPc =
{
    /** @brief Number of configured Pwm channels */
    (Pwm_ChannelType)PWM_CONF_CHANNELS_PC,
    /** @brief Pointer to array of Pwm channels */
    &Pwm_ChannelsPc,
    /** @brief IP specific configuration */
    {
        /* @brief Pointer to the structure containing EMIOS configuration */
        &Pwm_eMios_IpConfigPc,
        /* @brief Pointer to Array containing channe IP related information */
        &Pwm_IpChannelConfigPc
    }
#if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
    ,
    /** @brief Hw to logic channel map. Array containing a number of elements
    equal to total number of available channels on EMIOS IPV */
    {
      /*---------------------EMIOS_0---------------------------*/
        (Pwm_ChannelType)255,        /* EMIOS_0_0 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_1 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_2 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_3 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_4 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_5 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_6 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_7 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_8 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_9 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_10 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_11 Unused */
        (Pwm_ChannelType)0,        /* EMIOS_0_12 */
        (Pwm_ChannelType)255,        /* EMIOS_0_13 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_14 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_15 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_16 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_17 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_18 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_19 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_20 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_21 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_22 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_23 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_24 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_25 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_26 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_27 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_28 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_29 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_30 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_0_31 Unused */
      /*---------------------EMIOS_1---------------------------*/
        (Pwm_ChannelType)255,        /* EMIOS_1_0 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_1 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_2 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_3 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_4 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_5 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_6 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_7 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_8 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_9 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_10 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_11 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_12 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_13 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_14 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_15 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_16 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_17 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_18 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_19 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_20 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_21 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_22 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_23 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_24 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_25 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_26 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_27 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_28 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_29 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_30 Unused */
        (Pwm_ChannelType)255,        /* EMIOS_1_31 Unused */
    }
#endif /* (PWM_NOTIFICATION_SUPPORTED == STD_ON) */  
};

/* @violates @ref Pwm_Cfg_C_REF_4 Identifier exceeds 31 chars. */
#define PWM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref Pwm_Cfg_C_REF_1 MISRA 2004 Required Rule 19.15, precautions to prevent the 
*   contents of a header file being included twice.*/
/*
* @violates @ref Pwm_Cfg_C_REF_3 #include statements in a file should
* only be preceded by other preprocessor directives or comments.
*/
#include "MemMap.h"

#endif  /* PWM_PRECOMPILE_SUPPORT*/

/*==================================================================================================
*                                       GLOBAL VARIABLES
==================================================================================================*/

/*==================================================================================================
*                                    LOCAL FUNCTION PROTOTYPES
==================================================================================================*/

/*==================================================================================================
*                                        LOCAL FUNCTIONS
==================================================================================================*/

/*==================================================================================================
*                                        GLOBAL FUNCTIONS
==================================================================================================*/


#ifdef __cplusplus
}
#endif

/** @} */

