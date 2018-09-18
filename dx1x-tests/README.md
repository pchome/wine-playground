# WINE d3d1x tests

An attempt to build WINE's tests outside a WINE source tree.

## Requirements:
- [WINE](https://www.winehq.org/)
- [Meson](http://mesonbuild.com/)

## How to build

### init nvapi sources
```
sh tests-init.sh
```

### build 32 bit libs
```
meson --cross-file build-wine32.txt --prefix /tmp/tests /tmp/tests.w32
cd /tmp/tests.w32
ninja install
```

### build 64 bit libs
```
meson --cross-file build-wine64.txt --prefix /tmp/tests64 /tmp/tests.w64
cd /tmp/tests.w64
ninja install
```
