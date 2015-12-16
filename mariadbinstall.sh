#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
sudo debconf-set-selections <<< 'mariadb-server-10.1 mysql-server/root_password password PASS'
sudo debconf-set-selections <<< 'mariadb-server-10.1 mysql-server/root_password_again password PASS'
sudo apt-get update
sudo apt-get install -y mariadb-server
mysql -uroot -pPASS -e "SET PASSWORD = PASSWORD('')"

