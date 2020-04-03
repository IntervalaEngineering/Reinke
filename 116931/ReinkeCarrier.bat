cls
REM *********************************************************
REM *** Batch file for Programming expressif ESP32 device ***
REM *********************************************************

REM *** Asoka Vangala 10/18/2018 Intervala LLC **************
REM *** Contact Engineering before editing this file ********

REM *** Programming commands Flash mode *********************

esptool.py --chip esp32 --port "COM13" --baud 921600 write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0xe000 boot_app0.bin 0x1000 bootloader_qio_80m.bin 0x10000 WebserverMain.ino.bin 0x8000 WebServerMain.ino.partitions.bin


pause
