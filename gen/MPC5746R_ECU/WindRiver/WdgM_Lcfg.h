/*******************************************************************************
* This file is automatically generated by VSC.
* Do not edit manually.
* VSC Version  : 2.5.4
* WdgMPlugin   : com.mentor.bsw.wdgm.generator 7.2.1
*===============================================================================
*
* Module:       WdgM
*
* File Name:    WdgM_Lcfg.h
*
* Description:  This file shall contain the configuration link time
*               parameters for WdgM module.
*
*******************************************************************************/

/*******************************************************************************
 *
 *              Copyright 2016 Mentor Graphics Corporation
 *                        All rights reserved
 *
 *  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS
 *  THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS
 *  SUBJECT TO LICENSE TERMS.
 *
 *
 ******************************************************************************/

#ifndef WDGM_LCFG_H
#define WDGM_LCFG_H

/*=============================== INCLUSIONS =================================*/
/*============================================================================*\
 *PREPROCESSOR DIRECTIVES
\*============================================================================*/
/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/


#include "Std_Types.h"
/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "WdgM_Types.h"

/*============================== VERSION INFO ================================*/

#define WDGM_LCFG_SW_MAJOR_VERSION    (7U)
#define WDGM_LCFG_SW_MINOR_VERSION    (2U)
#define WDGM_LCFG_SW_PATCH_VERSION    (1U)

/*******************************************************************************
 * General Configuration
 ******************************************************************************/
/**
 * Module ID as defined in AUTOSAR_BasicSoftwareModules.pdf.
 */
#define WDGM_LCFG_MODULE_ID         (13U)

 /**
 * Symbolic Name Mapping for WdgMMode Mode
 */
#define WDGMConf_WdgMMode_WdgMMode ((uint8)0U)

/**
 * Symbolic Name Mapping for Wdg0
 */
#define Wdg0 ((uint8)0U)

/** No. of Alive Supervision configured */
#define WDGM_NUMBER_OF_ALIVE_SUPERVISION (0U)

/** No. of Deadline Supervision configured */
#define WDGM_NUMBER_OF_DEADLINE_SUPERVISION (0U)

/** No. of Logical Supervision configured */
#define WDGM_NUMBER_OF_LOGICAL_SUPERVISION (0U)

/**
 * No of WdgM Modes supported
 */
#define WDGM_NO_OF_WDGM_MODES ((uint8)1U)

/**
 *  Parameter contains the number of supervision entities
 */
#define WDGM_TOTAL_NUMBER_OF_SUPERVISED_ENTITIES ((uint16)0U)

/**
 *  Parameter contains the number of watchdog instances in the implementaion
 */
#define WDGM_NUMBER_OF_WATCHDOG_INSTANCES ((uint8)1U)

/**
 * The Default Mode Of Initialization Of WdgM
 */
#define WDGM_DEFAULT_WDGM_MODE (WDGMConf_WdgMMode_WdgMMode)

/** Parameter contains the number of caller Ids in the implementation */
#define WDGM_NUMBER_OF_CALLER_IDS (0U)

#endif /* #ifndef WDGM_LCFG_H */
/*=============================== END OF FILE ================================*/
