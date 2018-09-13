# NVAPI (wine-staging)

An attempt to build WINE's NvAPI implementation outside a WINE source tree.

## Requirements:
- [WINE](https://www.winehq.org/)
- [Meson](http://mesonbuild.com/)

## How to build

### init nvapi sources
```
sh nvapi-init.sh
```

### build 32 bit libs
```
meson --cross-file build-wine32.txt --prefix /tmp/nvapi /tmp/nvapi.w32
cd /tmp/nvapi.w32
ninja install
```

### build 64 bit libs
```
meson --cross-file build-wine64.txt --prefix /tmp/nvapi64 /tmp/nvapi.w64
cd /tmp/nvapi.w64
ninja install
```

### depend only on wined3d
```
meson --cross-file build-wine64.txt --prefix /tmp/nvapi64_dx9 /tmp/nvapidx9.w64
cd /tmp/nvapidx9.w64
meson configure -Denable_d3d11=false
ninja install

```

## TODO
`include/config.h` file copied from my local WINE build directory.
Better to generate it using meson.
