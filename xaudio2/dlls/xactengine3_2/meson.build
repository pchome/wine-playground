xactengine3_2_args = ['-DXACT3_VER=2']

xactengine3_2_src = [
  '../xaudio2_7/xaudio_allocator.c',
  '../xaudio2_7/xact_dll.c',
  idl_generator.process('../xaudio2_7/xact_classes.idl', extra_args: xactengine3_2_args),
  xact3_h,
]

xactengine3_2_dll = shared_library('xactengine3_2.dll', xactengine3_2_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps, lib_ole32, lib_uuid ],
  include_directories : include_path,
  objects             : 'xactengine3_2.spec',
  c_args              : xactengine3_2_args,
  install             : true)


xactengine3_2_dll_target = custom_target('xactengine3_2.dll',
  output  : 'xactengine3_2.dll',
  input   : 'xactengine3_2.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


xactengine3_2_def_target = custom_target('xactengine3_2.def',
  output  : 'xactengine3_2.def',
  input   : 'xactengine3_2.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
