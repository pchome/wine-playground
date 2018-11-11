x3daudio1_1_src = [
  '../xaudio2_7/x3daudio.c',
]

x3daudio1_1_dll = shared_library('x3daudio1_1.dll', x3daudio1_1_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps ],
  include_directories : include_path,
  objects             : 'x3daudio1_1.spec',
  c_args              : ['-DX3DAUDIO1_VER=1', '-DXAUDIO2_VER=1'],
  install             : true)


x3daudio1_1_dll_target = custom_target('x3daudio1_1.dll',
  output  : 'x3daudio1_1.dll',
  input   : 'x3daudio1_1.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


x3daudio1_1_def_target = custom_target('x3daudio1_1.def',
  output  : 'x3daudio1_1.def',
  input   : 'x3daudio1_1.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
