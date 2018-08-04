/**
*   @file    Gpt_PBcfg.c
*   @implements    Gpt_PBcfg.c_Artifact
*   @version 1.0.2
*
*   @brief   AUTOSAR Gpt -  GPT driver configuration source file.
*   @details GPT driver source file, containing C and XPath constructs for generating Gpt
*            configuration source file for the Post-build configuration variant.
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
* @section GPT_PBCFG_C_REF_1
* Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements
* and comments before '#include'. This is an Autosar requirement about
* the memory management.
*
* @section GPT_PBCFG_C_REF_2
* Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken in order to
* prevent the contents of a header file being included twice. This is an Autosar requirement
* about the memory management.
*
* @section GPT_PBCFG_C_REF_3
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure
* that 31 character significance and case sensitivity are supported for external identifiers.
* Compilers and linkers checked. Feature is supported
*
* @section GPT_PBCFG_C_REF_4
* Violates MISRA 2004 Required Rule 8.10, could be made static
* The respective code could not be made static because of layers architecture design of the
* driver.
*
*/


/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/
#include "Mcal.h"
#include "Gpt.h"
#include "Reg_eSys_eMios.h"

#if (GPT_PRECOMPILE_SUPPORT == STD_OFF)

/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/
#define GPT_VENDOR_ID_PBCFG_C                      43
#define GPT_AR_RELEASE_MAJOR_VERSION_PBCFG_C       4
#define GPT_AR_RELEASE_MINOR_VERSION_PBCFG_C       0
/** @violates @ref GPT_PBCFG_C_REF_3 MISRA 2004 Rule 1.4, The compiler/linker shall be checked to ensure that 31 character
*   significance and case sensitivity are supported for external identifiers. */
#define GPT_AR_RELEASE_REVISION_VERSION_PBCFG_C    3
#define GPT_SW_MAJOR_VERSION_PBCFG_C               1
#define GPT_SW_MINOR_VERSION_PBCFG_C               0
#define GPT_SW_PATCH_VERSION_PBCFG_C               2

/*==================================================================================================
*                                     FILE VERSION CHECKS
==================================================================================================*/

#ifndef DISABLE_MCAL_INTERMODULE_ASR_CHECK
    #if ((GPT_AR_RELEASE_MAJOR_VERSION_PBCFG_C != MCAL_AR_RELEASE_MAJOR_VERSION) || \
         (GPT_AR_RELEASE_MINOR_VERSION_PBCFG_C != MCAL_AR_RELEASE_MINOR_VERSION) \
        )
        #error "AutoSar Version Numbers of Gpt_PBCfg.c and Mcal.h are different"
    #endif
#endif

/* Check if Gpt_PBcfg.c file and Gpt.h header file are of the same vendor */
#if (GPT_VENDOR_ID_PBCFG_C != GPT_VENDOR_ID)
    #error "Gpt_PBcfg.c and Gpt.h have different vendor ids"
#endif
/* Check if Gpt_PBcfg.c file and Gpt.h header file are of the same Autosar version */
#if ((GPT_AR_RELEASE_MAJOR_VERSION_PBCFG_C != GPT_AR_RELEASE_MAJOR_VERSION) || \
     (GPT_AR_RELEASE_MINOR_VERSION_PBCFG_C != GPT_AR_RELEASE_MINOR_VERSION) || \
     (GPT_AR_RELEASE_REVISION_VERSION_PBCFG_C != GPT_AR_RELEASE_REVISION_VERSION) \
    )
    #error "AutoSar Version Numbers of Gpt_PBcfg.c and Gpt.h are different"
#endif
/* Check if Gpt_PBcfg.c file and Gpt.h header file are of the same Software version */
#if ((GPT_SW_MAJOR_VERSION_PBCFG_C != GPT_SW_MAJOR_VERSION) || \
     (GPT_SW_MINOR_VERSION_PBCFG_C != GPT_SW_MINOR_VERSION) || \
     (GPT_SW_PATCH_VERSION_PBCFG_C != GPT_SW_PATCH_VERSION))
    #error "Software Version Numbers of Gpt_PBcfg.c and Gpt.h are different"
#endif

#if (GPT_VENDOR_ID_PBCFG_C != REG_ESYS_EMIOS_VENDOR_ID)
    #error "Gpt_PBcfg.c and Reg_eSys_eMios.h have different vendor ids"
#endif
/* Check if the source file and Gpt header file are of the same Autosar version */

#if ((GPT_AR_RELEASE_MAJOR_VERSION_PBCFG_C != REG_ESYS_EMIOS_AR_RELEASE_MAJOR_VERSION) || \
     (GPT_AR_RELEASE_MINOR_VERSION_PBCFG_C != REG_ESYS_EMIOS_AR_RELEASE_MINOR_VERSION) || \
     (GPT_AR_RELEASE_REVISION_VERSION_PBCFG_C != REG_ESYS_EMIOS_AR_RELEASE_REVISION_VERSION) \
    )
    #error "AutoSar Version Numbers of Gpt_PBcfg.c and Reg_eSys_eMios.h are different"
#endif
/* Check if source file and GPT header file are of the same Software version */

#if ((GPT_SW_MAJOR_VERSION_PBCFG_C != REG_ESYS_EMIOS_SW_MAJOR_VERSION) || \
     (GPT_SW_MINOR_VERSION_PBCFG_C != REG_ESYS_EMIOS_SW_MINOR_VERSION) || \
     (GPT_SW_PATCH_VERSION_PBCFG_C != REG_ESYS_EMIOS_SW_PATCH_VERSION) \
    )
    #error "Software Version Numbers of Gpt_PBcfg.c and Reg_eSys_eMios.h are different"
#endif
/*==================================================================================================
*                                      GLOBAL VARIABLES
==================================================================================================*/
#define GPT_START_SEC_CODE
/** @violates @ref GPT_PBCFG_C_REF_1 Only preprocessor statements and comments before '#include' */
/** @violates @ref GPT_PBCFG_C_REF_2 MISRA 2004 Required Rule 19.15, precautions to prevent the 
*   contents of a header file being included twice.*/
#include "MemMap.h"
/**
* @{
* @brief The callback functions defined by the user to be called as channel notifications
*/
extern void Wdg_Cbk_GptNotification1(void);
/** @} */
#define GPT_STOP_SEC_CODE
/** @violates @ref GPT_PBCFG_C_REF_1 Only preprocessor statements and comments before '#include' */
/** @violates @ref GPT_PBCFG_C_REF_2 MISRA 2004 Required Rule 19.15, precautions to prevent the 
*   contents of a header file being included twice.*/
#include "MemMap.h"
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

/*==================================================================================================
*                                      GLOBAL VARIABLES
==================================================================================================*/
#define GPT_START_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref GPT_PBCFG_C_REF_1 Only preprocessor statements and comments before '#include' */
/** @violates @ref GPT_PBCFG_C_REF_2 Precautions to prevent the contents of a header file being included twice.*/
#include "MemMap.h"




static CONST(Gpt_ChannelConfigType, GPT_CONST) Gpt_InitChannelPB_0[2] =
{
    {   /*GptChannelConfiguration configuration data*/
        (boolean)FALSE, /* Wakeup capability */
        NULL_PTR, /* Channel notification */
#if ((GPT_WAKEUP_FUNCTIONALITY_API == STD_ON) && (GPT_REPORT_WAKEUP_SOURCE == STD_ON))
        (EcuM_WakeupSourceType)0U, /* Wakeup information */
#endif
        (Gpt_ValueType)(16777215U), /* Maximum ticks value*/
        (Gpt_ChannelModeType)(GPT_CH_MODE_ONESHOT), /* Timer mode:continous/one-shot */
        {
            (uint8)(EMIOS_0_CH_8), /* GPT physical channel no. */
            (uint8)(GPT_EMIOS_MODULE), /* hardware module ID */
            (boolean)TRUE, /* Freeze Enable */
            (Gpt_PrescalerType)(0U), /* EMIOS Clock divider */
#if (GPT_STM_ENABLECLOCKSWITCH == STD_ON)
            (Gpt_PrescalerType)0U, /* STM clock source - Unused*/
#endif
        }
    }
,
    {   /*GptChannel_Wdg configuration data*/
        (boolean)FALSE, /* Wakeup capability */
        &Wdg_Cbk_GptNotification1, /* Channel notification */
#if ((GPT_WAKEUP_FUNCTIONALITY_API == STD_ON) && (GPT_REPORT_WAKEUP_SOURCE == STD_ON))
        (EcuM_WakeupSourceType)0U, /* Wakeup information */
#endif
        (Gpt_ValueType)(4294967295U), /* Maximum ticks value*/
        (Gpt_ChannelModeType)(GPT_CH_MODE_CONTINUOUS), /* Timer mode:continous/one-shot */
        {
            (uint8)(PIT_0_CH_7), /* GPT physical channel no. */
            (uint8)(GPT_PIT_MODULE), /* hardware module ID */
            (boolean)TRUE, /* Freeze Enable */
            (uint8)0U, /* PIT Clock divider - Unused */
#if (GPT_STM_ENABLECLOCKSWITCH == STD_ON)
            (Gpt_PrescalerType)0U, /* STM clock source - Unused*/
#endif
        }
    }


};
/*PostBuild configuration structure.*/
/** @violates @ref GPT_PBCFG_C_REF_4 Violates MISRA 2004 Required Rule 8.10 could be made static*/
CONST(Gpt_ConfigType, GPT_CONST) GptChannelConfigSet =
{
    (Gpt_ChannelType)2U,
    &Gpt_InitChannelPB_0,
    /*Hardware to logic channel mapping.*/
    {
        GPT_CHN_NOT_USED, /*mapping of STM_0_CH_0*/
        GPT_CHN_NOT_USED, /*mapping of STM_0_CH_1*/
        GPT_CHN_NOT_USED, /*mapping of STM_0_CH_2*/
        GPT_CHN_NOT_USED, /*mapping of STM_0_CH_3*/
        GPT_CHN_NOT_USED, /*mapping of STM_1_CH_0*/
        GPT_CHN_NOT_USED, /*mapping of STM_1_CH_1*/
        GPT_CHN_NOT_USED, /*mapping of STM_1_CH_2*/
        GPT_CHN_NOT_USED, /*mapping of STM_1_CH_3*/
        GPT_CHN_NOT_USED, /*mapping of PIT_0_CH_RTI*/
        GPT_CHN_NOT_USED, /*mapping of PIT_0_CH_0*/
        GPT_CHN_NOT_USED, /*mapping of PIT_0_CH_1*/
        GPT_CHN_NOT_USED, /*mapping of PIT_0_CH_2*/
        GPT_CHN_NOT_USED, /*mapping of PIT_0_CH_3*/
        GPT_CHN_NOT_USED, /*mapping of PIT_0_CH_4*/
        GPT_CHN_NOT_USED, /*mapping of PIT_0_CH_5*/
        GPT_CHN_NOT_USED, /*mapping of PIT_0_CH_6*/
        GptConf_GptChannelConfiguration_GptChannel_Wdg, /*mapping of PIT_0_CH_7*/
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*mapping of PIT_1_CH_0*/
        GPT_CHN_NOT_USED, /*mapping of PIT_1_CH_1*/
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*Index not used */
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_0*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_1*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_2*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_3*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_4*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_5*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_6*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_7*/
        GptConf_GptChannelConfiguration_GptChannelConfiguration, /*mapping of EMIOS_0_CH_8*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_9*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_10*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_11*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_12*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_13*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_14*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_15*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_16*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_17*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_18*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_19*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_20*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_21*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_22*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_23*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_24*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_25*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_26*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_27*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_28*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_29*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_30*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_0_CH_31*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_0*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_1*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_2*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_3*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_4*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_5*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_6*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_7*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_8*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_9*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_10*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_11*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_12*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_13*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_14*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_15*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_16*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_17*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_18*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_19*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_20*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_21*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_22*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_23*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_24*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_25*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_26*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_27*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_28*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_29*/
        GPT_CHN_NOT_USED, /*mapping of EMIOS_1_CH_30*/
        GPT_CHN_NOT_USED /*mapping of EMIOS_1_CH_31*/
    }};



#define GPT_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref GPT_PBCFG_C_REF_1 Only preprocessor statements and comments before '#include' */
/** @violates @ref GPT_PBCFG_C_REF_2 Precautions to prevent the contents of a header file being included twice.*/
#include "MemMap.h"

/*==================================================================================================
*                                   LOCAL FUNCTION PROTOTYPES
==================================================================================================*/

/*==================================================================================================
*                                       LOCAL FUNCTIONS
==================================================================================================*/

/*==================================================================================================
*                                       GLOBAL FUNCTIONS
==================================================================================================*/
#endif  /* not GPT_PRECOMPILE_SUPPORT */

#ifdef __cplusplus
}
#endif

/** @} */
