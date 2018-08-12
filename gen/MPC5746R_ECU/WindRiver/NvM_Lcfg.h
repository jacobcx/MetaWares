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
#ifndef NVM_LCFG_H
#define NVM_LCFG_H

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

#include "Std_Types.h"

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "NvM_Dem.h"
#include "BswM_NvM.h" /* [DD-NVM00332-MGC01-V1] */
#include "NvM_Cfg.h"
#include "NvM_Types.h" /* [DD-NVM00550-MGC01-V1] [DD-NVM00689-MGC01-V1] */

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
/* Version number of the vendor specific implementation of the module  */
#define NVM_LCFG_SW_MAJOR_VERSION (8U)
#define NVM_LCFG_SW_MINOR_VERSION (2U)
#define NVM_LCFG_SW_PATCH_VERSION (0U)


 

/**
 * Symbolic names used for identifying the NvM block descriptors. 
 */
 

/** Number of block descriptors */
#define NVM_TOTAL_BLOCK_NUMBER                 3
 

#define NvMConf_NvMBlockDescriptor_NvMBlockDescriptor_Cfg                 ((uint16)1)
#define NvMConf_NvMBlockDescriptor_NvMBlockDescriptor_Appl                 ((uint16)2)
#define NvMConf_NvMBlockDescriptor_NvMBlockDescriptor_BSW                 ((uint16)3)

/** Block Data size (the same value as NVM_BLOCK_X_NVM_NV_BLOCK_LENGTH) */
#define NVM_BLOCK_1_DATA_LENGTH   ((uint16)100)
#define NVM_BLOCK_2_DATA_LENGTH   ((uint16)256)
#define NVM_BLOCK_3_DATA_LENGTH   ((uint16)256)
/**
 * NV Block Total length (Block Header(optional)+NV Data Size +CRC length(optional))
 * [DD-NVM00125-MGC01-V1] [DD-NVM00126-MGC01-V1] [DD-NVM00522-MGC01-V1]
 * [DD-NVM00001-MGC01-V1] [DD-NVM-0006-MGC02-V1] [DD-NVM-0006-MGC03-V1]
 */
#define NVM_BLOCK_1_TOTAL_LENGTH   ((uint16)102)/* Header (0)+ Block Length(100)+Crc (2)*/
#define NVM_BLOCK_2_TOTAL_LENGTH   ((uint16)256)/* Header (0)+ Block Length(256)+Crc (0)*/
#define NVM_BLOCK_3_TOTAL_LENGTH   ((uint16)256)/* Header (0)+ Block Length(256)+Crc (0)*/

/** Buffer size = NV Block Maximum Length 
 * calculated over the NV blocks for which either 
 * External sync mechanism, CRC calculation or static block ID check is on  */
#define NVM_MAXIMUM_BUFFER_LENGTH  ((uint16)102)

/*============================================================================*\
 * EXPORTED OBJECT DECLARATIONS
\*============================================================================*/

#define NVM_START_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern CONST(NvM_CommonType,NVM_CONST) NvM_Common;
extern CONST(NvM_DemEventIdType,NVM_CONST) NvMDemEventId ;
extern CONST(NvM_BlockManagementType,NVM_CONST) NvM_BlockManagementTable;

#define NVM_STOP_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*\
 * EXPORTED FUNCTIONS PROTOTYPES
\*============================================================================*/

#define NVM_START_SEC_CODE
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */






#define NVM_STOP_SEC_CODE
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */


/*============================================================================*\
 * EXPORTED FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/


#endif   /* NVM_LCFG_H */
/* END OF FILE -------------------------------------------------------------- */
