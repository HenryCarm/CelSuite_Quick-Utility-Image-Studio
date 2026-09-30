@echo off
rem CelSuite Quick Utility Image Studio - Windows one-click builder
rem Builds dist\CelSuite_QUIS-<version>-Windows.exe with Nuitka (same flags as CI).
rem Best run from a terminal that has Nuitka installed, e.g.:
rem   "C:\path\to\venv\Scripts\python.exe" build.py
cd /d "%~dp0"
py -3 build.py %* 2>nul && goto :done
python build.py %*
:done
echo.
pause
