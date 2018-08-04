call WindRiverEnvironment.cmd

@del /q /s D:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\Application\MetaWares\objs\MPC5746R_ECU\WindRiver\stub.*
@set /a StartH=%time:~0,2%
@set /a StartM=%time:~3,2%
@set /a StartS=%time:~6,2%
@set StartTime=%time%

@make -f../../BuildSystem/makefile TARGET_DERIVATIVE=MPC5746R TARGET_CPU=PowerPC TARGET_COMPILER=WindRiver TARGET_PLATFORM=MPC5746R_ECU VSTAR_AR_VERSION=422 DEBUG=1 %* 

@set /a EndH=%time:~0,2%
@set /a EndM=%time:~3,2%
@set /a EndS=%time:~6,2%
@set EndTime=%time%

@set /a TotalS=(%EndH%*3600)+(%EndM%*60)+%EndS%-(%StartH%*3600)-(%StartM%*60)-%StartS%
@set /a diffM=%TotalS%/60
@set /a diffS=%TotalS% %% 60

@echo 编译开始时间： %StartTime%
@echo 编译结束时间： %EndTime%
@echo 程序运行时间： %diffM%分钟%diffS%秒
@echo 编译成功！
@pause