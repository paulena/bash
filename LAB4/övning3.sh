#!/bin/bash

clear
echo "Nu ska vi räkna!"

select Rakna in\
	"+"\
	"-"\
	"*"\
	"/"\
	"Exit"
do
     case "$Rakna" in
      "+")
	read -p " skriv in talen: " T1 T2 
	 Summa=$(($T1+$T2))
	  echo " $T1+$T2=$Summa "
	;;
      "-")
	read -p " skriv in  talen: " T1 T2 
         Diff=$(($T1-$T2))
	  echo " $T1-$T2=$Diff "
	;;
       "*")
	read -p " skriv in  talen: " T1 T2 
         Produkt=$(($T1*$T2))
	  echo "$T1*$T2=$Produkt"
	;;
       "/")
        read -p " skriv in talen: " T1 T2
         Kvot=$(($T1/$T2))
          echo "$T1/$T2=$Kvot"
	;;
        "Exit")
         echo " Nu får det räcka för idag"
          exit 0
         ;;
        *)
          echo " Hur tänkte du nu..."
          ;;
 esac
break
done
exit 0






 
	
