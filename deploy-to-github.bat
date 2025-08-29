@echo off
echo ========================================
echo    Campus Event App - GitHub Deploy
echo ========================================
echo.

echo Step 1: Initializing Git repository...
git init

echo.
echo Step 2: Adding all files...
git add .

echo.
echo Step 3: Making initial commit...
git commit -m "Initial commit: Campus Event App with complete deployment setup"

echo.
echo Step 4: Setting main branch...
git branch -M main

echo.
echo ========================================
echo    NEXT STEPS:
echo ========================================
echo.
echo 1. Create a new repository on GitHub
echo 2. Copy the repository URL
echo 3. Run this command (replace YOUR_USERNAME and REPO_NAME):
echo    git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
echo 4. Then run:
echo    git push -u origin main
echo.
echo ========================================
echo.
pause 