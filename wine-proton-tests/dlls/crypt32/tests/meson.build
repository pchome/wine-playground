test_crypt32_deps = [ lib_crypt32, lib_advapi32, lib_user32, lib_shlwapi, lib_shell32 ]

crypt32_tests = [ 'protectdata' ]

foreach test : crypt32_tests
  executable('test-crypt32-'+test, [test+'.c'],
    dependencies : test_crypt32_deps,
    include_directories : include_path,
    name_suffix: 'exe',
    install : true)

  executable('test-crypt32-'+test+'.exe',  build_by_default: false, name_suffix: 'so', install: true)
endforeach
