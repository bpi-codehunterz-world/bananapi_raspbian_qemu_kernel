title QEMU LAUNCHER
color 09

@echo off

cd "C:\Program Files\qemu"
set kernel="C:\Users\C0d3rzHaven\Entwicklung\Firmware & FlashTools\Firmwares & OS\Firmware\DeveloperBoard Firmwares\Banana Pi - Firmwres\Raspbian\BPI_RPI\Work\kernel-qemu-4.4.34-jessie"
set image="C:\Users\C0d3rzHaven\Entwicklung\Firmware & FlashTools\Firmwares & OS\Firmware\DeveloperBoard Firmwares\Banana Pi - Firmwres\Raspbian\BPI_RPI\Work\2020-04-19-raspbian-jessie-bpi-m2u-sd-emmc.img" 

.\qemu-system-arm.exe -kernel "%kernel%" -cpu arm1176 -m 256 -M versatilepb -no-reboot -serial stdio -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw init=/bin/bash" -drive file="%image%",index=0,media=disk,format=raw -netdev user,id=mynet0,hostfwd=tcp::2222-:22 -device rtl8139,netdev=mynet0

echo .\qemu-system-arm.exe -kernel "C:\Users\C0d3rzHaven\Entwicklung\Firmware & FlashTools\Firmwares & OS\Firmware\DeveloperBoard Firmwares\Banana Pi - Firmwres\Raspbian\BPI_RPI\Work\kernel-qemu-4.4.34-jessie" -cpu arm1176 -m 256 -M versatilepb -no-reboot -serial stdio -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw init=/bin/bash" -drive file="C:\Users\C0d3rzHaven\Entwicklung\Firmware & FlashTools\Firmwares & OS\Firmware\DeveloperBoard Firmwares\Banana Pi - Firmwres\Raspbian\BPI_RPI\Work\2020-04-19-raspbian-jessie-bpi-m2u-sd-emmc.img",index=0,media=disk,format=raw -netdev user,id=mynet0,hostfwd=tcp::2222-:22 -device rtl8139,netdev=mynet0
