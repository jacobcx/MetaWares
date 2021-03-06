/******************************************************************************
*
* This file is automatically generated by Configuration tool.
* Do not edit manually.
*
*==============================================================================
 *
 * Module:       Eeprom
 *
 * File Name:    Eep_31_AT25256B_Lcfg.c
 *
 * Description:  EEPROM Configuration Source File.
 *  SWS ID: DEV_SWS_Eep_1012.
 *****************************************************************************/
  /*=============================== INCLUSIONS ================================*/
 
#include "Eep_31_AT25256B_IntTypes.h"
#include "Eep_31_AT25256B_Lcfg.h"
#include "Eep_31_AT25256B.h"

/*============================ MACRO DEFINITIONS ============================*/

/* Version controls for all Eep header files. */
#define EXPECTED_SW_MAJOR_VERSION (1u)
#define EXPECTED_SW_MINOR_VERSION (0u)
#define EXPECTED_SW_PATCH_VERSION (0u)

#if ( (EEP_31_AT25256B_INTTYPES_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (EEP_31_AT25256B_INTTYPES_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (EEP_31_AT25256B_INTTYPES_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   \#error "The software version of the EEP_31_AT25256B_IntTypes.h file does not match the expected version."
#endif

#if ( (EEP_31_AT25256B_LCFG_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (EEP_31_AT25256B_LCFG_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (EEP_31_AT25256B_LCFG_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   \#error "The software version of the EEP_31_AT25256B_Lcfg.h file does not match the expected version."
#endif

#if ( (EEP_31_AT25256B_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (EEP_31_AT25256B_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (EEP_31_AT25256B_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   \#error "The software version of the EEP_31_AT25256B.h file does not match the expected version."
#endif

#define    SOURCE_DATABUFFER_INDEX    64

/*====================== INTERNAL VARIABLE DEFINITION =======================*/

#define EEP_31_AT25256B_START_SEC_VAR_8BIT /* PRQA S 3614 */
#include "MemMap.h"

/* Eep compare data.*/
static VAR(uint8, EEP_VAR) Eep_TargetLocalDataBuffer[SOURCE_DATABUFFER_INDEX];

#define EEP_31_AT25256B_STOP_SEC_VAR_8BIT /* PRQA S 3614 */
#include "MemMap.h"

#define EEP_31_AT25256B_START_SEC_CONST_UNSPECIFIED /* PRQA S 3614 */
#include "MemMap.h"

/* SW ID: SWS_Eep_00052 */
CONST(Eep_LcfgType, EEP_CONST) Eep_LcfgConfig =
{
Eep_TargetLocalDataBuffer,
(Spi_SequenceType)3,
(Spi_ChannelType)2,
(Spi_ChannelType)3,
(Spi_SequenceType)4,
(Spi_ChannelType)4,
(Spi_SequenceType)5,
(Spi_ChannelType)5,
};

CONST(uint8, EEP_CONST) ConstEraseData[PAGE_SIZE]={
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255
};

#define EEP_31_AT25256B_STOP_SEC_CONST_UNSPECIFIED  /* PRQA S 3614 */
#include "MemMap.h"

/*******************************************************************************/
/* Public CRC32 hash values for link time and post build checks                */
/*******************************************************************************/
#define EEP_31_AT25256B_START_SEC_CONST_32 /* PRQA S 3614 */
#include "MemMap.h"

/* Hash Key for the Lcfg File */
CONST(uint32, EEP_31_AT25256B_CONST) Eep_31_AT25256B_LTHashValue = (uint32)163342455U; /* Link time hash value */

/* Hash Key for the Lcfg File */
CONST(uint32, EEP_31_AT25256B_CONST) Eep_31_AT25256B_LTtoPCHashValue = (uint32)2160663006U;/* Link time to pre-compile hash value */

#define EEP_31_AT25256B_STOP_SEC_CONST_32 /* PRQA S 3614 */
#include "MemMap.h"
