@echo off
echo Starting DermAI Application...
echo.

echo Step 1: Installing frontend dependencies...
cd /d "%~dp0"
call npm install
if %errorlevel% neq 0 (
    echo Error installing frontend dependencies
    pause
    exit /b 1
)

echo.
echo Step 2: Installing backend dependencies...
cd src\Server
call npm install
if %errorlevel% neq 0 (
    echo Error installing backend dependencies
    pause
    exit /b 1
)

echo.
echo Step 3: Starting backend server...
start "DermAI Backend" cmd /k "npm run dev"

echo.
echo Step 4: Starting frontend application...
cd /d "%~dp0"
timeout /t 3 /nobreak >nul
start "DermAI Frontend" cmd /k "npm run dev"

echo.
echo Application is starting...
echo Backend will be available at: http://localhost:5000
echo Frontend will be available at: http://localhost:5173
echo.
echo Press any key to close this window...
pause >nul
