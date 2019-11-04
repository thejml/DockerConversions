FROM ubuntu:latest

RUN apt-get update; apt-get install php-fpm nginx curl vim unzip wget php7.2-mbstring php7.2-curl php7.2-gd php7.2-xml php7.2-zip -y

COPY grav-nginx.conf /etc/nginx/sites-enabled/grav.conf
COPY spinup.sh /etc/init.d/

RUN rm -f /etc/nginx/sites-enabled/default; chown www-data: /var/www/ -R

USER www-data
WORKDIR /var/www/
RUN wget https://github.com/getgrav/grav/releases/download/1.5.7/grav-admin-v1.5.7.zip
RUN unzip grav-admin-v1.5.7.zip && mv grav-admin grav

USER root
CMD ["/etc/init.d/spinup.sh"]
