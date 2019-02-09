#!/bin/sh

meson --cross-file=build-wine64.txt --prefix=/tmp/tests . /tmp/tests64

cd /tmp/tests64

ninja install
