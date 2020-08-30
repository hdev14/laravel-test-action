FROM composer:latest

RUN apk update && \
    apk add \
    libzip-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    zlib-dev \
    freetype-dev

RUN docker-php-ext-install gd

RUN docker-php-ext-configure gd --with-freetype --with-jpeg

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]