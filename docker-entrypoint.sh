#!/usr/bin/env bash
WWW_USER=www-data

# check if the first argument passed in is bower
#if [ "$1" = 'bower' ]; then
#  set -- /sbin/tini -- su - ${WWW_USER} -s /bin/bash -c '"$0" "$@"' -- "$@"
# check if the first argument passed in is npm
#elif [ "$1" = 'npm' ]; then
#  set -- /sbin/tini -- su - ${WWW_USER} -s /bin/bash -c '"$0" "$@"' -- "$@"
#fi

exec "$@"
