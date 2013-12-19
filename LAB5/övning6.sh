#!/bin/bash


Namn=$1
Tar="tar -cpzf katalog12.tar.gz /tmp/Backup"
Kop="scp -r tlops@172.24.10.29:~/$Namn /tmp/Backup "


if [ $EUID -eq 0 ]; then
        $Kop
	if [ $? -eq 0 ]; then
       		printf "Kopering lyckades \n "
		$Tar 2> /dev/null
		if [ $? -eq 0 ]; then 
			printf  "Nu har du en backup på filerna \n"
		else
			printf "Något gick fel! kan inte komprimera. \n"
			exit 1
		fi
	else
		printf "Något gick fel! \n"
		exit 1
	fi
else
 	printf "Du är inte inloggad som root \n"
	exit 1
fi
exit 0

~                                                         
~                                                         
~        


