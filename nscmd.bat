@echo off

SET Obj_Length=5


SET Obj[0]=github.com
@Rem SET Obj[1]=github.global.ssl.fastly.net
SET Obj[2]=gist.github.com
SET Obj[3]=github.githubassets.com
SET Obj[4]=assets-cdn.github.com

echo #github start > hosts

SET Obj_Index=0
:LoopStart
IF %Obj_Index% EQU %Obj_Length% GOTO LoopEnd
SET Obj_Current=0
FOR /F "usebackq delims== tokens=1-3" %%I IN (`SET Obj[%Obj_Index%]`) DO (

SET Obj_Current=%%J
)

ECHO Obj_Current = %Obj_Current%
set iptmp= 
for /f "delims=" %%I in ('nslookup %Obj_Current% ^| findstr /i "Address" ^| findstr /v /m "::"') do set iptmp=%%I
set ipaddr=%iptmp:~10%

IF %Obj_Current% neq 0   echo %ipaddr%  %Obj_Current% >> hosts
@Rem IF %Obj_Current% neq 0  ECHO %iptmp%  %ipaddr%  %Obj_Current%
@Rem  pause
SET /A Obj_Index=%Obj_Index% + 1
GOTO LoopStart

:LoopEnd

echo #github end >> hosts



