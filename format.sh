#!/bin/sh

for p in ./{hw,src}/*.typ; do
  printf 'formatting %s...\n' "$p"
  typstyle --wrap-text -l 80 -i "$p"
done