FROM composer:latest

RUN apt update && \
    apt install -y \
    libzip-dev \
    libjpeg62-turbo-dev \
    libpng-dev

RUN docker-php-ext-install gd

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]