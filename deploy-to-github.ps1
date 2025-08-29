Write-Host "========================================" -ForegroundColor Green
Write-Host "    Campus Event App - GitHub Deploy" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

Write-Host "Step 1: Initializing Git repository..." -ForegroundColor Yellow
git init

Write-Host ""
Write-Host "Step 2: Adding all files..." -ForegroundColor Yellow
git add .

Write-Host ""
Write-Host "Step 3: Making initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Campus Event App with complete deployment setup"

Write-Host ""
Write-Host "Step 4: Setting main branch..." -ForegroundColor Yellow
git branch -M main

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "    NEXT STEPS:" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "1. Create a new repository on GitHub" -ForegroundColor Cyan
Write-Host "2. Copy the repository URL" -ForegroundColor Cyan
Write-Host "3. Run this command (replace YOUR_USERNAME and REPO_NAME):" -ForegroundColor Cyan
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git" -ForegroundColor White
Write-Host "4. Then run:" -ForegroundColor Cyan
Write-Host "   git push -u origin main" -ForegroundColor White
Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Read-Host "Press Enter to continue" 