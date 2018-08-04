/**
 *   @file    Icu_Cfg.c
 *   @version 1.0.2
 *
 *   @brief   AUTOSAR Icu - contains the data exported by the Icu module
 *   @details Contains the information that will be exported by the module, as requested by Autosar.
 *
 *   @addtogroup ICU_MODULE
 *   @{
 */
/*==================================================================================================
 *   Project              : AUTOSAR 4.0 MCAL
 *   Platform             : PA
 *   Peripheral           : eMIOS SIUL2
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
extern "C"{
#endif

/**
 *@page misra_violations MISRA-C:2004 violations
 *
 *@section Icu_Cfg_c_1
 *          Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments
 *          before "#include". This violation  is not  fixed since  the inclusion  of MemMap.h
 *          is as  per Autosar  requirement MEMMAP003.
 *
 *@section Icu_Cfg_c_2
 *          Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken in order to prevent
 *          the contents of a header file being included twice
 *          This is not a violation since all header files are protected against multiple inclusions
 *
 * @section Icu_Cfg_c_3
 *          Violates MISRA 2004 Required Rule 8.10, external ... could be made static
 *          The respective code could not be made static because of layers architecture design
 *          of the driver.
 *
 * @section Icu_Cfg_c_4
 *          Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure 31
 *          character significance and case sensitivity are supported for external identifiers.
 *          This is not a violation since all the compilers used interpret the identifiers correctly
 *
 *
 * @section [global]
 *          Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
 *          on the significance of more than 31 characters. The used compilers use more than 31 chars 
 *          for identifiers.
 */

 /*=================================================================================================
 *                                         INCLUDE FILES
 * 1) system and project includes
 * 2) needed interfaces from external units
 * 3) internal and external interfaces from this unit
 *================================================================================================*/
#include "Icu.h"
#include "Icu_Ipw.h"
#if ((ICU_SIGNALMEASUREMENT_USES_DMA == STD_ON) || (ICU_TIMESTAMP_USES_DMA == STD_ON))
#include "CDD_Mcl.h"
#endif

#ifdef ICU_PRECOMPILE_SUPPORT
/*==================================================================================================
 *                              SOURCE FILE VERSION INFORMATION
 *================================================================================================*/

#define ICU_VENDOR_ID_PCCFG_C                   43

#define ICU_AR_RELEASE_MAJOR_VERSION_PCCFG_C    4
#define ICU_AR_RELEASE_MINOR_VERSION_PCCFG_C    0
/*
 * @violates @ref Icu_Cfg_c_4 Identifier clash
 */
#define ICU_AR_RELEASE_REVISION_VERSION_PCCFG_C       3

#define ICU_SW_MAJOR_VERSION_PCCFG_C            1
#define ICU_SW_MINOR_VERSION_PCCFG_C            0
#define ICU_SW_PATCH_VERSION_PCCFG_C            2

/*==================================================================================================
 *                                      FILE VERSION CHECKS
 *================================================================================================*/
 
/* Check Icu_Cfg.c against Icu.h file versions */
#if (ICU_VENDOR_ID_PCCFG_C != ICU_VENDOR_ID)
    #error "Icu_Cfg.c and Icu.h have different vendor IDs"
#endif

#if ((ICU_AR_RELEASE_MAJOR_VERSION_PCCFG_C != ICU_AR_RELEASE_MAJOR_VERSION) || \
     (ICU_AR_RELEASE_MINOR_VERSION_PCCFG_C != ICU_AR_RELEASE_MINOR_VERSION) || \
     (ICU_AR_RELEASE_REVISION_VERSION_PCCFG_C != ICU_AR_RELEASE_REVISION_VERSION))
  #error "AutoSar Version Numbers of Icu_Cfg.c and Icu.h are different"
#endif

#if ((ICU_SW_MAJOR_VERSION_PCCFG_C != ICU_SW_MAJOR_VERSION) || \
     (ICU_SW_MINOR_VERSION_PCCFG_C != ICU_SW_MINOR_VERSION) || \
     (ICU_SW_PATCH_VERSION_PCCFG_C != ICU_SW_PATCH_VERSION))
       #error "Software Version Numbers of Icu_Cfg.c  and Icu.h are different"
#endif


/* Check Icu_Cfg.c against Icu_Ipw.h file versions */
#if (ICU_VENDOR_ID_PCCFG_C != ICU_IPW_VENDOR_ID)
    #error "Icu_Cfg.c and Icu_Ipw.h have different vendor IDs"
#endif

#if ((ICU_AR_RELEASE_MAJOR_VERSION_PCCFG_C != ICU_IPW_AR_RELEASE_MAJOR_VERSION) || \
     (ICU_AR_RELEASE_MINOR_VERSION_PCCFG_C != ICU_IPW_AR_RELEASE_MINOR_VERSION) || \
     (ICU_AR_RELEASE_REVISION_VERSION_PCCFG_C != ICU_IPW_AR_RELEASE_REVISION_VERSION))
  #error "AutoSar Version Numbers of Icu_Cfg.c and Icu_Ipw.h are different"
#endif

#if ((ICU_SW_MAJOR_VERSION_PCCFG_C != ICU_IPW_SW_MAJOR_VERSION) || \
     (ICU_SW_MINOR_VERSION_PCCFG_C != ICU_IPW_SW_MINOR_VERSION) || \
     (ICU_SW_PATCH_VERSION_PCCFG_C != ICU_IPW_SW_PATCH_VERSION))
       #error "Software Version Numbers of Icu_Cfg.c  and Icu_Ipw.h are different"
#endif
/* Check Icu_Cfg.c against CDD_Mcl.h file versions */
#if ((ICU_SIGNALMEASUREMENT_USES_DMA == STD_ON) || (ICU_TIMESTAMP_USES_DMA == STD_ON))
    #ifndef DISABLE_MCAL_INTERMODULE_ASR_CHECK
        #if ((ICU_AR_RELEASE_MAJOR_VERSION_PCCFG_C != MCL_AR_RELEASE_MAJOR_VERSION) || \
        (ICU_AR_RELEASE_MINOR_VERSION_PCCFG_C != MCL_AR_RELEASE_MINOR_VERSION) || \
        (ICU_AR_RELEASE_REVISION_VERSION_PCCFG_C != MCL_AR_RELEASE_REVISION_VERSION))
        #error "AutoSar Version Numbers of Icu_Cfg.c and CDD_Mcl.h are different"
        #endif
    #endif
#endif
/*==================================================================================================
 *                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
 *================================================================================================*/


/*==================================================================================================
 *                                       LOCAL MACROS
 *================================================================================================*/


/*==================================================================================================
 *                                      LOCAL CONSTANTS
 *================================================================================================*/


/*==================================================================================================
 *                                       LOCAL VARIABLES
 *================================================================================================*/


/*==================================================================================================
 *                                       GLOBAL CONSTANTS
 *================================================================================================*/




#define ICU_START_SEC_CODE
/*
 * @violates @ref Icu_Cfg_c_1 Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements
 *           and comments before "#include"
 * @violates @ref Icu_Cfg_c_2 precautions to prevent the contents of a header file being included
 *           twice
 */
#include "MemMap.h"




#define ICU_STOP_SEC_CODE
 /*
  * @violates @ref Icu_Cfg_c_1 Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements
  *           and comments before "#include"
  * @violates @ref Icu_Cfg_c_2 precautions to prevent the contents of a header file being included
  *           twice
  */
#include "MemMap.h"


#define ICU_START_SEC_CONFIG_DATA_UNSPECIFIED

 /*
  * @violates @ref Icu_Cfg_c_1 Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements
  *           and comments before "#include"
  * @violates @ref Icu_Cfg_c_2 precautions to prevent the contents of a header file being included
  *           twice
  */
#include "MemMap.h"


/*
 *  @brief    PC Default Configuration
 *  @violates @ref Icu_Cfg_c_3 violates Misra 8.10 external ... could be made static
 */
 CONST(Icu_ChannelConfigType, ICU_CONST) Icu_InitChannel_PC0[1]=
 {
         /* IcuChannel_SBC */
        {
            ((Icu_ParamType)((Icu_ParamType)ICU_RISING_EDGE << ICU_EDGE_PARAM_SHIFT)),
            (Icu_MeasurementModeType)ICU_MODE_SIGNAL_EDGE_DETECT,
            (Icu_MeasurementSubModeType)0U,
            NULL_PTR,
#if ((ICU_SIGNALMEASUREMENT_USES_DMA == STD_ON) || (ICU_TIMESTAMP_USES_DMA == STD_ON))
(Mcl_ChannelType)            NoMclDmaChannel,
#endif
#if (ICU_OVERFLOW_NOTIFICATION_API == STD_ON)
            NULL_PTR,
#endif  /* ICU_OVERFLOW_NOTIFICATION_API */
#if (ICU_REPORT_WAKEUP_SOURCE == STD_ON)
            (Icu_WakeupValueType)0U

#endif /* (ICU_REPORT_WAKEUP_SOURCE == STD_ON) */
        }

 };







    /** @brief No eMios channels configured */



/*
 *  @brief    PC Default SIUL2 Configuration
 *  @violates @ref Icu_Cfg_c_3 violates Misra 8.10 external ... could be made static
 */
 CONST(Icu_Siul2_ChannelConfigType, ICU_CONST) Icu_Siul2_ChannelConfig_PC0[1] =
 {
        /** @brief IcuChannel_SBC */
    {
        /** @brief Siul2 HW Module and Channel used by the Icu channel */
        ICU_IRQ_CH_0,
        /** @brief Siul2 channel configuration parameters */
        (Icu_Siul2_ControlType)0U,
        (uint8)ICU_RISING_EDGE
    }

 };
/*
 *  @violates @ref Icu_Cfg_c_3 violates Misra 8.10 external ... could be made static
 */
 CONST(Icu_Siul2_IpConfigType, ICU_CONST) Icu_Siul2Icu_IpConfig_PC0 =
 {
    /** @brief Number of Siul2 channels in the Icu configuration */
    (uint8)1,
    /** @brief The Siul2 global configuration paramters */
    (Icu_Siul2_GlobalConfigurationType)0U,
    /** @brief Pointer to the array of Siul2 enabled Icu channel configurations */
    &Icu_Siul2_ChannelConfig_PC0
 };

/*
 * @brief   Icu channels IP related configuration array
 * @violates @ref Icu_Cfg_c_3 violates Misra 8.10 external ... could be made static
 */
 CONST(Icu_IpChannelConfigType, ICU_CONST) Icu_IpChannelConfig_PC0[1] =
 {
    
    /** @brief IcuChannel_SBC */
    {
        /** @brief IP type of this channel */
        ICU_SIUL2_CHANNEL,
        /** @brief Index in the configuration table of the Siul2 channels */
        (uint8)0,
    }

 };

 
/**@}*/
/*
 *   @brief This index relates the Hardware channels with the respective ICU channel.
 *   When an normal interrupt is asserted this index is used to locate the corresponding ICU channel
 *   @violates @ref Icu_Cfg_c_3 external ... could be made static
 */


/*
 * @violates @ref Icu_Cfg_c_3 violates Misra 8.10 external ... could be made static
 */
CONST(Icu_ChannelType,ICU_CONST) Icu_InitHWMap_PC0[ICU_MAX_HW_CHANNELS] = {
  NoIcuChannel, /* maps to EMIOS_0_CH_0 */
  NoIcuChannel, /* maps to EMIOS_0_CH_1 */
  NoIcuChannel, /* maps to EMIOS_0_CH_2 */
  NoIcuChannel, /* maps to EMIOS_0_CH_3 */
  NoIcuChannel, /* maps to EMIOS_0_CH_4 */
  NoIcuChannel, /* maps to EMIOS_0_CH_5 */
  NoIcuChannel, /* maps to EMIOS_0_CH_6 */
  NoIcuChannel, /* maps to EMIOS_0_CH_7 */
  NoIcuChannel, /* maps to EMIOS_0_CH_8 */
  NoIcuChannel, /* maps to EMIOS_0_CH_9 */
  NoIcuChannel, /* maps to EMIOS_0_CH_10 */
  NoIcuChannel, /* maps to EMIOS_0_CH_11 */
  NoIcuChannel, /* maps to EMIOS_0_CH_12 */
  NoIcuChannel, /* maps to EMIOS_0_CH_13 */
  NoIcuChannel, /* maps to EMIOS_0_CH_14 */
  NoIcuChannel, /* maps to EMIOS_0_CH_15 */
  NoIcuChannel, /* maps to EMIOS_0_CH_16 */
  NoIcuChannel, /* maps to EMIOS_0_CH_17 */
  NoIcuChannel, /* maps to EMIOS_0_CH_18 */
  NoIcuChannel, /* maps to EMIOS_0_CH_19 */
  NoIcuChannel, /* maps to EMIOS_0_CH_20 */
  NoIcuChannel, /* maps to EMIOS_0_CH_21 */
  NoIcuChannel, /* maps to EMIOS_0_CH_22 */
  NoIcuChannel, /* maps to EMIOS_0_CH_23 */
  NoIcuChannel, /* maps to EMIOS_0_CH_24 */
  NoIcuChannel, /* maps to EMIOS_0_CH_25 */
  NoIcuChannel, /* maps to EMIOS_0_CH_26 */
  NoIcuChannel, /* maps to EMIOS_0_CH_27 */
  NoIcuChannel, /* maps to EMIOS_0_CH_28 */
  NoIcuChannel, /* maps to EMIOS_0_CH_29 */
  NoIcuChannel, /* maps to EMIOS_0_CH_30 */
  NoIcuChannel, /* maps to EMIOS_0_CH_31 */
  NoIcuChannel, /* maps to EMIOS_1_CH_0 */
  NoIcuChannel, /* maps to EMIOS_1_CH_1 */
  NoIcuChannel, /* maps to EMIOS_1_CH_2 */
  NoIcuChannel, /* maps to EMIOS_1_CH_3 */
  NoIcuChannel, /* maps to EMIOS_1_CH_4 */
  NoIcuChannel, /* maps to EMIOS_1_CH_5 */
  NoIcuChannel, /* maps to EMIOS_1_CH_6 */
  NoIcuChannel, /* maps to EMIOS_1_CH_7 */
  NoIcuChannel, /* maps to EMIOS_1_CH_8 */
  NoIcuChannel, /* maps to EMIOS_1_CH_9 */
  NoIcuChannel, /* maps to EMIOS_1_CH_10 */
  NoIcuChannel, /* maps to EMIOS_1_CH_11 */
  NoIcuChannel, /* maps to EMIOS_1_CH_12 */
  NoIcuChannel, /* maps to EMIOS_1_CH_13 */
  NoIcuChannel, /* maps to EMIOS_1_CH_14 */
  NoIcuChannel, /* maps to EMIOS_1_CH_15 */
  NoIcuChannel, /* maps to EMIOS_1_CH_16 */
  NoIcuChannel, /* maps to EMIOS_1_CH_17 */
  NoIcuChannel, /* maps to EMIOS_1_CH_18 */
  NoIcuChannel, /* maps to EMIOS_1_CH_19 */
  NoIcuChannel, /* maps to EMIOS_1_CH_20 */
  NoIcuChannel, /* maps to EMIOS_1_CH_21 */
  NoIcuChannel, /* maps to EMIOS_1_CH_22 */
  NoIcuChannel, /* maps to EMIOS_1_CH_23 */
  NoIcuChannel, /* maps to EMIOS_1_CH_24 */
  NoIcuChannel, /* maps to EMIOS_1_CH_25 */
  NoIcuChannel, /* maps to EMIOS_1_CH_26 */
  NoIcuChannel, /* maps to EMIOS_1_CH_27 */
  NoIcuChannel, /* maps to EMIOS_1_CH_28 */
  NoIcuChannel, /* maps to EMIOS_1_CH_29 */
  NoIcuChannel, /* maps to EMIOS_1_CH_30 */
  NoIcuChannel, /* maps to EMIOS_1_CH_31 */
  IcuChannel_SBC, /* maps to IRQ_CH_0 */
  NoIcuChannel, /* maps to IRQ_CH_1 */
  NoIcuChannel, /* maps to IRQ_CH_2 */
  NoIcuChannel, /* maps to IRQ_CH_3 */
  NoIcuChannel, /* maps to IRQ_CH_4 */
  NoIcuChannel, /* maps to IRQ_CH_5 */
  NoIcuChannel, /* maps to IRQ_CH_6 */
  NoIcuChannel, /* maps to IRQ_CH_7 */
  NoIcuChannel, /* maps to IRQ_CH_8 */
  NoIcuChannel, /* maps to IRQ_CH_9 */
  NoIcuChannel, /* maps to IRQ_CH_10 */
  NoIcuChannel, /* maps to IRQ_CH_11 */
  NoIcuChannel, /* maps to IRQ_CH_12 */
  NoIcuChannel, /* maps to IRQ_CH_13 */
  NoIcuChannel, /* maps to IRQ_CH_14 */
  NoIcuChannel, /* maps to IRQ_CH_15 */
  NoIcuChannel, /* maps to IRQ_CH_16 */
  NoIcuChannel, /* maps to IRQ_CH_17 */
  NoIcuChannel, /* maps to IRQ_CH_18 */
  NoIcuChannel, /* maps to IRQ_CH_19 */
  NoIcuChannel, /* maps to IRQ_CH_20 */
  NoIcuChannel, /* maps to IRQ_CH_21 */
  NoIcuChannel, /* maps to IRQ_CH_22 */
  NoIcuChannel, /* maps to IRQ_CH_23 */
  NoIcuChannel, /* maps to IRQ_CH_24 */
  NoIcuChannel, /* maps to IRQ_CH_25 */
  NoIcuChannel, /* maps to IRQ_CH_26 */
  NoIcuChannel, /* maps to IRQ_CH_27 */
  NoIcuChannel, /* maps to IRQ_CH_28 */
  NoIcuChannel, /* maps to IRQ_CH_29 */
  NoIcuChannel, /* maps to IRQ_CH_30 */
  NoIcuChannel  /* maps to IRQ_CH_31 */
};


/*
 *   @brief Pre-Compile Default Configuration
 *   @violates @ref Icu_PBCfg_c_3 external ... could be made static
 */
 CONST(Icu_ConfigType, ICU_CONST) Icu_Configs_PC =
 {
    (Icu_ChannelType)1U, /* The number of channels configured*/

    &Icu_InitChannel_PC0,
    {
    /** @brief Pointer to the structure containing eMios configuration */
        NULL_PTR,
    /** @brief Pointer to the structure containing Siul2 configuration */
        &Icu_Siul2Icu_IpConfig_PC0,  
        /** @brief Pointer to Array containing channel IP related information */
        &Icu_IpChannelConfig_PC0
    },
    &Icu_InitHWMap_PC0
 };

#define ICU_STOP_SEC_CONFIG_DATA_UNSPECIFIED
 /*
  * @violates @ref Icu_Cfg_c_1 Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements
  *           and comments before "#include"
  * @violates @ref Icu_Cfg_c_2 precautions to prevent the contents of a header file being included
  *           twice
  */
#include "MemMap.h"
/*==================================================================================================
 *                                       GLOBAL VARIABLES
 *================================================================================================*/


/*==================================================================================================
 *                                   LOCAL FUNCTION PROTOTYPES
 *================================================================================================*/


/*==================================================================================================
 *                                       LOCAL FUNCTIONS
 *================================================================================================*/

/*==================================================================================================
 *                                       GLOBAL FUNCTIONS
 *================================================================================================*/


#endif  /* ICU_PRECOMPILE_SUPPORT */

#ifdef __cplusplus
}
#endif

/** @} */
