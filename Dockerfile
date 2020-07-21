FROM cytopia/phpcs:3

RUN apk update && apk add curl \
    zip \
    unzip \
    git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY entrypoint.sh \
     problem-matcher.json \
     index.twig \
     /action/

COPY supercraft \
     /root/.composer/supercraft

COPY composer.json \
     /root/.composer

RUN composer global install

RUN chmod +x /action/entrypoint.sh

ENTRYPOINT ["/action/entrypoint.sh"]
