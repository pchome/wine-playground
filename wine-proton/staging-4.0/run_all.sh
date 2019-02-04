#!/bin/sh

patch -p1 < fix-staging-4.0.patch && \
./apply_to_git.sh && \
./generate-patch.sh

