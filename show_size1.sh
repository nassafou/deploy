#!/bin/bash

hosts="192.168.205.10 192.168.205.11 192.168.205.12"
for host in $hosts;do
MYSQL_PWD=gnulinux  mysql -h ${host} -u bob -sN -e "SELECT table_schema 'Data Base Name', round(sum( data_length + index_length) / 1024 / 1024, 2) 'Data Base Size in MB' FROM information_schema.TABLES where table_schema not in ('mysql', 'performance_schema', 'information_schema') GROUP BY table_schema ;"
done

