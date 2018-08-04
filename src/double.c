

#include "Os.h"
#include "Os_MPC5746R.h"
/* Platform specific part */
#include "TargetPlatform.h"
#include "double.h"
#include "Mcu.h"
#include "Port.h"
#include "Dio.h"
#include "Can.h"
#include "Lin.h"
#include "Spi.h"
#include "CanTrcv_31_UJA1132.h"
#include "LinTrcv_31_UJA1132.h"
#include "CanTrcv_31_TJA1145.h"
#include "Eep_31_AT25256B.h"
#include "NvM.h"
#include "Adc.h"
#include "Pwm.h"
#include "CanIf.h"
#include "SchM_CanIf.h"
#include "PduR.h"
#include "Com.h"
#include "CanSM.h"
#include "ComM.h"
#include "LinIf.h"
#include "LinSM.h"
#include "CanTp.h"
#include "Dem.h"
#include "Dcm.h"
#include "SchM_Dem.h"
#include "SchM_Dcm.h"
#include "Gpt.h"
#include "Wdg_43_Instance0.h"
#include "WdgM.h"

extern VAR(CanTp_Status_t, CANTP_VAR) CanTp_Status;

typedef enum
{
    CAN_CHANNEL_RUN,
    CAN_CHANNEL_PNC_FULLCOMM_OK,
    CAN_CHANNEL_PNC_REQUESTED,
    CAN_CHANNEL_PNC_FULLCOMM_REQ,
    CAN_CHANNEL_INIT
} CanType_App_State;

void Can_Application_Runnable(void);
void Lin_Application_Runnable(void);
void Eep_Application_Runnable(void);
void ModeManagement_MainFunction(void);
void Adc_Application_Runnable(Adc_GroupType AdcGroupId, uint8 Cnt);
VAR(Com_IpduGroupVector, AUTOMATIC) ipduGroupVector;
static CanType_App_State Application_State_Can = CAN_CHANNEL_INIT;

StatusType statusStartCoreOne = E_OK;
uint8 Cnt;

static uint8 DataBufferWrite[8]={0x51,0x22,0x33,0x44,0x55,0x66,0x77,0x88};

Lin_PduType Lin_Tx_Test;
static uint8 Lin_Tx_Data[8]={1,2,3,4,5,6,7,8};
CanTrcv_TrcvModeType TJA1145_CAND_Mode;
uint16 SpiWordWrite=0x0207;
uint16 SpiWordRead;

VAR(uint8,NVM_VAR) NvM_Cfg_Ram[NVM_BLOCK_1_DATA_LENGTH];
VAR(uint8,NVM_VAR) NvM_Cfg_Appl[NVM_BLOCK_2_DATA_LENGTH];
static uint8 EepBufferWrite[256];
static uint8 EepBufferRead[256];
static Adc_ValueGroupType AdcGroup0ResultBuf[8];
static Adc_ValueGroupType AdcGroup0DataBuf[8];

static uint16 CanTxDataTest=0x1234;
uint16 Spd_CMP_Rx_Test=0;
uint8   I_CMP_Rx_Test=0;
uint8  CVM1_VMax_Rx_Test=0;

uint8 WatchdogCount=0;

uint8 DID_Test=0x55;
uint8 Test_DTC22938=1;
uint8 Test_DTC22940=1;

/* the main function */
int main (void)
{

    if (OS_CORE_ID_MASTER == GetCoreID())
    {
		
        /* Board init is not used at this time*/
        /* The user responsibility is to initialize the PLL,watch dog,etc. */
        BoardInit(); /* Disable watch dog, set up the clocks, etc*/
		
		StartCore(0,&statusStartCoreOne);

		/* MCU Init */
		Mcu_Init(&McuModuleConfiguration);
		Mcu_InitClock(McuClockSettingConfig);

		 //BoardInit2(); 
		
		while ( MCU_PLL_LOCKED != Mcu_GetPllStatus() )
		{
			/* wait until all enabled PLLs are locked */
		}
		

		/* switch system clock tree to PLL */
		Mcu_DistributePllClock();
		

		Port_Init(&PortConfigSet);
		Dio_Init(NULL_PTR);
		Spi_Init(&SpiDriver);
		Spi_SetAsyncMode(SPI_POLLING_MODE);
		
		CANTRCV_31_UJA1132_INIT(NULL_PTR);
		LinTrcv_31_UJA1132_Init();
		//CANTRCV_31_TJA1145_INIT(&CanTrcvConfigSet);
		Spi_SetupEB((Spi_ChannelType)SpiConf_SpiChannel_SpiChannel_CANA_TJA1145,(P2CONST(Spi_DataType, AUTOMATIC, SPI_APPL_CONST))&SpiWordWrite, (P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_CONST))&SpiWordRead, (Spi_NumberOfDataType)(2));
		Spi_SyncTransmit((Spi_SequenceType)SpiConf_SpiSequence_SpiSequence_CAND_TJA1145);
		
		Eep_31_AT25256B_Init(&EepInit_Config);
		
		Adc_Init(&AdcConfigSet);
		Pwm_Init(&PwmChannelConfigSet);
		
		Gpt_Init(&GptChannelConfigSet);
		Gpt_EnableNotification(GptConf_GptChannelConfiguration_GptChannel_Wdg);
		Wdg_43_Instance1_Init(&WdgSettingsConfig);
		WdgIf_SetTriggerCondition(WdgIfConf_WdgIfDevice_WdgIfDevice,8000);
		WdgM_Init(&WdgMConfigSet);
		
        if(E_OK == statusStartCoreOne)
        {
            /* Start the SHOW */
            StartOS(OSDEFAULTAPPMODE);
        }
        else
        {
            /* fatal error */
            while(1){;}
        }
    }
    else
    {
        /* Start the SHOW */
        StartOS(DONOTCARE);
    }

    return 0; /* This line will not be reached */
}


TASK(OsTask_Core1_StartUp)
{
	
	Can_Init(&CanConfigSet);
	Can_SetControllerMode(CanConf_CanController_FCU_CanCluster, CAN_T_START);
	Can_SetControllerMode(CanConf_CanController_CanController_CAND, CAN_T_START);
	CanIf_Init(&CanIfInitCfg);
	PduR_Init(&PduRRoutingTables);
	Com_Init(&ComConfig);
	CanSM_Init(&CanSMConfiguration);
    	ComM_Init(&ComMConfigSet);
	CanTp_Status= CANTP_OFF;
	CanTp_Init(&CanTpConfig);
	Dcm_Init(&DcmConfigSet);
   	 Dem_PreInit(&DemConfigSet); 
	/** Just Test Dem Function, No DTC info will be read from NvM*/
	Dem_Init();
	Dem_SetOperationCycleState(DemConf_DemOperationCycle_DemOperationCycle, DEM_CYCLE_STATE_START);

	Lin_Init(&LinGlobalConfig);
	LinIf_Init(&LinIfGlobalConfig);
	LinSM_Init(&LinSMConfigSet);
	
	/** Start Alarm Here*/
	SetRelAlarm(OsAlarm_10ms, (TickType)1U, (TickType)10U);
	
	if(E_OK != TerminateTask()) { errorHandler(); }
	
}

TASK(OsTask_Core1_10ms)
{
	static uint8 mCnt = 0;
	
	if(Cnt == 50)
	{
		Dio_FlipChannel(DioConf_DioChannel_DioChannel_LED_A);
		Dio_FlipChannel(DioConf_DioChannel_DioChannel_LED_B);
		Dio_FlipChannel(DioConf_DioChannel_DioChannel_LED_C);
		Dio_FlipChannel(DioConf_DioChannel_DioChannel_LED_D);
		
		Eep_Application_Runnable();
		
		Adc_Application_Runnable(AdcGroup,mCnt);
		mCnt = ~mCnt;
		Cnt=0;
		WatchdogCount++;
	}
	Cnt++;
	
	Can_MainFunction_Write();
	Can_MainFunction_Read();
	Can_MainFunction_BusOff();
	//Can_MainFunction_Wakeup();
    	Can_MainFunction_Mode();
	
	CanIf_MainFunction();
    	CanSM_MainFunction();
	Com_MainFunctionRx();
   	Com_MainFunctionTx();
	
	LinIf_MainFunction();
    	LinSM_MainFunction();
	
	CanTp_MainFunction();
	Dcm_MainFunction();
    	Dem_MainFunction();
	
	/*Test DTC22938*/
	if (Test_DTC22938)
		{
			Dem_SetEventStatus((Dem_EventIdType)DemConf_DemEventParameter_DemEventParameter_22938, DEM_EVENT_STATUS_FAILED);
		}
	if (Test_DTC22940)
		{
			Dem_SetEventStatus((Dem_EventIdType)DemConf_DemEventParameter_DemEventParameter_22940, DEM_EVENT_STATUS_FAILED);
		}
	
	ComM_MainFunction_0();
	ComM_MainFunction_1();
	ModeManagement_MainFunction();
	WdgM_MainFunction();
	
	//Can_Application_Runnable();
	//CANTRCV_31_UJA1132_MAINFUNCTION();
	//CANTRCV_31_TJA1145_MAINFUNCTION();
	//CANTRCV_31_TJA1145_GETOPMODE(CANTRCVTJA1145Conf_CanTrcvChannel_CanTrcvChannel_CAND,&TJA1145_CAND_Mode);
	Lin_Application_Runnable();
	
	Spi_MainFunction_Handling();
	Eep_31_AT25256B_MainFunction();
	
	if(E_OK != TerminateTask()) { errorHandler(); }
	
}



void Can_Application_Runnable(void)
{
	Can_PduType PduInfo;
	
	PduInfo.id = 0x200;
    	PduInfo.length = 8;
    	PduInfo.swPduHandle = 0;
    	PduInfo.sdu = DataBufferWrite;

	Com_SendSignal(isigWP_Set_Manual_Tx,DataBufferWrite);	
	Com_SendSignal(isigQ_HRBSet_Manual_Tx,&CanTxDataTest);
	Com_SendSignal(isigDCF_ISet_Manual_Tx,&(DataBufferWrite[2]));

	Com_ReceiveSignal(isigSpd_CMP_Rx,&(Spd_CMP_Rx_Test));
	Com_ReceiveSignal(isigI_CMP_Rx,&(I_CMP_Rx_Test));
	Com_ReceiveSignal(isigCVM1_VMax_Rx,&(CVM1_VMax_Rx_Test));
	
	/** Test CAN_C*/
	//Can_Write(CanIfBufferCfg, &PduInfo);
	
	/** Test CAN_D*/
	Can_Write(CanConf_CanHardwareObject_CanHardwareObject56_Tx_CAND, &PduInfo);

}

void Lin_Application_Runnable(void)
{
	/** Init Lin message*/
	Lin_Tx_Test.Pid = 1;
	Lin_Tx_Test.Cs = LIN_ENHANCED_CS;
	Lin_Tx_Test.Drc= LIN_MASTER_RESPONSE;
	Lin_Tx_Test.Dl = 8;
	Lin_Tx_Test.SduPtr= Lin_Tx_Data;

	//Lin_SendFrame(LinConf_LinChannelConfiguration_LinChannel_SBC,&Lin_Tx_Test);
	Com_SendSignal(ComSignal_Lin_Tx,Lin_Tx_Data);
	Lin_Tx_Data[0]++;
}

void Eep_Application_Runnable(void)
{
	static uint16 i,j=0;
	
	switch (j)
	{
		case 0:
		break;
		case 1:
			for(i=0;i<256;i++)
			{
				EepBufferWrite[i]=i;
			}
			Eep_31_AT25256B_Write(0,EepBufferWrite,256);
		break;
		case 15:
			Eep_31_AT25256B_Read(0,EepBufferRead,256);
		break;
		default:
		break;
	}
	j++;
	
}

void Adc_Application_Runnable(Adc_GroupType AdcGroupId, uint8 Cnt)
{
	Std_ReturnType AdcBufferSetupStatus;
	
	if(Cnt == 0)
	{
		switch (AdcGroupId)
		{
			case AdcGroup:
				AdcBufferSetupStatus = Adc_SetupResultBuffer(AdcGroup,AdcGroup0ResultBuf);
			break;
			default:
			break;
		}
		if(E_OK == AdcBufferSetupStatus)
		{
			/** Start the AdcGroupId group */
			Adc_StartGroupConversion(AdcGroupId);
		}
	}
	else
	{
		switch (AdcGroupId)
		{
			case AdcGroup:
				Adc_ReadGroup(AdcGroup,AdcGroup0DataBuf);
			break;
			default:
			break;
		}
	}
}

void ModeManagement_MainFunction(void)
{
    switch(Application_State_Can)
    {
        case CAN_CHANNEL_INIT:
			ComM_CommunicationAllowed(ComM_CanCluster, TRUE);
			ComM_RequestComMode(ComM_CanCluster_User, COMM_FULL_COMMUNICATION);
			ComM_CommunicationAllowed(ComM_ComMChannel_Lin, TRUE);
			ComM_RequestComMode(ComM_ComMUser_Lin, COMM_FULL_COMMUNICATION);
            		Application_State_Can = CAN_CHANNEL_PNC_FULLCOMM_REQ;
       break;
	   
	case CAN_CHANNEL_PNC_FULLCOMM_REQ:
			Application_State_Can = CAN_CHANNEL_PNC_FULLCOMM_OK;
	break;
	
       case CAN_CHANNEL_PNC_FULLCOMM_OK:
            		Com_SetIpduGroup(ipduGroupVector,ipdugroupFCUIN , TRUE);
            		Com_SetIpduGroup(ipduGroupVector,ipdugroupFCUOUT , TRUE);
            		Com_IpduGroupControl(ipduGroupVector, TRUE);
			LinSM_ScheduleRequest(LinSMConf_LinSMChannel_LinSMChannel,LinSMConf_LinSMSchedule_LinSMSchedule);
            		Application_State_Can = CAN_CHANNEL_RUN;
       break;
	   
       case CAN_CHANNEL_RUN:
            		Can_Application_Runnable();
       break;
            
    }
} 
FUNC(Std_ReturnType, DCM_READ_DID_0X2345_CODE) Read_DID_0x2345(P2VAR(uint8, AUTOMATIC, DCM_APPL_DATA) Data)
{
	*Data=DID_Test;
	return E_OK;
}

FUNC(Std_ReturnType, DCM_WRITE_DID_0X2345_CODE) Write_DID_0x2345(P2CONST(uint8, AUTOMATIC, DCM_APPL_DATA) Data, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode)
{
	DID_Test=*Data;
	return E_OK;
}


/* the errorHandler function */
void errorHandler (void)
{
    ShutdownOS(0);
}

FUNC (void, AUTOMATIC) StartupHook(void)
{

}

FUNC (void, AUTOMATIC) ShutdownHook(VAR (StatusType, AUTOMATIC) Error)
{

}

TASK(OsTask_Core0_20ms)
{
	
	if(E_OK != TerminateTask()) { errorHandler(); }
}

/*****************************************************************************/
/*****************************  END OF FILE **********************************/
/*****************************************************************************/
