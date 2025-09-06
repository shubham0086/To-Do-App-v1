# Todo App Setup Script for Windows PowerShell

Write-Host "Setting up Todo App..." -ForegroundColor Green

# Install backend dependencies
Write-Host "Installing backend dependencies..." -ForegroundColor Yellow
try {
    & "C:\Program Files\nodejs\npm.cmd" install
    Write-Host "Backend dependencies installed successfully!" -ForegroundColor Green
} catch {
    Write-Host "Error installing backend dependencies: $_" -ForegroundColor Red
    exit 1
}

# Install frontend dependencies
Write-Host "Installing frontend dependencies..." -ForegroundColor Yellow
try {
    Set-Location client
    & "C:\Program Files\nodejs\npm.cmd" install
    Set-Location ..
    Write-Host "Frontend dependencies installed successfully!" -ForegroundColor Green
} catch {
    Write-Host "Error installing frontend dependencies: $_" -ForegroundColor Red
    exit 1
}

Write-Host "Setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "To run the application:" -ForegroundColor Cyan
Write-Host "1. Backend only: C:\Program Files\nodejs\npm.cmd run server" -ForegroundColor White
Write-Host "2. Frontend only: cd client && C:\Program Files\nodejs\npm.cmd start" -ForegroundColor White
Write-Host "3. Both (dev mode): C:\Program Files\nodejs\npm.cmd run dev" -ForegroundColor White
Write-Host ""
Write-Host "Application will be available at:" -ForegroundColor Cyan
Write-Host "- Frontend: http://localhost:3000" -ForegroundColor White
Write-Host "- Backend API: http://localhost:5000" -ForegroundColor White
