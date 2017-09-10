@echo off
set /p v=Crypt: 
set /p U=U: 
set /p N=N: 
for /F %%i in ('calculs_RSA.exe %v% %U% %N%') do set Q=%%i
echo Valeur decrypter: %Q%
echo %Q% > decrypter
pause