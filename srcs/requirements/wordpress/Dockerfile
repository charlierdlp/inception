FROM debian:buster

ARG	MYSQL_DATABASE
ARG	MYSQL_USER
ARG	MYSQL_PASSWORD
ARG MYSQL_HOST

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

RUN sed -i "s/VALUE1/$MYSQL_DATABASE/" /var/www/html/wordpress/wp-config.php
RUN sed -i "s/VALUE2/$MYSQL_USER/" /var/www/html/wordpress/wp-config.php
RUN sed -i "s/VALUE3/$MYSQL_PASSWORD/" /var/www/html/wordpress/wp-config.php
RUN sed -i "s/VALUE4/$MYSQL_HOST/" /var/www/html/wordpress/wp-config.php


# -F: Force to stay in foreground and ignore daemonize option from configuration file
ENTRYPOINT ["php-fpm7.3", "-F"]