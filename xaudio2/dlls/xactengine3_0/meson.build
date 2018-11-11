xactengine3_0_args = ['-DXACT3_VER=0']

xactengine3_0_src = [
  '../xaudio2_7/xaudio_allocator.c',
  '../xaudio2_7/xact_dll.c',
  idl_generator.process('../xaudio2_7/xact_classes.idl', extra_args: xactengine3_0_args),
  xact3_h,
]

xactengine3_0_dll = shared_library('xactengine3_0.dll', xactengine3_0_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps, lib_ole32, lib_uuid ],
  include_directories : include_path,
  objects             : 'xactengine3_0.spec',
  c_args              : xactengine3_0_args,
  install             : true)


xactengine3_0_dll_target = custom_target('xactengine3_0.dll',
  output  : 'xactengine3_0.dll',
  input   : 'xactengine3_0.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


xactengine3_0_def_target = custom_target('xactengine3_0.def',
  output  : 'xactengine3_0.def',
  input   : 'xactengine3_0.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
