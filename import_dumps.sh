#!/bin/bash

MYSQL_PWD=gnulinux mysql -h 192.168.205.10 -u gnulinux <dump_dbmaster_host1.sql
MYSQL_PWD=gnulinux mysql -h 192.168.205.11 -u gnulinux <dump_dbworker1_host2.sql
MYSQL_PWD=gnulinux mysql -h 192.168.205.12 -u gnulinux <dump_dbworker2_host10.sql

