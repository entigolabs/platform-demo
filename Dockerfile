FROM --platform=linux/amd64 php:8.1-fpm-alpine AS stardust

COPY ./stardust/* /var/www/html/

FROM --platform=linux/amd64 nginx:1.25-alpine AS stardust-nginx

# Copy what we've installed/built from production
COPY ./config/nginx-default.conf /etc/nginx/templates/default.conf.template
COPY --chmod=755 ./config/15-default.envsh /docker-entrypoint.d/
COPY ./stardust/* /usr/share/nginx/html/
