xapofx1_4_args = ['-DXAPOFX1_VER=4', '-DXAUDIO2_VER=6']

xapofx1_4_src = [
  '../xaudio2_7/xaudio_allocator.c',
  '../xaudio2_7/xapofx.c',
  '../xaudio2_7/xapo.c',
#  rc_generator.process('version.rc', extra_args: xapofx1_4_args),
]

xapofx1_4_dll = shared_library('xapofx1_4.dll', xapofx1_4_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps, lib_ole32 ],
  include_directories : include_path,
  objects             : 'xapofx1_4.spec',
  c_args              : xapofx1_4_args,
  install             : true)


xapofx1_4_dll_target = custom_target('xapofx1_4.dll',
  output  : 'xapofx1_4.dll',
  input   : 'xapofx1_4.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


xapofx1_4_def_target = custom_target('xapofx1_4.def',
  output  : 'xapofx1_4.def',
  input   : 'xapofx1_4.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
