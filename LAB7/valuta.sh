#!/bin/bash


cancel() {
	if [ $? -ne 0 ]; then
		zenity --info \
		--text="Have a nice day!"
		exit 1
	fi
}

USD=$(w3m http://www.svt.se/svttext/web/pages/230.html | awk '/USD\/SEK/ {print $2}' | head -n 1)


choice=$(zenity --list \
--title="Currency Converter" \
--column="Currency Converter" \
"USD to SEK" \
"SEK to USD")

cancel

amount=$(zenity --entry --title="$choice" \
	--text="Enter the amount you want to convert")
cancel

if [ "$choice" = "USD to SEK" ]; then
	US=$( echo "$amount * $USD" | bc ) 
	zenity --info \
	--text="$amount dollar is $US kronor"

elif [ "$choice" = "SEK to USD" ]; then
	KR=$( echo "scale=2;$amount / $USD" | bc )
	zenity --info \
	--text="$amount kroner is $KR dollar"
fi

exit 0
