/**
*   @file CDD_Mcl_Cfg.h
*   @version 1.0.2
*
*   @brief   AUTOSAR Mcl - contains the configuration data of the MCL driver
*   @details Contains the configuration data of the MCL driver
*
*   @addtogroup MCL_MODULE
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


#ifndef CDD_MCL_CFG_H
#define CDD_MCL_CFG_H

#ifdef __cplusplus
extern "C"{
#endif 
/**
* @page misra_violations MISRA-C:2004 violations
*
* @section Mcl_Cfg_h_REF_1
*          Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken in order to prevent the
*          contents of a header file being included twice
*          This is not a violation since all header files are protected against multiple inclusions
*
* @section [global]
*          Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
*          on the significance of more than 31 characters. The used compilers use more than 31 chars 
*          for identifiers.
*
* @section [global]
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure
* that 31 character significance and case sensitivity are supported for external identifiers.
* The defines are validated.
*
* @section Mcl_Cfg_h_REF_3
*          Violates MISRA 2004 Required Rule 19.4, C macros shall only expand to a braced initialiser, 
*          a constant, a parenthesised expression, a type qualifier, a storage class specifier, or a
*          do-while-zero construct. 
*          This is used to abstract the export of configuration sets or for a function define.
*
*/

/*==================================================================================================
                                         INCLUDE FILES
 1) system and project includes
 2) needed interfaces from external units
 3) internal and external interfaces from this unit
==================================================================================================*/
/*
* @violates @ref Mcl_Cfg_h_REF_1 MISRA 2004 Required Rule 19.15 precautions to prevent the
*            contents of a header file being included twice
*/
#include "Mcl_EnvCfg.h"
#include "Mcal.h"

    
    
/*==================================================================================================
                               SOURCE FILE VERSION INFORMATION
==================================================================================================*/
#define MCL_VENDOR_ID_CFG                       43

#define MCL_AR_RELEASE_MAJOR_VERSION_CFG        4
#define MCL_AR_RELEASE_MINOR_VERSION_CFG        0
#define MCL_AR_RELEASE_REVISION_VERSION_CFG     3

#define MCL_SW_MAJOR_VERSION_CFG                1
#define MCL_SW_MINOR_VERSION_CFG                0
#define MCL_SW_PATCH_VERSION_CFG                2
/*==================================================================================================
                                      FILE VERSION CHECKS
==================================================================================================*/

#ifndef DISABLE_MCAL_INTERMODULE_ASR_CHECK
    #if ((MCL_AR_RELEASE_MAJOR_VERSION_CFG != MCAL_AR_RELEASE_MAJOR_VERSION) || \
        (MCL_AR_RELEASE_MINOR_VERSION_CFG != MCAL_AR_RELEASE_MINOR_VERSION))
        #error "AutoSar Version Numbers of CDD_Mcl_Cfg.h and Mcal.h are different"
    #endif
#endif

/* Check if header file and Dem.h file are of the same Autosar version */

#if (MCL_VENDOR_ID_CFG != MCL_ENVCFG_VENDOR_ID)
    #error "CDD_Mcl_Cfg.h and Mcl_EnvCfg.h have different vendor ids"
#endif
/* Check if current file and Mcl_CfgEnv header file are of the same Autosar version */
#if (( MCL_AR_RELEASE_MAJOR_VERSION_CFG != MCL_ENVCFG_AR_RELEASE_MAJOR_VERSION) || \
     ( MCL_AR_RELEASE_MINOR_VERSION_CFG != MCL_ENVCFG_AR_RELEASE_MINOR_VERSION) || \
     ( MCL_AR_RELEASE_REVISION_VERSION_CFG !=  MCL_ENVCFG_AR_RELEASE_REVISION_VERSION))
     #error "AutoSar Version Numbers of CDD_Mcl_Cfg.h and Mcl_EnvCfg.h are different"
#endif
/* Check if current file and Mcl_CfgEnv header file are of the same software version */
#if ((MCL_SW_MAJOR_VERSION_CFG != MCL_ENVCFG_SW_MAJOR_VERSION) || \
     (MCL_SW_MINOR_VERSION_CFG != MCL_ENVCFG_SW_MINOR_VERSION) || \
     (MCL_SW_PATCH_VERSION_CFG != MCL_ENVCFG_SW_PATCH_VERSION))
     #error "Software Version Numbers of CDD_Mcl_Cfg.h and Mcl_EnvCfg.h are different"
#endif

/*==================================================================================================
                                           CONSTANTS
==================================================================================================*/


/*==================================================================================================
                                       DEFINES AND MACROS
==================================================================================================*/
    

#define MCL_PRECOMPILE_SUPPORT (STD_OFF)

/**
*   @brief  Switches the Development Error Detection and Notification on or off.
*        STD_ON: Enabled. STD_OFF: Disabled.
*   
*/
#define MCL_DEV_ERROR_DETECT                  (STD_OFF)

/**
* @{
*   @brief Configuration of Optional API's
*/
/**
*   @brief  Adds or removes the service Mcl_GetVersionInfo() from the code.
*        STD_ON: Mcl_GetVersionInfo() can be used. STD_OFF: Mcl_GetVersionInfo() can not be used.
*   
*/
#define MCL_GET_VERSION_INFO_API              (STD_ON)

/**
* @{
*   @brief Configuration of Optional API's
*/
/**
*   @brief  Adds or removes the service Mcl_DeInit() from the code.
*        STD_ON: Mcl_DeInit() can be used. STD_OFF: Mcl_DeInit() can not be used.
*   
*/
#define MCL_DEINIT_API                        (STD_OFF)

/**
*   @brief   Switches DMA features initialization on or off.
*        STD_ON: Enabled. STD_OFF: Disabled.
*
*/
#define MCL_ENABLE_DMA              (STD_ON)



/**
*   @brief   Switches the Crossbar support on or off.
*        STD_ON: Enabled. STD_OFF: Disabled.
*
*/
#define MCL_CROSSBAR_NUM_INSTANCES        (0x2U)

#define MCL_ENABLE_CROSSBAR              (STD_OFF)  

#define MCL_CROSSBAR_PRS_READONLY        (STD_OFF)

#define MCL_CROSSBAR0_PRS_RESET_VALUE_U32     (0x00001324U)   

#define MCL_CROSSBAR0_CRS_RESET_VALUE_U32     (0x001F0000U) 

#define MCL_CROSSBAR1_PRS_RESET_VALUE_U32     (0x00002100U)   

#define MCL_CROSSBAR1_CRS_RESET_VALUE_U32     (0x000E0000U) 

#define MCL_AXBS_ENABLE_INIT_MGPCR        (STD_ON)

 
/**
* @brief      This define specifies enable or disable initialization of DCHMID register in DMA
*
*/
#define MCL_DMA_ENABLE_INIT_DCHMID (STD_ON) 
/**
* @brief      This define specifies the number of eDma Channels available for one eDma instance
*
*/
#define MCL_DMA_NB_CHANNELS                      (0x40U)
/**
* @brief      This define specifies the number of eDma instances
*
*/
#define MCL_DMA_NB_CONTROLLERS                   (0x1U)
/**
* @brief      This define specifies the number of eDma Mux instances
*
*/
#define MCL_DMAMUX_NB_MODULES                    (0x4U)

/**
* @brief      This define specifies the access to registers of dmamux is Little Endian or not
*
*/
#define MCL_DMAMUX_CHCFG_LITTLE_ENDIAN        (STD_OFF)

/**
* @brief      The defines bellow specify the DMAMUX sources
*
*/
        
/** @brief DMA Channel Sources for DmaMux Instance 0 */
#define MCL_DMA_MUX_0_SAR_ADC_0 (1U)
#define MCL_DMA_MUX_0_BCTU_2 (2U)
#define MCL_DMA_MUX_0_ADC_SD_0_EOC (3U)
#define MCL_DMA_MUX_0_DECFIL_0_DRAIN_BUF (4U)
#define MCL_DMA_MUX_0_DECFIL_0_FILL_BUF (5U)
#define MCL_DMA_MUX_0_DSPI_0_CMD (6U)
#define MCL_DMA_MUX_0_DSPI_0_RX (7U)
#define MCL_DMA_MUX_0_DSPI_0_TX (8U)
#define MCL_DMA_MUX_0_LINFlex_0_RX (9U)
#define MCL_DMA_MUX_0_LINFlex_0_TX (10U)
#define MCL_DMA_MUX_0_SIUL2_REQ0 (11U)
#define MCL_DMA_MUX_0_SIUL2_REQ1 (12U)
#define MCL_DMA_MUX_0_SIUL2_REQ6 (13U)
#define MCL_DMA_MUX_0_eMIOS_0_CH8 (15U)
#define MCL_DMA_MUX_0_eMIOS_0_CH9 (16U)
#define MCL_DMA_MUX_0_eMIOS_0_CH10 (17U)
#define MCL_DMA_MUX_0_eMIOS_0_CH11 (18U)
#define MCL_DMA_MUX_0_eMIOS_0_CH12 (19U)
#define MCL_DMA_MUX_0_eTPU2_A_CH0 (20U)
#define MCL_DMA_MUX_0_eTPU2_A_CH1 (21U)
#define MCL_DMA_MUX_0_eTPU2_A_CH2 (22U)
#define MCL_DMA_MUX_0_eTPU2_A_CH3 (23U)
#define MCL_DMA_MUX_0_eTPU2_A_CH4 (24U)
#define MCL_DMA_MUX_0_eTPU2_A_CH15 (25U)
#define MCL_DMA_MUX_0_eTPU2_A_CH16 (26U)
#define MCL_DMA_MUX_0_eTPU2_A_CH17 (27U)
#define MCL_DMA_MUX_0_eTPU2_A_CH18 (28U)
#define MCL_DMA_MUX_0_eTPU2_A_CH19 (29U)
#define MCL_DMA_MUX_0_eTPU2_A_CH30 (30U)
#define MCL_DMA_MUX_0_eTPU2_A_CH31 (31U)
#define MCL_DMA_MUX_0_eTPU2_B_CH0 (32U)
#define MCL_DMA_MUX_0_eTPU2_B_CH1 (33U)
#define MCL_DMA_MUX_0_eTPU2_B_CH2 (34U)
#define MCL_DMA_MUX_0_eTPU2_B_CH13 (35U)
#define MCL_DMA_MUX_0_eTPU2_B_CH14 (36U)
#define MCL_DMA_MUX_0_eTPU2_B_CH15 (37U)
#define MCL_DMA_MUX_0_eTPU2_B_CH16 (38U)
#define MCL_DMA_MUX_0_eTPU2_B_CH17 (39U)
#define MCL_DMA_MUX_0_eTPU2_B_CH28 (40U)
#define MCL_DMA_MUX_0_eTPU2_B_CH29 (41U)
#define MCL_DMA_MUX_0_eTPU2_B_CH30 (42U)
#define MCL_DMA_MUX_0_eTPU2_B_CH31 (43U)
#define MCL_DMA_MUX_0_SAR_ADC_2 (44U)
#define MCL_DMA_MUX_0_DSPI_2_CMD (45U)
#define MCL_DMA_MUX_0_DSPI_2_RX (46U)
#define MCL_DMA_MUX_0_DSPI_2_TX (47U)
#define MCL_DMA_MUX_0_SIUL2_REQ4 (48U)
#define MCL_DMA_MUX_0_FlexCAN_0 (49U)
#define MCL_DMA_MUX_0_Reaction_Module_RCH0 (50U)
#define MCL_DMA_MUX_0_Reaction_Module_RCH3 (51U)
#define MCL_DMA_MUX_0_Reaction_Module_RCH6 (52U)
#define MCL_DMA_MUX_0_Reaction_Module_RCH7 (53U)
#define MCL_DMA_MUX_0_ALWAYS_ON_62 (62U)
#define MCL_DMA_MUX_0_ALWAYS_ON_63 (63U)
#define MCL_DMA_MUX_0_NOT_USED (64U)
        
/** @brief DMA Channel Sources for DmaMux Instance 1 */
#define MCL_DMA_MUX_1_SAR_ADC_2 (1U)
#define MCL_DMA_MUX_1_BCTU_1 (2U)
#define MCL_DMA_MUX_1_BCTU_3 (3U)
#define MCL_DMA_MUX_1_DSPI_2_CMD (4U)
#define MCL_DMA_MUX_1_DSPI_2_RX (5U)
#define MCL_DMA_MUX_1_DSPI_2_TX (6U)
#define MCL_DMA_MUX_1_DSPI_M0_CMD (7U)
#define MCL_DMA_MUX_1_DSPI_M0_RX (8U)
#define MCL_DMA_MUX_1_DSPI_M0_TX (9U)
#define MCL_DMA_MUX_1_LINFlex_M0_RX (10U)
#define MCL_DMA_MUX_1_LINFlex_M0_TX (11U)
#define MCL_DMA_MUX_1_SIUL2_REQ2 (12U)
#define MCL_DMA_MUX_1_SIUL2_REQ3 (13U)
#define MCL_DMA_MUX_1_SIUL2_REQ7 (14U)
#define MCL_DMA_MUX_1_FlexCAN_2 (15U)
#define MCL_DMA_MUX_1_eMIOS_0_CH13 (16U)
#define MCL_DMA_MUX_1_eMIOS_0_CH14 (17U)
#define MCL_DMA_MUX_1_eMIOS_0_CH15 (18U)
#define MCL_DMA_MUX_1_eMIOS_0_CH16 (19U)
#define MCL_DMA_MUX_1_eMIOS_0_CH17 (20U)
#define MCL_DMA_MUX_1_eTPU2_A_CH5 (21U)
#define MCL_DMA_MUX_1_eTPU2_A_CH6 (22U)
#define MCL_DMA_MUX_1_eTPU2_A_CH7 (23U)
#define MCL_DMA_MUX_1_eTPU2_A_CH8 (24U)
#define MCL_DMA_MUX_1_eTPU2_A_CH9 (25U)
#define MCL_DMA_MUX_1_eTPU2_A_CH20 (26U)
#define MCL_DMA_MUX_1_eTPU2_A_CH21 (27U)
#define MCL_DMA_MUX_1_eTPU2_A_CH22 (28U)
#define MCL_DMA_MUX_1_eTPU2_A_CH23 (29U)
#define MCL_DMA_MUX_1_eTPU2_A_CH24 (30U)
#define MCL_DMA_MUX_1_eTPU2_B_CH3 (31U)
#define MCL_DMA_MUX_1_eTPU2_B_CH4 (32U)
#define MCL_DMA_MUX_1_eTPU2_B_CH5 (33U)
#define MCL_DMA_MUX_1_eTPU2_B_CH6 (34U)
#define MCL_DMA_MUX_1_eTPU2_B_CH7 (35U)
#define MCL_DMA_MUX_1_eTPU2_B_CH18 (36U)
#define MCL_DMA_MUX_1_eTPU2_B_CH19 (37U)
#define MCL_DMA_MUX_1_eTPU2_B_CH20 (38U)
#define MCL_DMA_MUX_1_eTPU2_B_CH21 (39U)
#define MCL_DMA_MUX_1_eTPU2_B_CH22 (40U)
#define MCL_DMA_MUX_1_BCTU_0 (41U)
#define MCL_DMA_MUX_1_ADC_SD_0_EOC (42U)
#define MCL_DMA_MUX_1_LINFlex_0_RX (43U)
#define MCL_DMA_MUX_1_LINFlex_0_TX (44U)
#define MCL_DMA_MUX_1_LINFlex_2_RX (45U)
#define MCL_DMA_MUX_1_LINFlex_2_TX (46U)
#define MCL_DMA_MUX_1_SENT_0_RX_FAST (47U)
#define MCL_DMA_MUX_1_SENT_0_RX_SLOW (48U)
#define MCL_DMA_MUX_1_eTPU2_B_CH0 (49U)
#define MCL_DMA_MUX_1_eTPU2_B_CH1 (50U)
#define MCL_DMA_MUX_1_eTPU2_B_CH2 (51U)
#define MCL_DMA_MUX_1_Reaction_Module_RCH1 (52U)
#define MCL_DMA_MUX_1_Reaction_Module_RCH4 (53U)
#define MCL_DMA_MUX_1_ALWAYS_ON_63 (63U)
#define MCL_DMA_MUX_1_NOT_USED (64U)
        
/** @brief DMA Channel Sources for DmaMux Instance 2 */
#define MCL_DMA_MUX_2_BCTU_0 (1U)
#define MCL_DMA_MUX_2_ADC_SD_2_EOC (2U)
#define MCL_DMA_MUX_2_DECFIL_1_DRAIN_BUF (3U)
#define MCL_DMA_MUX_2_DECFIL_1_FILL_BUF (4U)
#define MCL_DMA_MUX_2_DSPI_4_CMD (5U)
#define MCL_DMA_MUX_2_DSPI_4_RX (6U)
#define MCL_DMA_MUX_2_DSPI_4_Tx (7U)
#define MCL_DMA_MUX_2_LINFlex_2_RX (8U)
#define MCL_DMA_MUX_2_LINFlex_2_TX (9U)
#define MCL_DMA_MUX_2_SENT_0_RX_FAST (10U)
#define MCL_DMA_MUX_2_SENT_0_RX_SLOW (11U)
#define MCL_DMA_MUX_2_SIUL2_REQ4 (12U)
#define MCL_DMA_MUX_2_SIUL2_REQ5 (13U)
#define MCL_DMA_MUX_2_FlexCAN_0 (14U)
#define MCL_DMA_MUX_2_eMIOS_0_CH18 (15U)
#define MCL_DMA_MUX_2_eMIOS_0_CH19 (16U)
#define MCL_DMA_MUX_2_eMIOS_0_CH20 (17U)
#define MCL_DMA_MUX_2_eMIOS_0_CH21 (18U)
#define MCL_DMA_MUX_2_eMIOS_0_CH22 (19U)
#define MCL_DMA_MUX_2_eMIOS_0_CH23 (20U)
#define MCL_DMA_MUX_2_eTPU2_A_CH10 (21U)
#define MCL_DMA_MUX_2_eTPU2_A_CH11 (22U)
#define MCL_DMA_MUX_2_eTPU2_A_CH12 (23U)
#define MCL_DMA_MUX_2_eTPU2_A_CH13 (24U)
#define MCL_DMA_MUX_2_eTPU2_A_CH14 (25U)
#define MCL_DMA_MUX_2_eTPU2_A_CH25 (26U)
#define MCL_DMA_MUX_2_eTPU2_A_CH26 (27U)
#define MCL_DMA_MUX_2_eTPU2_A_CH27 (28U)
#define MCL_DMA_MUX_2_eTPU2_A_CH28 (29U)
#define MCL_DMA_MUX_2_eTPU2_A_CH29 (30U)
#define MCL_DMA_MUX_2_eTPU2_B_CH8 (31U)
#define MCL_DMA_MUX_2_eTPU2_B_CH9 (32U)
#define MCL_DMA_MUX_2_eTPU2_B_CH10 (33U)
#define MCL_DMA_MUX_2_eTPU2_B_CH11 (34U)
#define MCL_DMA_MUX_2_eTPU2_B_CH12 (35U)
#define MCL_DMA_MUX_2_eTPU2_B_CH23 (36U)
#define MCL_DMA_MUX_2_eTPU2_B_CH24 (37U)
#define MCL_DMA_MUX_2_eTPU2_B_CH25 (38U)
#define MCL_DMA_MUX_2_eTPU2_B_CH26 (39U)
#define MCL_DMA_MUX_2_eTPU2_B_CH27 (40U)
#define MCL_DMA_MUX_2_SAR_ADC_0 (41U)
#define MCL_DMA_MUX_2_BCTU_1 (42U)
#define MCL_DMA_MUX_2_DSPI_0_CMD (43U)
#define MCL_DMA_MUX_2_DSPI_0_RX (44U)
#define MCL_DMA_MUX_2_DSPI_0_TX (45U)
#define MCL_DMA_MUX_2_SIUL2_REQ0 (46U)
#define MCL_DMA_MUX_2_eTPU2_A_CH0 (47U)
#define MCL_DMA_MUX_2_eTPU2_A_CH1 (48U)
#define MCL_DMA_MUX_2_eTPU2_A_CH2 (49U)
#define MCL_DMA_MUX_2_Reaction_Module_RCH2 (50U)
#define MCL_DMA_MUX_2_Reaction_Module_RCH5 (51U)
#define MCL_DMA_MUX_2_Reaction_Module_RCH8 (52U)
#define MCL_DMA_MUX_2_Reaction_Module_RCH9 (53U)
#define MCL_DMA_MUX_2_ALWAYS_ON_63 (63U)
#define MCL_DMA_MUX_2_NOT_USED (64U)
        
/** @brief DMA Channel Sources for DmaMux Instance 3 */
#define MCL_DMA_MUX_3_SAR_ADC_1 (1U)
#define MCL_DMA_MUX_3_SAR_ADC_3 (2U)
#define MCL_DMA_MUX_3_ADC_SD_1_EOC (3U)
#define MCL_DMA_MUX_3_DSPI_1_CMD (4U)
#define MCL_DMA_MUX_3_DSPI_1_RX (5U)
#define MCL_DMA_MUX_3_DSPI_1_TX (6U)
#define MCL_DMA_MUX_3_DSPI_3_CMD (7U)
#define MCL_DMA_MUX_3_DSPI_3_RX (8U)
#define MCL_DMA_MUX_3_DSPI_3_TX (9U)
#define MCL_DMA_MUX_3_DSPI_M1_CMD (10U)
#define MCL_DMA_MUX_3_DSPI_M1_RX (11U)
#define MCL_DMA_MUX_3_DSPI_M1_TX (12U)
#define MCL_DMA_MUX_3_LINFlex_1_RX (13U)
#define MCL_DMA_MUX_3_LINFlex_1_TX (14U)
#define MCL_DMA_MUX_3_LINFlex_3_RX (15U)
#define MCL_DMA_MUX_3_LINFlex_3_TX (16U)
#define MCL_DMA_MUX_3_LINFlex_M1_RX (17U)
#define MCL_DMA_MUX_3_LINFlex_M1_TX (18U)
#define MCL_DMA_MUX_3_SENT_1_RX_FAST (19U)
#define MCL_DMA_MUX_3_SENT_1_RX_SLOW (20U)
#define MCL_DMA_MUX_3_SIPI_CH0 (21U)
#define MCL_DMA_MUX_3_SIPI_CH1 (22U)
#define MCL_DMA_MUX_3_SIPI_CH2 (23U)
#define MCL_DMA_MUX_3_SIPI_CH3 (24U)
#define MCL_DMA_MUX_3_FlexCAN_1 (25U)
#define MCL_DMA_MUX_3_FlexCAN_3 (26U)
#define MCL_DMA_MUX_3_eMIOS_1_CH8 (27U)
#define MCL_DMA_MUX_3_eMIOS_1_CH9 (28U)
#define MCL_DMA_MUX_3_eMIOS_1_CH10 (29U)
#define MCL_DMA_MUX_3_eMIOS_1_CH11 (30U)
#define MCL_DMA_MUX_3_eMIOS_1_CH12 (31U)
#define MCL_DMA_MUX_3_eMIOS_1_CH13 (32U)
#define MCL_DMA_MUX_3_eMIOS_1_CH14 (33U)
#define MCL_DMA_MUX_3_eMIOS_1_CH15 (34U)
#define MCL_DMA_MUX_3_eMIOS_1_CH16 (35U)
#define MCL_DMA_MUX_3_eMIOS_1_CH17 (36U)
#define MCL_DMA_MUX_3_eMIOS_1_CH18 (37U)
#define MCL_DMA_MUX_3_eMIOS_1_CH19 (38U)
#define MCL_DMA_MUX_3_eMIOS_1_CH20 (39U)
#define MCL_DMA_MUX_3_eMIOS_1_CH21 (40U)
#define MCL_DMA_MUX_3_eMIOS_1_CH22 (41U)
#define MCL_DMA_MUX_3_eMIOS_1_CH23 (42U)
#define MCL_DMA_MUX_3_NOT_USED (64U)

/**
* @{
*   @brief Configuration of Optional API's
*/
/**
*   @brief  Adds or removes the service Mcl_DmaGetChannelErrorStatus() from the code.
*        STD_ON: Mcl_DmaGetChannelErrorStatusApi() can be used. STD_OFF: Mcl_DmaGetChannelErrorStatusApi() can not be used.
*   
*/
#define MCL_DMA_GET_CH_ERR_STATUS_API            (STD_OFF)

/**
*   @brief  Adds or removes the service Mcl_DmaGetGlobalErrorStatusApi() from the code.
*        STD_ON: Mcl_DmaGetGlobalErrorStatusApi() can be used. STD_OFF: Mcl_DmaGetGlobalErrorStatusApi() can not be used.
*   
*/
#define MCL_DMA_GET_GLOBAL_ERR_STATUS_API            (STD_OFF)

/**
* @brief      This define specifies the number of eTimer channels available
*             on the current platform
*
*/
#define MCL_EDMA_CHANNELS_NO            (64U)

/**
* @brief      This define specifies the number of eTimer channels in a group of channels available
*             on the current platform
*
*/
#define MCL_EDMA_CHANNELS_IN_GROUP            (16U)

/**
* @brief      This define specifies the number of eTimer channels in a group of channels available
*             on the current platform
*
*/
#define MCL_DMA_ERROR_INTERRUPTS_USED            (STD_ON)

/**
* @brief      This define specifies if there is only one transfer completion ISR for all DMA channels within a DMA instance
*             or if there is a transfer completion ISR for each channel
*
*/
#define MCL_DMA_COMBINED_TR_COMPLETION_ISR (STD_OFF)

/**
* @brief      This define specifies if there is only one error ISR for all DMA instances
*             or if there is an error ISR for each DMA instance
*
*/
#define MCL_DMA_COMBINED_ERROR_ISR (STD_OFF)
/**
* @brief      This define specifies if there is Ecc error reporting available          
*
*/
#define MCL_DMA_ECC_REPORTING_ENABLED (STD_ON)

/** 
* @brief  Switch to globaly enable/disable the production error reporting.
*/
#define MCL_DISABLE_DEM_REPORT_ERROR_STATUS  (STD_ON)


#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 
#define MCL_DMA_CH_0_ISR_USED 

/**
* @brief      This define specifies if there is only one transfer completion ISR for a DMA channel within a DMA instance
*             or if there is a transfer completion ISR for each channel
*
*/
#define MCL_DMA_TR_SEPARATED_ISR (STD_ON)

/**
* @brief      This define specifies if inside a DMA instance some channels have the same transfer completion ISR assigned,
*             and other channels have their own transfer completion ISR.
*
*/
#define MCL_DMA_TR_COMPLETION_MIXED_ISR (STD_OFF)

/** Define to specify if least one transfer completion interrupt and notification is used, 
*      needed for removing at precompile time the code for ISR handling for the transfer 
*      completion notification processing. This define is needed in both combined transfer
*      completion interrupt and single channel mode. */
#define MCL_DMA_NOTIFICATION_SUPPORTED              (STD_ON)

/* Transfer size options available */
#define MCL_TRANSFER_SIZE_1_BYTE 
#define MCL_TRANSFER_SIZE_2_BYTE 
#define MCL_TRANSFER_SIZE_4_BYTE 
#define MCL_TRANSFER_SIZE_16_BYTE 
#define MCL_TRANSFER_SIZE_32_BYTE 



/**
* @brief            Support for User mode.
*                   STD_ON: the Mcl driver can be executed from both supervisor and user mode. 
*                   STD_OFF: the Mcl driver can be executed only from supervisor mode. 
*/
#define MCL_ENABLE_USER_MODE_SUPPORT     (STD_OFF)



/** @brief Declaration of config sets for PB configuration */

#if (MCL_PRECOMPILE_SUPPORT == STD_OFF )
 /* @violates @ref Mcl_Cfg_h_REF_3 MISRA 2004 Required Rule 19.4 C macros shall only expand to...
 */  
    #define MCL_INIT_CONFIG_PB_DEFINES \
    extern CONST(Mcl_ConfigType, MCL_CONST) MclConfigSet;


#endif /* MCL_PRECOMPILE_SUPPORT */

/*==================================================================================================
                                             ENUMS
==================================================================================================*/
#if (MCL_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
/**
* @brief            DEM error reporting configuration.
* @details          This structure contains information DEM error reporting
*/
typedef struct
{
    VAR( Mcal_DemErrorType, MCL_VAR) Mcl_E_Dma_Bus;
    VAR( Mcal_DemErrorType, MCL_VAR) Mcl_E_Dma_Descriptor;
    VAR( Mcal_DemErrorType, MCL_VAR) Mcl_E_Dma_Ecc;
    VAR( Mcal_DemErrorType, MCL_VAR) Mcl_E_Dma_Priority;
    VAR( Mcal_DemErrorType, MCL_VAR) Mcl_E_Dma_Unrecognized;
    VAR( Mcal_DemErrorType, MCL_VAR) Mcl_E_Dma_Inconsistency;
} Mcl_DemConfigType;


#endif


/*==================================================================================================
                                 STRUCTURES AND OTHER TYPEDEFS
==================================================================================================*/


/*==================================================================================================
*                                GLOBAL VARIABLE DECLARATIONS
==================================================================================================*/

/*==================================================================================================
                                     FUNCTION PROTOTYPES
==================================================================================================*/



#ifdef __cplusplus
}
#endif

#endif    /* CDD_MCL_CFG_H */
/**@}*/


