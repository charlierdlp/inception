FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install -y \
	nginx openssl

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN openssl req -x509 -newkey rsa:4096 -sha256 -days 365 -nodes -keyout /etc/ssl/private/inception_selfsigned.key -out /etc/ssl/private/inception_selfsigned.cert -subj "/C=ES/ST=Madrid/L=Madrid/O=42/OU=Student/CN=localhost"

#avoid container stoping immediately after starting
CMD	["nginx", "-g", "daemon off;"]