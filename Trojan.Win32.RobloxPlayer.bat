@echo off
set /p pytanie=Czy na pewno chcesz odtworzyć tego wirusa? Ten wirus jest potężny i rozwali twojego windowsa! Odpalaj na własną odpowiedzialność! Kontynuujemy?

if %pytanie% tak start plikstartowy.bat
if %pytanie% nie exit