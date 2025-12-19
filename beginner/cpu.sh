#!/usr/bin/zsh


while true; do 
	echo "enter what do you want to see"
	echo "1 for cpu/2 for memory/3 for disk/4 for uptime/5 for os/6. to exit"

	read -r input

	case "$input" in 
		1)
			echo "showing cpu name and L1d cache ->"
			lscpu | grep -E "Model name|L1d"
			;;

		2)
			echo "showing memory: "
			free -h	
			;;

		3)
			echo "showing disk: "
			df -h
			;;

		4)
			echo "showing uptime: "
			uptime -p
			;;
	
		5) 	
			echo "showing kernal/os: "
			uname -a
			;;
		6)
			echo "exiting..."
			break
			;;

		*)
			echo "you didnt choose anything showing process ->"		
			free -h
			;;
	esac
done
