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
* File: PduR_LinIf.h
* Description: This file contains LinIf If module functions
*
* Assumptions: none.
* Dependency: none.
*
*****************************************************************************/
#ifndef PDUR_LINIF_H
#define PDUR_LINIF_H

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

/* LINIF interface support*/
 /******************************************************
             PduR_LinIfRxIndication
*******************************************************/
extern FUNC(void, PDUR_CODE)  PduR_LinIfRxIndication(
                     VAR(PduIdType,AUTOMATIC) RxPduId,
                     P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA) PduInfoPtr)
;
/******************************************************
            PduR_LinIfTxConfirmation
*******************************************************/
extern FUNC(void, PDUR_CODE) PduR_LinIfTxConfirmation(VAR(PduIdType,AUTOMATIC) TxPduId)
;
/******************************************************
            PduR_LinIfTriggerTransmit
*******************************************************/
extern FUNC(Std_ReturnType, PDUR_CODE) PduR_LinIfTriggerTransmit(
    VAR(PduIdType,AUTOMATIC) TxPduId,
    P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA) PduInfoPtr
)
;


  
#define PDUR_STOP_SEC_CODE
#include "PduR_MemMap.h" /* KW MISRA.INCL.INSIDE */

#endif /*PDUR_LINIF_H*/
/********************************** End of file *******************************/
