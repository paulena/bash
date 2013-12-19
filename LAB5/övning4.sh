#!/bin/bash

fil=$(cat prov )

for siffra in $fil; do
	Poang=$[ $Poang + $siffra ]
done
	if [ "$Poang" -ge 48 ]; then
	   echo "VG"
	elif [ "$Poang" -ge 30 ]; then
	   echo "G"
	else 
 	   echo "IG"
 fi 
exit 0	


