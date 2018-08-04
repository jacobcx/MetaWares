/**\file
 *
 * \brief Generated Source File for Rte
 *
 * 
 *
 * \b Application:        Rte \n
 * \b Target:             see Rte.h for details \n
 * \b Compiler:           see Rte.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Rte_Type.h \n
 * \b Generator:          VSTAR Rte V6.1.1-Build743 \n
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
#ifndef RTE_TYPE_H
#define RTE_TYPE_H

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "Rte.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_TYPE_SW_MAJOR_VERSION (6U)
#define RTE_TYPE_SW_MINOR_VERSION (1U)
#define RTE_TYPE_SW_PATCH_VERSION (1U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* Implementation data types -------------------------------------------------*/
typedef uint32   AppModeType;
typedef uint8    ApplicationStateType;
typedef uint8    ApplicationType;
typedef uint32   CounterType;

typedef struct
{
   uint8 testElement1;
   uint32 testElement2;
   uint16 testElement3;
} IocTestStruct;

typedef P2VAR(IocTestStruct, TYPEDEF, RTE_APPL_DATA) IocTestStructDataRefByType;
typedef uint8    RestartType;
typedef uint32   TickType;
typedef uint8    uint8_2dim_array[2][3];
typedef uint8    uint8_array[8];
typedef P2VAR(uint8, TYPEDEF, RTE_APPL_DATA) uint8_ptr;
typedef uint8    uint8_ref;
typedef P2VAR(void, TYPEDEF, RTE_APPL_DATA) void_ptr;

/* Per-Instance-Memory types -------------------------------------------------*/

/* Client-Server types -------------------------------------------------------*/
typedef struct
{
   uint16 clientId;
   uint16 sequenceCounter;
} Rte_Cs_TransactionHandleType;


#endif /* RTE_TYPE_H */
