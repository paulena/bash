#!/bin/bash

USERNAME="Hemligt" #variablen får ett värde
	read -t 10 -p "Hej vad heter du?" USERNAME #-t tid -p print. 
	USERNAME=${USERNAME:="Hemligt"} #om man skriver i terminalen 
	echo -e "\nHej $USERNAME" # \n är en ny rad och att man matar ut det man                                   har matat in i föra kommando.

exit 0
