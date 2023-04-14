#!/bin/sh

if [ ! -e "deadbeef.h" ]; then
  echo "File not found: deadbeef.h"
  exit 1
fi

gcc -Wall -I$PWD -fPIC -std=c99 -shared -O2 -o rating.so rating.c && echo "+ Finished building rating.so"
