test_d3d9_deps = [ lib_d3d9, lib_gdi32, lib_dxguid, lib_uuid ]

d3d9_tests = [ 'd3d9ex',  'device',  'stateblock',  'visual' ]

foreach test : d3d9_tests
  executable('test-d3d9-'+test, [test+'.c'],
    dependencies : test_d3d9_deps,
    include_directories : include_path,
    name_suffix: 'exe',
    install : true)

  executable('test-d3d9-'+test+'.exe',  build_by_default: false, name_suffix: 'so', install: true)
endforeach
