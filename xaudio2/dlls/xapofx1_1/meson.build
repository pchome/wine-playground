xapofx1_1_args = ['-DXAPOFX1_VER=1', '-DXAUDIO2_VER=2']

xapofx1_1_src = [
  '../xaudio2_7/xaudio_allocator.c',
  '../xaudio2_7/xapofx.c',
  '../xaudio2_7/xapo.c',
  rc_generator.process('version.rc', extra_args: xapofx1_1_args),
]

xapofx1_1_dll = shared_library('xapofx1_1.dll', xapofx1_1_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps, lib_ole32 ],
  include_directories : include_path,
  objects             : 'xapofx1_1.spec',
  c_args              : xapofx1_1_args,
  install             : true)


xapofx1_1_dll_target = custom_target('xapofx1_1.dll',
  output  : 'xapofx1_1.dll',
  input   : 'xapofx1_1.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


xapofx1_1_def_target = custom_target('xapofx1_1.def',
  output  : 'xapofx1_1.def',
  input   : 'xapofx1_1.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
