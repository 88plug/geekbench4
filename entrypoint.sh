#!/usr/bin/env sh

set -e

if [ -n "$email" ] && [ -n "$key" ]; then
  ./bin/geekbench4 -r $email $key
  echo ""
fi

PARAMS=""

if [ -n "$help" ]; then
  PARAMS="$PARAMS --help"
fi

if [ -n "$cpu" ]; then
  PARAMS="$PARAMS --cpu"
fi

if [ -n "$arch" ]; then
  PARAMS="$PARAMS --arch $arch"
else
  PARAMS="$PARAMS --arch 64bit"
fi

if [ -n "$sysinfo" ]; then
  PARAMS="$PARAMS --sysinfo"
fi

if [ -n "$upload" ]; then
  PARAMS="$PARAMS --upload"
fi

if [ -n "$no_upload" ]; then
  PARAMS="$PARAMS --no-upload"
fi

./bin/geekbench4 $PARAMS
