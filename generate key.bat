@echo off
for /F %%i in ('premier.bat') do set Q=%%i
for /F %%i in ('premier.bat') do set P=%%i
set /a N=P*Q
for /F %%i in ('premier.bat') do set C=%%i
set /a M=(P-1)*(Q-1)
for /F %%i in ('bezout -rsa %C% %M%') do set U=%%i
echo.
echo cle public (%N%, %C%) (N, C)
echo (%N%, %C%) > public
echo cle privee (%U%, %N%) (U, N)
echo (%U%, %N%) > private
pause