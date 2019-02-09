test_secur32_deps = [ lib_advapi32, lib_crypt32, lib_secur32, lib_ws2_32 ]

secur32_tests = [ 'secur32', 'ntlm' ]

foreach test : secur32_tests
  executable('test-secur32-'+test, [test+'.c'],
    dependencies : test_secur32_deps,
    include_directories : include_path,
    name_suffix: 'exe',
    install : true)

  executable('test-secur32-'+test+'.exe',  build_by_default: false, name_suffix: 'so', install: true)
endforeach
