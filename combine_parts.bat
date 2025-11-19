@echo off
echo ========================================
echo Smart Dispatch Optimizer - Combine Parts
echo ========================================
echo.

echo This will combine all SmartDispatchOptimizer_Part*.zip files
echo into one complete SmartDispatchOptimizer_Distribution.zip
echo.

pause

echo.
echo Checking for all part files...
echo.

set MISSING=0
if not exist "SmartDispatchOptimizer_Part01.zip" (
    echo ERROR: SmartDispatchOptimizer_Part01.zip not found!
    set MISSING=1
)
if not exist "SmartDispatchOptimizer_Part02.zip" (
    echo ERROR: SmartDispatchOptimizer_Part02.zip not found!
    set MISSING=1
)
if not exist "SmartDispatchOptimizer_Part03.zip" (
    echo ERROR: SmartDispatchOptimizer_Part03.zip not found!
    set MISSING=1
)
if not exist "SmartDispatchOptimizer_Part04.zip" (
    echo ERROR: SmartDispatchOptimizer_Part04.zip not found!
    set MISSING=1
)
if not exist "SmartDispatchOptimizer_Part05.zip" (
    echo ERROR: SmartDispatchOptimizer_Part05.zip not found!
    set MISSING=1
)
if not exist "SmartDispatchOptimizer_Part06.zip" (
    echo ERROR: SmartDispatchOptimizer_Part06.zip not found!
    set MISSING=1
)

if %MISSING%==1 (
    echo.
    echo MISSING FILES! Please download ALL parts to this folder.
    echo.
    pause
    exit /b 1
)

echo.
echo All parts found! Combining...
echo.

powershell -Command "& {Get-Content SmartDispatchOptimizer_Part*.zip -Raw | Set-Content SmartDispatchOptimizer_Distribution.zip -NoNewline; Write-Host 'Combined successfully!' -ForegroundColor Green}"

echo.
echo ========================================
echo Combination Complete!
echo ========================================
echo.
echo Created: SmartDispatchOptimizer_Distribution.zip
echo.
echo You can now extract SmartDispatchOptimizer_Distribution.zip
echo.
pause

