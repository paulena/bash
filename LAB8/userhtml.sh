#!/bin/bash

users() {
	while read i; do
		echo "<P>"$i"</P>" | sed 's/ (:0)//g'
	done < <(who)
}

uhtml() {
	cat << EOF > $HOME/users.html
<HTML>
<HEAD>
<TITLE>Users currently logged on to $(hostname)</TITLE>
</HEAD>
<BODY>
	
<H2>Users currently logged on to host: $(hostname)</H2>
$(users)

</BODY>
</HTML>
EOF
}

uhtml
