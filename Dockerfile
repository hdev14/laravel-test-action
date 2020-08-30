FROM composer:latest

RUN apk update && \
    apk add --no-chace \
    libzip-dev \
    libjpeg-turbo-dev \
    zlib-dev \
    libpng-dev \
    freetype-dev

RUN docker-php-ext-configure gd \
  --enable-gd \
  --with-jpeg \
  --with-freetype \
  --with-png-dir=/usr/include \
  --with-jpeg-dir=/usr/include

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]