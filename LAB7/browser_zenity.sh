#!/bin/bash


browserchk() {
	command -v $choice &> /dev/null

	if [ $? -ne 0 ]; then
		zenity --info --text="It seems that you don't have ${choice^} installed." 
		exit 1
	else
		${choice} &> /dev/null
	fi
}

choice=$(zenity --list \
--title="Web browser" \
--column="Web browser" \
firefox \
chrome \
iceweasel )

browserchk

exit 0
