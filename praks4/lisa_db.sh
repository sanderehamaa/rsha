#!/bin/bash
#
# lisa_db [kasutajanimi]

kasutaja=$1
parool=$(pwgen -1)

if [ -d /home/$kasutaja ]
then
	echo "[client]" >> /home/$kasutaja/.my.cnf
	echo "user="$kasutaja >> /home/$kasutaja/.my.cnf
else
	echo "Sellist kasutajat ei ole."
fi

#mysql -u $kasutaja -p $parool

echo $parool
