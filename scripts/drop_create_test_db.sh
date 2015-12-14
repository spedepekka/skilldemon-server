#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Give password"
fi
mysql -uroot -p -e "\
DROP DATABASE IF EXISTS skilldemon;\
CREATE DATABASE IF NOT EXISTS skilldemon DEFAULT CHARACTER SET UTF8;\
GRANT ALL PRIVILEGES ON skilldemon.* TO 'skilldemon'@'localhost' IDENTIFIED BY '$1';"
