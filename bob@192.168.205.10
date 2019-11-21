#!/bin/bash

hosts=`cat ~/deploy/hosts | perl -nle 'm{.*(192.*)} and print $1'`
echo ""
for host in $hosts;do
echo "Pour ${host}"
MYSQL_PWD=yata mysql -h $host -u yata -e "show databases;" 
echo ""
done

