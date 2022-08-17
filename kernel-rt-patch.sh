#!/bin/sh
cd ext4/lib
cp -dr * /lib/
cd ../../fat32
rm /boot/kernel8.img
cp ./kernel8.img /boot
cp ./*.dtb /boot
cd overlays
cp -d * /boot/overlays