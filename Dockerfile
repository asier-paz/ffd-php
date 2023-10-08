FROM php:8.2-cli

WORKDIR /app

# Install system dependencies
RUN apt update && apt install -y \
        git \
        zip \
        unzip \
        curl \
        build-essential \
        libgmp-dev \
        libmcrypt-dev \
        gcc-multilib \
        libc-dev \
        bzip2 \
        libgpg-error-dev \
        libassuan-dev \
        libbz2-dev \
        libcurl4-openssl-dev \
        libxml2-dev \
        libffi-dev \
        libssl-dev \
        zlib1g-dev \
        libpng-dev \
        libc-client-dev \
        libkrb5-dev \
        libldb-dev \
        libldap2-dev \
        unixodbc-dev \
        freetds-dev \
        firebird-dev

# Install composer
RUN curl "https://getcomposer.org/download/latest-stable/composer.phar" -o /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer

# Install PHP dependencies
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-install imap
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install bz2
RUN docker-php-ext-install calendar
RUN docker-php-ext-install dba
RUN docker-php-ext-install dl_test
RUN docker-php-ext-install exif
RUN docker-php-ext-install ffi
RUN docker-php-ext-install gd
RUN docker-php-ext-install gettext
RUN docker-php-ext-install gmp
RUN docker-php-ext-install intl
RUN docker-php-ext-install ldap
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install opcache
RUN docker-php-ext-install pcntl
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_dblib
RUN docker-php-ext-install pdo_firebird
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install shmop
RUN docker-php-ext-install soap
RUN docker-php-ext-install sockets

CMD [ "php" ]