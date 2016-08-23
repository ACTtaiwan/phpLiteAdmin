# using https://hub.docker.com/_/php/
FROM php:7.0.10-apache

# load in phpLiteAdmin code
COPY . /var/www/html/