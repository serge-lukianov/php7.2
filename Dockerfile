FROM phpdockerio/php72-fpm

RUN \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get update  \
    && apt-get install -y --no-install-recommends software-properties-common gnupg2 libpng-dev build-essential automake libtool autoconf \
    && apt-get install -y --no-install-recommends nginx supervisor nodejs \
    && apt-get install -y --no-install-recommends php7.2-bcmath php7.2-pgsql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
    
EXPOSE 80 443 9000 5000
