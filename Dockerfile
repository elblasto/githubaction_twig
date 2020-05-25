FROM php:7.4-fpm

RUN apt-get update && apt-get install -y curl \
    zip \
    unzip \
    git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY entrypoint.sh \
     problem-matcher.json \
     /action/

COPY supercraft \
     /root/.composer/supercraft

COPY composer.json \
     /root/.composer

RUN composer global install

RUN chmod +x /action/entrypoint.sh

ENTRYPOINT ["/action/entrypoint.sh"]
