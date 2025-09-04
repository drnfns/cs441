#!/bin/sh

mkdir -p docs/pdfs

for p in ./{hw,src}/*.typ; do
  f="$(basename "$p")"
  [ "$f" = "conf.typ" ] && continue
  printf 'building %s...\n' "$p"
  typst compile "$p" "docs/pdfs/${f%%.typ}.pdf"
done
