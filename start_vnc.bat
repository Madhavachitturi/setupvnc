@echo off
echo Stopping existing processes...
taskkill /F /IM winvnc.exe 2>nul
taskkill /F /PID 3188 2>nul

echo Starting UltraVNC Server...
start "" /B .\winvnc.exe -run

echo Starting websockify...
start "" /B python -m websockify --web ./noVNC 6080 localhost:5900

echo.
echo VNC Server is running!
echo Access it at: http://192.168.29.178:6080/vnc.html
echo Password: vnc
echo.
echo Press any key to stop...
pause >nul

taskkill /F /IM winvnc.exe
taskkill /F /IM python.exe
