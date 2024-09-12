#!/bin/bash
# start.sh


ls -lh

read -p "Enter Raspbian-Image-Path > " rpi_path
qemu-system-arm -kernel kernel-qemu-4.4.34-jessie -cpu arm1176 -m 256 -M versatilepb -no-reboot -serial stdio -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw init=/bin/bash" -drive "file=$rpi_path,index=0,media=disk,format=raw" -redir tcp:2222::22
