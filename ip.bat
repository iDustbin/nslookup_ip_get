@echo off
set OUTPUTFILE=Results\Results.txt
set lookup=HostNames.txt
FOR /F %%i in (%lookup%) do ( 
 FOR /F "skip=3 delims=: tokens=2" %%j in ('echo(^|nslookup %%i') do @echo %%i %%j >> %OUTPUTFILE%
)