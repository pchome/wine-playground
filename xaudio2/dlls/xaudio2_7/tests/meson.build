executable('test-xaudio2', ['xaudio2.c', xaudio2_7_def_target],
  dependencies : lib_ole32,
  include_directories : include_path,
  c_args : ['-DSTANDALONE'],
  name_suffix: 'exe',
  install : true)

executable('test-xaudio2.exe',  build_by_default: false, name_suffix: 'so', install: true)
