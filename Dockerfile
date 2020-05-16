FROM alpine:latest

RUN apt-get update && apt-get install -y curl
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require elblasto/twigcs

COPY entrypoint.sh \
     problem-matcher.json \
     /action/

RUN chmod +x /action/entrypoint.sh

ENTRYPOINT ["/action/entrypoint.sh"]
