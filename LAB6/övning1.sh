#!/bin/bash

if [ $# -eq 2 ]; then # här bekräftar jag hur många argument jag vill ha.
	echo "första argumentet: $1"
 	echo "Andra argumentet: $2" # här matar jag ut i terminalen argumenten.
else
 	echo "$0 du måste ha två argument." # $0 så skriver den ut skriptets namn.
	exit 1
fi
exit 0	
