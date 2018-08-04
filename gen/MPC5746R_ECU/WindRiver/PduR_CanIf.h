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
* File: PduR_CanIf.h
* Description: This file contains CanIf If module functions
*
* Assumptions: none.
* Dependency: none.
*
*****************************************************************************/
#ifndef PDUR_CANIF_H
#define PDUR_CANIF_H

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

/* CANIF interface support*/
 /******************************************************
             PduR_CanIfRxIndication
*******************************************************/
extern FUNC(void, PDUR_CODE)  PduR_CanIfRxIndication(
                     VAR(PduIdType,AUTOMATIC) RxPduId,
                     P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA) PduInfoPtr)
;
/******************************************************
            PduR_CanIfTxConfirmation
*******************************************************/
extern FUNC(void, PDUR_CODE) PduR_CanIfTxConfirmation(VAR(PduIdType,AUTOMATIC) TxPduId)
;


  
#define PDUR_STOP_SEC_CODE
#include "PduR_MemMap.h" /* KW MISRA.INCL.INSIDE */

#endif /*PDUR_CANIF_H*/
/********************************** End of file *******************************/
