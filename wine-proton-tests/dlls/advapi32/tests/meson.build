test_advapi32_deps = [ lib_ole32, lib_advapi32 ]

advapi32_tests = [ 'security' ]

foreach test : advapi32_tests
  executable('test-advapi32-'+test, [test+'.c'],
    dependencies : test_advapi32_deps,
    include_directories : include_path,
    name_suffix: 'exe',
    install : true)

  executable('test-advapi32-'+test+'.exe',  build_by_default: false, name_suffix: 'so', install: true)
endforeach
