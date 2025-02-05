#idkwhyidothisbutitcoolafnocapnoteventrolling

FROM php:apache AS base
RUN docker-php-ext-install pdo pdo_mysql mysqli
COPY ./src /var/www/html

FROM base AS development
COPY ./tests /var/www/html/tests
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

FROM base AS final
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
USER www-data

