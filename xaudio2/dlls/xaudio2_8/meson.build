xaudio2_8_args = ['-DXAUDIO2_VER=8']

xaudio2_8_src = [
  '../xaudio2_7/xaudio_allocator.c',
  '../xaudio2_7/compat.c',
  '../xaudio2_7/xapofx.c',
  '../xaudio2_7/x3daudio.c',
  '../xaudio2_7/xaudio_dll.c',
  '../xaudio2_7/xapo.c',
  idl_generator.process('../xaudio2_7/xaudio_classes.idl', extra_args: xaudio2_8_args),
  xact3_h,
]

xaudio2_8_dll = shared_library('xaudio2_8.dll', xaudio2_8_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps, lib_ole32, lib_uuid ],
  include_directories : include_path,
  objects             : 'xaudio2_8.spec',
  c_args              : xaudio2_8_args,
  install             : true)


xaudio2_8_dll_target = custom_target('xaudio2_8.dll',
  output  : 'xaudio2_8.dll',
  input   : 'xaudio2_8.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


xaudio2_8_def_target = custom_target('xaudio2_8.def',
  output  : 'xaudio2_8.def',
  input   : 'xaudio2_8.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
