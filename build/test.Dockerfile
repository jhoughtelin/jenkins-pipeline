FROM php:7.4-alpine

# This is meaningless, I just want to see it all work.
RUN apk add --no-cache autoconf libzip-dev g++ make libzip-dev zlib-dev libpng-dev
RUN docker-php-ext-install bcmath zip gd
RUN pecl install -o -f redis
RUN docker-php-ext-enable redis

# For unit tests and PHP packages, this is pretty much all we need.
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
