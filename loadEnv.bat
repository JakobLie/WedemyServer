@echo off
for /f "tokens=* delims=" %%i in (.env) do set %%i
