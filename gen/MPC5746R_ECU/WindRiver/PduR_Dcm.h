/*****************************************************************************
*
* Copyright 2016 Mentor Graphics Corporation
*    All Rights Reserved
*
* THIS WORK CONTAINS TRADE SECRET
* AND PROPRIETARY INFORMATION WHICH IS THE
* PROPERTY OF MENTOR GRAPHICS
* CORPORATION OR ITS LICENSORS AND IS
* SUBJECT TO LICENSE TERMS.
*
*****************************************************************************
* File: PduR_Dcm.h
* Description: This file contains Dcm If module functions
*
* Assumptions: none.
* Dependency: none.
*
*****************************************************************************/
#ifndef PDUR_DCM_H
#define PDUR_DCM_H

/*****************************************************************************
*                      Include Section
*****************************************************************************/
#include "PduR.h"
/*****************************************************************************
*                      Global Symbols
*****************************************************************************/

/*****************************************************************************
*                      Global Data Types
*****************************************************************************/
#define PDUR_START_SEC_CODE
#include "PduR_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* DCM interface support*/
/******************************************************
             PduR_DcmTransmit
*******************************************************/
extern FUNC(Std_ReturnType,PDUR_CODE) PduR_DcmTransmit(VAR(PduIdType,AUTOMATIC) id,
       P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA)info)
;
/******************************************************
             PduR_DcmCancelTransmit
*******************************************************/
extern FUNC(Std_ReturnType,PDUR_CODE) PduR_DcmCancelTransmit(VAR(PduIdType,AUTOMATIC) id)
;
/******************************************************
        PduR_DcmCancelReceive
*******************************************************/
extern FUNC(Std_ReturnType,PDUR_CODE) PduR_DcmCancelReceive(VAR(PduIdType,AUTOMATIC) id)
;
    
#define PDUR_STOP_SEC_CODE
#include "PduR_MemMap.h" /* KW MISRA.INCL.INSIDE */

#endif /*PDUR_DCM_H*/
/********************************** End of file *******************************/
