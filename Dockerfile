FROM php:7.4-fpm

RUN docker-php-ext-install pdo pdo_mysql bcmath pcntl \
   && mkdir /code

WORKDIR /code

# Install XDebug if Environment Variable is set
ARG enable_xdebug
RUN if [ "x$enable_xdebug" = "x" ] ; then echo Skipping XDebug Install ; else pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.profiler_enable_trigger=1" >> /usr/local/etc/php/conf.d/xdebug.ini ; fi
