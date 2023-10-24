FROM php:8.1-fpm-alpine AS stardust

COPY ./config/www.conf /usr/local/etc/php-fpm.d/
COPY ./src/* /var/www/html/

FROM nginx:1.25-alpine AS stardust-nginx

# Copy what we've installed/built from production
COPY ./config/nginx-default.conf /etc/nginx/templates/default.conf.template
COPY --chmod=755 ./config/15-default.envsh /docker-entrypoint.d/

RUN mkdir -p /var/www/html/
COPY --from=stardust /var/www/html /var/www/html
