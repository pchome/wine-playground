test_d3d10_1_deps = [ lib_d3d10_1 ]

executable('test-d3d10_1', ['d3d10_1.c'],
  dependencies : test_d3d10_1_deps,
  include_directories : include_path,
  name_suffix: 'exe',
  install : true)

executable('test-d3d10_1.exe',  build_by_default: false, name_suffix: 'so', install: true)
