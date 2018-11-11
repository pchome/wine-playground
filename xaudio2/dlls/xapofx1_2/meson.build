xapofx1_2_args = ['-DXAPOFX1_VER=2', '-DXAUDIO2_VER=3']

xapofx1_2_src = [
  '../xaudio2_7/xaudio_allocator.c',
  '../xaudio2_7/xapofx.c',
  '../xaudio2_7/xapo.c',
#  rc_generator.process('version.rc', extra_args: xapofx1_2_args),
]

xapofx1_2_dll = shared_library('xapofx1_2.dll', xapofx1_2_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps, lib_ole32 ],
  include_directories : include_path,
  objects             : 'xapofx1_2.spec',
  c_args              : xapofx1_2_args,
  install             : true)


xapofx1_2_dll_target = custom_target('xapofx1_2.dll',
  output  : 'xapofx1_2.dll',
  input   : 'xapofx1_2.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


xapofx1_2_def_target = custom_target('xapofx1_2.def',
  output  : 'xapofx1_2.def',
  input   : 'xapofx1_2.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
