#!/bin/bash

mkdir -p docs/pdfs

for p in ./{lec,rec,hw}/*.typ; do
  f="$(basename "$p")"
  [ "$f" = "conf.typ" ] && continue
  printf 'building %s...\n' "$p"
  typst compile "$p" "docs/pdfs/${f%%.typ}.pdf"
done
