# Use Alpine Linux
FROM php:7.2-fpm-alpine3.7

MAINTAINER Angel S. Moreno <angelxmoreno@gmail.com>

RUN docker-php-source extract

RUN apk add --no-cache --virtual .buildPacks autoconf g++ make \
 && apk add --no-cache icu-dev \
 && pecl install redis \
 && docker-php-ext-enable redis \
 && docker-php-ext-install intl \
 && docker-php-ext-install mysqli \
 && docker-php-ext-install pdo \
 && docker-php-ext-install pdo_mysql \
 && docker-php-ext-install mbstring \
 && docker-php-ext-install tokenizer \
 && docker-php-source delete \
# Clean up
 && apk del .buildPacks \
 && rm -rf /var/cache/apk/*
# File copies
COPY php.ini /usr/local/etc/php

WORKDIR /var/www/html
