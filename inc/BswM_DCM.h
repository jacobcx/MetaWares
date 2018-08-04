/**\file
 *
 * BSWM DCM Header File
 *
 * \b Application:        BSWM\n
 * \b Target:             Independent\n
 * \b Compiler:           Independent\n
 * \b Autosar-Vendor-ID:  41\n
 * \b Module:             name: BswM_DCM.h \n
 * \b File-Revision:      version: 3 \n
 * \b Changeable-by-user: No\n
 * \b Delivery-File:      Yes\n
 * \b Module-Owner:       PICEA\n
 * \b Last-Changed-by:    derived_by: pzgykx \n
 * \b Classification:     CONFIDENTIAL\n
 * \Requirements
 * \b {DSAR-SDD-BswM-5-1}{BswM0048,BswM0122,BswM0123,BswM0026,BswM0059,BswM0063}
 */

/*
 *
 *      Copyright Mecel AB
 *      Box 14044
 *      400 20 GOTHENBURG
 *      SWEDEN
 *      Phone: +46 (0)31 720 44 00
 *      E-Mail: picea(at)mecel.se
 *      Web: http://bugzilla.mecel.se
 *
 *      The copyright of the computer program(s) herein is the property of
 *      Mecel AB. The programs(s) may be used and/or copied only with the
 *      written permission of Mecel AB or in accordance with the terms and
 *      conditions stipulated in the agreement/contract under which the
 *      program(s) have been supplied.
 *
 ******************************************************************************/
#ifndef BSWM_DCM_H
#define BSWM_DCM_H

/*============================================================================*\
* PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

//#include "BswM_Types.h"
#include "BswM_Version.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

/**
 * SW Major version index
 */
#define BSWM_DCM_SW_MAJOR_VERSION  (2U)

/**
 * SW Minor version index
 */
#define BSWM_DCM_SW_MINOR_VERSION  (7U)

/**
 * SW Patch level version index
 */
#define BSWM_DCM_SW_PATCH_VERSION  (0U)

/**
 * Mark start of memory area for code
 */
#define BSWM_START_SEC_CODE
#include "MemMap.h"

//#if (BSWM_DCM_ENABLED == STD_ON)

/**
 * \brief               Function called by DCM to inform the BswM about the current state of the communication mode.
 * \return              void
 * \remark Service ID   6
 * \remark Sync/Async   Synchronous
 * \remark Reentrancy   Reentrant
 * \param Network (in) The communication channel that the diagnostic mode corresponds to.
 * \param RequestedMode (in) The requested diagnostic communication mode.
 */
extern FUNC(void, BSWM_CODE) BswM_Dcm_CommunicationMode_CurrentState (NetworkHandleType Network, Dcm_CommunicationModeType RequestedMode);
//#endif

/**
 * Mark end of memory area for code
 */
#define BSWM_STOP_SEC_CODE
#include "MemMap.h"

#endif /* BSWM_DCM_H */

/* END OF FILE -------------------------------------------------------------- */

