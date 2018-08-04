/**\file
 *
 * \brief Generated Source File for Ea
 *
 * This file describes the  the configuration for Eeprom Abstraction module
 *
 * \b Application:        Ea \n
 * \b Target:             see Ea.h for details \n
 * \b Compiler:           see Ea.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Ea \n
 * \b Generator:          VSTAR Ea V7.2.0-Build418 \n
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
#ifndef EA_CFG_H
#define EA_CFG_H

/*============================================================================*\
 *PREPROCESSOR DIRECTIVES
\*============================================================================*/
/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/


/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/


#include "MemIf_Types.h"
#include "NvM_Cbk.h" 
#include "Eep_31_AT25256B.h"


#define EA_CFG_SW_MAJOR_VERSION (7U)
#define EA_CFG_SW_MINOR_VERSION (2U)
#define EA_CFG_SW_PATCH_VERSION (0U)

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/


/**
 * This parameter enables or disables the version check for included 
 * headers of other modules.
 */
#define EA_VERSION_CHECK_FOREIGN_MODULE        (STD_OFF) 

/** 
*  Preprocesor switch to enable/disable development error detection 
 *\b Requirements -->
* \b reqtrace{DSAR-SDD-EA-29-1}{EA039, EA118}
*/ 
#define EA_DEV_ERROR_DETECT      (STD_OFF) 
 
/**
* Specifies the InstanceId of this module instance                         
*/ 
#define EA_INDEX          ((uint8)1)

/** 
*  Pre-processor switch to enable/disable the API to read out the modules 
*  version information.
* \b Requirements --> 
* \b reqtrace{DSAR-SDD-EA-32-1}{EA124, EA039}
*/
#define EA_VERSION_INFO_API      (STD_ON) 
 
/**
*  Pre-processor switch to enable/disable the polling mode for this module  
* \b Requirements -->
* \b reqtrace{DSAR-SDD-EA-35-1}{EA123, EA039} 
*/ 
#define EA_POLLING_MODE      (STD_OFF) 
 
/**
*  Pre-processor switch to enable/disable the set mode support for this module  
* \Requirements -->
*/ 
#define EA_SET_MODE_SUPPORTED      (STD_ON) 
 
/* Total number of configured EA blocks*/
 
#define EA_TOTAL_BLOCK_NUMBERS         ((uint16)3U)

/*
* Preprocessor switch to enable/Disable the functionality required to handle the limitation of Erase/Write cycle
* STD_ON- Erase/Write cycle limitation handling functionality disabled.Because none of the block requires Write Cycle 
* greater than allowed Eeprom Write cycle
* STD_OFF - Erase/Write cycle limitation handling functionality enabled.Because one or more requires Write Cycle greater
* than allowed Eep Write cycle
*/
#define EA_OPT_SINGLE_BLOCK     (STD_ON)

/** 
*  Number of underlying EEPROM modules/devices.
*/
#define EA_NUMBER_OF_EEP_DEVICES     ((uint8)1U)

/** 
*  Virtual block size depending on the underlying EEPROM modules/device.
*/
#define EA_VIRTUAL_PAGE_SIZE     ((uint16)64U)

/*============================================================================*\
 * EXPORTED TYPEDEF DECLARATIONS
\*============================================================================*/

/* STRUCTS -------------------------------------------------------------------*/

/* OTHER TYPEDEFS ------------------------------------------------------------*/

/*============================================================================*\
 * EXPORTED OBJECT DECLARATIONS
\*============================================================================*/

/***************************************************************************/
/* Public pre-compile CRC32 hash value for link time and post build checks */
/***************************************************************************/
#define EA_PC_HASH_VALUE (0xA03BE7B8UL)

#endif /* _EA_CFG_H */ 

/* END OF FILE -------------------------------------------------------------- */
