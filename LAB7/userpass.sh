#!/bin/bash

tmp=$(mktemp /tmp/pass.XXX)

tmpchk() {
	if [ ! -s $tmp ]; then
		rm $tmp
		exit 2
	fi
}

if [ $EUID -ne 0 ]; then
	echo "You need to be root."
	exit 1
fi

dialog --backtitle "User" \
--title "User name" \
--inputbox "\nEnter username for the new account:" 10 40 2> $tmp
name=$(<$tmp)

tmpchk
useradd -m -s /bin/bash $name

dialog --title "Password" \
--insecure \
--passwordbox "\nEnter password for user $name:" 10 40 2> $tmp
password=$(<$tmp)

tmpchk
echo "$name:$password" | chpasswd

rm $tmp	
exit 0
