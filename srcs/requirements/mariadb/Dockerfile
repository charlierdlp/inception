FROM debian:buster

ARG	MYSQL_DATABASE
ARG	MYSQL_USER
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_PASSWORD

RUN apt-get update && apt-get install -y \
	mariadb-server 

COPY	tools/ /tools/	

RUN		service mysql start && mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" && \
		mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" && \
		mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';" && \
		mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';FLUSH PRIVILEGES;"
		#mysql -e "FLUSH PRIVILEGES;"

USER	mysql

CMD ["mysqld", "--user=cruiz-de"]

EXPOSE 3306
		#mysql -e "GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION;" && \