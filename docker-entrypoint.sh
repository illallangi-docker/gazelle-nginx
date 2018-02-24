#!/bin/sh

set -e

echo Waiting 60 seconds for ${PHP_HOST}:${PHP_PORT} to become available
wait-for ${PHP_HOST}:${PHP_PORT} -t 60

exec "$@"
