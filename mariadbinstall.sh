#!/bin/bash

apt-get -y update

logger "Installing updates"

# Set up a silent install of MySQL
export DEBIAN_FRONTEND=noninteractive
echo mysql-server-5.6 mysql-server/root_password password $dbpass | debconf-set-selections
echo mysql-server-5.6 mysql-server/root_password_again password $dbpass | debconf-set-selections
sudo apt-get install -y mysql-server

logger "Installing MySQL"



# export DEBIAN_FRONTEND=noninteractive
# echo mariadb-server-10.1 mysql-server/root_password password PASS | debconf-set-selections
# echo mariadb-server-10.1 mysql-server/root_password_again password PASS | debconf-set-selections
# sudo apt-get update -y
# sudo apt-get install -y mariadb-server
# mysql -uroot -pPASS -e "SET PASSWORD = PASSWORD('')"

