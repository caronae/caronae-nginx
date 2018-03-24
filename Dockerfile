FROM nginx:alpine

ENV ENABLE_UFRJ_AUTHENTICATION=false
ENV ENABLE_SSL=false

RUN adduser -D -H -u 1000 -s /bin/bash www-data

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/
COPY ssl.conf /etc/nginx/snippets/
COPY sites/ /etc/nginx/sites-available/
COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh

EXPOSE 8000 8001 80 443
