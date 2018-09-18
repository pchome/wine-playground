test_d3d10_deps = [ lib_d3d10 ]

executable('test-d3d10-device', ['device.c'],
  dependencies : test_d3d10_deps,
  include_directories : include_path,
  name_suffix: 'exe',
  install : true)

executable('test-d3d10-device.exe',  build_by_default: false, name_suffix: 'so', install: true)


executable('test-d3d10-effect', ['effect.c'],
  dependencies : test_d3d10_deps,
  include_directories : include_path,
  name_suffix: 'exe',
  install : true)

executable('test-d3d10-effect.exe',  build_by_default: false, name_suffix: 'so', install: true)
