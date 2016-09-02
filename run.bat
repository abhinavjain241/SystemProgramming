@echo off
masm %1; >nul
link %1; >nul

%1
echo.

del %1.exe
del %1.obj