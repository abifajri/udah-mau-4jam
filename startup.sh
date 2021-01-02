sudo apt-get install nsnake
sudo apt-get install xboxdrv


opt_1()
{
	sudo modprobe -r xpad
	sudo modprobe uinput
	sudo modprobe joydev
	sudo xboxdrv --ui-axismap x1^dead:4000=REL_X:750:-1,y1^dead:4000=REL_Y:750:-1,y2^dead:6000^invert=rel-repeat:REL_WHEEL:1:50,x2^dead:6000=rel-repeat:REL_HWHEEL:1:50,lt=KEY_8,rt=KEY_9 --ui-buttonmap a=KEY_ENTER,b=KEY_ENTER,x=KEY_ENTER,y=KEY_ENTER,lb=KEY_5,rb=KEY_6,tl=KEY_P,tr=KEY_0,dl=KEY_LEFT,dr=KEY_RIGHT,du=KEY_UP,dd=KEY_DOWN,start=KEY_P,back=KEY_H,guide=KEY_Q --silent &
	XBOXDRVPID=$!
	exec /usr/games/nsnake
	main_menu
}

opt_2()
{
	main_menu
}

main_menu()
{
	echo "MAIN MENU"
	echo "CONNECT YOUR CONTROLLER BEFORE CHOOSING"
	echo "1. default"
	echo "2. exit"
	echo -e "choose 1-2:"
	read option
	
	if [[ $option -eq 1 ]] ; then
		opt_1
	elif [[ $option -eq 2 ]] ; then
		#sudo shutdown now
		exit
	else
		echo "Not a valid option"
		main_menu
	fi
}

main_menu
