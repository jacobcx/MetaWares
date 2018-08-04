#ifndef RTE_TYPE
#define RTE_TYPE

#include "Rte.h"
#include "Std_Types.h"

typedef uint16   NvM_BlockIdType;
typedef uint8    NvM_RequestResultType;
typedef P2VAR(void, TYPEDEF, RTE_APPL_DATA) DstPtrType;
typedef P2CONST(void, TYPEDEF, RTE_APPL_DATA) SrcPtrType;

typedef uint8    ComM_InhibitionStatusType;
typedef uint8    ComM_ModeType;
typedef uint8    ComM_UserHandleType;
typedef struct
{
   uint8 numberOfRequesters;
   ComM_UserHandleType handleArray[4];
} ComM_UserHandleArrayType;


typedef uint8    Dcm_ConfirmationStatusType;
typedef uint8    Dcm_DidSupportedType;
typedef uint8    Dcm_NegativeResponseCodeType;
typedef uint8    Dcm_OpStatusType;
typedef uint8    Dcm_ProtocolType;
typedef uint8    Dcm_RoeStateType;
typedef uint8    Dcm_SecLevelType;
typedef uint8    Dcm_SesCtrlType;
typedef uint8    Dem_DTCFormatType;
typedef uint8    Dem_DTCKindType;
typedef uint8    Dem_DTCOriginType;
typedef uint16   Dem_EventIdType;
typedef uint8    Dem_EventStatusType;
typedef uint8    Dem_IndicatorIdType;
typedef uint8    Dem_IndicatorStatusType;
typedef uint8    Dem_InitMonitorReasonType;
typedef uint8    Dem_MaxDataValueType[1];
typedef uint8    Dem_OperationCycleIdType;
typedef uint8    Dem_OperationCycleStateType;
typedef uint8    Dem_UdsStatusByteType;

typedef uint16   WdgM_CheckpointIdType;
typedef uint8    WdgM_ModeType;
typedef uint16   WdgM_SupervisedEntityIdType;


#endif
