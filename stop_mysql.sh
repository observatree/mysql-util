#!/bin/bash

# stop_mysql.sh

# This script should be run as root

if [[ $USER != "root" ]]
then
  echo "USER=$USER";
  echo "Must be root! Try sudo $0 <release>."
  exit
fi

MYSQL_HOME=/usr/local/mysql

echo "$0: Stopping mysql..."

# Stop MySQL
$MYSQL_HOME/bin/mysqladmin -u root -p"$MYSQL_PASSWORD" shutdown

echo "$0: ...done stopping mysql."
