/*
 Overview:
     This is an error hook implementation, it is not part of the OS strictly.
     The OS has error hook support which means that when it is turned on and whenever an error occurs during a system call (usually
     because of invalid parameters for a service function) the OS calls a function called error hook. This must be configured at
     configuration time or no function will be called. If error hook is configured it will be only a declaration, the definition must
     be written by the application developer. This error hook is an implementation example, it uses some important features of the OS
     which must be enabled too:
         -OS_CONFIG_STATUS_EXTENDED: This option assures wide range of error categories.
         -OS_CONFIG_USESERVICEID: If this option is enabled then the faulty service (where the error occurred) can be queried.
         -OS_CONFIG_USEPARAMETERACCESS: The option enables to query the arguments of the faulty service.
 Recommended usage
     Put a breakpoint in the switch-case structure where you suspect the problem. At the breakpoint you have access to the invalid
     parameters and you get some hints in the form of comments what could go wrong. The comments points to the most common sources of
     problems but some errors in the switch-case structure may have several causes (it is ambiguous but it helps you to narrow down
     the possibilities). Whenever you come into an ambiguous case the comments will list the possible causes with OR separator. This is
     logical OR so these problems can exist paralelly (unlikely but not impossible) so if you fix one you might get the same error in
     the switch-case structure because of a different reason.
 */
#include "Os.h"
#include "Os_LibConfig.h"

#ifdef OS_CONFIG_STATUS_EXTENDED		/*No meaning otherwise -> the source of problem can't be traced*/
#ifdef OS_CONFIG_USESERVICEID			/*No meaning otherwise -> the source of problem can't be traced*/
#ifdef OS_CONFIG_USEPARAMETERACCESS		/*Without this it is harder to get to know what went wrong*/
/*PRQA S 0781,3218 EOF */
volatile static struct Os_ErrorInfoType {
    VAR (OSServiceIdType, OS_VAR) Os_FaultyServiceId;
    VAR (TaskType, OS_VAR) Os_Err_TaskID;
    VAR (ResourceType, OS_VAR) Os_Err_ResID;
    VAR (EventMaskType, OS_VAR) Os_Err_MaskType_Mask;
    VAR (AlarmType, OS_VAR) Os_Err_AlarmID;
    VAR (TickType, OS_VAR) Os_Err_TicksStart;
    VAR (TickType, OS_VAR) Os_Err_TicksCycle;
    #ifdef OS_MODULE_APPLICATION
    VAR (TrustedFunctionIndexType,OS_VAR) Os_Err_FuncIndex;
    VAR (TrustedFunctionParameterRefType, OS_VAR) Os_Err_FuncParamRefType;
    VAR (ApplicationType, OS_VAR) Os_Err_ApplID;
    VAR (ApplicationStateType, OS_VAR) Os_Err_ApplStateType;
    VAR (ApplicationStateRefType, OS_VAR) Os_Err_ApplStateRefType;
    #endif
    VAR (ISRType, OS_VAR) Os_Err_ISRID;
    VAR (MemorySizeType, OS_VAR) Os_Err_Size;
    VAR (ObjectTypeType, OS_VAR) Os_Err_ObjType;
    VAR (ScheduleTableType, OS_VAR) Os_Err_SchedID;
    VAR (ScheduleTableType, OS_VAR) Os_Err_SchedID_Next;
    VAR (CounterType, OS_VAR) Os_Err_CntID;
    VAR (RestartType, OS_VAR) Os_Err_RestartType;
    VAR (EventMaskRefType, OS_VAR) Os_Err_MaskRefType;
    VAR (TaskStateRefType, OS_VAR) Os_Err_TaskStateRef;
    VAR (TickRefType, OS_VAR) Os_Err_TickRef_Ticks;
    VAR (AlarmBaseRefType, OS_VAR) Os_Err_AlarmBaseRefType_Info;
    VAR (TaskRefType, OS_VAR) Os_Err_TaskIDRef;
    VAR (ScheduleTableStatusRefType, OS_VAR) Os_Err_TblStatusRefType;
    VAR (TickRefType, OS_VAR) Os_Err_TickRef_ElapsedTicks;
    VAR (Os_ObjectType, OS_VAR) Os_Err_ObjObj;
} Os_ErrorInfo;

void ErrorHook(StatusType Error) 
{
    Os_ErrorInfo.Os_FaultyServiceId = OSErrorGetServiceId();
}
#endif
#endif
#endif

/*
 STATISTICS:

 Service name                             Count
 OSServiceId_AllowAcess                     2
 OSServiceId_GetApplicationState            3
 OSServiceId_TerminateApplication           5
 OSServiceId_GetCounterValue                6
 OSServiceId_GetElapsedValue                7
 OSServiceId_IncrementCounter               4
 OSServiceId_CancelAlarm                    5
 OSServiceId_GetAlarm                       7
 OSServiceId_GetAlarmBase                   6
 OSServiceId_SetAbsAlarm                    6
 OSServiceId_SetRelAlarm                    6
 OSServiceId_GetScheduleTableStatus         6
 OSServiceId_NextScheduleTable              6
 OSServiceId_SetScheduleTableAsync          5
 OSServiceId_StartScheduleTableAbs          6
 OSServiceId_StartScheduleTableRel          6
 OSServiceId_StartScheduleTableSynchron     5
 OSServiceId_StopScheduleTable              5
 OSServiceId_SyncScheduleTable              6
 OSServiceId_INVALIDSERVICE                 3
 OSServiceId_CallTrustedFunction            3
 OSServiceId_GetResource                    4
 OSServiceId_ReleaseResource                5
 OSServiceId_GetTaskID                      4
 OSServiceId_Schedule                       3
 OSServiceId_ClearEvent                     4
 OSServiceId_GetEvent                       7
 OSServiceId_SetEvent                       5
 OSServiceId_WaitEvent                      5
 OSServiceId_ActivateTask                   5
 OSServiceId_ChainTask                      6
 OSServiceId_GetTaskState                   6
 OSServiceId_TerminateTask                  3
 OSServiceId_DisableAllInterrupts           1
 OSServiceId_EnableAllInterrupts            1
 OSServiceId_ResumeAllInterrupts            1
 OSServiceId_ResumeOSInterrupts             1
 OSServiceId_SuspendAllInterrupts           1
 OSServiceId_SuspendOSInterrupts            1
 */
