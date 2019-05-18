FROM nginx:alpine

RUN adduser -D -H -u 1000 -s /bin/bash www-data

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/
COPY sites/ /etc/nginx/sites-available/
