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
 *               File: BswM_LinSM.h
 *        Description: BSWM LinSM Header File
 *            Product: 
 *        Assumptions: 
 *         Dependency: 
 *       Requirements: {DSAR-SDD-BswM-9-1}{BswM0052,BswM0026,BswM0059,BswM0063}
 *
 *****************************************************************************/
#ifndef BSWM_LINSM_H
#define BSWM_LINSM_H

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

//#include "BswM_Types.h"
#include "BswM_Version.h"

#define BSWM_LINSM_ENABLED             (STD_ON)
/**
 * Mark start of memory area for code
 */
#define BSWM_START_SEC_CODE
//#include "BswM_BswMemMap.h"

#if (BSWM_LINSM_ENABLED == STD_ON)

/**
 * \brief               Function called by LinSM to indicate its current state.
 * \return              void
 * \remark Service ID   9
 * \remark Sync/Async   Synchronous
 * \remark Reentrancy   Reentrant
 * \param Network (in) The LIN channel that the indicated state corresponds to.
 * \param CurrentState (in) The current state of the LIN channel.
 */
extern FUNC(void, BSWM_CODE) BswM_LinSM_CurrentState(NetworkHandleType Network, LinSM_ModeType CurrentState);

/**
 * \brief               Function called by LinSM to indicate the currently active schedule table for a specific LIN channel.
 * \return              void
 * \remark Service ID   10
 * \remark Sync/Async   Synchronous
 * \remark Reentrancy   Reentrant
 * \param Network (in) The LIN channel that the schedule table switch have occurred on.
 * \param CurrentSchedule (in) The currently active schedule table of the LIN channel.
 */
extern FUNC(void, BSWM_CODE) BswM_LinSM_CurrentSchedule(NetworkHandleType Network, LinIf_SchHandleType CurrentSchedule);
#endif

/**
 * Mark end of memory area for code
 */
#define BSWM_STOP_SEC_CODE
//#include "BswM_BswMemMap.h"

#endif /* BSWM_LINSM_H */

/* END OF FILE -------------------------------------------------------------- */

