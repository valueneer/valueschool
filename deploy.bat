@echo off
cd /d C:\Users\Hendrik\claude\landingpage
echo === Hole Aenderungen von GitHub ===
git pull --rebase
echo.
echo === Pushe lokale Aenderungen ===
git add .
git commit -m "Update Value School"
git push
echo.
echo === Fertig! Seite wird in 30 Sekunden live sein. ===
echo.
pause
