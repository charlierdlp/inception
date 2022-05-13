# Inception

This project consists in setting up a small infrastructure composed of different
services under specific rules.
The whole project is done in a virtual machine.

Using docker-compose, 3 containers have to be built (one for each service), following these indications:
- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (it must be installed and
configured) and a volume that contains your WordPress website files.
- A Docker container with MariaDB and second volume that contains the WordPress database.
- A docker-network that establishes the connection between your containers.

Here is an example diagram of the expected result:

<img width="551" alt="Screen Shot 2022-05-13 at 10 00 28 PM" src="https://user-images.githubusercontent.com/59704166/168381157-115a8d84-f47b-4749-b755-d37b6bb5f033.png">
