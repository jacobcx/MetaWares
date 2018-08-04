/**
*   @file    Adc_Cfg.c
*   @version 1.0.2
*
*   @brief   AUTOSAR Adc - Pre-Compile configurations for ADC driver.
*   @details Pre-Compile configuration file for ADC driver.
*
*   @addtogroup ADC
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : ADCDIG
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
* @section Adc_Cfg_c_REF_1
* Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments before '#include'
* This is an Autosar memory management requirement.
*
* @section Adc_Cfg_c_REF_2
* Violates MISRA 2004 Required Rule 19.15, Repeated include file MemMap.h.
* This violation  is not  fixed since  the inclusion  of MemMap.h
* is as  per Autosar  requirement MEMMAP003.
*
* @section Adc_Cfg_c_REF_3
* Violates MISRA 2004 Required Rule 1.4,
* The compiler/linker shall be checked to ensure that 31 character signifiance and case
* sensitivity are supported for external identifiers.
* This violation is due to the requirement that requests to have a file version check.
*
* @section Adc_Cfg_c_REF_4
* Violates MISRA 2004 Required Rule 19.15, Repeated include file.
* This comes from the order of includes in the .c file and from include dependencies. As a safe
* approach, any file must include all its dependencies. Header files are already protected against
* double inclusions.
*
* @section Adc_Cfg_c_REF_5
* Violates MISRA 2004 Required Rule 8.10, all declarations and definitions of objects or functions 
* at file scope shall have internal linkage unless external linkage is required.
* This violation is due to Autosar files and structures definitions.
*
* @section Adc_Cfg_c_REF_6
* Violates MISRA 2004 Required Rule 9.2, Braces shall be used to indicate and match the structure in the 
* non-zero initialisation of arrays and structures. At here, we tend to initialized for whole structure, however, 
* when configure only 1 controller is configured, tool reported as non-zero initialisation. 
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
* on the significance of more than 31 characters. All compilers used support more than 31 chars for
* identifiers.
*/

/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/
#include "Adc.h"
#include "Adc_Reg_eSys_Adcdig.h"
#ifdef ADC_PRECOMPILE_SUPPORT


/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/
#define ADC_VENDOR_ID_CFG_C                    43
/**
* @violates @ref Adc_Cfg_c_REF_3 The compiler/linker shall be checked to ensure that 31 character
* signifiance and case sensitivity are supported for external identifiers
*/
#define ADC_AR_RELEASE_MAJOR_VERSION_CFG_C     4
/**
* @violates @ref Adc_Cfg_c_REF_3 The compiler/linker shall be checked to ensure that 31 character
* signifiance and case sensitivity are supported for external identifiers
*/
#define ADC_AR_RELEASE_MINOR_VERSION_CFG_C     0
/**
* @violates @ref Adc_Cfg_c_REF_3 The compiler/linker shall be checked to ensure that 31 character
* signifiance and case sensitivity are supported for external identifiers
*/
#define ADC_AR_RELEASE_REVISION_VERSION_CFG_C  3
#define ADC_SW_MAJOR_VERSION_CFG_C             1
#define ADC_SW_MINOR_VERSION_CFG_C             0
#define ADC_SW_PATCH_VERSION_CFG_C             2

/*==================================================================================================
*                                     FILE VERSION CHECKS
==================================================================================================*/
/* Check if source file and ADC header file are of the same vendor */
#if (ADC_VENDOR_ID_CFG_C != ADC_VENDOR_ID)
    #error "Adc_Cfg.c and Adc.h have different vendor ids"
#endif

/* Check if source file and ADC header file are of the same Autosar version */
#if ((ADC_AR_RELEASE_MAJOR_VERSION_CFG_C != ADC_AR_RELEASE_MAJOR_VERSION) || \
     (ADC_AR_RELEASE_MINOR_VERSION_CFG_C != ADC_AR_RELEASE_MINOR_VERSION) || \
     (ADC_AR_RELEASE_REVISION_VERSION_CFG_C != ADC_AR_RELEASE_REVISION_VERSION) \
    )
    #error "AutoSar Version Numbers of Adc_Cfg.c and Adc.h are different"
#endif

/* Check if source file and ADC header file are of the same Software version */
#if ((ADC_SW_MAJOR_VERSION_CFG_C != ADC_SW_MAJOR_VERSION) || \
     (ADC_SW_MINOR_VERSION_CFG_C != ADC_SW_MINOR_VERSION) || \
     (ADC_SW_PATCH_VERSION_CFG_C != ADC_SW_PATCH_VERSION) \
    )
    #error "Software Version Numbers of Adc_Cfg.c and Adc.h are different"
#endif

/* Check if source file and Adc_Reg_eSys_Adcdig header file are of the same vendor */
#if (ADC_VENDOR_ID_CFG_C != ADC_VENDOR_ID_REG)
    #error "Adc_Cfg.c and Adc_Reg_eSys_Adcdig.h have different vendor ids"
#endif

/* Check if source file and Adc_Reg_eSys_Adcdig header file are of the same Autosar version */
#if ((ADC_AR_RELEASE_MAJOR_VERSION_CFG_C != ADC_AR_RELEASE_MAJOR_VERSION_REG) || \
     (ADC_AR_RELEASE_MINOR_VERSION_CFG_C != ADC_AR_RELEASE_MINOR_VERSION_REG) || \
     (ADC_AR_RELEASE_REVISION_VERSION_CFG_C != ADC_AR_RELEASE_REVISION_VERSION_REG) \
    )
    #error "AutoSar Version Numbers of Adc_Cfg.c and Adc_Reg_eSys_Adcdig.h are different"
#endif

/* Check if source file and Adc_Reg_eSys_Adcdig header file are of the same Software version */
#if ((ADC_SW_MAJOR_VERSION_CFG_C != ADC_SW_MAJOR_VERSION_REG) || \
     (ADC_SW_MINOR_VERSION_CFG_C != ADC_SW_MINOR_VERSION_REG) || \
     (ADC_SW_PATCH_VERSION_CFG_C != ADC_SW_PATCH_VERSION_REG) \
    )
    #error "Software Version Numbers of Adc_Cfg.c and Adc_Reg_eSys_Adcdig.h are different"
#endif


/*==================================================================================================
*                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
==================================================================================================*/

/*==================================================================================================
*                                       LOCAL MACROS
==================================================================================================*/

/**
* @brief          Total number of groups in Config.
*
*/

#define ADC_GROUPS           1


/*==================================================================================================
*                                      LOCAL CONSTANTS
==================================================================================================*/
#define ADC_START_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

/**
* @brief          Group Assignments on ADC Hardware unit 0.
*
*/
static CONST(Adc_ChannelType, ADC_CONST) Adc_Group0_AssignmentPC_0[ADC_CFGSET1_GROUP_0_CHANNELS] =
{
    0U
};
/**
* @brief          Group Assignments on ADC Hardware unit 1.
*
*/
/**
* @brief          Group Assignments on ADC Hardware unit 2.
*
*/
/**
* @brief          Group Assignments on ADC Hardware unit 3.
*
*/



        
/**
* @brief          Definition of ADC Hw units .
*/
static CONST(Adc_Adcdig_HwUnitConfigurationType, ADC_CONST) Adc_HwUnitCfgPC[] =
{
    /**< @brief Hardware Unit ADC0 */
    {
        /**< @brief Hardware unit id*/
        (Adc_HwUnitType)0,
        /**< @brief Main configuration for control register */
        (ADCDIG_AUTO_CLKOFF_DIS_U32 | ADCDIG_OVERWRITE_EN_U32 | ADCDIG_WRITE_RIGHT_ALIGNED_U32),
        /**< @brief Prescaler of normal mode */
        (ADCDIG_CLOCK_PRESCALER_DIV1_U32),
        /**< @brief Power down delay */
        (ADCDIG_POWERDOWN_EXIT_DELAY_VALUE_U8(15)),
        /**< @brief Mux delay value */
        (ADCDIG_MUX_DELAY_VALUE_U16((uint16)15)),
        /**< @brief VREFH */
        (uint8)0x3,
        /**< @brief VREFH */
        (uint8)0x3,
#if (ADC_EXTERNAL_CH_AVAILABLE == STD_ON)
        /**< @brief VREFH */
        (uint8)0x3,
#endif
        /**< @brief do not bypass the sampling phase */
        (uint8)0x0,
        (Adc_ConversionTimeType)0x0,
        (Adc_ConversionTimeType)0x0,
        (Adc_ConversionTimeType)0x0,
        (Adc_ConversionTimeType)0x0,
#if (ADC_CTR2_AVAILABLE == STD_ON)
        (Adc_ConversionTimeType)0x0,
        (Adc_ConversionTimeType)0x0,
#endif /* ADC_CTR2_AVAILABLE == STD_ON */
        /**< @brief Adc bit resolution. */
        (Adc_ResolutionType)ADC_BITS_RESOLUTION_12_U8

    /** @violates @ref Adc_Cfg_c_REF_6 MISRA-C:2004 Rule 9.2.*/
    }
};


#define ADC_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

/*==================================================================================================
*                                      LOCAL VARIABLES
==================================================================================================*/
#define ADC_START_SEC_VAR_INIT_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

/**
* @brief          Adc Result Buffer RAM initializations.
* @details        Array for all ADC group result ram buffers.
*/
static P2VAR(Adc_ValueGroupType, ADC_VAR, ADC_APPL_DATA) Adc_ResultsBufferPtr[] =
{
    NULL_PTR
};


#define ADC_STOP_SEC_VAR_INIT_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

/*==================================================================================================
*                                       GLOBAL FUNCTIONS
==================================================================================================*/
#define ADC_START_SEC_CODE
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"






#define ADC_STOP_SEC_CODE
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

#define ADC_START_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

/**
* @brief          Definition of channels on ADC Hardware unit 0 .
* @details        Array of conversion command messages
*/
static CONST(Adc_Adcdig_ChannelConfigurationType, ADC_CONST) Adc_ChannelsCfgPC_0[] =
{
    /**< @brief Hardware Unit ADC0  --  AN_0 */
    {

        /**< @brief Adc physical channel */
        (Adc_ChannelType)(ADC_ID_CHANNEL_U8(0)),
#ifdef ADC_WDG_SUPPORTED
        /**< @brief Threshold register configured */
        ADC_UNUSED_THRESHOLD_U8,
        /**< @brief No WDOG notification */
        NULL_PTR,
        /**< @brief Channel descriptions for the WDG interrupts */
        (uint8)0,
        /**< @brief Channel descriptions Mask for the WDG interrupts */
        (uint32)0x00000001,
#endif /* ADC_WDG_SUPPORTED */
        /**< @brief presampling disabled */
        (uint8)0x0
    }
};


#define ADC_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

/*==================================================================================================
*                                      GLOBAL VARIABLES
==================================================================================================*/

#define ADC_START_SEC_VAR_INIT_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"


/**
* @brief          Definition of channels's pointer structure .
*
*/
static P2CONST(Adc_Adcdig_ChannelConfigurationType, ADC_VAR, ADC_APPL_CONST) Adc_ChannelsCfgPC[] =
{
    Adc_ChannelsCfgPC_0,
    NULL_PTR,
    NULL_PTR,
    NULL_PTR
};


#define ADC_STOP_SEC_VAR_INIT_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

/*==================================================================================================
*                                      GLOBAL CONSTANTS
==================================================================================================*/
#define ADC_START_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"



/**
* @brief          Definition of all ADC groups .
*/
static CONST(Adc_GroupConfigurationType, ADC_CONST) Adc_GroupsCfgPC[] =
{
    /**< @brief Group0 -- Hardware Unit ADC0 */
    {
        /**< @brief Hardware unit configured */
        (Adc_HwUnitType)0,
        /**< @brief Access mode */
        ADC_ACCESS_MODE_SINGLE,
        /**< @brief Conversion mode */
        ADC_CONV_MODE_ONESHOT,
        /**< @brief Conversion type */
        ADC_CONV_TYPE_NORMAL,
#if (ADC_PRIORITY_IMPLEMENTATION != ADC_PRIORITY_NONE)
        /**< @brief Priority configured */
        ((Adc_GroupPriorityType)(0U)),
#endif /* ADC_PRIORITY_IMPLEMENTATION != ADC_PRIORITY_NONE */
        /**< @brief Replacement mode */
        ADC_GROUP_REPL_ABORT_RESTART,
        /**< @brief Trigger source configured */
        ADC_TRIGG_SRC_SW,
#if (STD_ON==ADC_HW_TRIGGER_API)
#if (STD_ON == ADC_MULTIPLE_HARDWARE_TRIGGERS)
        /**< @brief This a Regular Group */
        (Adc_MhtGroupType)ADC_REGULAR_GROUP_TYPE,
#endif /* (STD_ON == ADC_MULTIPLE_HARDWARE_TRIGGERS) */
        /**< @brief Hardware trigger signal */
        ADC_HW_TRIG_BOTH_EDGES,
        /**< @brief Hardware resource for the group*/
        0U,
#endif /* (STD_ON==ADC_HW_TRIGGER_API) */
#if (STD_ON==ADC_GRP_NOTIF_CAPABILITY)
        /**< @brief Notification function */
        NULL_PTR,
#endif /* (STD_ON==ADC_GRP_NOTIF_CAPABILITY) */
#if (ADC_ENABLE_INITIAL_NOTIFICATION == STD_ON)
        /**< @brief Extra notification function */

        NULL_PTR,
#endif
        /**< @brief Precision configured channels */
        (uint32)0x1U,
#if (ADC_EXTENDED_CH_AVAILABLE == STD_ON)
        /**< @brief Extended configured channels */
        (uint32)0x0U,
#endif
#if (ADC_EXTERNAL_CH_AVAILABLE == STD_ON)
        /**< @brief External configured channels */
        (uint32)0x0U,
#endif
        /**< @brief Presampling for Precision channels */
        (uint32)0x0U,
#if (ADC_EXTENDED_CH_AVAILABLE == STD_ON)
        /**< @brief Presampling for Extended channels */
        (uint32)0x0U,
#endif
#if (ADC_EXTERNAL_CH_AVAILABLE == STD_ON)
        /**< @brief Presampling for External channels */
        (uint32)0x0U,
#endif
        /**< @brief Wer0 for precision channels */
        (uint32)0x0U,
#if (ADC_EXTENDED_CH_AVAILABLE == STD_ON)
        /**< @brief Wer1 for extended(medi.accuracy channels) */
        (uint32)0x0U,
#endif
#if (ADC_EXTERNAL_CH_AVAILABLE == STD_ON)
        /**< @brief Wer2 for external channels */
        (uint32)0x0U,
#endif
        /**< @brief ADC Group Result Buffers RAM array */
        Adc_ResultsBufferPtr,
        /**< @brief Group Streaming Buffer Mode */
        ADC_STREAM_BUFFER_LINEAR,
#if (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON)
        /**< @brief Index of the group with AdcEnableChDisableChGroup enabled */
        (Adc_GroupType)ADC_ENABLE_CH_DISABLE_CH_INVALID_GROUP_INDEX,
#endif /* (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON) */
        /**< @brief Number of streaming samples */
        (Adc_StreamNumSampleType)ADC_STREAMING_NUM_SAMPLES(1),
        /**< @brief Channels assigned to the group*/
        Adc_Group0_AssignmentPC_0,
        /**< @brief Number of channels in the group*/
        (Adc_ChannelIndexType)ADC_CFGSET1_GROUP_0_CHANNELS,
        (Adc_ConversionTimeType)(ADCDIG_INPSAMP_VALUE_U32(8)),
        (Adc_ConversionTimeType)(ADCDIG_INPSAMP_VALUE_U32(8)),
        (Adc_ConversionTimeType)(ADCDIG_INPSAMP_VALUE_U32(8)),
        /**< @brief Last Channel configured */
        (Adc_ChannelType)(ADC_ID_CHANNEL_U8(0)),
        /**< @brief First Channel Configured */
        (Adc_ChannelType)(ADC_ID_CHANNEL_U8(0)),
        /**< @brief Enables or Disables the ADC and DMA interrupts */
        (uint8)STD_OFF
#if (STD_ON == ADC_ENABLE_DOUBLE_BUFFERING)
        ,
        /**< @brief Enables or Disables the ADC double buffering feature */
        (uint8)STD_OFF
#endif /* (STD_ON == ADC_ENABLE_DOUBLE_BUFFERING) */
    }
};


/**
* @brief          ADC driver Configuration structure .
*/
/** @violates @ref Adc_Cfg_c_REF_5 MISRA-C:2004 Rule 8.10: External linkage.*/
CONST(Adc_ConfigType, ADC_CONST) Adc_ConfigPC =
{
    /**< @brief pointer to Hw unit configurations */
    Adc_HwUnitCfgPC,
    /**< @brief pointer to group configurations */
    Adc_GroupsCfgPC,
    /**< @brief pointer to channel configurations */
    Adc_ChannelsCfgPC,
    /**< @brief total number of groups */
    (Adc_GroupType)ADC_GROUPS,
    /**< @brief Miscellaneous configuration parameters. - Adc_Adcdig_MultiConfigType */
    {
        {
            ADC_INTERRUPT,
            ADC_INTERRUPT,
            ADC_INTERRUPT,
            ADC_INTERRUPT
        },
        /**< @brief number of the maximum hardware units in the current configuration */
        1U,
        {
            /**< @brief number of groups of the hw unit 0 */
            (Adc_GroupType)1U,
            /**< @brief number of groups of the hw unit 1 */
            (Adc_GroupType)0U,
            /**< @brief number of groups of the hw unit 2 */
            (Adc_GroupType)0U,
            /**< @brief number of groups of the hw unit 3 */
            (Adc_GroupType)0U
        },
        {
            /**< @brief number of channels of the ADC Hardware unit 0 */
            (Adc_ChannelType)1U,
            /**< @brief number of channels of the ADC Hardware unit 1 */
            (Adc_ChannelType)0U,
            /**< @brief number of channels of the ADC Hardware unit 2 */
            (Adc_ChannelType)0U,
            /**< @brief number of channels of the ADC Hardware unit 3 */
            (Adc_ChannelType)0U
        },
        {
            /** The DMA channel number for ADC 0 */
            (uint8)255U,
            /** The DMA channel number for ADC 1 */
            (uint8)255U,
            /** The DMA channel number for ADC 2 */
            (uint8)255U,
            /** The DMA channel number for ADC 3 */
            (uint8)255U
        },
        {
            /**< @brief ADC_UNIT_0 - ON/OFF */
            (uint8)STD_ON,
            /**< @brief ADC_UNIT_1 - ON/OFF */
            (uint8)STD_OFF,
            /**< @brief ADC_UNIT_2 - ON/OFF */
            (uint8)STD_OFF,
            /**< @brief ADC_UNIT_3 - ON/OFF */
            (uint8)STD_OFF
        },
#if (STD_ON == ADC_MULTIPLE_HARDWARE_TRIGGERS)        
        {
            /**< @brief number of MHT groups of the ADC Hardware unit 0 */
            (uint8)0U,
            /**< @brief number of MHT groups of the ADC Hardware unit 1 */
            (uint8)0U,
            /**< @brief number of MHT groups of the ADC Hardware unit 2 */
            (uint8)0U,
            /**< @brief number of MHT groups of the ADC Hardware unit 3 */
            (uint8)0U
        },
#endif           
        {
            0U,
            255U,
            255U,
            255U
        }
    }
};



/**
* @brief          ADC Registers available for each unit .
*/
/** @violates @ref Adc_Cfg_c_REF_5 MISRA-C:2004 Rule 8.10: External linkage.*/
CONST(Adc_Adcdig_RegisterAvailabilityType, ADC_CONST) Adc_RegistersAvailable =
{
    /**< @brief ADC Registers available for each Unit. - Adc_Adcdig_RegisterAvailabilityType */
    {
            {
               /**< @brief ADC_CEOCFR0 available on unit ADC0 */
            (uint8)STD_ON, 
               /**< @brief ADC_CEOCFR1 available on unit ADC0 */
            (uint8)STD_ON, 
               /**< @brief ADC_CEOCFR2 available on unit ADC0 */
            (uint8)STD_OFF
            }, 
            {
               /**< @brief ADC_CEOCFR0 available on unit ADC1 */
            (uint8)STD_ON, 
               /**< @brief ADC_CEOCFR1 available on unit ADC1 */
            (uint8)STD_ON, 
               /**< @brief ADC_CEOCFR2 available on unit ADC1 */
            (uint8)STD_OFF
            }, 
            {
               /**< @brief ADC_CEOCFR0 available on unit ADC2 */
            (uint8)STD_ON, 
               /**< @brief ADC_CEOCFR1 available on unit ADC2 */
            (uint8)STD_ON, 
               /**< @brief ADC_CEOCFR2 available on unit ADC2 */
            (uint8)STD_OFF
            }, 
            {
               /**< @brief ADC_CEOCFR0 available on unit ADC3 */
            (uint8)STD_ON, 
               /**< @brief ADC_CEOCFR1 available on unit ADC3 */
            (uint8)STD_ON, 
               /**< @brief ADC_CEOCFR2 available on unit ADC3 */
            (uint8)STD_ON
            }
        },
        {
        {
            /**< @brief ADC_DMAR0 available on unit ADC0 */
            (uint8)STD_ON, 
            /**< @brief ADC_DMAR1 available on unit ADC0 */
            (uint8)STD_ON, 
            /**< @brief ADC_DMAR2 available on unit ADC0 */
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_DMAR0 available on unit ADC1 */
            (uint8)STD_ON, 
            /**< @brief ADC_DMAR1 available on unit ADC1 */
            (uint8)STD_ON, 
            /**< @brief ADC_DMAR2 available on unit ADC1 */
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_DMAR0 available on unit ADC2 */
            (uint8)STD_ON, 
            /**< @brief ADC_DMAR1 available on unit ADC2 */
            (uint8)STD_ON, 
            /**< @brief ADC_DMAR2 available on unit ADC2 */
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_DMAR0 available on unit ADC3 */
            (uint8)STD_ON, 
            /**< @brief ADC_DMAR1 available on unit ADC3 */
            (uint8)STD_ON, 
            /**< @brief ADC_DMAR2 available on unit ADC3 */
            (uint8)STD_ON
        }
    },
    {
        {
            /**< @brief ADC_PSR0 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_PSR1 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_PSR2 available on unit ADC0 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_PSR0 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_PSR1 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_PSR2 available on unit ADC1 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_PSR0 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_PSR1 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_PSR2 available on unit ADC2 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_PSR0 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_PSR1 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_PSR2 available on unit ADC3 */ 
            (uint8)STD_ON
        }
    },
    {
        {
            /**< @brief ADC_CTR0 available on unit ADC0 */  
            (uint8)STD_ON, 
            /**< @brief ADC_CTR1 available on unit ADC0 */  
            (uint8)STD_ON, 
            /**< @brief ADC_CTR2 available on unit ADC0 */  
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_CTR0 available on unit ADC1 */  
            (uint8)STD_ON, 
            /**< @brief ADC_CTR1 available on unit ADC1 */  
            (uint8)STD_ON, 
            /**< @brief ADC_CTR2 available on unit ADC1 */  
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_CTR0 available on unit ADC2 */  
            (uint8)STD_ON, 
            /**< @brief ADC_CTR1 available on unit ADC2 */  
            (uint8)STD_ON, 
            /**< @brief ADC_CTR2 available on unit ADC2 */  
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_CTR0 available on unit ADC3 */  
            (uint8)STD_ON, 
            /**< @brief ADC_CTR1 available on unit ADC3 */  
            (uint8)STD_ON, 
            /**< @brief ADC_CTR2 available on unit ADC3 */  
            (uint8)STD_ON
        }
    },
    {
        {
            /**< @brief ADC_NCMR0 available on unit ADC0 */  
            (uint8)STD_ON, 
            /**< @brief ADC_NCMR1 available on unit ADC0 */  
            (uint8)STD_ON, 
            /**< @brief ADC_NCMR2 available on unit ADC0 */  
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_NCMR0 available on unit ADC1 */  
            (uint8)STD_ON, 
            /**< @brief ADC_NCMR1 available on unit ADC1 */  
            (uint8)STD_ON, 
            /**< @brief ADC_NCMR2 available on unit ADC1 */  
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_NCMR0 available on unit ADC2 */  
            (uint8)STD_ON, 
            /**< @brief ADC_NCMR1 available on unit ADC2 */  
            (uint8)STD_ON, 
            /**< @brief ADC_NCMR2 available on unit ADC2 */  
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_NCMR0 available on unit ADC3 */  
            (uint8)STD_ON, 
            /**< @brief ADC_NCMR1 available on unit ADC3 */  
            (uint8)STD_ON, 
            /**< @brief ADC_NCMR2 available on unit ADC3 */  
            (uint8)STD_ON
        }
    },
    {
        {
            /**< @brief ADC_JCMR0 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_JCMR1 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_JCMR2 available on unit ADC0 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_JCMR0 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_JCMR1 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_JCMR2 available on unit ADC1 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_JCMR0 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_JCMR1 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_JCMR2 available on unit ADC2 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_JCMR0 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_JCMR1 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_JCMR2 available on unit ADC3 */ 
            (uint8)STD_ON
        }
    },
    {
            /**< @brief DSDR register available on unit ADC0 */ 
            (uint8)STD_OFF, 
            /**< @brief DSDR register available on unit ADC1 */ 
            (uint8)STD_OFF, 
            /**< @brief DSDR register available on unit ADC2 */ 
            (uint8)STD_OFF, 
            /**< @brief DSDR register available on unit ADC3 */ 
            (uint8)STD_ON
    },
    {
        {
            /**< @brief ADC_CWSEL0 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL1 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL2 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL3 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL4 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL5 available on unit ADC0 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL6 available on unit ADC0 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL7 available on unit ADC0 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL8 available on unit ADC0 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL9 available on unit ADC0 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL10 available on unit ADC0 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL11 available on unit ADC0 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_CWSEL0 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL1 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL2 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL3 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL4 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL5 available on unit ADC1 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL6 available on unit ADC1 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL7 available on unit ADC1 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL8 available on unit ADC1 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL9 available on unit ADC1 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL10 available on unit ADC1 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL11 available on unit ADC1 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_CWSEL0 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL1 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL2 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL3 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL4 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL5 available on unit ADC2 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL6 available on unit ADC2 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL7 available on unit ADC2 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL8 available on unit ADC2 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL9 available on unit ADC2 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL10 available on unit ADC2 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL11 available on unit ADC2 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_CWSEL0 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL1 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL2 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL3 available on unit ADC3 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL4 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL5 available on unit ADC3 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL6 available on unit ADC3 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL7 available on unit ADC3 */ 
            (uint8)STD_OFF, 
            /**< @brief ADC_CWSEL8 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL9 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL10 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWSEL11 available on unit ADC3 */ 
            (uint8)STD_ON
        }
    },
    {
        {
            /**< @brief ADC_CWENR0 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWENR1 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWENR2 available on unit ADC0 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_CWENR0 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWENR1 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWENR2 available on unit ADC1 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_CWENR0 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWENR1 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWENR2 available on unit ADC2 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_CWENR0 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWENR1 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_CWENR2 available on unit ADC3 */ 
            (uint8)STD_ON
        }
    },
    {
        {
            /**< @brief ADC_AWORR0 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_AWORR1 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_AWORR2 available on unit ADC0 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_AWORR0 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_AWORR1 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_AWORR2 available on unit ADC1 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_AWORR0 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_AWORR1 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_AWORR2 available on unit ADC2 */ 
            (uint8)STD_OFF
        }, 
        {
            /**< @brief ADC_AWORR0 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_AWORR1 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_AWORR2 available on unit ADC3 */ 
            (uint8)STD_ON
        }
    },
    {
        {
            /**< @brief ADC_THRHLR0 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR1 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR2 available on unit ADC0 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR3 available on unit ADC0 */ 
            (uint8)STD_ON
        }, 
        {
            /**< @brief ADC_THRHLR0 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR1 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR2 available on unit ADC1 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR3 available on unit ADC1 */ 
            (uint8)STD_ON
        }, 
        {
            /**< @brief ADC_THRHLR0 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR1 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR2 available on unit ADC2 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR3 available on unit ADC2 */ 
            (uint8)STD_ON
        }, 
        {
            /**< @brief ADC_THRHLR0 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR1 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR2 available on unit ADC3 */ 
            (uint8)STD_ON, 
            /**< @brief ADC_THRHLR3 available on unit ADC3 */ 
            (uint8)STD_ON
        }
    }
};


#if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
/**
* @brief          Definition of channels limit checking on ADC Hardware unit 0.
*/
static CONST(Adc_Adcdig_ChannelLimitCheckingType, ADC_CONST) Adc_ChannelsLimitCheckingCfg_0[] =
{
    /**< @brief Hardware Unit ADC0  --  AN_0 */
    {
        /**< @brief limit check disabled */
        (boolean)FALSE,
        /**< @brief range for limit check */
        (Adc_ChannelRangeSelectType)ADC_RANGE_ALWAYS,
        /**< @brief high limit value */
        (Adc_ValueGroupType)0,
        /**< @brief low limit value */
        (Adc_ValueGroupType)0
    }
};
#endif /* (ADC_ENABLE_LIMIT_CHECK == STD_ON) */




#define ADC_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

#define ADC_START_SEC_VAR_INIT_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

#if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
/**
* @brief          Definition of channels' limit checking pointer structure.
*
*/
P2CONST(Adc_Adcdig_ChannelLimitCheckingType, ADC_VAR, ADC_APPL_CONST) Adc_ChannelsLimitCheckingCfg[]=
{
    Adc_ChannelsLimitCheckingCfg_0,
    NULL_PTR,
    NULL_PTR,
    NULL_PTR
};
#endif


#define ADC_STOP_SEC_VAR_INIT_UNSPECIFIED
/** @violates @ref Adc_Cfg_c_REF_1 only preprocessor statements and comments before "#include" */
/** @violates @ref Adc_Cfg_c_REF_2 Repeated include file Memmap.h*/
#include "MemMap.h"

/*==================================================================================================
*                                   LOCAL FUNCTION PROTOTYPES
==================================================================================================*/

/*==================================================================================================
*                                       LOCAL FUNCTIONS
==================================================================================================*/

#endif  /* ADC_PRECOMPILE_SUPPORT */

#ifdef __cplusplus
}
#endif

/** @} */

