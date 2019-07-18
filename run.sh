#!/bin/bash
sed -i '/\[mysqld\]/a server-id=1\nlog-bin' /etc/mysql/mysql.conf.d/mysqld.cnf
msqld
