@echo off
:: Checks if the script is being run as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script needs to be run as administrator.
    echo Attempting to restart as administrator...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: Sets the variable for the user
set USER=user

powershell -Command "Remove-Item 'C:\Users\%USER%\AppData\Local\Temp\*' -Recurse -Force"

powershell -Command "Remove-Item 'C:\Windows\Prefetch\*' -Recurse -Force"

powershell -Command "Remove-Item 'C:\Windows\Temp\*' -Recurse -Force"

powershell -Command "ipconfig /flushdns"

:: Clears the recycle bin
echo Clearing the system recycle bin...
rd /s /q C:\$Recycle.bin
echo The system recycle bin has been cleared.

:: Completion message
echo All cleaning operations have been successfully completed!
pause
