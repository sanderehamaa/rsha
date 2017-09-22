#!/bin/bash
for kasutaja in $(ls /home)
do
	ls /home/$kasutaja | grep "public_html"
	if [ $? -eq 1 ]; then
	mkdir /home/$kasutaja/public_html
	chown $kasutaja:$kasutaja /home/$kasutaja/public_html
	chmod 751 /home/$kasutaja/public_html
	else
		continue
	fi
	echo "----------------"
done
