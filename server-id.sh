#!/bin/bash
export INDEX=${HOSTNAME##*-}
export ID=$(( $INDEX + 1 ))
sed -i '/\[mysqld\]/a server_id='$ID'' /etc/mysql/mysql.conf.d/mysqld.cnf
sed -i '/\[mysqld\]/a server_id='$ID'' /etc/mysql/conf.d/mysql.cnf
