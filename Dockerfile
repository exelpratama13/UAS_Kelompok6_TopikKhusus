
FROM php:8.2-fpm-alpine

WORKDIR /var/www/html


RUN apk add --no-cache     autoconf     build-base     libtool     libpng-dev     libjpeg-turbo-dev     libwebp-dev     libxpm-dev     freetype-dev     zlib-dev     oniguruma-dev     libzip-dev     libsodium-dev     linux-headers     icu-dev     # <--- TAMBAHKAN INI UNTUK SOCKETS!    git     curl     unzip     && rm -rf /var/cache/apk/*


RUN docker-php-ext-install \
    pdo_mysql \
    mbstring \
    exif \
    pcntl \
    bcmath \
    gd \
    zip \
    opcache \
    sodium \
    sockets \
    intl \
    # ... dan semua ekstensi yang Anda ingin aktifkan di sini
    && docker-php-ext-enable \
    opcache \
    \
    && rm -rf /tmp/pear \
    && rm -rf /usr/src/php*

# Copy binary composer dari image composer:latest ke dalam container PHP
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer


EXPOSE 9000
CMD ["php-fpm"]