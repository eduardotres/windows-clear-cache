@echo off
:: Verifica se está sendo executado como administrador
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Este script precisa ser executado como administrador.
    echo Tentando reiniciar como administrador...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: Define a variável para o usuário
set USUARIO=eduar

powershell -Command "Remove-Item 'C:\Users\%USUARIO%\AppData\Local\Temp\*' -Recurse -Force"

powershell -Command "Remove-Item 'C:\Windows\Prefetch\*' -Recurse -Force"

powershell -Command "Remove-Item 'C:\Windows\Temp\*' -Recurse -Force"

powershell -Command "ipconfig /flushdns"

:: Limpa a lixeira
echo Limpando a lixeira do sistema...
rd /s /q C:\$Recycle.bin
echo Lixeira do sistema foi limpa.

:: Mensagem de conclusão
echo Todas as operacoes de limpeza foram concluidas com sucesso!
pause
