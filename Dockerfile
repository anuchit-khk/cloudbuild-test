FROM php:7.0-apache

RUN apt-get update && \
    apt-get clean

COPY myapp /var/www/html

EXPOSE 80
EXPOSE 443