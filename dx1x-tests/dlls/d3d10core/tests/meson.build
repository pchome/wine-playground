test_d3d10core_deps = [ lib_d3d10, lib_dxgi ]

executable('test-d3d10core', ['d3d10core.c'],
  dependencies : test_d3d10core_deps,
  include_directories : include_path,
  name_suffix: 'exe',
  install : true)

executable('test-d3d10core.exe',  build_by_default: false, name_suffix: 'so', install: true)
