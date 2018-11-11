xapofx1_5_args = ['-DXAPOFX1_VER=5', '-DXAUDIO2_VER=7']

xapofx1_5_src = [
  '../xaudio2_7/xaudio_allocator.c',
  '../xaudio2_7/xapofx.c',
  '../xaudio2_7/xapo.c',
#  rc_generator.process('version.rc', extra_args: xapofx1_5_args),
]

xapofx1_5_dll = shared_library('xapofx1_5.dll', xapofx1_5_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps, lib_ole32 ],
  include_directories : include_path,
  objects             : 'xapofx1_5.spec',
  c_args              : xapofx1_5_args,
  install             : true)


xapofx1_5_dll_target = custom_target('xapofx1_5.dll',
  output  : 'xapofx1_5.dll',
  input   : 'xapofx1_5.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


xapofx1_5_def_target = custom_target('xapofx1_5.def',
  output  : 'xapofx1_5.def',
  input   : 'xapofx1_5.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
