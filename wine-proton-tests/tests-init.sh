#!/bin/sh

repo=git://github.com/ValveSoftware/wine.git
rname=proton-tests
rbranch=proton_3.16

# prepare tree
git init

# path to WINE sources
git remote add ${rname} ${repo}

# fetch WINE git info
git fetch --depth=1 ${rname} ${rbranch}

# get wine include files
git checkout ${rname}/${rbranch} -- include

# get tests
git checkout ${rname}/${rbranch} -- dlls/advapi32/tests
git checkout ${rname}/${rbranch} -- dlls/secur32/tests
git checkout ${rname}/${rbranch} -- dlls/wbemprox/tests
git checkout ${rname}/${rbranch} -- dlls/crypt32/tests
