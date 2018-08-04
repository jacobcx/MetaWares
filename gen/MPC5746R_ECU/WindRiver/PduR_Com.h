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
* File: PduR_Com.h
* Description: This file contains Com If module functions
*
* Assumptions: none.
* Dependency: none.
*
*****************************************************************************/
#ifndef PDUR_COM_H
#define PDUR_COM_H

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

/* COM interface support*/
/******************************************************
             PduR_ComTransmit
*******************************************************/
extern FUNC(Std_ReturnType,PDUR_CODE) PduR_ComTransmit(VAR(PduIdType,AUTOMATIC) id,
       P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA)info)
;
    
#define PDUR_STOP_SEC_CODE
#include "PduR_MemMap.h" /* KW MISRA.INCL.INSIDE */

#endif /*PDUR_COM_H*/
/********************************** End of file *******************************/
