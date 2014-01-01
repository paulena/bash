#!/bin/sh

tmp=$(mktemp /tmp/password.XXX)

if [ $EUID -ne 0 ]; then
	echo "You not logged in as root"
	exit 1
fi

zenity --password --username > $tmp

case $? in
	0)
		username=$(awk -F '|' '{ print $1}' $tmp) 
		password=$(awk -F '|' '{ print $2}' $tmp) ;;

	1)
		zenity --info \
		--text="Stop login.";;
	-1)
		zenity --error \
		--text="An unexpected error has occurred.";;
esac

useradd -m -s /bin/bash $username
echo "$username:$password" | chpasswd

exit 0
