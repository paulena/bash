#!/bin/bash

echo -n "Vad heter du?"  # kommer ut i terminalen 
	read -t 3 USERNAME #-t är att man har en tidsperiod att svarapå
echo "Hej $USERNAME" #om man inte har skrivit något så kommer detta ut.

exit 0
