x3daudio1_2_src = [
  '../xaudio2_7/x3daudio.c',
]

x3daudio1_2_dll = shared_library('x3daudio1_2.dll', x3daudio1_2_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps ],
  include_directories : include_path,
  objects             : 'x3daudio1_2.spec',
  c_args              : ['-DX3DAUDIO1_VER=2', '-DXAUDIO2_VER=2'],
  install             : true)


x3daudio1_2_dll_target = custom_target('x3daudio1_2.dll',
  output  : 'x3daudio1_2.dll',
  input   : 'x3daudio1_2.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


x3daudio1_2_def_target = custom_target('x3daudio1_2.def',
  output  : 'x3daudio1_2.def',
  input   : 'x3daudio1_2.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
