#!/bin/bash

service ssh start
chown -R repo:repo && /usr/share/nginx/html

exec "$@"
