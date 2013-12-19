#!/bin/bash


Namn="$1"
Dest="$HOME/katalog.tar.gz"

if [ ! -e "$Dest" ]; then
        read -p " Vill du skapa katalogen? j|n" j
	if [ $j = "j"]; then
	        mkdir -p "$Dest"
	fi	
fi
if [ ! -r "$Namn" ]; then
	echo " Är inte läsbar"
	exit 2
else
	
	tar -cpzf "$Dest/katalog.tar.gz" $Namn 
fi
exit 0

