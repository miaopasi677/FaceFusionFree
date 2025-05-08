@echo off
chcp 65001>nul

REM =======================
REM 设置相对路径环境变量
REM =======================
set "PYTHON_PATH=.\wzf"
REM 指向 wzf 文件夹

set "PYTHON_EXEC=%PYTHON_PATH%\python.exe"
REM 指向 python.exe

set "CUDA_PATH=%PYTHON_PATH%\Library\bin"
REM 指向 CUDA 动态库路径

set "FFMPEG_PATH=%PYTHON_PATH%\Tools\ffmpeg"
REM 指向 FFmpeg 文件夹

set "TENSORRT_PATH=%PYTHON_PATH%\Tools\TensorRT-10.6.0.26"
REM 指向 TensorRT 文件夹

REM =======================
REM 清理和配置 PATH
REM =======================
set "PATH=%PYTHON_PATH%;%CUDA_PATH%;%FFMPEG_PATH%;%TENSORRT_PATH%\bin;%TENSORRT_PATH%\lib;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0;C:\WINDOWS\System32\OpenSSH"

REM =======================
REM 启动脚本
REM =======================
"%PYTHON_EXEC%" facefusion.py run --open-browser
pause
