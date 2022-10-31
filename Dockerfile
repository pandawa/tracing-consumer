ARG PHP_VERSION=8.1

FROM pandawa/pandawa:1.0-swoole-php${PHP_VERSION} as app

RUN set -eux; \
    install-php-extensions \
      pcntl \
      redis \
    ;

COPY . .
RUN set -eux; \
	composer install --prefer-dist --no-dev --no-progress --no-scripts --no-interaction; \
	composer dump-autoload --classmap-authoritative --no-dev; \
	chmod +x artisan; sync;
