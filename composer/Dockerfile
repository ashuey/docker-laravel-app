FROM composer:2

RUN docker-php-ext-install pdo pdo_mysql bcmath pcntl \
    && mkdir /code

WORKDIR /code