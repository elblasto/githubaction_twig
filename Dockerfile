FROM php:7.4-fpm

RUN apt-get update && apt-get install -y curl \
    zip \
    unzip \
    git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require friendsoftwig/twigcs

COPY index.twig /test/
COPY entrypoint.sh \
     problem-matcher.json \
     /action/

#RUN chmod +x /action/entrypoint.sh

#ENTRYPOINT ["/action/entrypoint.sh"]
