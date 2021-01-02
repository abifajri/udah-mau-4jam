sudo apt-get install xboxdrv

sudo modprobe -r xpad
sudo modprobe uinput
sudo modprobe joydev

sudo xboxdrv
