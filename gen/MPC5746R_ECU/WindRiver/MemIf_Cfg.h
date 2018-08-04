/**\file
 *
 * \brief Generated Source File for MemIf
 *
 * This file describes the public interface of the pre-compile configuration.
 *
 * \b Application:        MemIf \n
 * \b Target:             see MemIf.h for details \n
 * \b Compiler:           see MemIf.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             MemIf \n
 * \b Generator:          VSTAR MemIf V8.2.1-Build413 \n
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
#ifndef MEMIF_CFG_H
#define MEMIF_CFG_H

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/


/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/
#define MEMIF_CFG_SW_MAJOR_VERSION (8U)
#define MEMIF_CFG_SW_MINOR_VERSION (2U)
#define MEMIF_CFG_SW_PATCH_VERSION (1U)


/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

/**
 * Compile Switch to enable/disable the development error detection and reporting
 */
#define MEMIF_DEV_ERROR_DETECT     (STD_OFF) /* [MemIf007] */


/**
 * Number of underlying memory abstraction modules/devices. Max range 1..255.
 */
#define MEMIF_NUMBER_OF_DEVICES (1U)

/**
 * Pre-processor switch to enable/disable the API to read out modules version info 
 */
#define MEMIF_VERSION_INFO_API     (STD_ON )

/**
 * Parameter to Check if the Version Check for the Foreign module should be allowed.
 */
#define MEMIF_VERSION_CHECK_FOREIGN_MODULE     (STD_ON)


/* EXPORTED DEFINE MACROS (#, ##) --------------------------------------------*/

#endif /* MEMIF_CFG_H */
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
 * EXPORTED FUNCTIONS PROTOTYPES
\*============================================================================*/


/*============================================================================*\
 * EXPORTED FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/



/***************************************************************************/
/* Public pre-compile CRC32 hash value for link time and post build checks */
/***************************************************************************/
#define MEMIF_PC_HASH_VALUE (0xFF740318UL)

/* END OF FILE -------------------------------------------------------------- */

