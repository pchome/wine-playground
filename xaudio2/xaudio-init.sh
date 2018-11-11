#!/bin/sh

# prepare tree
git init

mkdir -p include
mkdir -p dlls



# path to WINE sources
git remote add faudio_wine git://github.com/flibitijibibo/wine.git

# fetch WINE git info
git fetch --depth=1 faudio_wine faudio


# get wine include files
cd include
git checkout faudio_wine/faudio -- ../include
cd ..


# get xaudio dlls
cd dlls
git checkout faudio_wine/faudio -- ../dlls/x3daudio1_{0..7}
git checkout faudio_wine/faudio -- ../dlls/xactengine3_{0..7}
git checkout faudio_wine/faudio -- ../dlls/xapofx1_{1..5}
git checkout faudio_wine/faudio -- ../dlls/xaudio2_{0..9}
cd ..
