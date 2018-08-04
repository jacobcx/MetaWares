#include "Port.h"
#include "Dio.h"
#include "Mcu.h"
#include "EcuM.h"
#include "CanIf.h"
#include "LinIf.h"
#include "Can.h"
#include "Can_GeneralTypes.h"
#include "Ea.h"
#include "Eep_31_AT25256B.h"
#include "Crc.h"
#include "NvM.h"
#include "Dem.h"
#include "Adc.h"
#include "ComM.h"
#include "CanSM.h"
#include "LinSM.h"
#include "PduR.h"
#include "Dcm.h"
#include "SchM_Dcm.h"
#include "Dem.h"
#include "Rte_WdgM.h"

uint8 Seed_Test[2]={0x12,0x34};
uint8 Key_Test[2]={0x00,0x00};
uint8 index=0;

CONST(struct Rte_CDS_WdgM, RTE_CONST) Rte_Instance_WdgM =
{
   /* Data Handles section. -----------------------*/
   /* Per-instance Memory Handles section. --------*/
   /* Inter-runnable Variable Handles section. ----*/
   /* Calibration Parameter Handles section. ------*/
   /* Exclusive-area API section. -----------------*/
   /* Port API section. ---------------------------*/
   /* Inter Runnable Variable API section. --------*/
   /* Inter Runnable Triggering API section. ------*/
   /* Vendor specific section. --------------------*/
   0
};

CONSTP2CONST(struct Rte_CDS_WdgM, RTE_CONST, RTE_APPL_CONST) Rte_Inst_WdgM = &Rte_Instance_WdgM;


FUNC(void, RTE_CODE) SchM_Enter_Mcu_MCU_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcu_MCU_EXCLUSIVE_AREA_00(void){}

FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Port_PORT_EXCLUSIVE_AREA_30(void){}

FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Port_PORT_EXCLUSIVE_AREA_30(void){}


FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_30(void){}

FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_30(void){}


FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_30(void){}

FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_30(void){}

FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_30(void){}

FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_30(void){}

FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_30(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_31(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_32(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_33(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_34(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_35(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_36(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_37(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_38(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_39(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_40(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_41(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_42(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_43(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_44(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_45(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_46(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_47(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_48(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_49(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_50(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_51(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_52(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_53(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_54(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_55(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_56(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_57(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_58(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_59(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_60(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_61(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_62(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_63(void){}
FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_64(void){}

FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_30(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_31(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_32(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_33(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_34(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_35(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_36(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_37(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_38(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_39(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_40(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_41(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_42(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_43(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_44(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_45(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_46(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_47(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_48(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_49(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_50(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_51(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_52(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_53(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_54(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_55(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_56(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_57(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_58(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_59(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_60(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_61(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_62(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_63(void){}
FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_64(void){}

FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_30(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_31(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_32(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_33(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_34(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_35(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_36(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_37(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_38(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_39(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_40(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_41(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_42(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_43(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_44(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_45(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_46(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_47(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_48(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_49(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_50(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_51(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_52(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_53(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_54(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_55(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_56(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_57(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_58(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_59(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_60(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_61(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_62(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_63(void){}
FUNC(void, RTE_CODE) SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_64(void){}

FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_30(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_31(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_32(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_33(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_34(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_35(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_36(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_37(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_38(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_39(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_40(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_41(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_42(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_43(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_44(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_45(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_46(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_47(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_48(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_49(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_50(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_51(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_52(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_53(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_54(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_55(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_56(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_57(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_58(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_59(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_60(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_61(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_62(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_63(void){}
FUNC(void, RTE_CODE) SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_64(void){}

FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_30(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_31(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_32(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_33(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_34(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_35(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_36(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_37(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_38(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_39(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_40(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_41(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_42(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_43(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_44(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_45(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_46(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_47(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_48(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_49(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_50(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_51(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_52(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_53(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_54(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_55(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_56(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_57(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_58(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_59(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_60(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_61(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_62(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_63(void){}
FUNC(void, RTE_CODE) SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_64(void){}

FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_30(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_31(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_32(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_33(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_34(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_35(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_36(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_37(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_38(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_39(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_40(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_41(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_42(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_43(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_44(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_45(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_46(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_47(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_48(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_49(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_50(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_51(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_52(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_53(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_54(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_55(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_56(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_57(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_58(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_59(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_60(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_61(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_62(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_63(void){}
FUNC(void, RTE_CODE) SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_64(void){}

FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Can_CAN_EXCLUSIVE_AREA_30(void){}

FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Can_CAN_EXCLUSIVE_AREA_30(void){}

void EcuM_CheckWakeup(EcuM_WakeupSourceType WakeupSource){}
void EcuM_SetWakeupEvent(EcuM_WakeupSourceType WakeupSource){}

FUNC(void, RTE_CODE) SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1(void){}

/*									   
FUNC(void, CANIF_CODE)CanIf_TrcvModeIndication
(
    VAR(uint8,AUTOMATIC) Transceiver,
    VAR(CanTrcv_TrcvModeType,AUTOMATIC) TransceiverMode
){}
*/

FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Lin_LIN_EXCLUSIVE_AREA_30(void){}

FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Lin_LIN_EXCLUSIVE_AREA_30(void){}

FUNC(void, RTE_CODE)SchM_Enter_Eep_31_AT25256B_EaProcess(void){}
FUNC(void, RTE_CODE)SchM_Exit_Eep_31_AT25256B_EaProcess(void){}
FUNC(void, RTE_CODE)SchM_Enter_Eep_31_AT25256B_EaMainFunctionArea(void){}
FUNC(void, RTE_CODE)SchM_Exit_Eep_31_AT25256B_EaMainFunctionArea(void){}
FUNC(void, RTE_CODE)SchM_Enter_Ea_EaStateChange(void){}
FUNC(void, RTE_CODE)SchM_Exit_Ea_EaStateChange(void){}
FUNC(void, RTE_CODE) SchM_Enter_NvM_EaServiceProcessQueue(void){}
FUNC(void, RTE_CODE) SchM_Exit_NvM_EaServiceProcessQueue(void){}
FUNC(uint16, CRC_CODE) Crc_CalculateCRC16
(
      P2CONST(uint8, AUTOMATIC, CRC_APPL_CONST) Crc_DataPtr,
      VAR(uint32, AUTOMATIC)                    Crc_Length,
      VAR(uint16, AUTOMATIC)                    Crc_StartValue16,
      VAR(boolean,AUTOMATIC)                    Crc_IsFirstCall

){}

FUNC(void, BSWM_CODE) BswM_NvM_CurrentJobMode( uint8 ServiceId, NvM_RequestResultType CurrentJobMode){}
FUNC(void, BSWM_CODE) BswM_NvM_CurrentBlockMode(NvM_BlockIdType Block, NvM_RequestResultType CurrentBlockMode){}
//void Dem_ReportErrorStatus(Dem_EventIdType EventId, Dem_EventStatusType EventStatus){}


FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_30(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_31(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_32(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_33(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_34(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_35(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_36(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_37(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_38(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_39(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_40(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_41(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_42(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_43(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_44(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_45(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_46(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_47(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_48(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_49(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_50(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_51(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_52(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_53(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_54(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_55(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_56(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_57(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_58(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_59(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_60(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_61(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_62(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_63(void){}
FUNC(void, RTE_CODE) SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_64(void){}

FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_00(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_01(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_02(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_03(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_04(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_05(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_06(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_09(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_10(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_11(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_12(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_13(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_15(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_16(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_17(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_18(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_19(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_20(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_21(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_22(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_23(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_24(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_25(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_26(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_27(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_28(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_29(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_30(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_31(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_32(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_33(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_34(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_35(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_36(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_37(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_38(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_39(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_40(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_41(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_42(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_43(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_44(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_45(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_46(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_47(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_48(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_49(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_50(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_51(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_52(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_53(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_54(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_55(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_56(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_57(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_58(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_59(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_60(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_61(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_62(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_63(void){}
FUNC(void, RTE_CODE) SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_64(void){}


FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaActStatusProtect(void){}
FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaActStatusProtect(void){}

FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaActivityFlagProtect(void){}
FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaActivityFlagProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaAliveCountProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaAliveCountProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaAliveSupResultProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaAliveSupResultProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaDeadlineSupResultProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaDeadlineSupResultProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaDeadlineTimerProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaDeadlineTimerProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaEntStatusProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaEntStatusProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaGlobalStatusProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaGlobalStatusProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaLogicalSupResultProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaLogicalSupResultProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaSupervisionCycleProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaSupervisionCycleProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaTriggerCountProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaTriggerCountProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaTriggerCycleVarProtect(void){}
 FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaTriggerCycleVarProtect(void){}

 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_00(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_01(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_02(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_03(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_04(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_05(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_06(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_07(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_08(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_09(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_10(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_11(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_12(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_13(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_14(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_15(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_16(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_17(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_18(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_19(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_20(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_21(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_22(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_23(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_24(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_25(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_26(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_27(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_28(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_29(void){}
 FUNC(void, RTE_CODE) SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_30(void){}

 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_00(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_01(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_02(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_03(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_04(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_05(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_06(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_07(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_08(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_09(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_10(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_11(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_12(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_13(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_14(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_15(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_16(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_17(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_18(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_19(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_20(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_21(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_22(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_23(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_24(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_25(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_26(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_27(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_28(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_29(void){}
 FUNC(void, RTE_CODE) SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_30(void){}


FUNC(void, RTE_CODE) SchM_Enter_CanIf_EXCLUSIVE_AREA_0(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanIf_EXCLUSIVE_AREA_0(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanNm_ExclEiraEra(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanNm_ExclEiraEra(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanNm_ExclRxBuffer(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanNm_ExclRxBuffer(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanNm_ExclTxBuffer(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanNm_ExclTxBuffer(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanNm_ExclusiveArea0(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanNm_ExclusiveArea0(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanSM_Area_0(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanSM_Area_0(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanSM_Area_1(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanSM_Area_1(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanSM_Area_2(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanSM_Area_2(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanTp_Area_0(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanTp_Area_0(void){}
FUNC(void, RTE_CODE) SchM_Enter_CanTp_Area_1(void){}
FUNC(void, RTE_CODE) SchM_Exit_CanTp_Area_1(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_APPLICAITON_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_APPLICAITON_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_APPLICAITON_FOREGROUND(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_APPLICAITON_FOREGROUND(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_APPLICATION_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_APPLICATION_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_MAIN_DEFERRED_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_MAIN_DEFERRED_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_MAIN_DEFERRED_FOREGROUND(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_MAIN_DEFERRED_FOREGROUND(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_MAIN_IMMEDIATE_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_MAIN_IMMEDIATE_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_MAIN_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_MAIN_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_RXIND_DEFERRED_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_RXIND_DEFERRED_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_RXIND_IMMEDIATE_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_RXIND_IMMEDIATE_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_TP_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_TP_BACKGROUND(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_TP_FOREGROUND(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_TP_FOREGROUND(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_TP_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_TP_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_TRIGGER_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_TRIGGER_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Enter_Com_COM_TXCONF_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Exit_Com_COM_TXCONF_TXIPDU(void){}
FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_Channel0_StateMachine(void){}
FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_Channel0_StateMachine(void){}
FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_Channel1_StateMachine(void){}
FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_Channel1_StateMachine(void){}
FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_Channel2_StateMachine(void){}
FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_Channel2_StateMachine(void){}
FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_Channel3_StateMachine(void){}
FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_Channel3_StateMachine(void){}
FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_InhibitionCounter(void){}
FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_InhibitionCounter(void){}
FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_ModeIndication(void){}
FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_ModeIndication(void){}
FUNC(void, RTE_CODE) SchM_Enter_PduR_IFBUFFER_EXCLUSIVE_AREA(void){}
FUNC(void, RTE_CODE) SchM_Exit_PduR_IFBUFFER_EXCLUSIVE_AREA(void){}
FUNC(void, RTE_CODE) SchM_Enter_PduR_ROUTINGPATHGROUP_EXCLUSIVE_AREA(void){}
FUNC(void, RTE_CODE) SchM_Exit_PduR_ROUTINGPATHGROUP_EXCLUSIVE_AREA(void){}
FUNC(void, RTE_CODE) SchM_Enter_PduR_TPBUFFER_EXCLUSIVE_AREA(void){}
FUNC(void, RTE_CODE) SchM_Exit_PduR_TPBUFFER_EXCLUSIVE_AREA(void){}


FUNC(Std_ReturnType, BSWM_CODE) BswM_ComM_CurrentMode(VAR(NetworkHandleType,AUTOMATIC) Network, CONST(ComM_ModeType,AUTOMATIC) RequestedMode)
{
    return E_OK;
}

FUNC(void, BSWM_CODE) BswM_ComM_CurrentPNCMode(PNCHandleType PNC, ComM_PncModeType RequestedMode)
{

}
FUNC(void,BSWM_CODE) BswM_CanSM_CurrentState(NetworkHandleType Network, CanSM_BswMCurrentStateType CurrentState)
{
}
FUNC(void, BSWM_CODE) BswM_LinSM_CurrentState(NetworkHandleType Network, LinSM_ModeType CurrentState){}
FUNC(void, BSWM_CODE) BswM_LinSM_CurrentSchedule(NetworkHandleType Network, LinIf_SchHandleType CurrentSchedule){}



FUNC(Std_ReturnType, RTE_CODE) Rte_Switch_ComM_P_CurrentMode_CanCluster_User_currentMode(uint8 mode){}
FUNC(Std_ReturnType, RTE_CODE) Rte_Switch_ComM_P_CurrentMode_ComMUser_Lin_currentMode(uint8 mode){}

FUNC(void, RTE_CODE) SchM_Enter_LinIf_ExclusiveArea0(void){}
FUNC(void, RTE_CODE) SchM_Exit_LinIf_ExclusiveArea0(void){}
FUNC(void, RTE_CODE) SchM_Enter_LinSM_ExclusiveArea0(void){}
FUNC(void, RTE_CODE) SchM_Exit_LinSM_ExclusiveArea0(void){}


FUNC(void, RTE_CODE) SchM_Enter_Dem_EaClearDtc(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaClearDtc(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dem_EaDebounceCounter(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaDebounceCounter(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dem_EaDebounceTime(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaDebounceTime(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dem_EaEventStateBuffer(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaEventStateBuffer(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dem_EaEventStatus(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaEventStatus(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dem_EaNvStorageOngoing(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaNvStorageOngoing(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dem_EaObdOdometer(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaObdOdometer(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dem_EaObdTime(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaObdTime(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dem_EaOpCycleQueue(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaOpCycleQueue(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dem_EaPrestorageFF(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaPrestorageFF(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dem_EaSi(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dem_EaSi(void){}
FUNC(void, RTE_CODE) SchM_Enter_Dcm_EaRxBuffers(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dcm_EaRxBuffers(void){}

FUNC(void, RTE_CODE) SchM_Enter_Dcm_EaTimers(void){}
FUNC(void, RTE_CODE) SchM_Exit_Dcm_EaTimers(void){}

FUNC(Std_ReturnType, RTE_CODE) Rte_Call_SecurityAccess_DcmDspSecurityRow_GetSeed(Dcm_OpStatusType OpStatus, P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Seed, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode)
{
	*Seed=*Seed_Test;
	*(Seed+1)=*(Seed_Test+1);
	return E_OK;
}
FUNC(Std_ReturnType, RTE_CODE) Rte_Call_SecurityAccess_DcmDspSecurityRow_CompareKey(P2CONST(uint8, AUTOMATIC, RTE_APPL_DATA) Key, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode)
{
	//Key_Test=Key;
	//*Key=*Key_Test;
	//*(Key+1)=*(Key_Test+1);
	Key_Test[0]=*Key;
	Key_Test[1]=*(Key+1);
	if((Key_Test[0]==0x12)&&(Key_Test[1]==0x39))
	{
		return E_OK;
	}
	else
	{
		*ErrorCode=0x35;	//invalid Key
		return E_NOT_OK;
	}
	return E_NOT_OK;
}
FUNC(Dcm_EcuStartModeType, DCM_CODE) Dcm_GetProgConditions(P2VAR(Dcm_ProgConditionsType, AUTOMATIC, DCM_APPL_DATA) ProgConditions){}
FUNC(Std_ReturnType, DCM_CODE) Dcm_SetProgConditions(P2VAR(Dcm_ProgConditionsType, AUTOMATIC, DCM_APPL_DATA) ProgConditions){}
Std_ReturnType Det_ReportError(uint16 ModuleId, uint8 InstanceId,uint8 ApiId, uint8 ErrorId){}
FUNC(void, BSWM_CODE) BswM_Dcm_CommunicationMode_CurrentState (NetworkHandleType Network, Dcm_CommunicationModeType RequestedMode){}

/* Mode management prototypes  -----------------------------------------------*/
FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmEcuReset(uint8 mode){}
FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmModeRapidPowerShutDown(uint8 mode){}
FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmControlDTCSetting(uint8 mode){}
FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmCommunicationControl(uint8 mode){}
FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmDiagnosticSessionControl(uint8 mode){}
FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmEcuReset(void){}
FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmModeRapidPowerShutDown(void){}
FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmControlDTCSetting(void){}
FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmCommunicationControl(void){}
FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmDiagnosticSessionControl(void){}
/* Internal and External Trigger prototypes  ---------------------------------*/
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_CommunicationControl(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_CommunicationControl */
   //Dcm_SE_Dcm_CommunicationControl();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ControlDTCSetting(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_ControlDTCSetting */
   //Dcm_SE_Dcm_ControlDTCSetting();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_DiagnosticSessionControl(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_DiagnosticSessionControl */
   Dcm_SE_Dcm_DiagnosticSessionControl();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_EcuReset(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_EcuReset */
   //Dcm_SE_Dcm_EcuReset();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ReadDTCInformation(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_ReadDTCInformation */
   Dcm_SE_Dcm_ReadDTCInformation();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ReadDataByIdentifier(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_ReadDataByIdentifier */
   Dcm_SE_Dcm_ReadDataByIdentifier();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ReadMemoryByAddress(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_ReadMemoryByAddress */
   //Dcm_SE_Dcm_ReadMemoryByAddress();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_RequestDownload(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_RequestDownload */
   //Dcm_SE_Dcm_RequestDownload();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_RequestTransferExit(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_RequestTransferExit */
   //Dcm_SE_Dcm_RequestTransferExit();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_RoutineControl(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_RoutineControl */
   //Dcm_SE_Dcm_RoutineControl();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_SecurityAccess(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_SecurityAccess */
   Dcm_SE_Dcm_SecurityAccess();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_TesterPresent(void)
{
	/* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_TesterPresent */
   Dcm_SE_Dcm_TesterPresent();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_TransferData(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_TransferData */
   //Dcm_SE_Dcm_TransferData();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_WriteDataByIdentifier(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_WriteDataByIdentifier */
   Dcm_SE_Dcm_WriteDataByIdentifier();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_WriteMemoryByAddress(void)
{
   /* Direct call of BSW-INTERNAL-TRIGGER-OCCURRED-EVENT: IntTrOccEv_Dcm_WriteMemoryByAddress */
   //Dcm_SE_Dcm_WriteMemoryByAddress();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ClearDiagnosticInformation(void)
{
	Dcm_SE_Dcm_ClearDiagnosticInformation();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_DsdStateMachine(void)
{
	Dcm_SE_DsdStateMachine();
}
FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine(void)
{
	Dcm_SE_DslStateMachine();
}

FUNC(Std_ReturnType, RTE_CODE) Rte_Switch_globalMode_currentMode(uint8 mode){}
