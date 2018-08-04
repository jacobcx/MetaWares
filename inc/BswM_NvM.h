/******************************************************************************
 *
 *              Copyright 2014 Mentor Graphics Corporation
 *                        All rights reserved
 *
 *  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS
 *  THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS
 *  SUBJECT TO LICENSE TERMS.
 *
 *
 ******************************************************************************
 *               File: BswM_NvM.h
 *        Description: BSWM NvM Header File
 *            Product: 
 *        Assumptions: 
 *         Dependency: 
 *       Requirements:
 * {DSAR-SDD-BswM-12-1}{BswM0104,BswM0152,BswM0026,BswM0059,BswM0063}
 *
 *****************************************************************************/
#ifndef BSWM_NVM_H
#define BSWM_NVM_H

/*============================================================================*\
* PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

//#include "BswM_Types.h"

#include "NvM.h"

/**
 * Mark start of memory area for code
 */
#define BSWM_START_SEC_CODE
#include "MemMap.h"


/**
 * \brief               Function called by NvM to indicate the current block mode of an NvM block.
 * \return              void
 * \remark Service ID   22
 * \remark Sync/Async   Synchronous
 * \remark Reentrancy   Reentrant
 * \param Block (in) The Block that the new NvM Mode corresponds to.
 * \param CurrentBlockMode (in) The current block mode of the NvM block.
 */
extern FUNC(void, BSWM_CODE) BswM_NvM_CurrentBlockMode(NvM_BlockIdType Block, NvM_RequestResultType CurrentBlockMode);

/**
 * \brief               Function called by NvM to inform the BswM about the current state of a multi block job.
 * \return              void
 * \remark Service ID   23
 * \remark Sync/Async   Synchronous
 * \remark Reentrancy   Reentrant
 * \param ServiceId (in) Indicates whether the callback refers to multi block services NvM_ReadAll or NvM_WriteAll.
 * \param CurrentJobMode (in) Current state of the multi block job indicated by parameter ServiceId.
 */
extern FUNC(void, BSWM_CODE) BswM_NvM_CurrentJobMode( uint8 ServiceId, NvM_RequestResultType CurrentJobMode);


/**
 * Mark end of memory area for code
 */
#define BSWM_STOP_SEC_CODE
#include "MemMap.h"

#endif /* BSWM_LINSM_H */

/* END OF FILE -------------------------------------------------------------- */

