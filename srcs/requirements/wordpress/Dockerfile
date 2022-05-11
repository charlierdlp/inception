FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install -y \
	php-fpm php-mbstring php-zip php-gd php-xml-util php-mysql php-curl php-bcmath php-gettext php-net-socket php-cgi php-common php-pear \
	wget

RUN mkdir /run/php
RUN sed -i 's+/run/php/php7.3-fpm.sock+0.0.0.0:9000+' /etc/php/7.3/fpm/pool.d/www.conf

RUN	wget https://wordpress.org/latest.tar.gz && \
	mkdir -p /var/www/html && \
	tar -xvzf latest.tar.gz -C /var/www/html && \
	chown -R www-data:www-data /var/www/html/wordpress && \
	rm -rf latest.tar.gz 

COPY ./conf/wp-config.php /var/www/html/wordpress/

ENTRYPOINT ["php-fpm7.3", "-F"]