#ifndef CRC_H
#define CRC_H

/**\file
 *
 * \brief Header file for Picea BSW CRC Module.
 *
 *    This file describes the public interface of the CRC module
 *    for Picea/AUTOSAR.\n
 *
 * \b Application:        CRC \n
 * \b Target:             Independent\n
 * \b Compiler:           Independent\n
 * \b Autosar-Vendor-ID:  41\n
 * \n
 * \b Module:             %name:Crc.h % \n
 * \b File-Revision:      %version:14 %  \n
 * \b Changeable-by-user: No \n
 * \b Delivery-File:      Yes \n
 * \n
 * \b Module-Owner:       Picea Team \n
 * \n
 * \b Traceability-Info   DSAR* \n
 * \b Classification:     Confidential \n
 * \b Deviations:         None \n
 * \n
 * \Requirements:
 * \reqtrace{DSAR-SDD-CRC-1-1}{CRC022,CRC024
 *                             CRC023}
 */

/*
 *
 *      Copyright Mecel AB
 *      Box 14044
 *      400 20 GOTHENBURG
 *      SWEDEN
 *      Phone: +46 (0)31 720 44 00
 *
 *      The copyright of the computer program(s) herein is the property of
 *      Mecel AB. The programs(s) may be used and/or copied only with the
 *      written permission of Mecel AB or in accordance with the terms and
 *      conditions stipulated in the agreement/contract under which the
 *      program(s) have been supplied.
 *
 ******************************************************************************/

/*============================================================================*\
* PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

#include "Crc_Cfg.h"



#include "Std_Types.h"

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

/**
 * Vendor ID as defined in vendor list .
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-3-2}{CRC048}
 * \endlatexonly
 */
#define CRC_VENDOR_ID                           (41u)

/**
 * Module ID as defined in AUTOSAR_BasicSoftwareModules.pdf.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-4-2}{CRC048}
 * \endlatexonly
 */
#define CRC_MODULE_ID                           (201u)

/**
 * Major version number of AUTOSAR release on which the
 * appropriate implementation is based on.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-5-2}{CRC048}
 * \endlatexonly
 */
#define CRC_AR_RELEASE_MAJOR_VERSION                    (4)

/**
 * Minor version number of AUTOSAR release on which the
 * appropriate implementation is based on.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-6-2}{CRC048}
 * \endlatexonly
 */
#define CRC_AR_RELEASE_MINOR_VERSION                    (2)

/**
 * release revision version number of AUTOSAR version on which the
 * appropriate implementation is based on.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-7-2}{CRC048}
 * \endlatexonly
 */
#define CRC_AR_RELEASE_REVISION_VERSION                    (1)

/**
 * Major version number of the vendor specific implementation of the module.
 * The numbering is vendor specific.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-8-2}{CRC048}
 * \endlatexonly
 */
#define CRC_SW_MAJOR_VERSION                    (5)

/**
 * Minor version number of the vendor specific implementation of the module.
 * The numbering is vendor specific.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-9-2}{CRC048}
 * \endlatexonly
 */
#define CRC_SW_MINOR_VERSION                    (0)

/**
 * Patch level version number of the vendor specific implementation of the module.
 * The numbering is vendor specific.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-10-2}{CRC048}
 * \endlatexonly
 */
#define CRC_SW_PATCH_VERSION                    (0)

/**
 * Initial value for the 8-bit CRC calculation.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-41-2}{CRC030}
 * \endlatexonly
 */
#define CRC_INITIAL_VALUE8                    (0xFF)

/**
 * Initial value for the 8-bit CRC calculation.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-51-2}{CRC042}
 * \endlatexonly
 */
#define CRC_INITIAL_VALUE8H2F                    (0xFF)
/**
 * Initial value for the 16-bit CRC calculation.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-11-2}{CRC002}
 * \endlatexonly
 */
#define CRC_INITIAL_VALUE16                    (0xFFFF)

/**
 * Initial value for the 32-bit CRC calculation.
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-12-2}{CRC003}
 * \endlatexonly
 */
#define CRC_INITIAL_VALUE32                    (0xffffffff)

/* EXPORTED DEFINE MACROS (#, ##) --------------------------------------------*/

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


/* PRQA S 5087 ++
 * MISRA RULE C197 VIOLATION:
 */
#define  CRC_START_SEC_CODE
#include "MemMap.h"
/* PRQA S 5087 -- */

/**
 * \brief          Function performs 8-bit CRC calculation
 * \param[in]      Crc_DataPtr - Pointer to start address of data block to be calculated
 * \param[in]      Crc_Length - Length of data blocks to be calculated in bytes
 * \param[in]      Crc_StartValue8 - Initial Value when the algorith starts
 * \param[in]      Crc_IsFirstCall - Boolean value which tells is first call in as sequence of ividual CRC calculation
 * \return         8-bit result of calculation
 * \ServID         0x01
 * \Reentrancy     reentrant
 * \Synchronism    synchronous
 * \Precondition   none
 * \Caveats        none
 * \Requirements :
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-42-1}{CRC031,CRC033,
 *                              CRC032,CRC041,
 *                              CRC013,CRC014}
 * \endlatexonly
 *
 */

extern FUNC(uint8, CRC_CODE) Crc_CalculateCRC8
   (
      P2CONST(uint8, AUTOMATIC,CRC_APPL_CONST) Crc_DataPtr,
      VAR(uint32,AUTOMATIC)                   Crc_Length,
      VAR(uint8,AUTOMATIC)                    Crc_StartValue8,
	  VAR(boolean,AUTOMATIC)                  Crc_IsFirstCall
   );
/**
 * \brief          Function performs 8-bit 0x2F polynomial CRC calculation
 * \param[in]      Crc_DataPtr - Pointer to start address of data block to be calculated
 * \param[in]      Crc_Length - Length of data blocks to be calculated in bytes
 * \param[in]      Crc_StartValue8 - Initial Value when the algorith starts
 * \param[in]      Crc_IsFirstCall - Boolean value which tells is first call in as sequence of ividual CRC calculation
 * \return         8-bit result of calculation
 * \ServID         0x05
 * \Reentrancy     reentrant
 * \Synchronism    synchronous
 * \Precondition   none
 * \Caveats        none
 * \Requirements :
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-52-1}{CRC043,CRC044,
 *                              CRC045,CRC041,
 *                              CRC013,CRC014}
 * \endlatexonly
 *
 */

extern FUNC(uint8, CRC_CODE) Crc_CalculateCRC8H2F
   (
      P2CONST(uint8, AUTOMATIC,CRC_APPL_CONST) Crc_DataPtr,
      VAR(uint32, AUTOMATIC)                   Crc_Length,
      VAR(uint8, AUTOMATIC)                    Crc_StartValue8H2F,
  	  VAR(boolean,AUTOMATIC)                   Crc_IsFirstCall

   );
/**
 * \brief          Function performs 16-bit CRC calculation
 * \param[in]      Crc_DataPtr - Pointer to start address of data block to be calculated
 * \param[in]      Crc_Length  - Length of data blocks to be calculated in bytes
 * \param[in]      Crc_StartValue16 - Initial Value for CRC algorithm
 * \param[in]      Crc_IsFirstCall - Boolean value which tells is first call in as sequence of ividual CRC calculation
 * \return         16-bit result of calculation
 * \ServID         0x02
 * \Reentrancy     reentrant
 * \Synchronism    synchronous
 * \Precondition   none
 * \Caveats        none
 * \Requirements:
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-13-1}{CRC019,CRC015,
 *                              CRC009,CRC041,
 *                              CRC013,CRC014}
 * \endlatexonly
 */

extern FUNC(uint16, CRC_CODE) Crc_CalculateCRC16
   (
      P2CONST(uint8, AUTOMATIC, CRC_APPL_CONST) Crc_DataPtr,
      VAR(uint32, AUTOMATIC)                    Crc_Length,
      VAR(uint16, AUTOMATIC)                    Crc_StartValue16,
      VAR(boolean,AUTOMATIC)                    Crc_IsFirstCall

   );

/**
 * \brief          Function performs 32-bit CRC calculation
 * \param[in]      Crc_DataPtr - Pointer to start address of data block to be calculated
 * \param[in]      Crc_Length - Length of data blocks to be calculated in bytes
 * \param[in]      Crc_StartValue32 - Initial Value when the algorithm starts
 * \param[in]      Crc_IsFirstCall - Boolean value which tells is first call in as sequence of ividual CRC calculation
 * \return         32-bit result of calculation
 * \ServID         0x03
 * \Reentrancy     reentrant
 * \Synchronism    synchronous
 * \Precondition   none
 * \Caveats        none
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-14-1}{CRC020,CRC016,
 *                              CRC010,CRC041,
 *                              CRC013,CRC014}
 * \endlatexonly
 *
 */

extern FUNC(uint32, CRC_CODE) Crc_CalculateCRC32
   (
      P2CONST(uint8, AUTOMATIC, CRC_APPL_CONST) Crc_DataPtr,
      VAR(uint32, AUTOMATIC)                    Crc_Length,
      VAR(uint32, AUTOMATIC)                    Crc_StartValue32,
	  VAR(boolean,AUTOMATIC)                    Crc_IsFirstCall
   );


/**
 * \brief          This service gives the version information of this module
 * \param[out]     versioninfo - pointer to standard version information
 *                               structure
 * \return         no return value
 * \ServID         0x04
 * \Reentrancy     reentrant
 * \Synchronism    synchronous
 * \Precondition   none
 * \Caveats        none
 * \Requirements
 * \latexonly
 * \reqtrace{DSAR-SDD-CRC-16-2}{CRC021,CRC011,
 *                              CRC017,CRC041,
 *                              CRC013,CRC014}
 * \endlatexonly
 */

extern FUNC(void, CRC_CODE) Crc_GetVersionInfo
   (
      P2VAR(Std_VersionInfoType,AUTOMATIC,CRC_APPL_DATA) versioninfo
   );

/* PRQA S 5087 ++
 * MISRA RULE C197 VIOLATION:
 */
#define  CRC_STOP_SEC_CODE
#include "MemMap.h"
/* PRQA S 5087 -- */
#endif   /* #ifdef CRC_H */

/* END OF FILE -------------------------------------------------------------- */
