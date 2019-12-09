#!/bin/bash

hosts=`cat /etc/network/interfaces | perl -nle 'm{.*(192.*):} and print $1'`
databases="xavki1 xavki2 xavki3"

for host in $hosts;do
	echo ""
	echo "Drop sur ${host}..."
	for database in ${databases};do
  	for j in $(seq 1 10);do
			MYSQL_PWD=gnulinux  mysql -h ${host} -u bob -e "TRUNCATE table${j};" ${database}
		done
	done
done

