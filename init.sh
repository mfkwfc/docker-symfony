#!/bin/bash

RET=1
chown -R mysql /var/lib/mysql

while [[ RET -ne 0 ]]; do
    sleep 1;
    mysql -e 'exit' > /dev/null 2>&1; RET=$?
done

DB_NAME=${DB_NAME:-symfony}
DB_PASSWORD=${DB_PASSWORD:-symfony}
mysqladmin -u root create $DB_NAME
mysqladmin -u root password $DB_PASSWORD

if [ -n "$INIT" ]; then
    /srv/$INIT
fi