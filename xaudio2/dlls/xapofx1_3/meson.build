xapofx1_3_args = ['-DXAPOFX1_VER=3', '-DXAUDIO2_VER=4']

xapofx1_3_src = [
  '../xaudio2_7/xaudio_allocator.c',
  '../xaudio2_7/xapofx.c',
  '../xaudio2_7/xapo.c',
  rc_generator.process('version.rc', extra_args: xapofx1_3_args),
]

xapofx1_3_dll = shared_library('xapofx1_3.dll', xapofx1_3_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps, lib_ole32 ],
  include_directories : include_path,
  objects             : 'xapofx1_3.spec',
  c_args              : xapofx1_3_args,
  install             : true)


xapofx1_3_dll_target = custom_target('xapofx1_3.dll',
  output  : 'xapofx1_3.dll',
  input   : 'xapofx1_3.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


xapofx1_3_def_target = custom_target('xapofx1_3.def',
  output  : 'xapofx1_3.def',
  input   : 'xapofx1_3.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
