project('nvapi', ['c'])

if get_option('enable_d3d11')
  add_project_arguments('-DMESON_BUILD_D3D11', language : 'c')
endif

cpu_family = target_machine.cpu_family()

include_path = include_directories('./include')

lib_wined3d = declare_dependency(link_args: [ '-lwined3d' ])
lib_d3d11   = declare_dependency(link_args: [ '-ld3d11' ])

winebuild = find_program('winebuild')
winegcc   = find_program('winegcc')

target_arch = cpu_family == 'x86_64' ? '-m64' : '-m32'

def_generator = generator(winebuild,
  output    : [ '@BASENAME@.def' ],
  arguments : [ '-w', ' --def', '--export', '@INPUT@', '-o', '@OUTPUT@' ])

subdir('dlls')
