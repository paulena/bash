#!/bin/bash

# jämför talen mellan 0 till 100
read -p "Mata in ett tal mellan 0 till 100. " Tal1
read -p "Mata in ett tal mellan 0 till 100. " Tal2

if [ $Tal1 -eq $Tal2 ]; then
	echo "$Tal1 är lika med $Tal2"
else 
	echo "$Tal1 är inte samma som $Tal2"
fi
if [ $Tal1 -lt $Tal2 ]; then
	echo "$Tal1 mindre $Tal2"

elif [ $Tal1 -gt $Tal2 ]; then
	echo "$Tal1 är störren $Tal2"
fi

exit 0 

