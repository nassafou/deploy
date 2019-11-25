#!/bin/bash

hosts=`cat /etc/network/interfaces | perl -nle 'm{.*(192.*)} and print $1'`

echo ""

for host in $hosts;do
	echo ""
	echo "Sur ${host} "
	MYSQL_PWD=gnulinux mysql -h ${host} -u bob -e "SELECT table_schema 'Data Base Name', sum( data_length + index_length) / 1024 / 1024 'Data Base Size in MB' FROM information_schema.TABLES GROUP BY table_schema ;"
done

echo ""

