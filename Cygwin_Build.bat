@echo off

set CurrentDirectory=%CD%
set CurrentDirectory=%CurrentDirectory:\=/%
set CurrentDirectory=%CurrentDirectory::=%

d:
chdir D:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\TTs\cygwin\bin

set HOME=/cygdrive/%CurrentDirectory%


bash --login -i

