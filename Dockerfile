FROM php:8.0-fpm

RUN apt-get update -y && apt-get install -y libwebp-dev libjpeg62-turbo-dev libpng-dev libxpm-dev \
    libfreetype6-dev zlib1g-dev libzip-dev curl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

RUN docker-php-ext-configure gd --with-freetype --with-jpeg

RUN docker-php-ext-install gd zip exif \
                           mysqli pdo pdo_mysql
CMD ["php-fpm"]

EXPOSE 9000