#!/bin/bash

# start_mysql.sh

# This script should be run as root.

if [[ $EUID != "0" ]]
then
  echo "EUID=$EUID. Must be root. Try sudo $0. Exiting."
  exit
fi

echo "Starting MySQL"

# Change directory to this script's directory.

cd `dirname $0`

# MySQL Goodies

MYSQL_HOME=/usr/local/mysql

# Instead of turning log-slow-queries on as a command-line option,
# now we turn it on in the configuration file.
# MYSQL_OPTIONS="--log-slow-queries"

# Useful debugging option:
# MYSQL_OPTIONS="--log=general.log"

MYSQL_OPTIONS="--secure-file-priv=/private/tmp"

# Start MySQL

#########   THE FOLLOWING DOES NOT RETURN   ##########

$MYSQL_HOME/bin/mysqld_safe $MYSQL_OPTIONS 

######### DON'T BOTHER TO PUT ANYTHING HERE ##########
#########        IT WON'T BE EXECUTED       ##########
