#!/bin/bash

USERNAME="röd"
	read -t 5 -p " Hej, vad är din favoritfärg?" USERNAME
	USERNAME=${USERNAME:="röd"} 
	echo -e "\nDin favoritfärg är $USERNAME"

exit 0
	
