#!/bin/bash

if [ ! -f "/etc/mysql/init.sql" ]; then
    cat << EOF >> init.sql
    CREATE DATABASE $DBNAME;
    CREATE USER '$DBUSER'@'$FROMHOST' IDENTIFIED BY '$DBPASS';
    GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'$FROMHOST' WITH GRANT OPTION;
    FLUSH PRIVILEGES;
EOF
    mv init.sql /etc/mysql/init.sql
    mysql_install_db
fi
exec mysqld
