FROM debian:buster

# Env vars
ARG	MYSQL_DATABASE
ARG	MYSQL_USER
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_PASSWORD

RUN apt-get update && apt-get install -y \
	mariadb-server 

COPY	tools/ /tools/

RUN		service mysql start && mysql -u root < tools/init_wordpress.sql

EXPOSE 3306
	