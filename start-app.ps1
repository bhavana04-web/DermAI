Write-Host "Starting DermAI Application..." -ForegroundColor Green
Write-Host ""

# Step 1: Install frontend dependencies
Write-Host "Step 1: Installing frontend dependencies..." -ForegroundColor Yellow
Set-Location $PSScriptRoot
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error installing frontend dependencies" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Step 2: Install backend dependencies
Write-Host ""
Write-Host "Step 2: Installing backend dependencies..." -ForegroundColor Yellow
Set-Location "src\Server"
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error installing backend dependencies" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Step 3: Start backend server
Write-Host ""
Write-Host "Step 3: Starting backend server..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "npm run dev" -WindowStyle Normal

# Step 4: Start frontend application
Write-Host ""
Write-Host "Step 4: Starting frontend application..." -ForegroundColor Yellow
Set-Location $PSScriptRoot
Start-Sleep -Seconds 3
Start-Process powershell -ArgumentList "-NoExit", "-Command", "npm run dev" -WindowStyle Normal

Write-Host ""
Write-Host "Application is starting..." -ForegroundColor Green
Write-Host "Backend will be available at: http://localhost:5000" -ForegroundColor Cyan
Write-Host "Frontend will be available at: http://localhost:5173" -ForegroundColor Cyan
Write-Host ""
Write-Host "Press Enter to close this window..." -ForegroundColor Gray
Read-Host
