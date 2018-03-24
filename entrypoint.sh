#!/bin/sh

if [ "$ENABLE_UFRJ_AUTHENTICATION" != "true" ]; then
	rm -f /etc/nginx/sites-available/ufrj.conf
fi

if [ "$ENABLE_SSL" != "true" ]; then
	rm -f /etc/nginx/sites-available/ssl_proxy.conf
fi

nginx