FROM php:8.1-fpm

# Installer les outils nécessaires (git, unzip, zip, etc.)
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev && \
    docker-php-ext-install zip

# Installer Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Définir le répertoire de travail
WORKDIR /var/www/html

