#!/bin/bash

cat << EOF >> init.sql
CREATE DATABASE $DBNAME;
CREATE USER '$DBUSER'@'$FROMHOST' IDENTIFIED BY '$DBPASS';
GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

mv init.sql /etc/mysql/init.sql

mysql_install_db
mysqld
