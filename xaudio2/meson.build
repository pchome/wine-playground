project('xaudio', ['c'])

cc = meson.get_compiler('c')
cpu_family = target_machine.cpu_family()

#sdl_dep     = dependency('sdl2', version : '>= 2.0')
lib_faudio  = cc.find_library('FAudio')

xaudio_deps = [
  #sdl_dep, lib_faudio,
  lib_faudio,
  #get_option('enable_ffmpeg') ? [lib_avcodec, lib_avutil] : []
]

lib_uuid    = declare_dependency(link_args: [ '-luuid' ])
lib_ole32   = declare_dependency(link_args: [ '-lole32' ])

winebuild = find_program('winebuild')
winegcc   = find_program('winegcc')
widl      = find_program('widl')
wrc       = find_program('wrc')

target_arch = cpu_family == 'x86_64' ? '-m64' : '-m32'

#include_path = include_directories('./include', '.')

#def_generator = generator(winebuild,
#  output    : [ '@BASENAME@.def' ],
#  arguments : [ '-w', ' --def', '--export', '@INPUT@', '-o', '@OUTPUT@' ])

idl_generator = generator(widl,
#  output    : [ '@BASENAME@.h' ],
  output    : [ '@BASENAME@_r.res' ],
  arguments : [ target_arch, '-o', '@OUTPUT@', '-D__WINESRC__', '@EXTRA_ARGS@', '@INPUT@' ])

rc_generator = generator(wrc,
  output    : [ '@BASENAME@.res' ],
  arguments : [ target_arch, '--nostdinc', '-I@SOURCE_DIR@/include', '-D__WINESRC__', '@EXTRA_ARGS@', '-o', '@OUTPUT@', '@INPUT@' ])

subdir('include')
subdir('dlls')
