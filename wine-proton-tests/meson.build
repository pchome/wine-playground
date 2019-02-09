project('wine-secur-tests', ['c'])

add_project_arguments('-DSTANDALONE', language : 'c')

include_path = include_directories('./include')

lib_advapi32 = declare_dependency(link_args: [ '-ladvapi32' ])
lib_crypt32  = declare_dependency(link_args: [ '-lcrypt32' ])
lib_secur32  = declare_dependency(link_args: [ '-lsecur32' ])
lib_ws2_32   = declare_dependency(link_args: [ '-lws2_32' ])
lib_ole32    = declare_dependency(link_args: [ '-lole32' ])

lib_oleaut32    = declare_dependency(link_args: [ '-loleaut32' ])
lib_user32    = declare_dependency(link_args: [ '-luser32' ])
lib_uuid    = declare_dependency(link_args: [ '-luuid' ])

lib_shlwapi = declare_dependency(link_args: [ '-lshlwapi' ])
lib_shell32 = declare_dependency(link_args: [ '-lshell32' ])

winebuild = find_program('winebuild')
winegcc   = find_program('winegcc')

subdir('dlls')
