@echo off
echo 正在清理临时文件夹...
chcp 65001>nul

:: 以管理员权限运行
:: 如果不是管理员，则提示并退出
net session >nul 2>&1
if %errorLevel% == 0 (
    echo 正在以管理员权限运行...
) else (
    echo 请以管理员身份运行此脚本！
    pause
    exit /b
)

:: 清理当前用户的临时文件夹
echo 清理用户临时文件夹...
del /q /f "%USERPROFILE%\AppData\Local\Temp\*.*" 2>nul
rmdir /s /q "%USERPROFILE%\AppData\Local\Temp" 2>nul

:: 清理系统临时文件夹
echo 清理系统临时文件夹...
del /q /f "%WINDIR%\Temp\*.*" 2>nul
rmdir /s /q "%WINDIR%\Temp" 2>nul

echo 临时文件夹已清理完毕。
pause