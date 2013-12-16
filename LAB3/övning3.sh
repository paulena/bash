#!/bin/bash


read -p  "Mata in ett tal mellan 1 till 10. " Tal

if [ $Tal -lt 1  -o $Tal  -gt 10  ]; then # Här skriptar vi så vi kan mata in ett tal mellan 1 till 10
	echo " =("
else
	echo " bra bra "

fi

exit 0
