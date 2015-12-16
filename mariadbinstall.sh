#!/bin/bash


logger "Installing MySQL"
export DEBIAN_FRONTEND=noninteractive
echo mariadb-server-10.1 mysql-server/root_password password PASS | debconf-set-selections
echo mariadb-server-10.1 mysql-server/root_password_again password PASS | debconf-set-selections
sudo apt-get -y update
sudo apt-get install -y mariadb-server
mysql -uroot -pPASS -e "SET PASSWORD = PASSWORD('')"
