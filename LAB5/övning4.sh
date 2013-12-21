#!/bin/bash

fil=$(cat prov )     # Här hämtar vi filen prov

for siffra in $fil; do    # Här säger jag till skriptet att hämta från filen, så länge det finns något att hämta i filen.
	Poang=$[ $Poang + $siffra ] # Här ber jag skriptet att plusa värdet av Poang med siffra.
done
	if [ "$Poang" -ge 48 ]; then # är det högre eller lika av 48 blir det ett VG.
	   echo "VG"
	elif [ "$Poang" -ge 30 ]; then
	   echo "G"
	else 
 	   echo "IG"
 fi 
exit 0	


