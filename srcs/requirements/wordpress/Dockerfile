FROM debian:buster

RUN apt-get update && apt-get install -y \
	php7.3-fpm php-mysql \
	wget

RUN	wget https://wordpress.org/latest.tar.gz && \
	tar -xvzf latest.tar.gz && \
	rm -rf latest-es_ES.tar.gz