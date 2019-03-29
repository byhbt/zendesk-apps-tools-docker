#!/bin/sh
set -eo pipefail
echo "Start service $PROJECT_NAME"

case $1 in
  start)       
	zat server --bind 0.0.0.0
    ;;
  *) 
    exec "$@"
    ;;
esac
