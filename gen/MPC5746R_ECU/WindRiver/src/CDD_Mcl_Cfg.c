/**
*   @file    CDD_Mcl_Cfg.c
*   @version 1.0.2
*
*   @brief   AUTOSAR Mcl - Data structures for the Mcl driver.
*   @details Precompile structure configuration for the driver initalization.
*
*   @addtogroup MCL
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : eDMA
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
extern "C"
{
#endif


/**
* @page misra_violations MISRA-C:2004 violations
*
* @section Mcl_Cfg_c_REF_1
* Violates MISRA 2004 Required Rule 19.15, Repeated include file MemMap.h,  Precautions shall be 
* taken in order to prevent the contents of a header file being included twice This is not a violation 
* since all header files are protected against multiple inclusions
*
* @section [global]
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure
* that 31 character significance and case sensitivity are supported for external identifiers.
* The defines are validated.
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
* on the significance of more than 31 characters. The used compilers use more than 31 chars 
* for identifiers.
*
* @section Mcl_Cfg_c_REF_2
* Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments 
* before '#include' MemMap.h included after each section define in order to set the current memory section
*
* @section Mcl_Cfg_c_REF_10
* Violates MISRA 2004 Required Rule 8.10, All declarations and definitions of objects or functions
* at file scope should have internal linkage unless external linkage is required.
*
* @section Mcl_PB_PC_Cfg_c_REF_11
* Violates MISRA 2004 Required Rule 13.7, Boolean operation whose results are invariant shall not be
* permitted
* This violation need to be violated to increase readability
*/

/*==================================================================================================
                                         INCLUDE FILES
 1) system and project includes
 2) needed interfaces from external units
 3) internal and external interfaces from this unit
==================================================================================================*/
#include "CDD_Mcl.h"
#include "Mcl_IPW.h"


/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/
/**
* @file             CDD_Mcl_Cfg.c
* @requirements     
*/
#define MCL_CFG_VENDOR_ID_C                     43
#define MCL_CFG_AR_RELEASE_MAJOR_VERSION_C      4
#define MCL_CFG_AR_RELEASE_MINOR_VERSION_C      0
#define MCL_CFG_AR_RELEASE_REVISION_VERSION_C   3
#define MCL_CFG_SW_MAJOR_VERSION_C              1
#define MCL_CFG_SW_MINOR_VERSION_C              0
#define MCL_CFG_SW_PATCH_VERSION_C              2


/*==================================================================================================
                                      FILE VERSION CHECKS
==================================================================================================*/
/* Check if config source file and MCL header file are of the same vendor */
#if (MCL_CFG_VENDOR_ID_C != MCL_VENDOR_ID)
#error "CDD_Mcl_Cfg.c and CDD_Mcl.h have different vendor IDs"
#endif
/* Check if config source file and MCL header file are of the same Autosar version */
#if ((MCL_CFG_AR_RELEASE_MAJOR_VERSION_C != MCL_AR_RELEASE_MAJOR_VERSION) || \
     (MCL_CFG_AR_RELEASE_MINOR_VERSION_C != MCL_AR_RELEASE_MINOR_VERSION) || \
     (MCL_CFG_AR_RELEASE_REVISION_VERSION_C != MCL_AR_RELEASE_REVISION_VERSION))
#error "AutoSar Version Numbers of CDD_Mcl_Cfg.c and CDD_Mcl.h are different"
#endif
/* Check if config source file and MCL header file are of the same Software version */
#if ((MCL_CFG_SW_MAJOR_VERSION_C != MCL_SW_MAJOR_VERSION) || \
     (MCL_CFG_SW_MINOR_VERSION_C != MCL_SW_MINOR_VERSION) || \
     (MCL_CFG_SW_PATCH_VERSION_C != MCL_SW_PATCH_VERSION))
#error "Software Version Numbers of CDD_Mcl_Cfg.c and CDD_Mcl.h are different"
#endif


/* Check if config source file and Mcl_IPW header file are of the same vendor */
#if (MCL_CFG_VENDOR_ID_C != MCL_IPW_VENDOR_ID)
#error "CDD_Mcl_Cfg.c and Mcl_IPW.h have different vendor IDs"
#endif
/* Check if config source file and Mcl_IPW header file are of the same version */
#if ((MCL_CFG_AR_RELEASE_MAJOR_VERSION_C != MCL_IPW_AR_RELEASE_MAJOR_VERSION) || \
     (MCL_CFG_AR_RELEASE_MINOR_VERSION_C != MCL_IPW_AR_RELEASE_MINOR_VERSION) || \
     (MCL_CFG_AR_RELEASE_REVISION_VERSION_C != MCL_IPW_AR_RELEASE_REVISION_VERSION))
#error "Autosar Version Numbers of CDD_Mcl_Cfg.c and Mcl_IPW.h are different"
#endif
/* Check if config source file and Mcl_IPW header file are of the same Software Version */
#if ((MCL_CFG_SW_MAJOR_VERSION_C != MCL_IPW_SW_MAJOR_VERSION) || \
     (MCL_CFG_SW_MINOR_VERSION_C != MCL_IPW_SW_MINOR_VERSION) || \
     (MCL_CFG_SW_PATCH_VERSION_C != MCL_IPW_SW_PATCH_VERSION))
#error "Software Version Numbers of CDD_Mcl_Cfg.c and Mcl_IPW.h are different"
#endif

    
     
    

/*==================================================================================================
                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
==================================================================================================*/

/*==================================================================================================
                                      LOCAL MACROS
==================================================================================================*/

/*==================================================================================================
                                       LOCAL CONSTANTS
==================================================================================================*/


/*==================================================================================================
                                       LOCAL VARIABLES
==================================================================================================*/


/*==================================================================================================
                                       GLOBAL CONSTANTS
==================================================================================================*/

#if (MCL_PRECOMPILE_SUPPORT == STD_ON)


#define MCL_START_SEC_CODE
/**
* @violates @ref Mcl_Cfg_c_REF_1 MISRA 2004 Required Rule 19.15, Repeated include file
* @violates @ref Mcl_Cfg_c_REF_2 MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments before '#include'
*/
#include "MemMap.h"

#if (MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON)
/* DMA Channel Transfer Completion Notifications */
    
#endif

/* DMA error notifications */
#if (MCL_DMA_ERROR_INTERRUPTS_USED == STD_ON)

#endif


#define MCL_STOP_SEC_CODE
/**
* @violates @ref Mcl_Cfg_c_REF_1 MISRA 2004 Required Rule 19.15, Repeated include file
* @violates @ref Mcl_Cfg_c_REF_2 MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments before '#include'
*/
#include "MemMap.h"
#if (MCL_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)

#define MCL_START_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Mcl_Cfg_c_REF_1 MISRA 2004 Required Rule 19.15, Repeated include file
* @violates @ref Mcl_Cfg_c_REF_2 MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments before '#include'
*/
#include "MemMap.h"


/**
* @brief        DEM error reporting configuration
* @details      Set the state and id for Mcal_DemErrorType.
*/
/**
* @violates @ref Mcl_Cfg_c_REF_10 MISRA 2004 Required Rule 8.10, all declarations must be static 
*/
CONST( Mcl_DemConfigType, MCL_CONST) Mcl_Dem_Config_PC =

{

    /** MCL_E_DMA_BUS error code */ 
    {
            (uint32)STD_OFF,
                (uint16)0U
    
    },

    /** MCL_E_DMA_DESCRIPTOR error code */
    {
            (uint32)STD_OFF,
                (uint16)0U
    
    },
    /** MCL_E_DMA_ECC error code */
    {
            (uint32)STD_OFF,
        
        (uint16)0U
    
    },
    /** MCL_E_DMA_PRIORITY error code */ 
    {
            (uint32)STD_OFF,
                (uint16)0U
    
    },
    
    /** MCL_E_DMA_UNRECOGNIZED error code */
    {
            (uint32)STD_OFF,
                (uint16)0U
    
    },
    
    /** MCL_E_DMA_INCONSISTENCY error code */
    {
            (uint32)STD_OFF,
                (uint16)0U
    
    }
};

#define MCL_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Mcl_Cfg_c_REF_1 MISRA 2004 Required Rule 19.15, Repeated include file
* @violates @ref Mcl_Cfg_c_REF_2 MISRA 2004 Advisory Rule 19.1, only preprocessor 
*                            statements and comments before '#include'
*/
#include "MemMap.h"

#endif

#define MCL_START_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Mcl_Cfg_c_REF_1 MISRA 2004 Required Rule 19.15, Repeated include file
* @violates @ref Mcl_Cfg_c_REF_2 MISRA 2004 Advisory Rule 19.1, only preprocessor 
*                            statements and comments before '#include'
*/
#include "MemMap.h"
/**
  * @brief Number of configured Dma channels
  */
#define MCL_DMA_CONF_CHANNELS_PC  1U


/**
  * @brief Number of configured DmaMux channels
  */
#define MCL_DMAMUX_CONF_CHANNELS_PC  1U

/** @brief Configuration for Dma channels */



static CONST(Mcl_DmaChannelConfigType, MCL_CONST) Mcl_Dma_ChannelConfig_PC[MCL_DMA_CONF_CHANNELS_PC] =

{
    /** @brief DMAChannel - eDMA_0 */
    { 
        /** @brief Enable Channel Preemption */
        (DMA_ECP_DIS_U8) |
        /** @brief Disable Preempt Ability */
        (DMA_DPA_DIS_U8) |
        /** @brief Channel Priority */
        (DMA_PRIORITY_0_U8),
        /** @brief eDMA HW Channel used by the Mcl channel */
        DMA_HW_CHANNEL_0,
        /** @brief Master ID Replication */
                DMA_EMI_DIS_U8

    }
};

/** @brief Configuration for Dma instances */

/** @brief Configuration for Dma instances */

static CONST(Mcl_DmaConfigInstanceType, MCL_CONST) Mcl_Dma_InstanceConfig_PC[MCL_DMA_NB_CONTROLLERS] =
{
    {
        /** @brief Dma Hardware Instance 0*/
        /** @brief Dma CR Register */
        (uint32)((DMA_CANCEL_TRANSFER_DIS_U32) |
        (DMA_ERROR_CANCEL_TRANSFER_DIS_U32) | 
        ((uint32)0 << DMA_CHANNEL_GROUP_0_PRIORITY_SHIFT_U8) |
        ((uint32)1 << DMA_CHANNEL_GROUP_1_PRIORITY_SHIFT_U8) |
        ((uint32)2 << DMA_CHANNEL_GROUP_2_PRIORITY_SHIFT_U8) |
        ((uint32)3 << DMA_CHANNEL_GROUP_3_PRIORITY_SHIFT_U8) |

        (DMA_CONT_LINK_MODE_DIS_U32) |
        (DMA_HALT_OPERATIONS_DIS_U32) |
        (DMA_HALT_ON_ERROR_DIS_U32) |
        /** @violates @ref Mcl_PB_PC_Cfg_c_REF_11 Boolean operation whose results are invariant shall not be permitted */
        (DMA_ROUND_ROBIN_GROUP_ARB_DIS_U32) |
        (DMA_ROUND_ROBIN_ARB_DIS_U32) |
        /** @violates @ref Mcl_PB_PC_Cfg_c_REF_11 Boolean operation whose results are invariant shall not be permitted */
        (DMA_DEBUG_DIS_U32)),
        /** @brief Dma Usage in Configuration */
        DMA_INSTANCE_USED
#if (MCL_DMA_ERROR_INTERRUPTS_USED == STD_ON)
        ,
        /** @brief DMA error notification function */
        NULL_PTR
#endif
    }
};
/**
* @brief            DMA basic configuration
* @details          Configuration for DMA hw IP.
*                   Include Control Register and Channel Priorities.
*/
static CONST( Mcl_DmaConfigType, MCL_CONST) Dma_Config_PC =
    {
        /** @brief Number of configured eDMA channels. */
        1U,
        &Mcl_Dma_InstanceConfig_PC,
        /** @brief Pointer to the structure containing DMA channel configuration */
        &Mcl_Dma_ChannelConfig_PC
    };
      


/** @brief Configuration for DmaMux channels */

static CONST( Mcl_DmaMuxChannelConfigType, MCL_CONST) Mcl_DmaMux_ChannelConfig_PC[MCL_DMAMUX_CONF_CHANNELS_PC] =

{

    {
        /** @brief Hardware DMAMUX channel used */
        DMA_MUX_CH_0,
        /** @brief DMAMUX instance used */
        DMA_MUX_0,
        /** @brief DMAMUX_CHCFGn register configuration */
        (uint8)((DMAMUX_CHANNEL_DIS_U32) |
        (DMAMUX_CHANNEL_TRIG_DIS_U32) |
        (0U))
    }

};
/**
* @brief            DMA_MUX basic configuration.
* @details          Configuration for DMA_MUX hw IP.
*                   The DMA_MUX allows to route DMA sources to DMA channels.
*
*/
static CONST( Mcl_DmaMuxConfigType, MCL_CONST) DmaMux_Config_PC =
    {
        /** @brief Number of configured DMA channels which are also linked to DMAMUX. */
        MCL_DMAMUX_CONF_CHANNELS_PC,       
        /** @brief Pointer to the structure containing DMAMUX channel configuration */
        &Mcl_DmaMux_ChannelConfig_PC
    };

/** @brief Array of configured Mcl channels */
static CONST(Mcl_ChannelConfigType, MCL_CONST) Mcl_ChannelConfig_PC[MCL_DMA_CONF_CHANNELS_PC] =
{
    /** @brief DMAChannel */
    {
        /** @brief Number of configured Mcl channel. */
        DMA_HW_CHANNEL_0,
#if (MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON)
        /** @brief DMA notification function */
        NULL_PTR
#endif
    }
};

/**
* @brief          Initialization data for different hw IPs.
* @details        Configuration realized at statup by calling Mcl_Init() API.
*
*/
static CONST( Mcl_DmaHwIpsConfigType, MCL_CONST) Mcl_HwIPs_Config_PC =
    {
        /* Configuration for eDMA (Enhanced Direct Memory Access) hardware IP. */
        &Dma_Config_PC
        ,
        /* Configuration for DMA_MUX (eDMA Channel Mux) hardware IP. */
        &DmaMux_Config_PC
    };

/**
* @brief            Dma basic configuration.
* @details          Configuration for Dma.
*
*/
static CONST( Mcl_DmaInitConfigType, MCL_CONST) Mcl_Dma_InitConfig_PC=
    {
        /** @brief Number of configured eDMA channels. */
        1U,
        /** @brief Pointer to the structure containing Mcl channel configuration */
        &Mcl_ChannelConfig_PC,
        /**< @brief IPs data generic configuration. */
        &Mcl_HwIPs_Config_PC
        #if ((MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON) || (MCL_DMA_GET_GLOBAL_ERR_STATUS_API == STD_ON))
        ,
        /** @brief Hw to logic channel map. Array containing a number of elements
        equal to total number of available DMA channels  */
        {
            (Mcl_ChannelType)MCL_DMA_LOGICAL_CHANNEL_0,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8,
            (Mcl_ChannelType)MCL_DMA_CHANNEL_NOT_CONFIGURED_U8
        }       
        #endif /* MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON || MCL_DMA_GET_GLOBAL_ERR_STATUS_API == STD_ON */ 
    };

 



/**
* @brief            Mcl basic configuration.
* @details          Configuration for Mcl.
*
*/
/** @violates @ref Mcl_Cfg_c_REF_10 All declarations and definitions should have internal linkage */
CONST( Mcl_ConfigType, MCL_CONST) Mcl_InitConfig_PC =
     {
#if (MCL_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
        /** Configuration for the Dem errors */
        &Mcl_Dem_Config_PC,
#endif        
        /** Configuration for the Dma and DmaMu IPs */
        &Mcl_Dma_InitConfig_PC
    };

#define MCL_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Mcl_Cfg_c_REF_1 MISRA 2004 Required Rule 19.15, Repeated include file
* @violates @ref Mcl_Cfg_c_REF_2 MISRA 2004 Advisory Rule 19.1, only preprocessor
*                            statements and comments before '#include'
*/
#include "MemMap.h"
/*==================================================================================================
                                       GLOBAL VARIABLES
==================================================================================================*/


/*==================================================================================================
                                   LOCAL FUNCTION PROTOTYPES
==================================================================================================*/


/*==================================================================================================
                                       LOCAL FUNCTIONS
==================================================================================================*/


/*==================================================================================================
                                       GLOBAL FUNCTIONS
==================================================================================================*/


#endif /* (MCL_PRECOMPILE_SUPPORT == STD_ON) */

#ifdef __cplusplus
}
#endif

/** @} */

