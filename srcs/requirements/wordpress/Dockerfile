FROM debian:buster

RUN apt-get update && apt-get install -y \
	php7.3-fpm php-mysql \
	wget

RUN	wget https://wordpress.org/latest.tar.gz && \
	tar -xvzf latest.tar.gz && \
	mv wordpress/* /var/www/html/wordpress && \
	chown -R www-data:www-data /var/www/html/wordpress && \
	rm -rf wordpress && \
	rm -rf latest-es_ES.tar.gz 

COPY ./conf/wp-config.php /var/www/html/wordpress/