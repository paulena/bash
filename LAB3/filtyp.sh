#!/bin/bash

# Det skrip skriver om olika filtyper
fil=$1

if [ -f "$fil" ]; then
	echo "Det är en vanlig fil"
elif [ -d "$fil" ]; then
	echo "Det är en katalog"
elif [ -h "$fil" -o -L "$fil" ]; then 
	echo "Det är en länk"
elif [ -b "$fil" ]; then
	echo "Det är en block device"
else
 	echo "Error"
	   exit 1
fi

exit 0 
