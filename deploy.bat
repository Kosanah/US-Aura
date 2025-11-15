@echo off
echo ========================================
echo   US Aura Solutions - GitHub Deploy
echo ========================================
echo.
echo Your website is ready to deploy!
echo.
set /p username="Enter your GitHub username: "
echo.
echo Creating repository name: usaura-solutions
echo.
echo Step 1: Create a NEW repository on GitHub
echo   1. Go to: https://github.com/new
echo   2. Repository name: usaura-solutions
echo   3. Keep it PUBLIC
echo   4. Do NOT initialize with README
echo   5. Click 'Create repository'
echo.
pause
echo.
echo Step 2: Pushing your code to GitHub...
echo.

git remote remove origin 2>nul
git remote add origin https://github.com/%username%/usaura-solutions.git
git branch -M main
git push -u origin main

echo.
echo ========================================
echo   SUCCESS! 
echo ========================================
echo.
echo Your website will be live at:
echo https://%username%.github.io/usaura-solutions/
echo.
echo Next: Enable GitHub Pages
echo   1. Go to: https://github.com/%username%/usaura-solutions/settings/pages
echo   2. Under 'Source', select 'main' branch
echo   3. Click 'Save'
echo   4. Wait 2 minutes for deployment
echo.
echo Opening GitHub Pages settings...
start https://github.com/%username%/usaura-solutions/settings/pages
echo.
pause
