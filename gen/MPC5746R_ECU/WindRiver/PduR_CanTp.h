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
* File: PduR_CanTp.h
* Description: This file contains CanTp If module functions
*
* Assumptions: none.
* Dependency: none.
*
*****************************************************************************/
#ifndef PDUR_CANTP_H
#define PDUR_CANTP_H

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

/* CANTP interface support*/
 /******************************************************
             PduR_CanTpRxIndication
*******************************************************/
extern FUNC(void, PDUR_CODE)  PduR_CanTpRxIndication(
                     VAR(PduIdType,AUTOMATIC) id,
                     VAR(NotifResultType,AUTOMATIC) result)
;
/******************************************************
            PduR_CanTpTxConfirmation
*******************************************************/
extern FUNC(void, PDUR_CODE) PduR_CanTpTxConfirmation(VAR(PduIdType,AUTOMATIC) id,
VAR(NotifResultType,AUTOMATIC) result )
;
/******************************************************
            PduR_CanTpCopyRxData
*******************************************************/
extern FUNC(BufReq_ReturnType, PDUR_CODE) PduR_CanTpCopyRxData(
           VAR(PduIdType,AUTOMATIC) id,
           P2VAR(PduInfoType,AUTOMATIC, PDUR_VAR_PB) info,
           P2VAR(PduLengthType,AUTOMATIC, PDUR_VAR_PB) bufferSizePtr)
;
/******************************************************
            PduR_CanTpCopyTxData
*******************************************************/
extern FUNC(BufReq_ReturnType, PDUR_CODE) PduR_CanTpCopyTxData(
           VAR(PduIdType,AUTOMATIC) id,
           P2VAR(PduInfoType,AUTOMATIC, PDUR_VAR_PB) info,
           P2VAR(RetryInfoType,AUTOMATIC, PDUR_VAR_PB) retry,
           P2VAR(PduLengthType,AUTOMATIC, PDUR_VAR_PB) availableDataPtr)
;
/******************************************************
           PduR_CanTpStartOfReception
*******************************************************/
extern FUNC(BufReq_ReturnType, PDUR_CODE) PduR_CanTpStartOfReception(
       VAR(PduIdType,AUTOMATIC) id,
       VAR(PduLengthType,AUTOMATIC) TpSduLength,
       P2VAR(PduLengthType,AUTOMATIC, PDUR_VAR_PB) bufferSizePtr)
;
  
#define PDUR_STOP_SEC_CODE
#include "PduR_MemMap.h" /* KW MISRA.INCL.INSIDE */

#endif /*PDUR_CANTP_H*/
/********************************** End of file *******************************/
