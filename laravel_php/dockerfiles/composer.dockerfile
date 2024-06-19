FROM composer:latest
 
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel 

WORKDIR /var/www/html

#unsure if this is needed
USER root 
 
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]