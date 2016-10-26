#
# PHP Dockerfile
# version 1.0
#
FROM youpin/ubuntu
MAINTAINER Leo <jiangwenhua@yoyohr.com>

VOLUME /home/data

RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" \
        apt-get install -y php7.0-fpm \
        php7.0-gd \
        php7.0-curl \
        php7.0-mbstring \
        php7.0-mysql \
        --no-install-recommends \
    && mkdir /run/php \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 9000
CMD ["php-fpm7.0","--nodaemonize"]
