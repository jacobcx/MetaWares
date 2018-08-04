/**\file
 *
 * \brief Generated Source File for Ea
 *
 * This file describes the configuration for Ea module
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
#ifndef EA_LCFG_H
#define EA_LCFG_H

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

#include "Std_Types.h"


/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
/* Version number of the vendor specific implementation of the module  */
#define EA_LCFG_SW_MAJOR_VERSION (7U)
#define EA_LCFG_SW_MINOR_VERSION (2U)
#define EA_LCFG_SW_PATCH_VERSION (0U)


/*============================================================================*\
 * EXPORTED OBJECT DECLARATIONS
\*============================================================================*/
#define EA_START_SEC_CONST_UNSPECIFIED
/* PRQA S 5087 ++ */
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */
/* PRQA S 5087 -- */
extern CONST(EA_BlockConfigurationType, EA_CONST) EA_BlockDescriptor[EA_TOTAL_BLOCK_NUMBERS];

extern CONST(EA_General_Type, EA_CONST) EA_General;

#define EA_STOP_SEC_CONST_UNSPECIFIED
/* PRQA S 5087 ++ */
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */
/* PRQA S 5087 -- */
/*============================================================================*\
 * EXPORTED FUNCTIONS PROTOTYPES
\*============================================================================*/
/*============================================================================*\
 * EXPORTED FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/


#endif   /* EA_LCFG.H */
/* END OF FILE -------------------------------------------------------------- */

