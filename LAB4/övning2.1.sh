#!/bin/bash
# USD gör så jag kan hämta kursen från en hemsida om  valutan och awk tar ut en visdel av sidan jag vill ha "kursen på valutan"
USD=$(w3m http://www.svt.se/svttext/web/pages/230.html | awk '/USD\/SEK/ {print $2}' | head -n 1)
clear
echo  "Här kan du konvertera från kronor till dollar eller tvärtom."

select Value in\
	"Dollar till Kronor"\
	"Kronor till Dollar"\
	"Exit"
do
  case "$Value" in
	"Dollar till Kronor")
	 read -p " Hur många Dollar: " D
           US=$( echo "$D * $USD" | bc ) # Det gör så att det funkar med decimaler också
           echo "$D Dollar är $US Kronor"
	;;
	"Kronor till Dollar")
	read -p " Hur många Kronor: " K
             KR=$( echo "scale=2;$K / $USD" | bc )
             echo "$K Kronor är $KR Dollar"
	;;

	"Exit")
	echo "Tack för att du har använder  mitt valutaomvandlare "
	exit 0
	;;
	*)
	echo " Det du har valt finns inte"
	;;
 esac
done
exit 0

