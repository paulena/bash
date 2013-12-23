#!/bin/bash

# diskarr hämtar info om df och gör den till en array.
#diskarr=($(df -h | awk '{ print $1, $5, $6 }' | sed 's/%//' | awk 'NR > 1'))
# vi ger i värdet av 1. om värdet av i är mindre än ${#diskarr[@]} = 24 ska i plussas på tre tills den är under eller lika med 24.
#for (( i = 1; i <= ${#diskarr[@]}; i = i + 3 )); do
#${#diskarr[@]} berättar hur många indexvärden jag har i array:en
#${diskarr[$i-1]} att den går ett steg tillbaka från värdet av i som är Use%.
#${diskarr[$i+1]} att den går ett steg fram från värdet av i som är Use%.
#if [ ${diskarr[$i]} -gt 80 ]; then ...# om disk Use% är över 80
#\ Den sammankopplar raderna.


diskarr=($(df -h | awk '{ print $1, $5, $6 }' | sed 's/%//' | awk 'NR > 1'))

for (( i = 1; i <= ${#diskarr[@]}; i = i + 3 )); do
	if [ ${diskarr[$i]} -gt 80 ]; then 
		echo "Filesystem ${diskarr[$i-1]} mounted on ${diskarr[$i+1]} uses ${diskarr[$i]}%" | \
		mail -s "Disk alert" admin 
	fi
done
exit 0
