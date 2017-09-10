@echo off
 
SETLOCAL ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
 
for /f "tokens=*" %%A in ('type "Premier.txt"') do (
set /a count+=1
set lignes_!count!=%%A
)
:: on choisi un nombre aléatoire avec random entre 1 et %count%
 
set /a alea=%random%%%count%
set /a alea=%alea%+1
 
for /f "tokens=1,* delims==" %%A in ('set ^| Find "lignes_!alea!"') do (
set and=%%B
)
 
echo %and%