FROM alpine:3.14

RUN apt-get upgrade -y && \
	apt-get update

RUN apt-get install -y mariadb-server mariadb-client

RUN service mysql start

EXPOSE 3306
	