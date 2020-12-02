FROM php:7.3.0-fpm-alpine3.8

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Override with custom settings
# COPY xxxx $PHP_INI_DIR/conf.d/

RUN docker-php-ext-install mysqli pdo_mysql && docker-php-ext-enable mysqli pdo_mysql
