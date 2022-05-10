FROM debian:buster

RUN apt-get update && apt-get install -y \
	php7.4-bcmath php7.4-curl php7.4-gd php7.4-imagick php7.4-intl php7.4-mbstring php7.4-xml php7.4-zip \
	wget

RUN	wget https://wordpress.org/latest.tar.gz && \
	tar -xvzf latest.tar.gz && \
	mv wordpress /var/www/html/wordpress && \
	chown -R www-data:www-data /var/www/html/wordpress && \
	rm -rf wordpress && \
	rm -rf latest.tar.gz 

COPY ./conf/wp-config.php /var/www/html/wordpress/

CMD ["php-fpm7.4"]