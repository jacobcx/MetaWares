/**\file
 *
 * \brief Generated Source File for MemIf
 *
 * None
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
/*============================================================================*
* PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/
#include "MemIf.h"
/*
* Version controls for MemIf.h file.
*/
#define EXPECTED_SW_MAJOR_VERSION (8U)
#define EXPECTED_SW_MINOR_VERSION (2U)
#define EXPECTED_SW_PATCH_VERSION (1U)

#if ( (MEMIF_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (MEMIF_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (MEMIF_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the MemIf.h file does not match the expected version."
#endif

/*
 * Version controls for "Ea.h" file.
 */
#if (STD_ON == MEMIF_VERSION_CHECK_FOREIGN_MODULE)
#define EXPECTED_EA_AR_RELEASE_MAJOR_VERSION (4)
#define EXPECTED_EA_AR_RELEASE_MINOR_VERSION (2)

#if((EXPECTED_EA_AR_RELEASE_MAJOR_VERSION!=EA_AR_RELEASE_MAJOR_VERSION) \
   || (EXPECTED_EA_AR_RELEASE_MINOR_VERSION!=EA_AR_RELEASE_MINOR_VERSION))
#error "The AUTOSAR version of the "Ea.h"  file does match the expected version"
#endif
#endif

/* LOCAL DEFINES FOR CONSTANTS -----------------------------------------------*/

/* LOCAL DEFINE MACROS (#, ##) -----------------------------------------------*/

/*============================================================================*\
* LOCAL TYPEDEF DECLARATIONS
\*============================================================================*/
/* ENUMS -------------------------------------------------------------------*/

/* STRUCTS -------------------------------------------------------------------*/

/* UNIONS --------------------------------------------------------------------*/

/* OTHER TYPEDEFS ------------------------------------------------------------*/

/*============================================================================*\
* OBJECT DEFINITIONS
\*============================================================================*/
/* EXPORTED OBJECTS ----------------------------------------------------------*/
/****************************************************************/
/* Public CRC32 hash values for link time and post build checks */
/****************************************************************/
#define MEMIF_START_SEC_CONST_32
#include "MemIf_MemMap.h"

CONST(uint32, MEMIF_CONST) MemIf_LTtoPCHashValue = 0xFF740318UL; /* Link time to pre-compile hash value */

#define MEMIF_STOP_SEC_CONST_32
#include "MemIf_MemMap.h"

/**
* Array of allowed indexes of EepromAbstractions
*/

/* LOCAL OBJECTS -------------------------------------------------------------*/
/*============================================================================*\
* LOCAL FUNCTION PROTOTYPES
\*============================================================================*/
/*============================================================================*\
* LOCAL FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/
/*============================================================================*\
* LOCAL FUNCTIONS
\*============================================================================*/
/*============================================================================*\
* EXPORTED FUNCTIONS
\*============================================================================*/
/* END OF FILE -------------------------------------------------------------- */

