#!/bin/sh

set -ex

typstyle --timing --wrap-text -l 80 -i src/*.typ
