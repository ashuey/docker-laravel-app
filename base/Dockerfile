FROM php:7.4-fpm

RUN docker-php-ext-install pdo pdo_mysql bcmath pcntl \
   && mkdir /code

WORKDIR /code
