#!/bin/bash
export INDEX=${HOSTNAME##*-}
export ID=$(( $INDEX + 1 ))
sed -i '/\[mysqld\]/a server-id='$ID'\nlog-bin' /etc/mysql/mysql.conf.d/mysqld.cnf
