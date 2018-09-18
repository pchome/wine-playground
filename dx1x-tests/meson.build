project('wine-dx1x-tests', ['c'])

add_project_arguments('-DSTANDALONE', language : 'c')

include_path = include_directories('./include')

lib_d3d11   = declare_dependency(link_args: [ '-ld3d11' ])
lib_d3d10   = declare_dependency(link_args: [ '-ld3d10' ])
lib_d3d10_1 = declare_dependency(link_args: [ '-ld3d10_1' ])
lib_dxgi    = declare_dependency(link_args: [ '-ldxgi' ])
lib_gdi32   = declare_dependency(link_args: [ '-lgdi32' ])

winebuild = find_program('winebuild')
winegcc   = find_program('winegcc')

subdir('dlls')
