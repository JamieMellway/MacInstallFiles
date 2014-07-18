echo off
if "%1" == "/rem" goto REMOVE 
if "%1" == "/REM" goto REMOVE 
C:\VOYETRA\VAPIMPU.COM /addr:330 %1 %2 %3
goto OUT 
:REMOVE 
C:\VOYETRA\VAPIMPU.COM /rem
:OUT 
