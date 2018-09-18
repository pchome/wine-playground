test_dxgi_deps = [ lib_d3d10_1, lib_dxgi ]

executable('test-dxgi', ['dxgi.c'],
  dependencies : test_dxgi_deps,
  include_directories : include_path,
  name_suffix: 'exe',
  install : true)

executable('test-dxgi.exe',  build_by_default: false, name_suffix: 'so', install: true)
