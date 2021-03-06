/******************************************************************************
*
* This file is automatically generated by Configuration tool.
* Do not edit manually.
*
*==============================================================================
 *
 * Module:       Eep
 *
 * File Name:    Eep_31_AT25256B_PBcfg.h
 *
 * Description:  EEPROM PostBuild-Time Configuration Header File.
 * 
 *****************************************************************************/
/**
 * \file       Eep_31_AT25256B_PBcfg.h
 * \brief      PostBuild-Time configuration file for EEPROM
 * \version    1.0
 * \date       13/06/2017
 * \addtogroup Eep_31_AT25256B
 */	
 #ifndef EEP_31_AT25256B_PBCFG_H
 #define EEP_31_AT25256B_PBCFG_H

/*=============================== INCLUSIONS ================================*/

 #include "Eep_31_AT25256B_Types.h"
 
/*============================ MACRO DEFINITIONS ============================*/
 
#define EEP_31_AT25256B_PBCFG_SW_MAJOR_VERSION (1u)
#define EEP_31_AT25256B_PBCFG_SW_MINOR_VERSION (0u)
#define EEP_31_AT25256B_PBCFG_SW_PATCH_VERSION (0u)

/*===================== EXTERNAL VARIABLE DECLARATIONS ======================*/

#define EEP_31_AT25256B_START_SEC_CONST_POSTBUILD_UNSPECIFIED /* PRQA S 3614 */
#include "MemMap.h"

extern CONST(Eep_31_AT25256B_ConfigType, EEP_CONST) EepInit_Config;


#define EEP_31_AT25256B_STOP_SEC_CONST_POSTBUILD_UNSPECIFIED /* PRQA S 3614 */
#include "MemMap.h"

#endif /* EEP_31_AT25256B_PBCFG_H */