#!/bin/bash

for p in ./{lec,rec,hw}/*.typ; do
  typstyle --wrap-text -l 80 -i "$p" & 
  printf '(%s) formatting %s...\n' "$!" "$p"
done

printf 'waiting for all jobs to finish...\n'
wait