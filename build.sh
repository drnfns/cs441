#!/bin/bash

mkdir -p docs/pdfs

for p in ./{lec,rec,hw}/*.typ; do
  f="$(basename "$p")"
  [ "$f" = "conf.typ" ] && continue
  typst compile "$p" "docs/pdfs/${f%%.typ}.pdf" &
  printf '(%s) building %s...\n' "$!" "$p"
done

printf 'waiting for all jobs to finish...\n'
wait