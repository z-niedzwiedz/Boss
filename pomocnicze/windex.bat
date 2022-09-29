@echo off
cd \sm\bin
echo ***** start ***** >>%0.log
echo %date% %time% >>%0.log
del ..\instal\uzytk*.ntx
if exist ..\instal\uzytk*.ntx goto usterka
wbossinst i
type ..\instal\inde.prn >>%0.log
echo %date% %time% >>%0.log
goto koniec
:usterka
echo .>>%0.log
echo USTERKA!!!>>%0.log
:koniec
echo ***** koniec ***** >>%0.log
