#!/bin/sh

echo "Starting cron..."
crond -bin

echo "Started cron. Starting nginx..."
exec nginx -g 'daemon off;'