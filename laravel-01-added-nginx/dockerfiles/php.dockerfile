#FROM php:7.4-fpm-alpine
FROM php:8.1-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql
#RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

RUN chown -R www-data:www-data /var/www/html
#RUN chmod -R 777 /var/www/html/storage
#RUN chmod -R 777 /var/www/html/vendor

#RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
#COPY --chown=laravel:laravel src .
#COPY --chown=laravel:laravel src .

#USER laravel