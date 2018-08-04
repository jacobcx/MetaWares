/**
*   @file    Spi_Cfg.h
*   @implements Spi_Cfg.h_Artifact
*   @version 1.0.2
*
*   @brief   AUTOSAR Spi - Spi configuration header file.
*   @details This file is the header containing all the necessary information for SPI
*            module configuration(s).
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

#ifndef SPI_CFG_H
#define SPI_CFG_H

#ifdef __cplusplus
extern "C"{
#endif

/**
* @page misra_violations MISRA-C:2004 violations
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
* on the significance of more than 31 characters.
*
* @section [global]
* Violates MISRA 2004 Required Rule 20.2, Names of new objects shall be checked in order to
* not cause confusion with standard object names.
*
* @section Spi_Cfg_h_REF_1
* Violates MISRA 2004 Advisory Rule 19.1, #include statements in a file should only be preceded by
* other preprocessor directives or comments.
* AUTOSAR imposes the specification of the sections in which certain parts of the driver must be placed.
*
* @section Spi_Cfg_h_REF_2
* Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken in order to prevent the contents
* of a header file being included twice.
* This comes from the order of includes in the .c file and from include dependencies. As a safe
* approach, any file must include all its dependencies. Header files are already protected against
* double inclusions. The inclusion of MemMap.h is as per Autosar requirement MEMMAP003.
*
* @section Spi_Cfg_h_REF_3
* Violates MISRA 2004 Required Rule 19.4, Precautions shall be taken in order for defines not
* leading to unexpected behaviour when substitution is made.
*
* @section Spi_Cfg_h_REF_4
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall
* be checked to ensure that 31 character signifiance and
* case sensitivity are supported for external identifiers.
* This violation is due to the requirement that requests to have
* a file version check.
*
*/

/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/


/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/

#define SPI_MODULE_ID_CFG                       83
#define SPI_VENDOR_ID_CFG                       43
#define SPI_AR_RELEASE_MAJOR_VERSION_CFG        4
#define SPI_AR_RELEASE_MINOR_VERSION_CFG        0
#define SPI_AR_RELEASE_REVISION_VERSION_CFG     3
#define SPI_SW_MAJOR_VERSION_CFG                1
#define SPI_SW_MINOR_VERSION_CFG                0
#define SPI_SW_PATCH_VERSION_CFG                2

/*==================================================================================================
*                                     FILE VERSION CHECKS
==================================================================================================*/
/*==================================================================================================
*                                          CONSTANTS
==================================================================================================*/
/**
* @brief Switches the Development Error functionality ON or OFF.
* @details Switches the Development Error Detection and Notification ON or OFF.
* @implements SPI_DEV_ERROR_DETECT_define
*/
#define SPI_DEV_ERROR_DETECT           (STD_OFF)

/**
* @brief Switches the Version Information API functionality ON or OFF.
* @details Switches the Spi_GetVersionInfo function ON or OFF.
*/
#define SPI_VERSION_INFO_API           (STD_ON)

/**
* @brief Switches the Interruptible Sequences handling functionality ON or OFF. 
* @details This parameter depends on SPI_LEVEL_DELIVERED value. 
*        It is only used for SPI_LEVEL_DELIVERED configured to 1 or 2.
* @implements SPI_INTERRUPTIBLE_SEQ_ALLOWED_define
*/
#define SPI_INTERRUPTIBLE_SEQ_ALLOWED  (STD_OFF)

/**
* @brief Switches the Spi_GetHWUnitStatus function ON or OFF.
* @details Switches the Spi_GetHWUnitStatus function ON or OFF.
* @implements SPI_HW_STATUS_API_define
*/
#define SPI_HW_STATUS_API          (STD_ON)

/**
* @brief Switches the Spi_Cancel function ON or OFF.
* @details Switches the Spi_Cancel function ON or OFF. (see chapter 8.3.13)
* @implements SPI_CANCEL_API_define
*/
#define SPI_CANCEL_API             (STD_ON)

/* Only Internal Buffers are allowed in Handler Driver.*/
#define USAGE0                          0x00u

/* Only External Buffers are allowed in Handler Driver.*/
#define USAGE1                          0x01u

/* Both Buffer types are allowd in Handler Driver. */
#define USAGE2                          0x02u

/**
* @brief Selects the SPI Handler Driver Channel Buffers usage allowed and delivered.
* @details Selects the SPI Handler Driver Channel Buffers usage allowed and delivered.
*        (see chapter 7.2.1)
* @implements SPI_CHANNEL_BUFFERS_ALLOWED_define
*/
#define SPI_CHANNEL_BUFFERS_ALLOWED    (USAGE2)

/* The LEVEL 0 Simple Synchronous SPI Handler Driver functionalities are selected.*/
#define LEVEL0                          0x00u

/* The LEVEL 1 Basic Asynchronous SPI Handler Driver functionalities are selected.*/
#define LEVEL1                          0x01u

/* The LEVEL 2 Enhanced SPI Handler Driver functionalities are selected. */
#define LEVEL2                          0x02u

/**
* @brief Selects the SPI Handler Driver level of scalable functionality.
* @details Selects the SPI Handler Driver level of scalable functionality that 
* is available and delivered. (see chapter 7.1)
* @implements SPI_LEVEL_DELIVERED_define
*/
#define SPI_LEVEL_DELIVERED            (LEVEL2)

/** 
* @brief            Support for User mode.
*                   STD_ON: the Spi driver can be executed from both supervisor and user mode. 
*                   STD_OFF: the Spi driver can be executed only from supervisor mode. 
*/
#define SPI_ENABLE_USER_MODE_SUPPORT     (STD_OFF)


/**
* @brief Defines the maximum number of supported channels.
* @details Defines the maximum number of supported channels
*     for all the driver configurations.
*/

/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiChannel_SpiChannel    ((Spi_ChannelType)0)

/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiChannel_SpiChannel_CANA_TJA1145    ((Spi_ChannelType)1)

/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiChannel_SpiChannel_EEP_CommandAddress    ((Spi_ChannelType)2)

/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiChannel_SpiChannel_EEP_Data    ((Spi_ChannelType)3)

/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiChannel_SpiChannel_EEP_LatchCommand    ((Spi_ChannelType)4)

/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiChannel_SpiChannel_EEP_StatusReg    ((Spi_ChannelType)5)
#define SPI_MAX_CHANNEL  (6u)

/**
* @brief Total number of Jobs configured.
* @details Defines the maximum number of supported jobs
*     for all the driver configurations.
*/
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiJob_SpiJob   ((Spi_JobType)0)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiJob_SpiJob_CANA_TJA1145   ((Spi_JobType)1)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiJob_SpiJob_CAND_TJA1145   ((Spi_JobType)2)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiJob_SpiJob_EEP_DataJob   ((Spi_JobType)4)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiJob_SpiJob_EEP_CommandJob   ((Spi_JobType)3)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiJob_SpiJob_EEP_ReadStatusReg   ((Spi_JobType)5)
#define SPI_MAX_JOB     (6u)

/**
* @brief Total number of Sequences configured.
* @details Defines the maximum number of supported sequences
*     for all the driver configurations.
*/
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiSequence_SpiSequence_SBC   ((Spi_SequenceType)0)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiSequence_SpiSequence_CANA_TJA1145   ((Spi_SequenceType)1)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiSequence_SpiSequence_CAND_TJA1145   ((Spi_SequenceType)2)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiSequence_SpiSequence_EEP_READ   ((Spi_SequenceType)3)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiSequence_SpiSequence_EEP_WRITE   ((Spi_SequenceType)4)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SpiConf_SpiSequence_SpiSequence_EEP_READSTATUS   ((Spi_SequenceType)5)
#define SPI_MAX_SEQUENCE  (6u)


/**
* @brief Defines the peripherals used throughout the configuration(s).
* @details Defines the peripherals used throughout the configuration(s).
*/
#define CSIB0  ((uint8)0u)
#define CSIB1  ((uint8)1u)
#define CSIB2  ((uint8)2u)
#define CSIB3  ((uint8)3u)
#define CSIB4  ((uint8)4u)
#define SPI_MAX_HWUNIT   (5u)

/**
* @brief Physical HWUnits definition - as from resource manager.
* @details Physical HWUnits definition - as from resource manager.
*/

#define DSPI_2_HWUNIT   (CSIB0)


#define DSPI_0_HWUNIT   (CSIB1)


#define DSPI_1_HWUNIT   (CSIB2)


#define DSPI_3_HWUNIT   (CSIB3)


#define DSPI_4_HWUNIT   (CSIB4)



/**
* @brief Physical HWUnits enabled/disabled
* @details Physical HWUnits enabled/disabled
*/
#define DSPI_0_ENABLED  ((STD_ON))
#define DSPI_1_ENABLED  ((STD_ON))
#define DSPI_2_ENABLED  ((STD_ON))
#define DSPI_3_ENABLED  ((STD_ON))
#define DSPI_4_ENABLED  ((STD_ON))
#define DSPI_M0_ENABLED  ((STD_OFF))
#define DSPI_M1_ENABLED  ((STD_OFF))

#define SPI_SLAVE_SUPPORT  ((STD_OFF))

#define DSPI_0_OFFSET  0u
#define DSPI_1_OFFSET  1u
#define DSPI_2_OFFSET  2u
#define DSPI_3_OFFSET  3u
#define DSPI_4_OFFSET  4u

#define SPI_FIFO_SIZE   ((uint8)4u)

#define SPI_NUMBER_OF_UNITS   ((uint8)7u)

/**
* @brief Defines the external devices the driver will use.
* @details Reference to the external device used by this job.
*/
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SPI_SpiExternalDevice_SBC  ((Spi_ExternalDeviceType)0u)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SPI_SpiExternalDevice_CANA_TJA1145  ((Spi_ExternalDeviceType)1u)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SPI_SpiExternalDevice_CAND_TJA1145  ((Spi_ExternalDeviceType)2u)
/*
* @violates @ref Spi_Cfg_h_REF_4 The compiler/linker shall be checked to
* ensure that 31 character signifiance and case sensitivity are supported for
* external identifiers.
*/
#define SPI_SpiExternalDevice_EEP  ((Spi_ExternalDeviceType)3u)


/**
* @brief   Switches the Production Error Detection and Notification OFF
*
* @implements SPI_DISABLE_DEM_REPORT_ERROR_STATUS_define
* 
*/
#define SPI_DISABLE_DEM_REPORT_ERROR_STATUS   (STD_ON) /* Disable Production Error Detection */


/*==================================================================================================
 *                                     DEFINES AND MACROS
==================================================================================================*/
/**
* @brief Define values for Autosar configuration variants.
* @details Define values for Autosar configuration variants.
*/
#define SPI_VARIANT_PRECOMPILE  (0)
#define SPI_VARIANT_POSTBUILD   (1)
#define SPI_VARIANT_LINKTIME    (2)

/**
* @brief Defines the use of Post-Build(PB) support.
* @details VARIANT-POST-BUILD: Parameters with "Pre-compile time", 
*        "Link time" and "Post-build time" are allowed in this variant.
*/
/* Post-Build(PB) Support. */
/**
* @implements SPI_CONFIG_VARIANT_define
*/
#define SPI_CONFIG_VARIANT      (SPI_VARIANT_POSTBUILD)
/*
* @violates @ref Spi_Cfg_h_REF_3 Precautions shall be taken in order for
* defines not leading to unexpected behaviour when substitution is made.
*/
#define SPI_CFG_EXTERN_DECLARATIONS \
extern CONST(Spi_ConfigType, SPI_CONST) SpiDriver;

/**
* @brief Defines if transfers are made using DMA or FIFO.
* @details Defines if transfers are made using DMA or FIFO.
* @implements SPI_DMA_USED_define
*/
#define SPI_DMA_USED     (STD_OFF)

/**
* @brief Defines if Spi driver optimization for sequences having only one job is activated or not.
* @details Defines if Spi driver optimization for sequences having only one job is activated or not.
*        If activated, additional RAM memory is required for internal data caching.
*/

#define SPI_OPTIMIZE_ONE_JOB_SEQUENCES (STD_OFF)

/**
* @brief Number of CPU clock cycles consumed by a wait loop during the wait for TX/RX transmission to complete one frame in Spi_SyncTransmit().
* @details This value is set to the minimum measure retrieved for GHS, DIAB and CW compilers,
*       with all optimizations activated.
*/
#define SPI_WAIT_LOOP_TICKS       23u

/**
* @brief Defines the "Number of Loops" timeout.
* @details Defines the "Number of Loops" timeout used by Spi_SyncTransmit and Spi_AsyncTransmit
*        function during the wait on TX/RX transmission to complete one frame.
*        One timeout unit means that no TX or RX was executed(the IF statements are returning FALSE).
*/
#define SPI_TIMEOUT_COUNTER       ((uint32)((10000000u) / SPI_WAIT_LOOP_TICKS))

/**
* @brief Allow simultaneous calls to Spi_SyncTransmit() for different threads.
* @details Two concurrent calls to Spi_SyncTransmit() will be allowed only if the related sequences
*       do not share HW units.
*/
#define SPI_SUPPORT_CONCURRENT_SYNC_TRANSMIT    (STD_OFF)

/*==================================================================================================
 *                                           Non AUTOSAR DEFINES
==================================================================================================*/
/**
* @brief If enabled, the asyncronous operation mode (POLLING or INTERRUPT)
* @details If enabled, the asyncronous operation mode (POLLING or INTERRUPT) can
*       be defined independently for each HWUnit using Spi_SetHWUnitAsyncMode().
* @implements SPI_HWUNIT_ASYNC_MODE_define
*/
#define SPI_HWUNIT_ASYNC_MODE  (STD_ON)


/**
* @brief If enabled, allows dual MCU clock configuration settings.
* @details If enabled, allows dual MCU clock configuration settings.
* @implements SPI_DUAL_CLOCK_MODE_define
*/
#define SPI_DUAL_CLOCK_MODE  (STD_OFF)

/**
* @brief   Specifies if TSB implementation is supported
*/
#define TSB_MODE_SUPPORTED

/**
* @brief   Specifies if ITSB implementation is supported
*/
#define ITSB_MODE_SUPPORTED

/**
* @brief   Specifies if TSB feature/mode is available
*/
#define SPI_TSB_MODE (STD_OFF)

/**
* @brief   Specifies if ITSB feature/mode is available
*/
#define SPI_ITSB_MODE (STD_OFF)

/**
* @brief   Specifies if ITSB Time Slot implementation is supported
*/
#define ITSB_TIMESLOT_MODE  (STD_OFF)



/**
* @brief If enabled, allows to configure more than 256 sequences, jobs and channels.
*/
#define SPI_ALLOW_BIGSIZE_COLLECTIONS  (STD_OFF)

/**
* @brief If enabled, SpiDataType is declared as uint8 instead of uint16.
*/
#define SPI_DATA_WIDTH_8  0u
#define SPI_DATA_WIDTH_16 1u

#define SPI_FORCE_DATA_TYPE  (STD_ON)

/**
* @brief If enabled, SPI_MAIN_FUNCTION_PERIOD defines the cycle time of the function Spi_MainFunction_Handling in seconds
*/

#define SPI_MAIN_FUNCTION_PERIOD            (0.01)


/*==================================================================================================
*                                            ENUMS
==================================================================================================*/


/*==================================================================================================
*                               STRUCTURES AND OTHER TYPEDEFS
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

#endif /*SPI_CFG_H*/

/** @} */
