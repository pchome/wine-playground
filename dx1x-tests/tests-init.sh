#!/bin/sh

# prepare tree
git init

mkdir -p include
mkdir -p dlls



# path to WINE sources
git remote add wine git://source.winehq.org/git/wine.git

# fetch WINE git info
git fetch --depth=1 wine master



# get wine include files
cd include
git checkout wine/master -- ../include
cd ..


# get tests
cd dlls
git checkout wine/master -- ../dlls/dxgi/tests
git checkout wine/master -- ../dlls/d3d10/tests
git checkout wine/master -- ../dlls/d3d10_1/tests
git checkout wine/master -- ../dlls/d3d10core/tests
git checkout wine/master -- ../dlls/d3d11/tests
cd ..

