/*====================================================================================================
*   @file    Spi_Lcfg.c
*   @implements Spi_LCfg.c_Artifact
*   @version 1.0.2
*
*   @brief   AUTOSAR Spi - Link-Time(L) configuration file code template.
*   @details Code template for Link-Time(L) configuration file generation.
*
*   @addtogroup [SPI_MODULE]
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : DSPI
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

#ifdef __cplusplus
extern "C"
{
#endif

/**
* @page misra_violations MISRA-C:2004 violations
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely
* on the significance of more than 31 characters.
*
* @section Spi_Lcfg_c_REF_1
* Violates MISRA 2004 Advisory Rule 19.1,
* #include statements in a file should only be preceded by other preprocessor directives or comments.
* AUTOSAR imposes the specification of the sections in which certain parts of the driver must be placed.
*
* @section Spi_Lcfg_c_REF_2
* Violates MISRA 2004 Required Rule 19.15,
* Precautions shall be taken in order to prevent the contents of a header file being included twice.
* This comes from the order of includes in the .c file and from include dependencies. As a safe
* approach, any file must include all its dependencies. Header files are already protected against
* double inclusions. The inclusion of MemMap.h is as per Autosar requirement MEMMAP003.
*
* @section Spi_Lcfg_c_REF_3
* Violates MISRA 2004 Required Rule 1.4,
* The compiler/linker shall be checked to ensure that 31 character signifiance and case sensitivity are
* supported for external identifiers.
* This violation is due to the requirement that requests to have a file version check.
*
* @section Spi_Lcfg_c_REF_4
* Violates MISRA 2004 Required Rule 8.10, All declarations and definitions of objects or functions
* at file scope shall
* have internal linkage unless external linkage is required.
* State variables may be used by LLD layer.
*
*/


/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/


#include "Spi.h"
#include "Reg_eSys_DSPI.h"

#if (SPI_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#include "Dem.h"
#endif /* SPI_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF */

#if (SPI_CONFIG_VARIANT == SPI_VARIANT_LINKTIME)

/*==================================================================================================
*                                      LOCAL MACROS
==================================================================================================*/

/*
* @violates @ref Spi_Lcfg_c_REF_3 The compiler/linker shall be checked to ensure that 31 character
* signifiance and case sensitivity are supported for external identifiers.
*/
#define SPI_MODULE_ID_LTCFG_C                            83
#define SPI_VENDOR_ID_LTCFG_C                            43
/*
* @violates @ref Spi_Lcfg_c_REF_3 The compiler/linker shall be checked to ensure that 31 character
* signifiance and case sensitivity are supported for external identifiers.
*/
#define SPI_AR_RELEASE_MAJOR_VERSION_LTCFG_C             4
/*
* @violates @ref Spi_Lcfg_c_REF_3 The compiler/linker shall be checked to ensure that 31 character
* signifiance and case sensitivity are supported for external identifiers.
*/
#define SPI_AR_RELEASE_MINOR_VERSION_LTCFG_C             0
/*
* @violates @ref Spi_Lcfg_c_REF_3 The compiler/linker shall be checked to ensure that 31 character
* signifiance and case sensitivity are supported for external identifiers.
*/
#define SPI_AR_RELEASE_REVISION_VERSION_LTCFG_C          3
#define SPI_SW_MAJOR_VERSION_LTCFG_C                     1
#define SPI_SW_MINOR_VERSION_LTCFG_C                     0
#define SPI_SW_PATCH_VERSION_LTCFG_C                     2

/*==================================================================================================
                                      FILE VERSION CHECKS
==================================================================================================*/


/* Check if current file and SPI header file are of the same vendor */
#if (SPI_VENDOR_ID_LTCFG_C != SPI_VENDOR_ID)
    #error "Spi_LCfg.c and Spi.h have different vendor ids"
#endif
/* Check if current file and SPI header file are of the same Autosar version */
#if ((SPI_AR_RELEASE_MAJOR_VERSION_LTCFG_C    != SPI_AR_RELEASE_MAJOR_VERSION) || \
     (SPI_AR_RELEASE_MINOR_VERSION_LTCFG_C    != SPI_AR_RELEASE_MINOR_VERSION) || \
     (SPI_AR_RELEASE_REVISION_VERSION_LTCFG_C != SPI_AR_RELEASE_REVISION_VERSION))
    #error "AutoSar Version Numbers of Spi_LCfg.c and Spi.h are different"
#endif
/* Check if current file and SPI header file are of the same Software version */
#if ((SPI_SW_MAJOR_VERSION_LTCFG_C != SPI_SW_MAJOR_VERSION) || \
     (SPI_SW_MINOR_VERSION_LTCFG_C != SPI_SW_MINOR_VERSION) || \
     (SPI_SW_PATCH_VERSION_LTCFG_C != SPI_SW_PATCH_VERSION))
    #error "Software Version Numbers of Spi_LCfg.c and Spi.h are different"
#endif

/* Check if current file and Reg_eSys_DSPI.h file are of the same vendor */
#if (SPI_VENDOR_ID_LTCFG_C != SPI_VENDOR_ID_REGFLEX)
    #error "Spi_LCfg.c and Reg_eSys_DSPI.h have different vendor ids"
#endif
/* Check if current file and Reg_eSys_DSPI.h file are of the same Autosar version */
#if ((SPI_AR_RELEASE_MAJOR_VERSION_LTCFG_C    != SPI_AR_RELEASE_MAJOR_VERSION_REGFLEX) || \
     (SPI_AR_RELEASE_MINOR_VERSION_LTCFG_C    != SPI_AR_RELEASE_MINOR_VERSION_REGFLEX) || \
     (SPI_AR_RELEASE_REVISION_VERSION_LTCFG_C != SPI_AR_RELEASE_REVISION_VERSION_REGFLEX))
    #error "AutoSar Version Numbers of Spi_LCfg.c and Reg_eSys_DSPI.h are different"
#endif
/* Check if current file and Reg_eSys_DSPI.h file are of the same Software version */
#if ((SPI_SW_MAJOR_VERSION_LTCFG_C != SPI_SW_MAJOR_VERSION_REGFLEX) || \
     (SPI_SW_MINOR_VERSION_LTCFG_C != SPI_SW_MINOR_VERSION_REGFLEX) || \
     (SPI_SW_PATCH_VERSION_LTCFG_C != SPI_SW_PATCH_VERSION_REGFLEX))
    #error "Software Version Numbers of Spi_LCfg.c and Reg_eSys_DSPI.h are different"
#endif
#ifndef DISABLE_MCAL_INTERMODULE_ASR_CHECK
#if (SPI_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
/* Check if current file and Dem.h file are of the same Autosar version */
#if ((SPI_AR_RELEASE_MAJOR_VERSION_LTCFG_C    != DEM_AR_RELEASE_MAJOR_VERSION) || \
     (SPI_AR_RELEASE_MINOR_VERSION_LTCFG_C    != DEM_AR_RELEASE_MINOR_VERSION))
    #error "AutoSar Version Numbers of Spi_LCfg.c and Dem.h are different"
#endif
#endif /* SPI_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF */
#endif


/*==================================================================================================
*                         LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
==================================================================================================*/


/*==================================================================================================
*                                       LOCAL MACROS
==================================================================================================*/


/*==================================================================================================
*                                  LOCAL FUNCTION PROTOTYPES
==================================================================================================*/


/*==================================================================================================
*                                      LOCAL FUNCTIONS
==================================================================================================*/

/*==================================================================================================
*                                      GLOBAL FUNCTIONS
==================================================================================================*/
#define SPI_START_SEC_CODE
/*
* @violates @ref Spi_Lcfg_c_REF_1 #include statements in a file should only be preceded
*        by other preprocessor directives or comments.
* @violates @ref Spi_Lcfg_c_REF_2 Precautions shall be taken in order to prevent the contents
*        of a header file being included twice.
*/
#include "MemMap.h"



extern void Eep_SpiReadSeqEndNotification(void); /* End Notification for Sequence 'SpiSequence_EEP_READ' */
extern void Eep_SpiWriteSeqEndNotification(void); /* End Notification for Sequence 'SpiSequence_EEP_WRITE' */
extern void Eep_SpiReadStatusRegSeqEndNotification(void); /* End Notification for Sequence 'SpiSequence_EEP_READSTATUS' */


#define SPI_STOP_SEC_CODE
/*
* @violates @ref Spi_Lcfg_c_REF_1 #include statements in a file should only be preceded
*        by other preprocessor directives or comments.
* @violates @ref Spi_Lcfg_c_REF_2 Precautions shall be taken in order to prevent the contents
*        of a header file being included twice.
*/
#include "MemMap.h"

/*==================================================================================================
*                                      GLOBAL VARIABLES
==================================================================================================*/

/*==================================================================================================
*                                      LOCAL VARIABLES
==================================================================================================*/

#if ((SPI_DMA_USED == STD_ON) && \
    ((SPI_LEVEL_DELIVERED == LEVEL1) || (SPI_LEVEL_DELIVERED == LEVEL2))) 
    /*
    * @violates @ref Spi_Lcfg_c_REF_3 The compiler/linker shall be checked to ensure that 31 character 
    * signifiance and case sensitivity are supported for external identifiers.
    */    
    #define SPI_START_SEC_VAR_NO_INIT_UNSPECIFIED_NO_CACHEABLE
#else
    #define SPI_START_SEC_VAR_NO_INIT_UNSPECIFIED
#endif /* ((SPI_DMA_USED == STD_ON) && ((SPI_LEVEL_DELIVERED == LEVEL1) ||
        (SPI_LEVEL_DELIVERED == LEVEL2))) */

/*
* @violates @ref Spi_Lcfg_c_REF_1 #include statements in a file should only be preceded
*        by other preprocessor directives or comments.
* @violates @ref Spi_Lcfg_c_REF_2 Precautions shall be taken in order to prevent the contents
*        of a header file being included twice.
*/
#include "MemMap.h"



/*  Buffers Descriptors for EB Channels (if any) */
VAR_ALIGN(static VAR(Spi_BufferDescriptorType, SPI_VAR) Buffer_LTSpiChannel, 2)
VAR_ALIGN(static VAR(Spi_BufferDescriptorType, SPI_VAR) Buffer_LTSpiChannel_CANA_TJA1145, 2)
static VAR(Spi_BufferDescriptorType, SPI_VAR) Buffer_LTSpiChannel_EEP_CommandAddress;
static VAR(Spi_BufferDescriptorType, SPI_VAR) Buffer_LTSpiChannel_EEP_Data;
static VAR(Spi_BufferDescriptorType, SPI_VAR) Buffer_LTSpiChannel_EEP_LatchCommand;
static VAR(Spi_BufferDescriptorType, SPI_VAR) Buffer_LTSpiChannel_EEP_StatusReg;


#if ((SPI_DMA_USED == STD_ON) && \
    ((SPI_LEVEL_DELIVERED == LEVEL1) || (SPI_LEVEL_DELIVERED == LEVEL2)))
    /*
    * @violates @ref Spi_Lcfg_c_REF_3 The compiler/linker shall be checked to ensure that 31 character 
    * signifiance and case sensitivity are supported for external identifiers.
    */    
    #define SPI_STOP_SEC_VAR_NO_INIT_UNSPECIFIED_NO_CACHEABLE
#else
    #define SPI_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
#endif /* ((SPI_DMA_USED == STD_ON) && ((SPI_LEVEL_DELIVERED == LEVEL1) ||
        (SPI_LEVEL_DELIVERED == LEVEL2))) */

/*
* @violates @ref Spi_Lcfg_c_REF_1 #include statements in a file should only be preceded
*        by other preprocessor directives or comments.
* @violates @ref Spi_Lcfg_c_REF_2 Precautions shall be taken in order to prevent the contents
*        of a header file being included twice.
*/
#include "MemMap.h"

#define SPI_START_SEC_VAR_INIT_UNSPECIFIED
/*
* @violates @ref Spi_Lcfg_c_REF_1 #include statements in a file should only be preceded
*        by other preprocessor directives or comments.
* @violates @ref Spi_Lcfg_c_REF_2 Precautions shall be taken in order to prevent the contents
*        of a header file being included twice.
*/
#include "MemMap.h"



/*  Buffers Descriptors for IB Channels (if any) */


#define SPI_STOP_SEC_VAR_INIT_UNSPECIFIED
/*
* @violates @ref Spi_Lcfg_c_REF_1 #include statements in a file should only be preceded
*        by other preprocessor directives or comments.
* @violates @ref Spi_Lcfg_c_REF_2 Precautions shall be taken in order to prevent the contents
*        of a header file being included twice.
*/
#include "MemMap.h"
/*==================================================================================================
*                                      LOCAL CONSTANTS
==================================================================================================*/
#define SPI_START_SEC_CONFIG_DATA_UNSPECIFIED
/*
* @violates @ref Spi_Lcfg_c_REF_1 #include statements in a file should only be preceded
*        by other preprocessor directives or comments.
* @violates @ref Spi_Lcfg_c_REF_2 Precautions shall be taken in order to prevent the contents
*        of a header file being included twice.
*/
#include "MemMap.h"



/* SpiChannelConfig_LT Channel Configuration of SpiDriver*/
static CONST(Spi_ChannelConfigType, SPI_CONST) SpiChannelConfig_LT[6] =
{
    {
        /* SpiChannel*/
        EB,
        (Spi_DataType)1U,
        10U,
        &Buffer_LTSpiChannel,
        &Spi_aSpiChannelState[0]
    },

    {
        /* SpiChannel_CANA_TJA1145*/
        EB,
        (Spi_DataType)1U,
        10U,
        &Buffer_LTSpiChannel_CANA_TJA1145,
        &Spi_aSpiChannelState[1]
    },

    {
        /* SpiChannel_EEP_CommandAddress*/
        EB,
        (Spi_DataType)1U,
        3U,
        &Buffer_LTSpiChannel_EEP_CommandAddress,
        &Spi_aSpiChannelState[2]
    },

    {
        /* SpiChannel_EEP_Data*/
        EB,
        (Spi_DataType)1U,
        64U,
        &Buffer_LTSpiChannel_EEP_Data,
        &Spi_aSpiChannelState[3]
    },

    {
        /* SpiChannel_EEP_LatchCommand*/
        EB,
        (Spi_DataType)1U,
        1U,
        &Buffer_LTSpiChannel_EEP_LatchCommand,
        &Spi_aSpiChannelState[4]
    },

    {
        /* SpiChannel_EEP_StatusReg*/
        EB,
        (Spi_DataType)1U,
        2U,
        &Buffer_LTSpiChannel_EEP_StatusReg,
        &Spi_aSpiChannelState[5]
    }


};



/* Channel to Job Assignment */

static CONST(Spi_ChannelType, SPI_CONST) SpiJob_ChannelAssignment_LT[1] = {SpiConf_SpiChannel_SpiChannel};
static CONST(Spi_ChannelType, SPI_CONST) SpiJob_CANA_TJA1145_ChannelAssignment_LT[1] = {SpiConf_SpiChannel_SpiChannel_CANA_TJA1145};
static CONST(Spi_ChannelType, SPI_CONST) SpiJob_CAND_TJA1145_ChannelAssignment_LT[1] = {SpiConf_SpiChannel_SpiChannel_CANA_TJA1145};
static CONST(Spi_ChannelType, SPI_CONST) SpiJob_EEP_DataJob_ChannelAssignment_LT[2] = {SpiConf_SpiChannel_SpiChannel_EEP_CommandAddress,SpiConf_SpiChannel_SpiChannel_EEP_Data};
static CONST(Spi_ChannelType, SPI_CONST) SpiJob_EEP_CommandJob_ChannelAssignment_LT[1] = {SpiConf_SpiChannel_SpiChannel_EEP_LatchCommand};
static CONST(Spi_ChannelType, SPI_CONST) SpiJob_EEP_ReadStatusReg_ChannelAssignment_LT[1] = {SpiConf_SpiChannel_SpiChannel_EEP_StatusReg};



static CONST(Spi_JobConfigType, SPI_CONST) SpiJobConfig_LT[6] =
{
    {
        /* SpiJob */
        (Spi_ChannelType)1u,
        &SpiJob_ChannelAssignment_LT, /* List of Channels */
        NULL_PTR, /* End Notification */
        NULL_PTR, /* Start Notification */
        (sint8)0, /* Priority */
        &Spi_aSpiJobState[0], /* JobState instance */
        CSIB4, /* HWUnit index */
        DSPI_4_OFFSET, /* DSPI device HW unit offset */
       /* External Device Settings */
                SPI_SpiExternalDevice_SBC, /* External Device */
        {
                                                                        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_LEADING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS0_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */
        }
            },
    {
        /* SpiJob_CANA_TJA1145 */
        (Spi_ChannelType)1u,
        &SpiJob_CANA_TJA1145_ChannelAssignment_LT, /* List of Channels */
        NULL_PTR, /* End Notification */
        NULL_PTR, /* Start Notification */
        (sint8)0, /* Priority */
        &Spi_aSpiJobState[1], /* JobState instance */
        CSIB3, /* HWUnit index */
        DSPI_3_OFFSET, /* DSPI device HW unit offset */
       /* External Device Settings */
                SPI_SpiExternalDevice_CANA_TJA1145, /* External Device */
        {
                                                                        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_LEADING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS5_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */
        }
            },
    {
        /* SpiJob_CAND_TJA1145 */
        (Spi_ChannelType)1u,
        &SpiJob_CAND_TJA1145_ChannelAssignment_LT, /* List of Channels */
        NULL_PTR, /* End Notification */
        NULL_PTR, /* Start Notification */
        (sint8)0, /* Priority */
        &Spi_aSpiJobState[2], /* JobState instance */
        CSIB3, /* HWUnit index */
        DSPI_3_OFFSET, /* DSPI device HW unit offset */
       /* External Device Settings */
                SPI_SpiExternalDevice_CAND_TJA1145, /* External Device */
        {
                                                                        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_LEADING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS2_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */
        }
            },
    {
        /* SpiJob_EEP_CommandJob */
        (Spi_ChannelType)1u,
        &SpiJob_EEP_CommandJob_ChannelAssignment_LT, /* List of Channels */
        NULL_PTR, /* End Notification */
        NULL_PTR, /* Start Notification */
        (sint8)1, /* Priority */
        &Spi_aSpiJobState[3], /* JobState instance */
        CSIB4, /* HWUnit index */
        DSPI_4_OFFSET, /* DSPI device HW unit offset */
       /* External Device Settings */
                SPI_SpiExternalDevice_EEP, /* External Device */
        {
                                                                        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_TRAILING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS2_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */
        }
            },
    {
        /* SpiJob_EEP_DataJob */
        (Spi_ChannelType)2u,
        &SpiJob_EEP_DataJob_ChannelAssignment_LT, /* List of Channels */
        NULL_PTR, /* End Notification */
        NULL_PTR, /* Start Notification */
        (sint8)0, /* Priority */
        &Spi_aSpiJobState[4], /* JobState instance */
        CSIB4, /* HWUnit index */
        DSPI_4_OFFSET, /* DSPI device HW unit offset */
       /* External Device Settings */
                SPI_SpiExternalDevice_EEP, /* External Device */
        {
                                                                        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_TRAILING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS2_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */
        }
            },
    {
        /* SpiJob_EEP_ReadStatusReg */
        (Spi_ChannelType)1u,
        &SpiJob_EEP_ReadStatusReg_ChannelAssignment_LT, /* List of Channels */
        NULL_PTR, /* End Notification */
        NULL_PTR, /* Start Notification */
        (sint8)0, /* Priority */
        &Spi_aSpiJobState[5], /* JobState instance */
        CSIB4, /* HWUnit index */
        DSPI_4_OFFSET, /* DSPI device HW unit offset */
       /* External Device Settings */
                SPI_SpiExternalDevice_EEP, /* External Device */
        {
                                                                        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_TRAILING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS2_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */
        }
            }

};



/* Job to Sequence Assignment */
static CONST(Spi_JobType, SPI_CONST) SpiSequence_SBC_JobAssignment_LT[1] = {SpiConf_SpiJob_SpiJob};
static CONST(Spi_JobType, SPI_CONST) SpiSequence_CANA_TJA1145_JobAssignment_LT[1] = {SpiConf_SpiJob_SpiJob_CANA_TJA1145};
static CONST(Spi_JobType, SPI_CONST) SpiSequence_CAND_TJA1145_JobAssignment_LT[1] = {SpiConf_SpiJob_SpiJob_CAND_TJA1145};
static CONST(Spi_JobType, SPI_CONST) SpiSequence_EEP_READ_JobAssignment_LT[1] = {SpiConf_SpiJob_SpiJob_EEP_DataJob};
static CONST(Spi_JobType, SPI_CONST) SpiSequence_EEP_WRITE_JobAssignment_LT[2] = {SpiConf_SpiJob_SpiJob_EEP_CommandJob,SpiConf_SpiJob_SpiJob_EEP_DataJob};
static CONST(Spi_JobType, SPI_CONST) SpiSequence_EEP_READSTATUS_JobAssignment_LT[1] = {SpiConf_SpiJob_SpiJob_EEP_ReadStatusReg};



static CONST(Spi_SequenceConfigType, SPI_CONST) SpiSequenceConfig_LT[6] =
{
    {  /* SpiSequence_SBC */

        (Spi_JobType)1u,
        &SpiSequence_SBC_JobAssignment_LT, /* List of Jobs */
        NULL_PTR, /* End Notification */
                (uint8)FALSE /* Interruptible */
    },

    {  /* SpiSequence_CANA_TJA1145 */

        (Spi_JobType)1u,
        &SpiSequence_CANA_TJA1145_JobAssignment_LT, /* List of Jobs */
        NULL_PTR, /* End Notification */
                (uint8)FALSE /* Interruptible */
    },

    {  /* SpiSequence_CAND_TJA1145 */

        (Spi_JobType)1u,
        &SpiSequence_CAND_TJA1145_JobAssignment_LT, /* List of Jobs */
        NULL_PTR, /* End Notification */
                (uint8)FALSE /* Interruptible */
    },

    {  /* SpiSequence_EEP_READ */

        (Spi_JobType)1u,
        &SpiSequence_EEP_READ_JobAssignment_LT, /* List of Jobs */
        &Eep_SpiReadSeqEndNotification, /* End Notification */
                (uint8)FALSE /* Interruptible */
    },

    {  /* SpiSequence_EEP_WRITE */

        (Spi_JobType)2u,
        &SpiSequence_EEP_WRITE_JobAssignment_LT, /* List of Jobs */
        &Eep_SpiWriteSeqEndNotification, /* End Notification */
                (uint8)FALSE /* Interruptible */
    },

    {  /* SpiSequence_EEP_READSTATUS */

        (Spi_JobType)1u,
        &SpiSequence_EEP_READSTATUS_JobAssignment_LT, /* List of Jobs */
        &Eep_SpiReadStatusRegSeqEndNotification, /* End Notification */
                (uint8)FALSE /* Interruptible */
    }


};



/* DspiChannelAttributesConfig_LT Channel Attribute Configuration of SpiDriver*/
static CONST(Spi_Ipw_ChannelAttributesConfigType, SPI_CONST) DspiChannelAttributesConfig_LT[6] =
{
    {(uint32)(DSPI_CMD_MSB_U32 | DSPI_CMD_WIDTH_16_U32),SPI_DATA_WIDTH_16}
,

    {(uint32)(DSPI_CMD_MSB_U32 | DSPI_CMD_WIDTH_16_U32),SPI_DATA_WIDTH_16}
,

    {(uint32)(DSPI_CMD_MSB_U32 | DSPI_CMD_WIDTH_8_U32),SPI_DATA_WIDTH_8}
,

    {(uint32)(DSPI_CMD_MSB_U32 | DSPI_CMD_WIDTH_8_U32),SPI_DATA_WIDTH_8}
,

    {(uint32)(DSPI_CMD_MSB_U32 | DSPI_CMD_WIDTH_8_U32),SPI_DATA_WIDTH_8}
,

    {(uint32)(DSPI_CMD_MSB_U32 | DSPI_CMD_WIDTH_8_U32),SPI_DATA_WIDTH_8}



};




/* DspiDeviceAttributesConfig_LT Device Attribute Configuration of SpiDriver*/
static CONST(Spi_Ipw_DeviceAttributesConfigType, SPI_CONST) DspiDeviceAttributesConfig_LT[4] =
{
    {  /* SpiExternalDevice_SBC */
                                                                        
        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_LEADING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS0_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */


    },
    {  /* SpiExternalDevice_CANA_TJA1145 */
                                                                        
        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_LEADING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS5_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */


    },
    {  /* SpiExternalDevice_CAND_TJA1145 */
                                                                        
        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_LEADING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS2_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */


    },
    {  /* SpiExternalDevice_EEP */
                                                                        
        
            (uint32)(DSPI_CTAR_CPOL_LOW_U32 | /* Clock Polarity (Idle State) */
                            DSPI_CTAR_CPHA_TRAILING_U32 | /* Clock Phase */
            DSPI_CTAR_PCSCLK_5_U32 | DSPI_CTAR_SCSCLK_8_U32 | /* TimeCs2Clk: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PASC_5_U32 | DSPI_CTAR_SASC_8_U32 | /* TimeClk2Cs: Should=1000ns, Is=1000, Error=0.0% */
            DSPI_CTAR_PDT_1_U32 | DSPI_CTAR_SDT_256_U32 | /* TimeCs2Cs: Should=6400ns, Is=6400, Error=0.0% */
            DSPI_CTAR_PBR_5_U32 | DSPI_CTAR_SBR_8_U32 | DSPI_CTAR_DBR_0_U32), /* Baudrate: Should=1000000.0, Is=1000000, Error=0.0% */

                (uint32)(DSPI_CMD_PCS2_U32 | /* Chip Select Pin Via Peripheral Engine*/     
                    DSPI_CMD_CONTINOUS_TRUE_U32),/* Continuous chip select */

                    (uint32)0u  /* Chip select polarity */


    }
};




/* SpiAttributesConfig_LT Attribute Configuration of SpiDriver */
static CONST(Spi_AttributesConfigType, SPI_CONST) SpiAttributesConfig_LT = {
    &DspiChannelAttributesConfig_LT,
    &DspiDeviceAttributesConfig_LT
};



/* Array of DSPI Unit configurations */
static CONST(Spi_HWUnitConfigType, SPI_CONST) HWUnitConfig_LT[SPI_MAX_HWUNIT] =
{

    { DSPI_2_OFFSET, (uint8)8u, (uint8)SPI_MASTER , SPI_PHYUNIT_SYNC_U32 },

    { DSPI_0_OFFSET, (uint8)8u, (uint8)SPI_MASTER , SPI_PHYUNIT_SYNC_U32 },

    { DSPI_1_OFFSET, (uint8)8u, (uint8)SPI_MASTER , SPI_PHYUNIT_SYNC_U32 },

    { DSPI_3_OFFSET, (uint8)8u, (uint8)SPI_MASTER , SPI_PHYUNIT_SYNC_U32 },

    { DSPI_4_OFFSET, (uint8)8u, (uint8)SPI_MASTER , SPI_PHYUNIT_ASYNC_U32 }
};




/*==================================================================================================
*                                      GLOBAL CONSTANTS
==================================================================================================*/




/*
* @violates @ref Spi_Lcfg_c_REF_4 All declarations 
* and definitions of objects or functions at file scope shall have internal linkage unless external linkage is required.
*/
/* SpiDriver Configuration */
CONST(Spi_ConfigType, SPI_CONST) SpiDriverConfig_LT =
{
    4u,
    5u,
    5u,
    5u,
    &SpiChannelConfig_LT,
    &SpiJobConfig_LT,
    &SpiSequenceConfig_LT,
    &SpiAttributesConfig_LT,
    &HWUnitConfig_LT
    /**
    * @brief   DEM error parameters
    */
#if (SPI_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
    ,{ (uint32)STD_OFF, (uint32)0U}/* SPI_E_HARDWARE_ERROR parameters*/ 

#endif /* SPI_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF */  


};


#define SPI_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/*
* @violates @ref Spi_Lcfg_c_REF_1 #include statements in a file should only be preceded
*        by other preprocessor directives or comments.
* @violates @ref Spi_Lcfg_c_REF_2 Precautions shall be taken in order to prevent the contents
*        of a header file being included twice.
*/
#include "MemMap.h"


#endif /*(SPI_CONFIG_VARIANT == SPI_VARIANT_LINKTIME)*/

#ifdef __cplusplus
}
#endif

/** @} */

