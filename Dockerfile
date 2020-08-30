FROM composer:latest

RUN apk update && \
    apk add \
    libzip-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    zlib-dev

RUN docker-php-ext-install gd

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]