#!/bin/bash
#insmod /system/lib/modules/dhd.ko "firmware_path=/system/etc/wifi/sdio-g-mfgtest.bin nvram_path=/system/etc/wifi/bcmdhd.cal"
ifconfig wlan0 down
echo -n "/system/etc/wifi/sdio-g-mfgtest.bin" > /sys/module/bcmdhd/parameters/firmware_path
ifconfig wlan0 up
echo -n "" > /sys/module/bcmdhd/parameters/firmware_path
