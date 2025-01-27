FROM php:8.1-fpm

# Installer les outils nécessaires (git, unzip, zip, etc.)
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    curl && \
    docker-php-ext-install zip

# Installer Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Installer PHPStan, PHP-CS-Fixer, PHP CodeSniffer, et PHP Grump
RUN composer global require \
    phpstan/phpstan \
    friendsofphp/php-cs-fixer \
    squizlabs/php_codesniffer \
    php-grump/php-grump

# Définir le répertoire de travail
WORKDIR /var/www/html


