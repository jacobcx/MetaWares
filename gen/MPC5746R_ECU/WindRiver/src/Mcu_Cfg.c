/**
*   @file    Mcu_Cfg.c
*   @implements Mcu_Cfg.c_Artifact
*   @version 1.0.2
*
*   @brief   AUTOSAR Mcu - Data structures for the Mcu driver.
*   @details Precompile structure configuration for the driver initalization.
*
*   @addtogroup MCU
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : MC
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
* @section Mcu_Cfg_c_REF_1
* Violates MISRA 2004 Required Rule 19.15, Repeated include file MemMap.h,  Precautions shall be 
* taken in order to prevent the contents of a header file being included twice This is not a violation 
* since all header files are protected against multiple inclusions
*
* @section Mcu_Cfg_c_REF_2
* Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments 
* before '#include' MemMap.h included after each section define in order to set the current memory section
*
* @section Mcu_Cfg_c_REF_3
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure
* that 31 character significance and case sensitivity are supported for external identifiers.
* The defines are validated.
*
* @section Mcu_Cfg_c_REF_4
* Violates MISRA 2004 Required Rule 11.1, Conversions shall not be performed between
* a pointer to a function and any type other than an integral type.
* Appears when accessing memory-mapped registers.
*
* @section Mcu_Cfg_c_REF_5
* Violates MISRA 2004 Advisory Rule 11.4, A cast should not be performed 
* between a pointer to object type and a different pointer to object type.
*
* @section Mcu_Cfg_c_REF_6
* Violates MISRA 2004 Required Rule 20.2, The names of standard macros, objects and 
* functions shall not be reused
*
* @section Mcu_Cfg_c_REF_7
* Violates MISRA 2004 Required Rule 8.10, All declarations and definitions of objects or functions
* at file scope shall have internal linkage unless external linkage is required.
*
* @section Mcu_Cfg_c_REF_10
* Violates MISRA 2004 Advisory Rule 11.3, A cast should not be performed between
* a pointer type and an integral type
* The cast is used to access memory mapped registers.
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
* on the significance of more than 31 characters. The used compilers use more than 31 chars for
* identifiers.
*/

/*==================================================================================================
                                         INCLUDE FILES
 1) system and project includes
 2) needed interfaces from external units
 3) internal and external interfaces from this unit
==================================================================================================*/
#include "Mcu.h"

#if (MCU_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#include "Dem.h"
#endif /* (MCU_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */

/*==================================================================================================
                                        SOURCE FILE VERSION INFORMATION
==================================================================================================*/

#define MCU_CFG_VENDOR_ID_C                     43
/** @violates @ref Mcu_Cfg_c_REF_3 MISRA 2004 Rule 1.4, The compiler/linker shall be checked to 
*   ensure that 31 character significance and case sensitivity are supported for external identifiers. */
#define MCU_CFG_AR_RELEASE_MAJOR_VERSION_C      4
/** @violates @ref Mcu_Cfg_c_REF_3 MISRA 2004 Rule 1.4, The compiler/linker shall be checked to 
*   ensure that 31 character significance and case sensitivity are supported for external identifiers. */
#define MCU_CFG_AR_RELEASE_MINOR_VERSION_C      0
/** @violates @ref Mcu_Cfg_c_REF_3 MISRA 2004 Rule 1.4, The compiler/linker shall be checked to 
*   ensure that 31 character significance and case sensitivity are supported for external identifiers. */
#define MCU_CFG_AR_RELEASE_REVISION_VERSION_C   3
#define MCU_CFG_SW_MAJOR_VERSION_C              1
#define MCU_CFG_SW_MINOR_VERSION_C              0
#define MCU_CFG_SW_PATCH_VERSION_C              2


/*==================================================================================================
                                      FILE VERSION CHECKS
==================================================================================================*/
/* Check if current file and MCU header file are of the same vendor */
#if (MCU_CFG_VENDOR_ID_C != MCU_VENDOR_ID)
    #error "Mcu_Cfg.c and Mcu.h have different vendor ids"
#endif
/* Check if current file and MCU header file are of the same Autosar version */
#if ((MCU_CFG_AR_RELEASE_MAJOR_VERSION_C != MCU_AR_RELEASE_MAJOR_VERSION) || \
     (MCU_CFG_AR_RELEASE_MINOR_VERSION_C != MCU_AR_RELEASE_MINOR_VERSION) || \
     (MCU_CFG_AR_RELEASE_REVISION_VERSION_C != MCU_AR_RELEASE_REVISION_VERSION) \
    )
    #error "AutoSar Version Numbers of Mcu_Cfg.c and Mcu.h are different"
#endif
/* Check if current file and MCU header file are of the same Software version */
#if ((MCU_CFG_SW_MAJOR_VERSION_C != MCU_SW_MAJOR_VERSION) || \
     (MCU_CFG_SW_MINOR_VERSION_C != MCU_SW_MINOR_VERSION) || \
     (MCU_CFG_SW_PATCH_VERSION_C != MCU_SW_PATCH_VERSION) \
    )
    #error "Software Version Numbers of Mcu_Cfg.c and Mcu.h are different"
#endif

/* Check if current file and DEM header file are of the same version */
#if (MCU_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#ifndef DISABLE_MCAL_INTERMODULE_ASR_CHECK
    #if ((MCU_CFG_AR_RELEASE_MAJOR_VERSION_C != DEM_AR_RELEASE_MAJOR_VERSION) || \
         (MCU_CFG_AR_RELEASE_MINOR_VERSION_C != DEM_AR_RELEASE_MINOR_VERSION) \
        )
        #error "AutoSar Version Numbers of Mcu_Cfg.c and Dem.h are different"
    #endif
#endif
#endif


/*==================================================================================================
                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
==================================================================================================*/


/*==================================================================================================
*                                       LOCAL MACROS
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
#define MCU_START_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Mcu_Cfg_c_REF_1 MISRA 2004 Required Rule 19.15, Repeated include file
* @violates @ref Mcu_Cfg_c_REF_2 MISRA 2004 Advisory Rule 19.1, only preprocessor 
* statements and comments before '#include'
*/
#include "MemMap.h"

/*==================================================================================================
                                       GLOBAL VARIABLES
==================================================================================================*/





#if (MCU_PRECOMPILE_SUPPORT == STD_ON)






#if (MCU_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
/**
* @brief        DEM error reporting configuration
* @details      Set the state and id for Mcal_DemErrorType.
*/
static CONST( Mcu_DemConfigType, MCU_CONST) Mcu_Dem_ConfigPC0 =
{

    /* DEM error reporting MCU_E_TIMEOUT_FAILURE */
    {(uint32)STD_OFF, 0U},

    /* DEM error reporting MCU_E_INVALIDMODE_CONFIG */
    {(uint32)STD_OFF, 0U},

    /* DEM error reporting MCU_E_SSCM_CER_FAILURE */
    {(uint32)STD_OFF, 0U}

};
#endif /* (MCU_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */








/**
* @brief        Definition of RAM sections within the configuration structure.
* @details      Blocks of memory are initialized with a default data.
*               Configuration set by calling Mcu_InitClock() API.
*
*/
static CONST(Mcu_RamConfigType, MCU_CONST) Mcu_aRamConfigPC0[1] = 
{

    {
        /* The ID for Ram Sector configuration. */
        (uint8)0U,

        /* RAM section base address: Start of Mcu_RamConfig[0]. */
        /** @violates @ref Mcu_Cfg_c_REF_4 MISRA 2004 Required Rule 11.1, conversion from pointer to integer */
        /** @violates @ref Mcu_Cfg_c_REF_5 MISRA 2004 Advisory Rule 11.4, cast between pointer and object */
        /** @violates @ref Mcu_Cfg_c_REF_10 MISRA 2004 Required Rule 11.3, the cast is used to access a linker symbol */
        (uint8 (*)[1U])0x4002ff00U,

        /* RAM section size: Section base address (must be aligned to 4 bytes). */
        (uint32)0x00000100U,

        /* RAM default value: Section size in bytes (must be multiple of 4). */
        (uint8)0x00U
    } /* End of Mcu_aRamConfigPC[0]. */
                
};





#if (MCU_CONFIGURE_CADDRN == STD_ON)
/** @violates @ref Mcu_Cfg_c_REF_3 MISRA 2004 Required Rule 1.4, 31 characters limit.*/
static CONST( Mcu_MC_ME_CoreAddressConfigType, MCU_CONST) Mcu_Mode_CoreAddressConfigPC0_0[MCU_MC_ME_NUMBER_OF_CORES] = 
{
    
    /* Core Control Register (ME_CADDR0) */
    {
        MC_ME_CADDR0_ADDR32,
        0x00000000U,
        0x00000000U
    },
    
    /* Core Control Register (ME_CADDR1) */
    {
        MC_ME_CADDR1_ADDR32,
        0x00000000U,
        0x00000000U
    },
    
    /* Core Control Register (ME_CADDR2) */
    {
        MC_ME_CADDR2_ADDR32,
        0x00000000U,
        0x00000000U
    }
    
};
#endif /* MCU_CONFIGURE_CADDRN == STD_ON */

/**
* @brief        Definition of MCU mode sections in the configuration structure.
* @details      Specifies the system behaviour during the selected target mode.
*               Configuration set by calling Mcu_SetMode() API.
*/
static CONST( Mcu_ModeConfigType, MCU_CONST) Mcu_aModeConfigPC0[1] = 
{    

    /* Start of Mcu_ModeConfig[0] - DRUN */
    {
        /* The ID for Power Mode configuration. */
        (uint8)0U,

        /* The selected magic target mode. Configure the ME_MCTL[TARGET_MODE] register filed. */
        (MCU_DRUN_MODE),

        /* Specifies the system behaviour for this configured state. */
        (
            /* Configure the MC_<mode>_MC[PDO] register field. */               
            (MC_ME_OUT_POWER_CONTROL_DIS_U32) |

            /* Configure the MC_<mode>_MC[MVRON] register field. */
            (MC_ME_MAIN_VOLTAGE_REG_EN_U32) | 

#ifdef ERR_IPV_MC_0039
#if (STD_ON == ERR_IPV_MC_0039)
            (MC_ME_CODE_FLASH_NORMAL_POWER_U32) |
#endif  /* (STD_ON == ERR_IPV_MC_0039) */
#else 
            /* Configure the MC_<mode>_MC[CFLAON] register field. */
            (MC_ME_CODE_FLASH_NORMAL_POWER_U32) |
#endif /* ERR_IPV_MC_0039 */

            /* Configure the MC_<mode>_MC[PLL1ON] register field. */
            (MC_ME_FMPLL1_DIS_U32) | 

            /* Configure the MC_<mode>_MC[PLL0ON] register field. */
            (MC_ME_FMPLL0_DIS_U32) | 

            /* Configure the MC_<mode>_MC[XOSCON] register field. */
            (MC_ME_XOSC_EN_U32) | 

            /* Configure the MC_<mode>_MC[IRCOSCON] register field. */
            (MC_ME_IRCOSC_EN_U32) | 

            /* Configure the MC_<mode>_MC[SYSCLK] register field. */
            (MC_ME_SYSCLK_XOSC_U32) |
            
            /* configure the MC_<mode>_MC[PWRLVL] register field. */
            MC_ME_POWER_LEVEL_U32( (uint32)0U )
        ),
#if (MCU_ENTER_LOW_POWER_MODE == STD_ON)
        /* Fast transition supported (from Low Power to Run mode). */
        (boolean)FALSE,

        /* Specifies the system behaviour for this RUN state that will be after wakeup (exit from low power mode - STOP0/HALT0). */
        (MC_ME_FAST_MODE_CONFIG_DEFAULT_U32),
#endif /* (MCU_ENTER_LOW_POWER_MODE == STD_ON) */
#if (MCU_CONFIGURE_CADDRN == STD_ON)
        /* configuration of CADDRs */
        MCU_MC_ME_NUMBER_OF_CORES,
        &Mcu_Mode_CoreAddressConfigPC0_0
#endif /* MCU_CONFIGURE_CADDRN == STD_ON */

    }
    /* end of Mcu_aModeConfigPC0[0]. */

};





#if (MCU_INIT_CLOCK == STD_ON)
/**
* @brief        Timing configuration for FLASH hw IP.
* @details      Set the Pipeline/Write/Read wait states for FLASH controller.
*               Configuration set by calling Mcu_InitClock API.
*/
static CONST( Mcu_FLASH_ClockConfigType, MCU_CONST) FLASH_Clock_ConfigPC0_0 = 
{
    /* Flash Controller timing settings. 
       PFCR1 configuration register: Address Pipelining Control & Read Wait State Control. */
    ( 
        MCU_FLASH_ADDR_PIPELINE_WS_U32(2) |
        MCU_FLASH_READ_WS_U32(5)
    )
};
#endif /* (MCU_INIT_CLOCK == STD_ON) */
            




#if (MCU_INIT_CLOCK == STD_ON)
static CONST( Mcu_MC_CGM_RegisterConfigType, MCU_CONST) MC_CGM_aPcsClockConfigPC0_0[MCU_CGM_NUMBER_OF_PCS_REGS] = 
{

    /* PCS Divider Change Register 1. */
    {
        MC_CGM_PCS_DIVC1_ADDR32,
        MC_CGM_PCS_DIVC_U32
        (
            MC_CGM_PCS_DIVC_INIT_U32((uint32)0x000003e7U) |
            MC_CGM_PCS_DIVC_RATE_U32((uint32)0x00000000U)
        )
    },
    /* PCS Divider Start Register 1. */
    {
        MC_CGM_PCS_DIVS1_ADDR32,
        MC_CGM_PCS_DIVS_U32((uint32)0x000003e7U)
    },
    /* PCS Divider End Register 1. */
    {
        MC_CGM_PCS_DIVE1_ADDR32,
        MC_CGM_PCS_DIVE_U32((uint32)0x000003e7U)
    },

    /* PCS Divider Change Register 2. */
    {
        MC_CGM_PCS_DIVC2_ADDR32,
        MC_CGM_PCS_DIVC_U32
        (
            MC_CGM_PCS_DIVC_INIT_U32((uint32)0x000003e7U) |
            MC_CGM_PCS_DIVC_RATE_U32((uint32)0x00000000U)
        )
    },
    /* PCS Divider Start Register 2. */
    {
        MC_CGM_PCS_DIVS2_ADDR32,
        MC_CGM_PCS_DIVS_U32((uint32)0x000003e7U)
    },
    /* PCS Divider End Register 2. */
    {
        MC_CGM_PCS_DIVE2_ADDR32,
        MC_CGM_PCS_DIVE_U32((uint32)0x000003e7U)
    },

    /* PCS Divider Change Register 4. */
    {
        MC_CGM_PCS_DIVC4_ADDR32,
        MC_CGM_PCS_DIVC_U32
        (
            MC_CGM_PCS_DIVC_INIT_U32((uint32)0x000003e7U) |
            MC_CGM_PCS_DIVC_RATE_U32((uint32)0x00000000U)
        )
    },
    /* PCS Divider Start Register 4. */
    {
        MC_CGM_PCS_DIVS4_ADDR32,
        MC_CGM_PCS_DIVS_U32((uint32)0x000003e7U)
    },
    /* PCS Divider End Register 4. */
    {
        MC_CGM_PCS_DIVE4_ADDR32,
        MC_CGM_PCS_DIVE_U32((uint32)0x000003e7U)
    }

};
#endif /* (MCU_INIT_CLOCK == STD_ON) */





#if (MCU_INIT_CLOCK == STD_ON)
static CONST( Mcu_MC_CGM_RegisterConfigType, MCU_CONST) MC_CGM_aSystemClockConfigPC0_0[MCU_CGM_NUMBER_OF_SYSTEM_CLOCK_REGS] = 
{
    /* System Clock Divider 0 Configuration. */
    {
        MC_CGM_SC_DC0_ADDR32,
        MC_CGM_SC_DC0_U32
        (
            MC_CGM_SC_DC0_EN_U32 |
            MC_CGM_SYSCLK_DC0_DIVISOR_U32(1U)
        )
    },
    /* System Clock Divider 1 Configuration. */
    {
        MC_CGM_SC_DC1_ADDR32,
        MC_CGM_SC_DC1_U32
        (
            MC_CGM_SC_DC1_EN_U32 |
            MC_CGM_SYSCLK_DC1_DIVISOR_U32(2U)
        )
    },
    /* System Clock Divider 2 Configuration. */
    {
        MC_CGM_SC_DC2_ADDR32,
        MC_CGM_SC_DC2_U32
        (
            MC_CGM_SC_DC2_EN_U32 |
            MC_CGM_SYSCLK_DC2_DIVISOR_U32(4U)
        )
    }
};
#endif /* (MCU_INIT_CLOCK == STD_ON) */





#if (MCU_INIT_CLOCK == STD_ON)
static CONST( Mcu_MC_CGM_RegisterConfigType, MCU_CONST) MC_CGM_aAuxClockConfigPC0_0[23] = 
{

    
    /* Auxiliary Clock0 Source Selection. CGM_AC0_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC0_SC_ADDR32,
        MC_CGM_AUXCLK0_U32(MC_CGM_AUXCLK0_SOURCE_PLL0_U32)
    }

    ,
    /* Auxiliary Clock0 Divider0 Configuration. CGM_AC0_DC0 Register. */
    {
        MC_CGM_AC0_DC0_ADDR32,
        MC_CGM_AC0_DC0_U32
        ( 
            MC_CGM_AUXCLK0_DIV0_EN_U32 | 
            MC_CGM_AUXCLK0_DIV0_U32(4U)
        )
    }

    ,
    /* Auxiliary Clock0 Divider1 Configuration. CGM_AC0_DC1 Register. */
    {
        MC_CGM_AC0_DC1_ADDR32,
        MC_CGM_AC0_DC1_U32
        ( 
            MC_CGM_AUXCLK0_DIV1_EN_U32 | 
            MC_CGM_AUXCLK0_DIV1_U32(20U)
        )
    }

    ,
    /* Auxiliary Clock0 Divider2 Configuration. CGM_AC0_DC2 Register. */
    {
        MC_CGM_AC0_DC2_ADDR32,
        MC_CGM_AC0_DC2_U32
        ( 
            MC_CGM_AUXCLK0_DIV2_EN_U32 | 
            MC_CGM_AUXCLK0_DIV2_U32(10U)
        )
    }

    ,
    /* Auxiliary Clock0 Divider3 Configuration. CGM_AC0_DC3 Register. */
    {
        MC_CGM_AC0_DC3_ADDR32,
        MC_CGM_AC0_DC3_U32
        ( 
            MC_CGM_AUXCLK0_DIV3_EN_U32 | 
            MC_CGM_AUXCLK0_DIV3_U32(5U, 0U)
        )
    }

    ,
    /* Auxiliary Clock0 Divider4 Configuration. CGM_AC0_DC4 Register. */
    {
        MC_CGM_AC0_DC4_ADDR32,
        MC_CGM_AC0_DC4_U32
        ( 
            MC_CGM_AUXCLK0_DIV4_EN_U32 | 
            MC_CGM_AUXCLK0_DIV4_U32(5U)
        )
    }

    ,
    /* Auxiliary Clock1 Source Selection. CGM_AC1_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC1_SC_ADDR32,
        MC_CGM_AUXCLK1_U32(MC_CGM_AUXCLK1_SOURCE_PLL0_U32)
    }

    ,
    /* Auxiliary Clock1 Divider0 Configuration. CGM_AC1_DC0 Register. */
    {
        MC_CGM_AC1_DC0_ADDR32,
        MC_CGM_AC1_DC0_U32
        ( 
            MC_CGM_AUXCLK1_DIV0_EN_U32 | 
            MC_CGM_AUXCLK1_DIV0_U32(10U)
        )
    }

    ,
    /* Auxiliary Clock2 Source Selection. CGM_AC2_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC2_SC_ADDR32,
        MC_CGM_AUXCLK2_U32(MC_CGM_AUXCLK2_SOURCE_PLL0_U32)
    }

    ,
    /* Auxiliary Clock2 Divider0 Configuration. CGM_AC2_DC0 Register. */
    {
        MC_CGM_AC2_DC0_ADDR32,
        MC_CGM_AC2_DC0_U32
        ( 
            MC_CGM_AUXCLK2_DIV0_EN_U32 | 
            MC_CGM_AUXCLK2_DIV0_U32(5U)
        )
    }

    ,
    /* Auxiliary Clock3 Source Selection. CGM_AC3_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC3_SC_ADDR32,
        MC_CGM_AUXCLK3_U32(MC_CGM_AUXCLK3_SOURCE_XTAL_U32)
    }

    ,
    /* Auxiliary Clock4 Source Selection. CGM_AC4_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC4_SC_ADDR32,
        MC_CGM_AUXCLK4_U32(MC_CGM_AUXCLK4_SOURCE_XTAL_U32)
    }

    ,
    /* Auxiliary Clock5 Source Selection. CGM_AC5_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC5_SC_ADDR32,
        MC_CGM_AUXCLK5_U32(MC_CGM_AUXCLK5_SOURCE_PLL0_U32)
    }

    ,
    /* Auxiliary Clock5 Divider0 Configuration. CGM_AC5_DC0 Register. */
    {
        MC_CGM_AC5_DC0_ADDR32,
        MC_CGM_AC5_DC0_U32
        ( 
            MC_CGM_AUXCLK5_DIV0_EN_U32 | 
            MC_CGM_AUXCLK5_DIV0_U32(2U)
        )
    }

    ,
    /* Auxiliary Clock5 Divider1 Configuration. CGM_AC5_DC1 Register. */
    {
        MC_CGM_AC5_DC1_ADDR32,
        MC_CGM_AC5_DC1_U32
        ( 
            MC_CGM_AUXCLK5_DIV1_EN_U32 | 
            MC_CGM_AUXCLK5_DIV1_U32(2U)
        )
    }

    ,
    /* Auxiliary Clock6 Source Selection. CGM_AC6_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC6_SC_ADDR32,
        MC_CGM_AUXCLK6_U32(MC_CGM_AUXCLK6_SOURCE_PLL0_U32)
    }

    ,
    /* Auxiliary Clock6 Divider0 Configuration. CGM_AC6_DC0 Register. */
    {
        MC_CGM_AC6_DC0_ADDR32,
        MC_CGM_AC6_DC0_U32
        ( 
            MC_CGM_AUXCLK6_DIV0_EN_U32 | 
            MC_CGM_AUXCLK6_DIV0_U32(5U)
        )
    }

    ,
    /* Auxiliary Clock8 Source Selection. CGM_AC8_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC8_SC_ADDR32,
        MC_CGM_AUXCLK8_U32(MC_CGM_AUXCLK8_SOURCE_PLL0_U32)
    }

    ,
    /* Auxiliary Clock8 Divider0 Configuration. CGM_AC8_DC0 Register. */
    {
        MC_CGM_AC8_DC0_ADDR32,
        MC_CGM_AC8_DC0_U32
        ( 
            MC_CGM_AUXCLK8_DIV0_EN_U32 | 
            MC_CGM_AUXCLK8_DIV0_U32(5U)
        )
    }

    ,
    /* Auxiliary Clock9 Source Selection. CGM_AC9_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC9_SC_ADDR32,
        MC_CGM_AUXCLK9_U32(MC_CGM_AUXCLK9_SOURCE_XTAL_U32)
    }

    ,
    /* Auxiliary Clock9 Divider0 Configuration. CGM_AC9_DC0 Register. */
    {
        MC_CGM_AC9_DC0_ADDR32,
        MC_CGM_AC9_DC0_U32
        ( 
            MC_CGM_AUXCLK9_DIV0_EN_U32 | 
            MC_CGM_AUXCLK9_DIV0_U32(1U)
        )
    }

    ,
    /* Auxiliary Clock10 Source Selection. CGM_AC10_SC[SELCTL] Field Register. */
    {
        MC_CGM_AC10_SC_ADDR32,
        MC_CGM_AUXCLK10_U32(MC_CGM_AUXCLK10_SOURCE_PLL0_U32)
    }

    ,
    /* Auxiliary Clock10 Divider0 Configuration. CGM_AC10_DC0 Register. */
    {
        MC_CGM_AC10_DC0_ADDR32,
        MC_CGM_AC10_DC0_U32
        ( 
            MC_CGM_AUXCLK10_DIV0_EN_U32 | 
            MC_CGM_AUXCLK10_DIV0_U32(5U)
        )
    }

};
#endif /* (MCU_INIT_CLOCK == STD_ON) */





#if (MCU_INIT_CLOCK == STD_ON)
/**
* @brief            MC_CGM IP clock configuration.
* @details          This structure contains information for IRCOSC, XOSC, PLL, Output Clocks, CMUs
*
*/
static CONST( Mcu_MC_CGM_ClockConfigType, MCU_CONST) MC_CGM_Clock_ConfigPC0_0 = 
{
    /* These clock sources must be powered on for the current clock setting */
    (
        MC_ME_XOSC_EN_U32   |
        MC_ME_FMPLL0_EN_U32 |
        MC_ME_FMPLL1_DIS_U32  
    ),

    /* Progressive Clock Switching (CGM_PCS_SDUR[SDUR]) */
    MC_CGM_PCS_SDUR_U8(0x00U),
    
    /* Divider Update Type (MC_CGM_DIV_UPD_TYPE) */
    MC_CGM_DIV_UPD_TYPE_U32
    (
        MC_CGM_DIV_UPD_TYPE_AUX10_UPD_TYPE_EN_U32 |
        MC_CGM_DIV_UPD_TYPE_AUX9_UPD_TYPE_EN_U32 |
        MC_CGM_DIV_UPD_TYPE_AUX8_UPD_TYPE_EN_U32 |
        MC_CGM_DIV_UPD_TYPE_AUX6_UPD_TYPE_EN_U32 |
        MC_CGM_DIV_UPD_TYPE_AUX5_UPD_TYPE_EN_U32 |
        MC_CGM_DIV_UPD_TYPE_AUX2_UPD_TYPE_EN_U32 |
        MC_CGM_DIV_UPD_TYPE_AUX1_UPD_TYPE_EN_U32 |
        MC_CGM_DIV_UPD_TYPE_AUX0_UPD_TYPE_EN_U32
    ),

    /* number of pcs registers unde mcu control */
    MCU_CGM_NUMBER_OF_PCS_REGS,
    
    /* pcs registers */
    &MC_CGM_aPcsClockConfigPC0_0,

    /* number of sys clock regs unde mcu control */
    MCU_CGM_NUMBER_OF_SYSTEM_CLOCK_REGS,
    /* system clock configuration */
    &MC_CGM_aSystemClockConfigPC0_0,
    
    /* number of configurable aux clock regs */
    ((uint8)23U),
    
    /* auxiliary clock dividers */
    &MC_CGM_aAuxClockConfigPC0_0
};
#endif /* (MCU_INIT_CLOCK == STD_ON) */
            




#if (MCU_INIT_CLOCK == STD_ON)
/**
* @brief            PLLDIG Registers configuration.
* @details          This structure contains configuration for PLLDIG Registers.
*/
/** @violates @ref Mcu_Cfg_c_REF_3 MISRA 2004 Required Rule 1.4, 31 characters limit.*/
static CONST( Mcu_PLLDIG_RegisterConfigType, MCU_CONST) Mcu_PLLDIG_aRegistersConfigPC0_0[6] = 
{
    
    /* PLL0 configuration */
    {
        PLLDIG_PLL0CR_ADDR32,
        MCU_PLLDIG_PLL0CR_U32
        (
            MCU_PLLDIG_PLL0CR_EXPDIE_DIS_U32 |
            MCU_PLLDIG_PLL0CR_LOLIE_DIS_U32 |
            MCU_PLLDIG_PLL0CR_LOLRE_DIS_U32
        )
    },
    /* PLL0 dividers */
    {
        PLLDIG_PLL0DV_ADDR32,
        MCU_PLLDIG_PLL0DV_U32
        (
            MCU_PLLDIG_PLL0DV_RFDPHI1_U32( (uint32)10U ) |
            MCU_PLLDIG_PLL0DV_RFDPHI_U32( (uint32)2U ) |
            MCU_PLLDIG_PLL0DV_PREDIV_U32( (uint32)2U ) |
            MCU_PLLDIG_PLL0DV_MFD_U32( (uint32)20U )
        )
    },
    /* PLL1 configuration */
    {
        PLLDIG_PLL1CR_ADDR32,
        MCU_PLLDIG_PLL1CR_U32
        (
            MCU_PLLDIG_PLL1CR_EXPDIE_DIS_U32 |
            MCU_PLLDIG_PLL1CR_LOLIE_DIS_U32 |
            MCU_PLLDIG_PLL1CR_LOLRE_DIS_U32
        )
    },
    /* PLL1 dividers */
    {
        PLLDIG_PLL1DV_ADDR32,
        MCU_PLLDIG_PLL1DV_U32
        (
            MCU_PLLDIG_PLL1DV_RFDPHI_U32( (uint32)2U ) |
            MCU_PLLDIG_PLL1DV_MFD_U32( (uint32)16U )
        )
    },
    /* PLL1 frequency modulation */ 
    {
        PLLDIG_PLL1FM_ADDR32,
        MCU_PLLDIG_PLL1FM_U32( MCU_PLLDIG_PLL1FM_MODEN_DIS_U32 )
    },
    /* PLL1 fractional divider */
    {
        PLLDIG_PLL1FD_ADDR32,
        MCU_PLLDIG_PLL1FD_U32( MCU_PLLDIG_PLL1FD_FDEN_DIS_U32 )
    }
};
#endif /* (MCU_INIT_CLOCK == STD_ON) */
            




#if (MCU_INIT_CLOCK == STD_ON)
/**
* @brief            PLLDIG clock configuration.
* @details          This structure contains information for PLLDIG PLL0 and FMPLL1.
*
*/
static CONST( Mcu_PLLDIG_ConfigType, MCU_CONST) Mcu_PLLDIG_ClockConfigPC0_0 =
{
    /* number of pll regs under mcu control */
    0x06U,
    /* configuration for PLLDIG registers */
    &Mcu_PLLDIG_aRegistersConfigPC0_0
};
#endif /* (MCU_INIT_CLOCK == STD_ON) */
            




#if (MCU_EMIOS_SUPPORT == STD_ON)
/**
* @brief            eMios Module Configuration.
* @details          This structure contains information for eMios0 and eMios1.
*
*/
/** @violates @ref Mcu_Cfg_c_REF_6 This is not a standard library macro. */
static CONST(Mcu_eMios_ConfigType, MCU_CONST) EMIOS_Module_ConfigPC0_0 = 
{
    {
        /* eMios0 configuration */
        EMIOS_MCR_U32
        (
            EMIOS_MCR_MDIS_DIS_U32 |
            EMIOS_MCR_FRZ_DIS_U32 |
            EMIOS_MCR_GTBE_ENA_U32 |
            EMIOS_MCR_ETB_DIS_U32 |
            EMIOS_MCR_GPREN_ENA_U32 |
            EMIOS_MCR_SRV_U32((uint32)0U) |
            EMIOS_MCR_GPRE_U32((uint32)1U)
        ),
        /* eMios1 configuration */
        EMIOS_MCR_U32
        (
            EMIOS_MCR_MDIS_DIS_U32 |
            EMIOS_MCR_FRZ_DIS_U32 |
            EMIOS_MCR_GTBE_ENA_U32 |
            EMIOS_MCR_ETB_DIS_U32 |
            EMIOS_MCR_GPREN_ENA_U32 |
            EMIOS_MCR_SRV_U32((uint32)0U) |
            EMIOS_MCR_GPRE_U32((uint32)1U)
        )
    }
};
#endif /* (MCU_EMIOS_SUPPORT == STD_ON) */


    


#if (MCU_INIT_CLOCK == STD_ON)
/**
* @brief            CMU configuration.
* @details          This structure contains information for CMU[n]. 
*                   The number of CMU's is defined in the resource files, 
*
*/
static CONST( Mcu_CMU_ConfigType, MCU_CONST) CMU_ConfigPC0_0 =
{
    {

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_8_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        ),

        CMU_CSR_U32
        (
            CMU_CSR_CMU_DIS_U32 |
            CMU_CSR_RCDIV_1_U32
        )

    },
    {

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_HFREFR_VALUE_U32
        (
            (uint32)0U
        )

    },
    {

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        ),

        CMU_LFREFR_VALUE_U32
        (
            (uint32)0U
        )

    }
};
#endif /* (MCU_INIT_CLOCK == STD_ON) */





#if (MCU_INIT_CLOCK == STD_ON)
/* XOSC */
/**
* @brief            XOSC clock configuration.
* @details          This structure contains information for XOSC ip.
*
*/
static CONST( Mcu_XOSC_ConfigType, MCU_CONST) MC_XOSC_ClockConfigPC0_0 =
{
    /** @brief XOSC configuration register. */
    XOSC_CTL_VALUE_U32
    (
        XOSC_OSCBYP_DISABLE_MASK32 |
        XOSC_EOCV_VALUE_U32( (uint32)100U ) |
        XOSC_MOSC_DISABLE_MASK32
    )
};
#endif /* (MCU_INIT_CLOCK == STD_ON) */
            




#if (MCU_INIT_CLOCK == STD_ON)
/**
* @brief        Timing configuration for SRAMC hw IP.
* @details      Set the Read wait states for RAM.
*               Configuration set by calling Mcu_InitClock API.
*/
static CONST( Mcu_PRAM_ClockConfigType, MCU_CONST) SRAMC_ClockConfigPC0_0 = 
{
    /* SRAMC Controller timing settings. PRCR1 configuration register. */
    PRAMC_PRCR1_VALUE_U32
    (
        PRAMC_PRCR1_PRI_VALUE_U32( (uint32)2U ) |
        PRAMC_PRCR1_P1_BO_ENA_U32 |
        PRAMC_PRCR1_P0_BO_ENA_U32 |
        PRAMC_PRCR1_FT_ENA_U32
    )
};
#endif /* (MCU_INIT_CLOCK == STD_ON) */
            




#if (MCU_INIT_CLOCK == STD_ON)
/**
* @brief          Initialization clock data.
* @details        Static configuration realized by calling Mcu_InitClock() API.
*
*/
static CONST( Mcu_ClockConfigType, MCU_CONST) Mcu_aClockConfigPC0[1] =  
{
    
    /* Start of Mcu_ClockConfig[0]. */
    {
            
        /* ID Clock Configuration. */
        (uint8)0U,

        /* Globally enable/disable SCM, loss of clock and loss of lock notification. */
        (MCU_CLK_NOTIF_DIS),

        /* System Clock Selection. 
           This affect the Mode settings from MC_ME IP. */
        (MC_ME_SYSCLK_PLL0_U32 | MC_ME_FMPLL0_EN_U32 ),
        
        /* MC_CGM IP Clock settings. */
        &MC_CGM_Clock_ConfigPC0_0,
        
        /* XOSC IP Clock settings. */
        &MC_XOSC_ClockConfigPC0_0,
        
        /* PLLDIG IP Clock settings. */
        &Mcu_PLLDIG_ClockConfigPC0_0,
        
#if (MCU_EMIOS_SUPPORT == STD_ON)
        /* eMios Module settings. */
        &EMIOS_Module_ConfigPC0_0,
#endif
        
        /* CMU IP Clock settings. */
        &CMU_ConfigPC0_0,
        
#if (MCU_SRAMC_SUPPORT == STD_ON)
        /* SRAMC IP Clock settings. */
        &SRAMC_ClockConfigPC0_0,
#endif /* (MCU_SRAMC_SUPPORT == STD_ON) */

        /* FLASH IP Clock settings. */
        &FLASH_Clock_ConfigPC0_0,
        
        (MCU_IPW_IRC_NOT_UNDER_MCU_CONTROL |
         MCU_IPW_XOSC_UNDER_MCU_CONTROL |
         MCU_IPW_PLL0_UNDER_MCU_CONTROL |
         MCU_IPW_PLL1_UNDER_MCU_CONTROL)

    } /* end of Mcu_ClockConfig[0] */
            
};
#endif /* (MCU_INIT_CLOCK == STD_ON) */
        




/**
* @brief          Initialization data for MC_RGM hw IP.
* @details        Static configuration realized at statup by calling Mcu_Init() API.
*
*/
static CONST( Mcu_MC_RGM_ConfigType, MCU_CONST) MC_RGM_ConfigPC0 =
{
#if (MCU_PERFORM_RESET_API == STD_ON)
    /* MC_ResetType: Functional vs Destructive. */
    (MCU_FUNC_RESET),
#endif /* (MCU_PERFORM_RESET_API == STD_ON) */
    /* destructive reset config */
    /* MCRGM_Dest_ResetOpt: RGM_DERD Register Configuration. */
    MC_RGM_DEST_U32
    (
        (MC_RGM_TSR_DEST_RESET_U32) |
        (MC_RGM_PORST_RESET_U32)
    ),
    /* MCRGM_Dest_SafeIsrOpt: RGM_DEAR Register Configuration. */
    MC_RGM_DEAR_U32
    (
        (MC_RGM_PORST_ALT_EVENT_SAFE_U32)
    ),
    /* MCRGM_Dest_ExtPinReset: RGM_DBRE Register Configuration. */
    MC_RGM_DBRE_U32
    (
        (MC_RGM_PMC_STF_RESET_B_EN_U32) |
        (MC_RGM_JTAG_DEST_RESET_B_DIS_U32)
    ),
    
    /* functional reset config */
    /* Func_ResetOpt: FERD Register Configuration. */
    MC_RGM_FERD_U32
    (
        (MC_RGM_VOR_FUNC_EVENT_RESET_U32) |
        (MC_RGM_TSR_FUNC_EVENT_RESET_U32)
    ),
    /* MCRGM_Func_SafeIsrOpt: RGM_FEAR Register Configuration. */
    MC_RGM_FEAR_U32
    (
        (MC_RGM_VOR_FUNC_EVENT_SAFE_U32) |
        (MC_RGM_TSR_FUNC_EVENT_SAFE_U32)
    ),
    /* MCRGM_Func_ExtPinReset: RGM_FBRE Register Configuration. */
    MC_RGM_FBRE_U32
    (
        (MC_RGM_VOR_FUNC_EXT_RESET_B_DIS_U32) |
        (MC_RGM_TSR_FUNC_EXT_RESET_B_DIS_U32) |
        (MC_RGM_JTAG_EXT_RESET_B_DIS_U32) |
        (MC_RGM_FCCU_SOFT_EXT_RESET_B_DIS_U32) |
        (MC_RGM_FCCU_HARD_EXT_RESET_B_DIS_U32) |
        (MC_RGM_SOFT_FUNC_EXT_RESET_B_DIS_U32) |
        (MC_RGM_ST_DONE_EXT_RESET_B_EN_U32) |
        (MC_RGM_ESR0_EXT_RESET_B_EN_U32)
    ),
    /* MCRGM_Func_Phase1or3Opt: RGM_FESS Register Configuration. */
    MC_RGM_FESS_U32
    (
        (MC_RGM_VOR_FUNC_RESET_PHASE1_U32) |
        (MC_RGM_TSR_FUNC_RESET_PHASE1_U32) |
        (MC_RGM_JTAG_FUNC_RESET_PHASE1_U32) |
        (MC_RGM_SOFT_FUNC_RESET_PHASE1_U32) |
        (MC_RGM_EXR_RESET_PHASE1_U32)
    ),

    /* MCRGM_Threshold_Reset: RGM_FRET Register Configuration. */
    MC_RGM_FRET_U8((uint8)15U),
    
    /* MCRGM_Threshold_Reset: RGM_DRET Register Configuration. */
    MC_RGM_DRET_U8((uint8)8U)

};





static CONST( Mcu_MC_ME_CoreAddressConfigType, MCU_CONST) MC_ME_CADDR_ConfigPC0[MCU_MC_ME_NUMBER_OF_CORES] = 
{
    /* Core Control Register (ME_CADDR0) */
    {
        MC_ME_CADDR0_ADDR32,
        MC_ME_CADDR_RMC_MASK32,
        MC_ME_CADDR_ENABLE_U32
        (
            
            MC_ME_CADDR_RESET_DISABLE_U32
        )
    },
    
    /* Core Control Register (ME_CADDR1) */
    {
        MC_ME_CADDR1_ADDR32,
        MC_ME_CADDR_RMC_MASK32,
        MC_ME_CADDR_ENABLE_U32
        (
            
            MC_ME_CADDR_RESET_DISABLE_U32
        )
    },
    
    /* Core Control Register (ME_CADDR2) */
    {
        MC_ME_CADDR2_ADDR32,
        MC_ME_CADDR_RMC_MASK32,
        MC_ME_CADDR_ENABLE_U32
        (
            
            MC_ME_CADDR_RESET_DISABLE_U32
        )
    }
};

static CONST( Mcu_MC_ME_CoreConfigType, MCU_CONST) MC_ME_CCTL_ConfigPC0[MCU_MC_ME_NUMBER_OF_CORES] = 
{
    /* Core Control Register (ME_CCTL0) */
    {
        MC_ME_CCTL0_ADDR32,
        MC_ME_CCTL_ENABLE_U16
        ( 
            (MC_ME_CCTL_RUN3_ON_U16) |
            (MC_ME_CCTL_RUN2_ON_U16) |
            (MC_ME_CCTL_RUN1_ON_U16) |
            (MC_ME_CCTL_RUN0_ON_U16) |
            (MC_ME_CCTL_DRUN_ON_U16) |
            (MC_ME_CCTL_SAFE_ON_U16) |
            (MC_ME_CCTL_TEST_ON_U16)
        )
    },
    
    /* Core Control Register (ME_CCTL1) */
    {
        MC_ME_CCTL1_ADDR32,
        MC_ME_CCTL_ENABLE_U16
        ( 
            (MC_ME_CCTL_RUN3_ON_U16) |
            (MC_ME_CCTL_RUN2_ON_U16) |
            (MC_ME_CCTL_RUN1_ON_U16) |
            (MC_ME_CCTL_RUN0_ON_U16) |
            (MC_ME_CCTL_DRUN_ON_U16) |
            (MC_ME_CCTL_SAFE_ON_U16) |
            (MC_ME_CCTL_TEST_ON_U16)
        )
    },
    
    /* Core Control Register (ME_CCTL2) */
    {
        MC_ME_CCTL2_ADDR32,
        MC_ME_CCTL_ENABLE_U16
        ( 
            (MC_ME_CCTL_RUN3_OFF_U16) |
            (MC_ME_CCTL_RUN2_OFF_U16) |
            (MC_ME_CCTL_RUN1_OFF_U16) |
            (MC_ME_CCTL_RUN0_OFF_U16) |
            (MC_ME_CCTL_DRUN_OFF_U16) |
            (MC_ME_CCTL_SAFE_OFF_U16) |
            (MC_ME_CCTL_TEST_OFF_U16)
        )
    }
};

static CONST( Mcu_MC_ME_RegisterConfigType, MCU_CONST) MC_ME_aPCTLConfigPC0[MCU_MC_ME_NUMBER_OF_PCTL_REGS] = 
{

    /* PCTL9_LFAST_0 */
    {
        MC_ME_PCTL9_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL11_SIPI_0 */
    {
        MC_ME_PCTL11_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL15_SIUL2 */
    {
        MC_ME_PCTL15_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL28_DECFILT_1 */
    {
        MC_ME_PCTL28_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL29_DECFILT_0 */
    {
        MC_ME_PCTL29_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL30_PIT_RTI_0 */
    {
        MC_ME_PCTL30_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL31_PIT_RTI_1 */
    {
        MC_ME_PCTL31_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL36_DMA_CH_MUX_0_2 */
    {
        MC_ME_PCTL36_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL38_CRC_0 */
    {
        MC_ME_PCTL38_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL45_JTAGM */
    {
        MC_ME_PCTL45_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL59_ADCSD_2 */
    {
        MC_ME_PCTL59_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL60_ADCSD_0 */
    {
        MC_ME_PCTL60_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL69_ADCSAR_2 */
    {
        MC_ME_PCTL69_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL71_ADCSAR_0 */
    {
        MC_ME_PCTL71_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL81_FLEXCAN_2 */
    {
        MC_ME_PCTL81_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL83_FLEXCAN_0 */
    {
        MC_ME_PCTL83_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL85_LINFLEX_M0 */
    {
        MC_ME_PCTL85_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL91_LINFLEX_2 */
    {
        MC_ME_PCTL91_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL92_LINFLEX_0 */
    {
        MC_ME_PCTL92_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL96_DSPI_M0 */
    {
        MC_ME_PCTL96_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL97_DSPI_4 */
    {
        MC_ME_PCTL97_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL98_DSPI_2 */
    {
        MC_ME_PCTL98_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL99_DSPI_0 */
    {
        MC_ME_PCTL99_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL102_EMIOS */
    {
        MC_ME_PCTL102_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL104_SENT_0 */
    {
        MC_ME_PCTL104_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL143_DMA_CH_MUX_3 */
    {
        MC_ME_PCTL143_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL166_CRC_1 */
    {
        MC_ME_PCTL166_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL188_ADCSD_1 */
    {
        MC_ME_PCTL188_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL196_ADCSAR_3 */
    {
        MC_ME_PCTL196_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL197_IGF */
    {
        MC_ME_PCTL197_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL198_ADCSAR_1 */
    {
        MC_ME_PCTL198_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL202_ETPU_SCRAM_1 */
    {
        MC_ME_PCTL202_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL203_ETPU_SCRAM_2 */
    {
        MC_ME_PCTL203_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL204_ETPU_SPRAM_1 */
    {
        MC_ME_PCTL204_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL205_ETPU_SPRAM_2 */
    {
        MC_ME_PCTL205_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL206_REACM */
    {
        MC_ME_PCTL206_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL207_ETPU */
    {
        MC_ME_PCTL207_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL208_FLEXCAN_3 */
    {
        MC_ME_PCTL208_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL210_FLEXCAN_1 */
    {
        MC_ME_PCTL210_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL213_LINFLEX_M1 */
    {
        MC_ME_PCTL213_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL219_LINFLEX_3 */
    {
        MC_ME_PCTL219_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL220_LINFLEX_1 */
    {
        MC_ME_PCTL220_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL225_DSPI_M1 */
    {
        MC_ME_PCTL225_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL226_DSPI_3 */
    {
        MC_ME_PCTL226_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL227_DSPI_1 */
    {
        MC_ME_PCTL227_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL230_EMIOS_1 */
    {
        MC_ME_PCTL230_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL232_SENT_1 */
    {
        MC_ME_PCTL232_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    },

    /* PCTL251_BTCU */
    {
        MC_ME_PCTL251_ADDR32,
        MC_ME_PCTLn_U8(MC_ME_PCTL_DBG_FRZ_DIS_U8, MC_ME_CFG_RUN_PC0_U8, MC_ME_CFG_LP_PC0_U8)
    }

};

/**
* @brief            Configuration of MC_ME hw IP.
* @details          This data configuration is set at module initialization phase.
*
*/
static CONST( Mcu_MC_ME_ConfigType, MCU_CONST) MC_ME_ConfigPC0 =
{

    /* ME_RUN_PC0: Run Config Mode0 : McuRunConfig. */
    (
        (MC_ME_RUN3_CLK_ACTIVE_U32) |
        (MC_ME_RUN2_CLK_ACTIVE_U32) |
        (MC_ME_RUN1_CLK_ACTIVE_U32) |
        (MC_ME_RUN0_CLK_ACTIVE_U32) |
        (MC_ME_DRUN_CLK_ACTIVE_U32) |
        (MC_ME_SAFE_CLK_ACTIVE_U32) |
        (MC_ME_TEST_CLK_GATED_U32)
    ),

    /* ME_RUN_PC1: Run Config Mode1 : McuRunConfig1. */
    (
        (MC_ME_RUN3_CLK_ACTIVE_U32) |
        (MC_ME_RUN2_CLK_ACTIVE_U32) |
        (MC_ME_RUN1_CLK_ACTIVE_U32) |
        (MC_ME_RUN0_CLK_ACTIVE_U32) |
        (MC_ME_DRUN_CLK_ACTIVE_U32) |
        (MC_ME_SAFE_CLK_ACTIVE_U32) |
        (MC_ME_TEST_CLK_GATED_U32)
    ),

    /* ME_RUN_PC2: Run Config Mode2 : McuRunConfig2. */
    (
        (MC_ME_RUN3_CLK_ACTIVE_U32) |
        (MC_ME_RUN2_CLK_ACTIVE_U32) |
        (MC_ME_RUN1_CLK_ACTIVE_U32) |
        (MC_ME_RUN0_CLK_ACTIVE_U32) |
        (MC_ME_DRUN_CLK_ACTIVE_U32) |
        (MC_ME_SAFE_CLK_ACTIVE_U32) |
        (MC_ME_TEST_CLK_GATED_U32)
    ),

    /* ME_RUN_PC3: Run Config Mode3 : McuRunConfig3. */
    (
        (MC_ME_RUN3_CLK_ACTIVE_U32) |
        (MC_ME_RUN2_CLK_ACTIVE_U32) |
        (MC_ME_RUN1_CLK_ACTIVE_U32) |
        (MC_ME_RUN0_CLK_ACTIVE_U32) |
        (MC_ME_DRUN_CLK_ACTIVE_U32) |
        (MC_ME_SAFE_CLK_ACTIVE_U32) |
        (MC_ME_TEST_CLK_GATED_U32)
    ),

    /* ME_RUN_PC4: Run Config Mode4 : McuRunConfig4. */
    (
        (MC_ME_RUN3_CLK_ACTIVE_U32) |
        (MC_ME_RUN2_CLK_ACTIVE_U32) |
        (MC_ME_RUN1_CLK_ACTIVE_U32) |
        (MC_ME_RUN0_CLK_ACTIVE_U32) |
        (MC_ME_DRUN_CLK_ACTIVE_U32) |
        (MC_ME_SAFE_CLK_ACTIVE_U32) |
        (MC_ME_TEST_CLK_GATED_U32)
    ),

    /* ME_RUN_PC5: Run Config Mode5 : McuRunConfig5. */
    (
        (MC_ME_RUN3_CLK_ACTIVE_U32) |
        (MC_ME_RUN2_CLK_ACTIVE_U32) |
        (MC_ME_RUN1_CLK_ACTIVE_U32) |
        (MC_ME_RUN0_CLK_ACTIVE_U32) |
        (MC_ME_DRUN_CLK_ACTIVE_U32) |
        (MC_ME_SAFE_CLK_ACTIVE_U32) |
        (MC_ME_TEST_CLK_GATED_U32)
    ),

    /* ME_RUN_PC6: Run Config Mode6 : McuRunConfig6. */
    (
        (MC_ME_RUN3_CLK_ACTIVE_U32) |
        (MC_ME_RUN2_CLK_ACTIVE_U32) |
        (MC_ME_RUN1_CLK_ACTIVE_U32) |
        (MC_ME_RUN0_CLK_ACTIVE_U32) |
        (MC_ME_DRUN_CLK_ACTIVE_U32) |
        (MC_ME_SAFE_CLK_ACTIVE_U32) |
        (MC_ME_TEST_CLK_GATED_U32)
    ),

    /* ME_RUN_PC7: Run Config Mode7 : McuRunConfig7. */
    (
        (MC_ME_RUN3_CLK_ACTIVE_U32) |
        (MC_ME_RUN2_CLK_ACTIVE_U32) |
        (MC_ME_RUN1_CLK_ACTIVE_U32) |
        (MC_ME_RUN0_CLK_ACTIVE_U32) |
        (MC_ME_DRUN_CLK_ACTIVE_U32) |
        (MC_ME_SAFE_CLK_ACTIVE_U32) |
        (MC_ME_TEST_CLK_GATED_U32)
    ),

    /* ME_LP_PC0: Low Power Mode 0. */
    (
        (MC_ME_STOP0_CLK_GATED_U32) |
        (MC_ME_HALT0_CLK_GATED_U32)
    ),

    /* ME_LP_PC1: Low Power Mode 1. */
    (
        (MC_ME_STOP0_CLK_GATED_U32) |
        (MC_ME_HALT0_CLK_GATED_U32)
    ),

    /* ME_LP_PC2: Low Power Mode 2. */
    (
        (MC_ME_STOP0_CLK_GATED_U32) |
        (MC_ME_HALT0_CLK_GATED_U32)
    ),

    /* ME_LP_PC3: Low Power Mode 3. */
    (
        (MC_ME_STOP0_CLK_GATED_U32) |
        (MC_ME_HALT0_CLK_GATED_U32)
    ),

    /* ME_LP_PC4: Low Power Mode 4. */
    (
        (MC_ME_STOP0_CLK_GATED_U32) |
        (MC_ME_HALT0_CLK_GATED_U32)
    ),

    /* ME_LP_PC5: Low Power Mode 5. */
    (
        (MC_ME_STOP0_CLK_GATED_U32) |
        (MC_ME_HALT0_CLK_GATED_U32)
    ),

    /* ME_LP_PC6: Low Power Mode 6. */
    (
        (MC_ME_STOP0_CLK_GATED_U32) |
        (MC_ME_HALT0_CLK_GATED_U32)
    ),

    /* ME_LP_PC7: Low Power Mode 7. */
    (
        (MC_ME_STOP0_CLK_GATED_U32) |
        (MC_ME_HALT0_CLK_GATED_U32)
    ),

    MCU_MC_ME_NUMBER_OF_PCTL_REGS,
    &MC_ME_aPCTLConfigPC0,

    /* Modes Enabled according to ME_ME details. RUN0/DRUN/SAFE/RESET/RESET_DEST are always ON. Configuration of ME_ME register. */
    MC_ME_ME_ENABLE
    (
        (MC_ME_STOP0_MODE_EN_U32) |
        (MC_ME_HALT0_MODE_EN_U32) |
        (MC_ME_RUN3_MODE_EN_U32) |
        (MC_ME_RUN2_MODE_EN_U32) |
        (MC_ME_RUN1_MODE_EN_U32) |
        (MC_ME_TEST_MODE_DIS_U32)
    ),

    /* Enable Mode Transition Interrupts: Configure the ME_IM Register. */
    MC_ME_INT_ENABLE
    ( 
        (MC_ME_TRANSITION_MODE_INT_DIS_U32) |
        (MC_ME_SAFE_MODE_INT_DIS_U32) |
        (MC_ME_INVALID_MODE_INT_DIS_U32) |
        (MC_ME_INVALID_MODE_CFG_INT_DIS_U32) |
        (MC_ME_INVALID_MODE_CLK_INT_DIS_U32) |
        (MC_ME_INVALID_MODE_CPU_INT_DIS_U32)
    ),
    
    /* configuration of CADDRs */
    MCU_MC_ME_NUMBER_OF_CORES,
    &MC_ME_CADDR_ConfigPC0,
    
    /* configuration of CCTLs */
    MCU_MC_ME_NUMBER_OF_CORES,
    &MC_ME_CCTL_ConfigPC0
};





/**
* @brief            Platform FLASH hw IP configuration.
* @details          Configure prefetch mechanism, buffers, access protection.
*                   Configuration set by calling Mcu_Init API.
*/
static CONST( Mcu_FLASH_ConfigType, MCU_CONST) FLASH_ConfigPC0 =
{
    /* Platform Flash Configuration Register 1 (PFCR1). */
    MCU_FLASH_PFCR1_U32
    (
        MCU_FLASH_P0_MASTER15_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER14_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER13_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER12_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER11_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER10_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER9_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER8_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER7_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER6_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER5_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER4_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER3_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER2_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER1_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_MASTER0_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_DATA_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_INSTR_PREFETCH_DIS_U32 |
        MCU_FLASH_P0_PFLIM_U32( (uint32)0U ) |
        MCU_FLASH_P0_BUFFER_EN_U32
    ),
    
    /* Platform Flash Configuration Register 2 (PFCR2). */
    MCU_FLASH_PFCR2_U32
    (
        MCU_FLASH_P1_MASTER15_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER14_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER13_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER12_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER11_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER10_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER9_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER8_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER7_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER6_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER5_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER4_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER3_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER2_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER1_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_MASTER0_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_DATA_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_INSTR_PREFETCH_DIS_U32 |
        MCU_FLASH_P1_PFLIM_U32( (uint32)0U ) |
        MCU_FLASH_P1_BUFFER_EN_U32
    ),

    /* Platform Flash Configuration Register 3 (PFCR3). */
    MCU_FLASH_PFCR3_U32
    (
        MCU_FLASH_P0_WCFG_U32( (uint32)0U ) |
        MCU_FLASH_P1_WCFG_U32( (uint32)0U ) |
        MCU_FLASH_BDRM_DIS_U32 |
        MCU_FLASH_BAF_EN_U32 |
        MCU_FLASH_ARBM_WCFG_U32( (uint32)0U ) |
        MCU_FLASH_DERR_SUP_DIS_U32
    ),
    
    /* Platform Flash Access Protection Register (PFAPR). */
    MCU_FLASH_PFAPR_U32
    (
        MCU_FLASH_M0AP_U32( (uint32)3U ) |
        MCU_FLASH_M1AP_U32( (uint32)3U ) |
        MCU_FLASH_M2AP_U32( (uint32)3U ) |
        MCU_FLASH_M3AP_U32( (uint32)3U ) |
        MCU_FLASH_M4AP_U32( (uint32)3U ) |
        MCU_FLASH_M5AP_U32( (uint32)3U ) |
        MCU_FLASH_M6AP_U32( (uint32)3U ) |
        MCU_FLASH_M7AP_U32( (uint32)3U ) |
        MCU_FLASH_M8AP_U32( (uint32)3U ) |
        MCU_FLASH_M9AP_U32( (uint32)3U ) |
        MCU_FLASH_M10AP_U32( (uint32)3U ) |
        MCU_FLASH_M11AP_U32( (uint32)3U ) |
        MCU_FLASH_M12AP_U32( (uint32)3U ) |
        MCU_FLASH_M13AP_U32( (uint32)3U ) |
        MCU_FLASH_M14AP_U32( (uint32)3U ) |
        MCU_FLASH_M15AP_U32( (uint32)3U )
    )
};
        




/**
* @brief          Initialization data for MC_PCU/PMU hw IP.
* @details        Static configuration realized at statup by calling Mcu_Init() API.
*
*/
static CONST( Mcu_MC_PCU_ConfigType, MCU_CONST) MC_PCU_ConfigPC0 =
{
    /* LVD HVD Interrupt Enable Control Register (PMC_LVD_HVD_INTR_ENB) */
    PMC_LVD_HVD_INTR_ENB_CONFIG_U32
    ( 
        PMC_LVD_HVD_INTR_ENB_PMC_DIS_U32 |
        PMC_LVD_HVD_INTR_ENB_LVD_PMC_DIS_U32 |
        PMC_LVD_HVD_INTR_ENB_LVD_SAR_ADC_DIS_U32 |
        PMC_LVD_HVD_INTR_ENB_LVD_IO_DIS_U32 |
        PMC_LVD_HVD_INTR_ENB_HVD_FLASH_DIS_U32 |
        PMC_LVD_HVD_INTR_ENB_LVD_FLASH_DIS_U32 |
        PMC_LVD_HVD_INTR_ENB_HVD_HV_DIS_U32 |
        PMC_LVD_HVD_INTR_ENB_HVD_CORE_DIS_U32 |
        PMC_LVD_HVD_INTR_ENB_LVD_CORE_HOT_DIS_U32 |
        PMC_LVD_HVD_INTR_ENB_LVD_CORE_COLD_DIS_U32
    ),
    
    /* Temperature Sensor Interrupt Enable Register (PMC_TS_IER) */
    PMC_TS_IER_CONFIG_U32
    (
        PMC_IER_TS_EN_DIS_U32 |
        PMC_IER_TS1_2IE_DIS_U32 |
        PMC_IER_TS1_0IE_DIS_U32 |
        PMC_IER_TS0_2IE_DIS_U32 |
        PMC_IER_TS0_0IE_DIS_U32
    ),
    
    /* Reset Enable Control Register (PMC_REE) */
    PMC_REE_CONFIG_U32
    (
        PMC_REE_LVD_SAR_ADC_DIS_U32 |
        PMC_REE_HVD_FLASH_DIS_U32 |
        PMC_REE_HVD_HV_DIS_U32 |
        PMC_REE_HVD_CORE_DIS_U32 |
        PMC_REE_LVD_CORE_COLD_DIS_U32
    ),
    
    /* Reset Type ( Destructive / Functional) Selection Register (PMC_RES) */
    PMC_RES_CONFIG_U32
    (
        PMC_RES_LVD_SAR_ADC_DIS_U32 |
        PMC_RES_HVD_FLASH_DIS_U32 |
        PMC_RES_HVD_HV_DIS_U32 |
        PMC_RES_HVD_CORE_DIS_U32 |
        PMC_RES_LVD_CORE_COLD_DIS_U32
    ),

    /* Temperature Reset Event Enable register (PMC_REE_TD) */
    PMC_REE_TD_CONFIG_U32
    (
        PMC_REE_TEMP1_2_DIS_U32 |
        PMC_REE_TEMP1_0_DIS_U32 |
        PMC_REE_TEMP0_2_DIS_U32 |
        PMC_REE_TEMP0_0_DIS_U32
    ),
    
    /* Temperature Reset Event Selection register (PMC_RES_TD) */
    PMC_RES_TD_CONFIG_U32
    (
        PMC_RES_TEMP1_2_DIS_U32 |
        PMC_RES_TEMP1_0_DIS_U32 |
        PMC_RES_TEMP0_2_DIS_U32 |
        PMC_RES_TEMP0_0_DIS_U32
    ),
    
    /* Temperature detector configuration register (PMC_CTL_TD) */
    PMC_CTL_TD_CONFIG_U32
    (
        PMC_CTL_TD_TS1_DOUT_ENA_U32 |
        PMC_CTL_TD_TS0_DOUT_ENA_U32
    )
};
        




/**
* @brief          Initialization data for different hw IPs.
* @details        Static configuration realized at statup by calling Mcu_Init() API.
*
*/
static CONST( Mcu_HwIPsConfigType, MCU_CONST) Mcu_HwIPs_ConfigPC0 =
{
    /* Configuration for MC_ME (Mode Entry Module) hardware IP. */
    &MC_ME_ConfigPC0,

    /* Configuration for MC_RGM (Reset Generation Module) hardware IP. */
    &MC_RGM_ConfigPC0,

    /* Configuration for MC_PCU/PMU (Power Management Unit) hardware IP, part of PCU. */
    &MC_PCU_ConfigPC0,

    /* Configuration for FLASH (Flash Memory) hardware IP. */
    &FLASH_ConfigPC0
};





/**
* @brief          Initialization data for the MCU driver.
* @details        A pointer to such a structure is provided to the MCU initialization routines for configuration.
*
*/
/** @violates @ref Mcu_Cfg_c_REF_7 MISRA 2004 Required Rule 8.10, external linkage ... */
CONST(Mcu_ConfigType, MCU_CONST) Mcu_Config_PC = 
{
#if (MCU_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
    /* Pointer to DEM error reporting configurations. */
    &Mcu_Dem_ConfigPC0,
#endif

    /* Number of RAM Sections configurations. */
    (Mcu_RamSectionType)1U,

    /* Number of Power Modes configurations. */
    (Mcu_ModeType)1U,

#if (MCU_INIT_CLOCK == STD_ON)
    /* Number of Clock Setting configurations. */
    (Mcu_ClockType)1U,
#endif /* (MCU_INIT_CLOCK == STD_ON) */

    /* Pointer to RAM Section configurations. */
    &Mcu_aRamConfigPC0,

    /* Pointer to Power Mode configurations. */
    &Mcu_aModeConfigPC0,

#if (MCU_INIT_CLOCK == STD_ON)
    /* Pointer to Clock configurations. */
    &Mcu_aClockConfigPC0,
#endif /* (MCU_INIT_CLOCK == STD_ON) */

    /* Pointer to Low Level Mcu driver configuration. */
    &Mcu_HwIPs_ConfigPC0
};



#endif /* (MCU_PRECOMPILE_SUPPORT == STD_ON) */

#define MCU_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref Mcu_Cfg_c_REF_1 MISRA 2004 Required Rule 19.15, Repeated include file
* @violates @ref Mcu_Cfg_c_REF_2 MISRA 2004 Advisory Rule 19.1, only preprocessor 
* statements and comments before '#include'
*/
#include "MemMap.h"

/*==================================================================================================
                                   LOCAL FUNCTION PROTOTYPES
==================================================================================================*/


/*==================================================================================================
                                       LOCAL FUNCTIONS
==================================================================================================*/


/*==================================================================================================
                                       GLOBAL FUNCTIONS
==================================================================================================*/

#ifdef __cplusplus
}
#endif

/** @} */

