FROM debian:buster

ARG	MYSQL_DATABASE
ARG	MYSQL_USER
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_PASSWORD

RUN apt-get update && apt-get upgrade && apt-get install -y \
	mariadb-server 

RUN	mkdir -p /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql

RUN	service mysql start && mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" && \
	mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" && \
	mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';" && \
	mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';FLUSH PRIVILEGES;"

USER mysql

CMD ["mysqld"]