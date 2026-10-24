@echo off
REM Sube el repo del desafio a GitHub.  Uso:  versionar "que cambio"
setlocal
cd /d "%~dp0"
set "MSG=%~1"
if "%MSG%"=="" set "MSG=Atualizacao %date% %time:~0,5%"
git add -A
git diff --cached --quiet && (echo Nada para versionar.) || git commit -m "%MSG%"
git remote get-url origin >nul 2>&1 || git remote add origin https://Patriz1@github.com/Patriz1/Controle-de-acesso-biometria.git
git push -u origin main
git log --oneline -3
endlocal
