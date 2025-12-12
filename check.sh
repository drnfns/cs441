#!/bin/sh

for p in ./src/*.typ; do
  printf 'checking %s...\n' "$p"
  LC_ALL=C grep --color='auto' -P -n "[\x80-\xFF]" "$p"
  typos "$p"
done