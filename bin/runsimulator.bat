@echo off
cd ..

xcopy C:\Python27\Lib\site-packages\mysql  .\lib\mysql /i /s /e /Y > nul 2>&1


lib\Simulator.exe
