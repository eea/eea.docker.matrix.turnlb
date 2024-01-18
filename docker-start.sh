#!/bin/sh

cp /tmp/nginx.conf.template /etc/nginx/nginx.conf

TURN_HOST=${TURN_HOST:-"turn"}

RESOLVER_IP=${RESOLVER_IP:-"169.254.169.250"}
RESOLVER_TIMEOUT=${RESOLVER_TIMEOUT:-"15s"}

sed -i "s/TURN/$TURN_HOST/g" /etc/nginx/nginx.conf
sed -i "s/RESOLVER_IP/$RESOLVER_IP/g" /etc/nginx/nginx.conf
sed -i "s/RESOLVER_TIMEOUT/$RESOLVER_TIMEOUT/g" /etc/nginx/nginx.conf

cat /etc/nginx/nginx.conf

echo "$@"
exec "$@"
