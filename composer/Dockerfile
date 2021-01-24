FROM php:7.4

RUN docker-php-ext-install pdo pdo_mysql bcmath pcntl \
   && mkdir /code

WORKDIR /code

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["composer"]