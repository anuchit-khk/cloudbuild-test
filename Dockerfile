FROM php:7.0-apache

RUN apt-get update && \
    apt-get clean

COPY myapp /var/www/html

ENV PORT 80
EXPOSE 80