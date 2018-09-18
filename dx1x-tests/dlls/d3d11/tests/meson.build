test_d3d11_deps = [ lib_d3d11, lib_dxgi, lib_gdi32 ]

executable('test-d3d11', ['d3d11.c'],
  dependencies : test_d3d11_deps,
  include_directories : include_path,
  name_suffix: 'exe',
  install : true)

executable('test-d3d11.exe',  build_by_default: false, name_suffix: 'so', install: true)
