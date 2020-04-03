cls
@echo off
echo Batch file for Programming espressif ESP32 device
echo Asoka Vangala,Senior Test Engineer
echo Intervala LLC,East Pittsburgh
echo Batch file created on 10/18/2018
echo Please do not edit this bach file

set file="WebServerMain.ino.bin"
set maxbytesize=760592

FOR /F "usebackq" %%A IN ('%file%') DO set size=%%~zA
if %size% EQU %maxbytesize% (
    echo.File is Equal to %maxbytesize% bytes
) ELSE (
    echo.File is Not equal to %maxbytesize% bytes
	exit
	
)
echo -----------------------------------
echo Current Software Version 1.4.0  
echo -----------------------------------
pause
echo Programming commands for Flash mode
esptool.py --chip esp32 --port "COM13" --baud 921600 write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0xe000 boot_app0.bin 0x1000 bootloader_qio_80m.bin 0x10000 WebserverMain.ino.bin 0x8000 WebServerMain.ino.partitions.bin

echo -----------------------------------
echo Current Software Version 1.4.0  
echo -----------------------------------

pause
