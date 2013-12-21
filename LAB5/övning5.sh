#!/bin/bash


Namn="$1"
Dest="$HOME/katalog.tar.gz" # 

if [ ! -e "$Dest" ]; then # Här frågar jag om filen eller katalogen finns i mappen 
        read -p " Vill du skapa katalogen? j|n" j
	if [ $j = "j"]; then # om värdet av j är j så går man vidare i skriptet.
	        mkdir -p "$Dest"
	fi	
fi
if [ ! -r "$Namn" ]; then # här kollar man om den är läsbar
	echo " Är inte läsbar"
	exit 2
else
	
	tar -cpzf "$Dest/katalog.tar.gz" $Namn # här komprimerar man katalogen.
fi
exit 0

