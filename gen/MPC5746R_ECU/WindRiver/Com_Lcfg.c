/* Copyright 2016 Mentor Graphics Corporation
    All Rights Reserved

 THIS WORK CONTAINS TRADE SECRET
 AND PROPRIETARY INFORMATION WHICH IS THE
 PROPERTY OF MENTOR GRAPHICS
 CORPORATION OR ITS LICENSORS AND IS
 SUBJECT TO LICENSE TERMS.
*/
/*****************************************************************************
*        File: Com_Lcfg.c
*        Description: This is the AUTOSAR Com Module Configuration Link-Time
*                     C File generated for Post-Build Implementation.
*                             DO NOT EDIT THIS FILE
*        This file covers requirements: [COM328]
*
*        Product:  VSTAR COM
*        Assumptions: none.
*        Dependency: none.
*****************************************************************************/
#include "Com_Externs.h"
#include "Com_i.h"
#include "Com.h"

/*===========================================================================*/


#define COM_START_SEC_VAR_INIT_UNSPECIFIED
#include "Com_MemMap.h"   /* KW MISRA.INCL.INSIDE */

VAR(Com_StatusType,COM_VAR) Com_Status = COM_UNINIT;



P2CONST(Com_ConfigType, COM_VAR, COM_CONST_PB) Com_Main = NULL_PTR;

#define COM_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "Com_MemMap.h"   /* KW MISRA.INCL.INSIDE */


#define COM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"   /* KW MISRA.INCL.INSIDE */

CONST(Com_TimeOutFunction, COM_CONST_LT) Com_TimeOutFunction_Array[] =
{
    /* comTimeoutNotification */
    NULL_PTR
};

CONST(Com_NotifyFunction, COM_CONST_LT) Com_NotifyFunction_Array[] =
{
    /* comNotification */
    NULL_PTR
};



#define COM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"   /* KW MISRA.INCL.INSIDE */

#define COM_START_SEC_CONFIG_DATA_32 /* PRQA S 3614 */
#include "Com_MemMap.h"    /* KW MISRA.INCL.INSIDE */

/* Hash key between Link Time and Post build for Com */
CONST( uint32, COM_CONST) Com_LTHashValue = (uint32)1707314851U;

/* Hash key between Link Time and Pre Compile for Com */
CONST( uint32, COM_CONST) Com_LTtoPCHashValue = (uint32)3520199059U;

#define COM_STOP_SEC_CONFIG_DATA_32 /* PRQA S 3614 */
#include "Com_MemMap.h"    /* KW MISRA.INCL.INSIDE */


#define COM_APPLICATION_HASH (D41D8CD98F00B204E9800998ECF8427E)

/* PRQA S 0380 --*/
/********************************** End of file *******************************/
