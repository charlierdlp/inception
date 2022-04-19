#!/bin/sh

#Init mariadb
openrc
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc-service mariadb start