test_wbemprox_deps = [ lib_ole32, lib_advapi32, lib_uuid, lib_oleaut32, lib_user32 ]

wbemprox_tests = [ 'query' ]

foreach test : wbemprox_tests
  executable('test-wbemprox-'+test, [test+'.c'],
    dependencies : test_wbemprox_deps,
    include_directories : include_path,
    name_suffix: 'exe',
    install : true)

  executable('test-wbemprox-'+test+'.exe',  build_by_default: false, name_suffix: 'so', install: true)
endforeach
