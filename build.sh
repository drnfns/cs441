#!/bin/sh

set -ex

mkdir -p docs

for p in ./src/*.typ; do
  f="$(basename "$p")"
  [ "$f" = "conf.typ" ] && continue
  typst compile "$p" "docs/${f%%.typ}.pdf"
done
