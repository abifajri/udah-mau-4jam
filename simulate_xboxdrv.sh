sudo apt-get install xboxdrv

sudo modprobe -r xpad
sudo modprobe uinput
sudo modprobe joydev

lsmod | grep 'joydev'
dmesg

sudo xboxdrv
