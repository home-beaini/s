@echo off

rem Stop and delete the legacy SunshineSvc service
net stop updatecheckdsvc
sc delete updatecheckdsvc

rem Stop and delete the new updatecheckdService service
net stop updatecheckdService
sc delete updatecheckdService
