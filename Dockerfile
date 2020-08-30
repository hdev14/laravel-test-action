FROM composer:latest

RUN apk update && \
    apk add \
    libzip-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    zlib1g-dev

RUN docker-php-ext-install gd

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]