/**\file
 *
 * \brief Generated Source File for NvM
 *
 * This file describes the configuration for NvM module
 *
 * \b Application:        NvM \n
 * \b Target:             see NvM.h for details \n
 * \b Compiler:           see NvM.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             NvM \n
 * \b Generator:          VSTAR NvM V8.2.0-Build513 \n
 *
 *      NOTE! This file is generated. Do not edit!
 *
 * \b Changeable-by-user: No \n
 * \b Delivery-File:      No \n
 * \n
 * \b Module-Owner:       Mentor Graphics \n
 * \b Web:                https://supportnet.mentor.com/ \n
 * \n
 */

/******************************************************************************
 *
 *              Copyright 2017 Mentor Graphics Corporation
 *                        All rights reserved
 *
 *  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS
 *  THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS
 *  SUBJECT TO LICENSE TERMS.
 *
 *
 ******************************************************************************/
#ifndef NVM_CFG_H
#define NVM_CFG_H

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/


/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/


/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
/* Version number of the vendor specific implementation of the module  */
#define NVM_CFG_SW_MAJOR_VERSION (8U)
#define NVM_CFG_SW_MINOR_VERSION (2U)
#define NVM_CFG_SW_PATCH_VERSION (0U)


/**
 * Development error enable/disable preprocessor switch
 * [DD-NVM00028-MGC01-V1]
 */
#define NVM_DEV_ERROR_DETECT           (STD_OFF)

#define NVM_421_FEATURES_ENABLE           (STD_ON)


/**
 * API Configuration CLASS 1 provides functions:
 * NvM_Init(), NvM_CancelWriteAll(), NvM_WriteAll(), NvM_ReadAll(), 
 * NvM_SetRamBlockStatus() and NvM_GetErrorStatus().
 * [DD-NVM00149-MGC03-V1] [DD-NVM00365-MGC01-V1]
 */
#define NVM_API_CONFIG_CLASS_1         (0)
/**
 * API Configuration CLASS 2 provides All functions from API Configuration CLASS 1
 * and additionally: NvM_SetDataIndex(), NvM_GetDataIndex(), NvM_ReadBlock(),
 * NvM_WriteBlock() and NvM_RestoreBlockDefaults() 
 * [DD-NVM00149-MGC02-V1]
 */
#define NVM_API_CONFIG_CLASS_2         (1)
/**
 * API Configuration CLASS 3 provdies All functions from API Configuration CLASS 1
 * and CLASS 2 and additionally: NvM_SetBlockProtection(), NvM_EraseNvBlock() and
 * NvM_InvalidateNvBlock() 
 * [DD-NVM00149-MGC01-V1]
 */
#define NVM_API_CONFIG_CLASS_3         (2)
/**
 * Preprocessor switch to enable some API calls which are related to NVM API
 * configuration classes.
 */
/* [DD-NVM00149-MGC01-V1] [DD-NVM00560-MGC01-V1] */
#define NVM_API_CONFIG_CLASS   (NVM_API_CONFIG_CLASS_3) /* [DD-NVM00150-MGC01-V1] */

/**
 * Preprocessor switch to enable job prioritization handling.
 */
/* [DD-NVM00032-MGC01-V1] [DD-NVM00564-MGC01-V1] */
 #define NVM_JOB_PRIORITIZATION         (STD_OFF)

/**
 * Preprocessor switch to enable the version info API
 */
#define NVM_VERSION_INFO_API           (STD_ON)

/**
 * API NvM_SetRamBlockStatus() enable/disable switch
 */
#define NVM_SET_RAM_BLOCK_STATUS_API   (STD_ON) /* [DD-NVM00408-MGC01-V1] */

/**
 * Preprocessor switch to enable/disable the polling mode in the 
 * NVRAM Manager and at the same time disable/enable the callback functions
 * useable by lower layers
 */
#define NVM_POLLING_MODE           (STD_OFF)

/**
 * This parameter enables or disables the version check for included 
 * headers of other modules.
 */
#define NVM_VERSION_CHECK_FOREIGN_MODULE           (STD_OFF)

/**
 * Defines the number of queue entries for the immediate priority job queue.
 * If NVM_JOB_PRIORITIZATION is switched OFF this parameter is out of scope.
 */
 #define NVM_SIZE_IMMEDIATE_JOB_QUEUE   (1U) /* [DD-NVM00378-MGC01-V1] */

/**
 * Defines the number of queue entries for the standard job queue.
 */
 #define NVM_SIZE_STANDARD_JOB_QUEUE   (5U) /* [DD-NVM00378-MGC01-V1] */

/**
 * Block ID number used for selection of administrative block 0 and 1
 * NVM_BLOCK_0 -> Reserved area - Error/status of multiple block operations.
 * NVM_BLOCK_1 -> Reserved area - Configuration ID.
 */
#define NVM_BLOCK_0        ((NvM_BlockIdType)0U)
#define NVM_BLOCK_1        ((NvM_BlockIdType)1U)
/* EXPORTED DEFINE MACROS (#, ##) --------------------------------------------*/


/*============================================================================*\
 * EXPORTED TYPEDEF DECLARATIONS
\*============================================================================*/

/* ENUMS ---------------------------------------------------------------------*/


/* STRUCTS -------------------------------------------------------------------*/


/* UNIONS --------------------------------------------------------------------*/


/* OTHER TYPEDEFS ------------------------------------------------------------*/


/*============================================================================*\
 * EXPORTED OBJECT DECLARATIONS
\*============================================================================*/

/*============================================================================*\
 * EXPORTED FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/

/***************************************************************************/
/* Public pre-compile CRC32 hash value for link time and post build checks */
/***************************************************************************/
#define NVM_PC_HASH_VALUE (0xD1831E28UL)


#endif   /* NVM_CFG_H */
/* END OF FILE -------------------------------------------------------------- */
