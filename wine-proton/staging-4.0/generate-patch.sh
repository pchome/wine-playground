#!/bin/sh

cur=${PWD}
dest=/var/tmp/kakra_wine-proton

cd ${dest} && \
git branch staging4.0 && \
git checkout staging4.0 && \
git status -s | awk '{print $2}' | xargs git add && \
git commit -m 'Proton Staging 4.0' && \
git format-patch -1 && \
cp 0001-Proton-Staging-4.0.patch "${cur}"

cd "${cur}"
