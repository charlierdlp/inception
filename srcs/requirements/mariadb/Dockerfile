FROM debian:buster

ARG	MYSQL_DATABASE
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_USER
ARG	MYSQL_PASSWORD

RUN apt-get update && apt-get upgrade && apt-get install -y \
	mariadb-server 

COPY /conf/setup-wp.sql .

RUN	service mysql start && mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" && \
	mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" && \
	mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';" && \
	mysql -e "CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" && \
	mysql -e "GRANT ALL ON *.* TO 'root'@'localhost'; FLUSH PRIVILEGES;" && \
	mysql -u cruiz-de --password=$MYSQL_PASSWORD $MYSQL_DATABASE < setup-wp.sql

USER mysql

ENTRYPOINT ["mysqld", "--bind-address=0.0.0.0"]