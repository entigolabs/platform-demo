FROM nginx:1.25-alpine

# Copy what we've installed/built from production
COPY ./config/nginx-default.conf /etc/nginx/templates/default.conf.template
COPY --chmod=755 ./config/15-default.envsh /docker-entrypoint.d/

RUN mkdir -p /var/www/html/
COPY src/ /var/www/html

EXPOSE 8080
