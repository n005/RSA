@echo off
set /p v=Crypt: 
set /p N=N: 
set /p C=C: 
for /F %%i in ('calculs_RSA.exe %v% %C% %N%') do set Q=%%i
echo Valeur crypter: %Q%
echo %Q% > crypter
pause