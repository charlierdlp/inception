FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx openssl

#avoid container stoping immediately after starting
#CMD	["nginx", "-g", "daemon off;"]  