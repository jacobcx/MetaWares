#ifndef CANTP_MEMMAP_H
#define CANTP_MEMMAP_H



#ifdef CANTP_START_SEC_VAR_INIT_UNSPECIFIED
    /**
    * @file MemMap.h
    * @violates @ref MemMap_h_REF_1 MISRA 2004 Required Rule 19.6, use of '#undef' is discouraged
    */
    #undef CANTP_START_SEC_VAR_INIT_UNSPECIFIED
    /**
    * @file MemMap.h
    * @violates @ref MemMap_h_REF_1 MISRA 2004 Required Rule 19.6, use of '#undef' is discouraged
    */
    #pragma section DATA ".mcal_data" ".mcal_bss"
#endif

#ifdef CANTP_STOP_SEC_VAR_INIT_UNSPECIFIED
    /**
    * @file MemMap.h
    * @violates @ref MemMap_h_REF_1 MISRA 2004 Required Rule 19.6, use of '#undef' is discouraged
    */
    #undef CANTP_STOP_SEC_VAR_INIT_UNSPECIFIED
    /**
    * @file MemMap.h
    * @violates @ref MemMap_h_REF_1 MISRA 2004 Required Rule 19.6, use of '#undef' is discouraged
    */
    #pragma section DATA 
#endif



#endif