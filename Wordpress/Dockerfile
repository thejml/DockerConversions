FROM wordpress:latest

RUN apt-get update; apt-get upgrade -y

COPY /plugins/* /var/www/html/wp-content/plugins/
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh 

