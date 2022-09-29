@echo off
del ..\instal\uzytk*.ntx
if exist ..\instal\uzytk*.ntx goto usterka
wbossinst o
type ..\instal\inde.prn >>wreorg.log
goto koniec
:usterka
echo .>>wreorg.log
echo USTERKA!!!>>wreorg.log
:koniec