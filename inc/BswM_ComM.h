/**\file
 *
 * BSWM ComM Header File
 *
 * \b Application:        BSWM\n
 * \b Target:             Independent\n
 * \b Compiler:           Independent\n
 * \b Autosar-Vendor-ID:  41\n
 * \b Module:             name: BswM_ComM.h \n
 * \b File-Revision:      version: 3 \n
 * \b Changeable-by-user: No\n
 * \b Delivery-File:      Yes\n
 * \b Module-Owner:       PICEA\n
 * \b Last-Changed-by:    derived_by: pzgykx \n
 * \b Classification:     CONFIDENTIAL\n
 * \Requirements
 * \b {DSAR-SDD-BswM-4-1}{BswM0047,BswM0026,BswM0059,BswM0063}
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
#ifndef BSWM_COMM_H
#define BSWM_COMM_H

/*============================================================================*\
* PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

//#include "BswM_Types.h"
//#include "BswM_Version.h"
#include "ComM_Types.h"
/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

/**
 * SW Major version index
 */
#define BSWM_COMM_SW_MAJOR_VERSION  (2U)

/**
 * SW Minor version index
 */
#define BSWM_COMM_SW_MINOR_VERSION  (7U)

/**
 * SW Patch level version index
 */
#define BSWM_COMM_SW_PATCH_VERSION  (0U)

/**
 * Mark start of memory area for code
 */



/**
 * \brief               Function called by ComM to indicate the current communication mode of a ComM channel.
 * \return              void
 * \remark Service ID   14
 * \remark Sync/Async   Synchronous
 * \remark Reentrancy   Reentrant
 * \param Network (in) The ComM communication channel that the indicated state corresponds to.
 * \param RequestedMode (in) The current state of the ComM communication channel
 */
extern FUNC(void, BSWM_CODE) BswM_ComM_CurrentMode(NetworkHandleType Network, ComM_ModeType RequestedMode);

/**
 * \brief               Function called by ComM to indicate the current mode of the PNC.
 * \return              void
 * \remark Service ID   21
 * \remark Sync/Async   Synchronous
 * \remark Reentrancy   Reentrant
 * \param PNC (in) The handle of the PNC for which the current state is reported.
 * \param RequestedMode (in) The current mode of the PNC.
 */
extern FUNC(void, BSWM_CODE) BswM_ComM_CurrentPNCMode(PNCHandleType PNC, ComM_PncModeType RequestedMode);

/**
 * Mark end of memory area for code
 */


#endif /* BSWM_COMM_H */

/* END OF FILE -------------------------------------------------------------- */

