xaudio2_5_args = ['-DXAUDIO2_VER=5']

xaudio2_5_src = [
  '../xaudio2_7/xaudio_allocator.c',
  '../xaudio2_7/compat.c',
  '../xaudio2_7/xaudio_dll.c',
  '../xaudio2_7/xapo.c',
  idl_generator.process('../xaudio2_7/xaudio_classes.idl', extra_args: xaudio2_5_args),
  xact3_h,
]

xaudio2_5_dll = shared_library('xaudio2_5.dll', xaudio2_5_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps, lib_ole32, lib_uuid ],
  include_directories : include_path,
  objects             : 'xaudio2_5.spec',
  c_args              : xaudio2_5_args,
  install             : true)


xaudio2_5_dll_target = custom_target('xaudio2_5.dll',
  output  : 'xaudio2_5.dll',
  input   : 'xaudio2_5.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


xaudio2_5_def_target = custom_target('xaudio2_5.def',
  output  : 'xaudio2_5.def',
  input   : 'xaudio2_5.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
