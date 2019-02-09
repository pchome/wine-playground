#!/bin/sh

wine_ver=staging
pfx=${PWD}/tests-${wine_ver}-pfx

mkdir -p "$pfx"

export WINEPREFIX="$pfx"

export WINETEST_PLATFORM=windows
#export WINETEST_REPORT_SUCCESS=1

./test-advapi32-security.exe 2>&1 > test-advapi32-security.exe.${wine_ver}.txt
