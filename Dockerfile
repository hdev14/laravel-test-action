FROM composer:latest

RUN apk update && \
    apk add --no-chace \
    libzip-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    zlib-dev \
    freetype-dev

RUN docker-php-ext-configure gd \
  --with-gd \
  --with-jpeg-dir=/usr/include \
  --with-png-dir=/user/include

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]