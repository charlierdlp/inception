FROM alpine:3.14

# Env vars
ARG	MYSQL_DATABASE
ARG	MYSQL_USER
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_PASSWORD

RUN apk update && apk upgrade && \
	apk add \
	mariadb \
	mariadb-client \
	openrc

RUN apt-get install -y mariadb-server mariadb-client

CMD service mysql start

EXPOSE 3306
	