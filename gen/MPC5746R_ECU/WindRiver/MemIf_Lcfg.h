/**\file
 *
 * \brief Generated Source File for MemIf
 *
 * This file describes the public interface of the link-time configuration.
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
#ifndef MEMIF_LCFG_H
#define MEMIF_LCFG_H

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/
#include "MemIf_Types.h"

#include "Ea.h"    /* [MemIf047] */


/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/
#define MEMIF_LCFG_SW_MAJOR_VERSION (8U)
#define MEMIF_LCFG_SW_MINOR_VERSION (2U)
#define MEMIF_LCFG_SW_PATCH_VERSION (1U)


/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

/**
 * Identifier that shall be used by the NVRAM Manager to address all devices 
 * (in the call to MemIf_GetStatus).
 */
#define MEMIF_BROADCAST_ID ((uint8)255)



/* EXPORTED DEFINE MACROS (#, ##) --------------------------------------------*/

#if (MEMIF_NUMBER_OF_DEVICES==1)

#define MEMIF_SET_MODE_FUNCTION \
   Ea_SetMode
/* MEMIF_SET_MODE_FUNCTION */

#define MEMIF_READ_FUNCTION \
   Ea_Read
/* MEMIF_READ_FUNCTION */

#define MEMIF_WRITE_FUNCTION \
   Ea_Write
/* MEMIF_WRITE_FUNCTION */

#define MEMIF_CANCEL_FUNCTION \
   Ea_Cancel
/* MEMIF_CANCEL_FUNCTION */

#define MEMIF_GET_STATUS_FUNCTION \
   Ea_GetStatus
/* MEMIF_GET_STATUS_FUNCTION */

#define MEMIF_GET_JOB_RESULT_FUNCTION \
   Ea_GetJobResult
/* MEMIF_GET_JOB_RESULT_FUNCTION */

#define MEMIF_INVALIDATE_BLOCK_FUNCTION \
   Ea_InvalidateBlock
/* MEMIF_INVALIDATE_BLOCK_FUNCTION */

#define MEMIF_ERASE_IMMEDIATE_BLOCK_FUNCTION \
   Ea_EraseImmediateBlock
/* MEMIF_ERASE_IMMEDIATE_BLOCK_FUNCTION */


#endif
#endif /* MEMIF_LCFG_H */
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



/* END OF FILE -------------------------------------------------------------- */

