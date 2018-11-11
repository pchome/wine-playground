x3daudio1_4_src = [
  '../xaudio2_7/x3daudio.c',
]

x3daudio1_4_dll = shared_library('x3daudio1_4.dll', x3daudio1_4_src,
  name_prefix         : '',
  dependencies        : [ xaudio_deps ],
  include_directories : include_path,
  objects             : 'x3daudio1_4.spec',
  c_args              : ['-DX3DAUDIO1_VER=4', '-DXAUDIO2_VER=4'],
  install             : true)


x3daudio1_4_dll_target = custom_target('x3daudio1_4.dll',
  output  : 'x3daudio1_4.dll',
  input   : 'x3daudio1_4.spec',
  command : [ winebuild, target_arch, '--dll', '--fake-module', '-E', '@INPUT@', '-o', '@OUTPUT@', '-F', '@BASENAME@.dll' ],
  install : true,
  install_dir : 'fakedlls')


x3daudio1_4_def_target = custom_target('x3daudio1_4.def',
  output  : 'x3daudio1_4.def',
  input   : 'x3daudio1_4.spec',
  command : [ winebuild, target_arch, '-w', '--def', '--export', '@INPUT@', '-o', '@OUTPUT@' ],
  install : true,
  install_dir : 'defs')
