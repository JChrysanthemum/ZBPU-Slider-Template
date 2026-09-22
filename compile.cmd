@echo off
setlocal
cd /d "%~dp0"
if not exist "minted-cache" mkdir "minted-cache"
for %%I in (.) do set "TEMPLATE_DIR=%%~fI"
set "TEXMF_OUTPUT_DIRECTORY=%TEMPLATE_DIR%"
set "TEXMFOUTPUT=%TEMPLATE_DIR%"

xelatex -shell-escape -8bit -interaction=nonstopmode template.tex
if errorlevel 1 exit /b 1
xelatex -shell-escape -8bit -interaction=nonstopmode template.tex
if errorlevel 1 exit /b 1
exit /b 0