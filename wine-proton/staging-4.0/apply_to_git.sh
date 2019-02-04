#!/bin/sh

cur=${PWD}
dest=/var/tmp/kakra_wine-proton

cd ${dest} && git reset --hard && git status -s | awk '{print $2}' | xargs rm -r
cd ${cur}


# Disabled un-needed
SKIP=""
SKIP="${SKIP} -W Pipelight"
SKIP="${SKIP} -W Staging"
SKIP="${SKIP} -W winecfg-Staging"
SKIP="${SKIP} -W ntdll-DllRedirects"
SKIP="${SKIP} -W uxtheme-GTK_Theming"
SKIP="${SKIP} -W ntdll-Purist_Mode"

# Applied! Deps are force-droped in Staging script
# https://github.com/kakra/wine-proton/commits/rebase/proton_3.16
SKIP="${SKIP} -W ntdll-ThreadTime"
SKIP="${SKIP} -W server-Realtime_Priority"
SKIP="${SKIP} -W iphlpapi-System_Ping"
SKIP="${SKIP} -W libs-Unicode_Collation"
SKIP="${SKIP} -W ntdll-CriticalSection"
SKIP="${SKIP} -W wined3d-Dual_Source_Blending"
SKIP="${SKIP} -W wined3d-WINED3D_RS_COLORWRITEENABLE"
SKIP="${SKIP} -W wined3d-Indexed_Vertex_Blending"
SKIP="${SKIP} -W api-ms-win-Stub_DLLs"
SKIP="${SKIP} -W kernel32-Processor_Group"
SKIP="${SKIP} -W kernel32-K32GetPerformanceInfo"
SKIP="${SKIP} -W kernel32-SCSI_Sysfs"
SKIP="${SKIP} -W dinput-Deadlock"
SKIP="${SKIP} -W dinput-Initialize"
SKIP="${SKIP} -W winex11-_NET_ACTIVE_WINDOW"
SKIP="${SKIP} -W shell32-IconCache"
SKIP="${SKIP} -W windowscodecs-IWICPalette_InitializeFromBitmap"
SKIP="${SKIP} -W windowscodecs-GIF_Encoder" # partially ?
SKIP="${SKIP} -W windowscodecs-32bppPRGBA"
SKIP="${SKIP} -W ddraw-Rendering_Targets"
SKIP="${SKIP} -W setupapi-Display_Device"
SKIP="${SKIP} -W wined3d-WINED3D_TEXF_ANISOTROPIC"

# Applied! Deps are force-droped in Staging script
# https://github.com/ValveSoftware/wine/tree/proton_3.16
SKIP="${SKIP} -W wined3d-WINED3DFMT_B8G8R8X8_UNORM"
SKIP="${SKIP} -W wined3d-DXTn"
SKIP="${SKIP} -W d3dx9_36-DXTn"
SKIP="${SKIP} -W ddraw-Silence_FIXMEs"
SKIP="${SKIP} -W dsound-Fast_Mixer"
SKIP="${SKIP} -W d3d9-DesktopWindow"
SKIP="${SKIP} -W ws2_32-APC_Performance"
SKIP="${SKIP} -W winepulse-PulseAudio_Support"
SKIP="${SKIP} -W wined3d-Silence_FIXMEs"
SKIP="${SKIP} -W wined3d-Accounting"
SKIP="${SKIP} -W user32-minimized_windows"
SKIP="${SKIP} -W server-PeekMessage"
SKIP="${SKIP} -W server-Key_State"
SKIP="${SKIP} -W ntdll-Wait_User_APC"
SKIP="${SKIP} -W server-Shared_Memory"
SKIP="${SKIP} -W ntdll-Heap_Improvements"
SKIP="${SKIP} -W ntdll-LdrGetDllHandle"
SKIP="${SKIP} -W ntdll-APC_Performance"
SKIP="${SKIP} -W gdiplus-Performance-Improvements"
SKIP="${SKIP} -W gdi32-MultiMonitor"
SKIP="${SKIP} -W gdi32-Lazy_Font_Initialization"
SKIP="${SKIP} -W dxgi-MakeWindowAssociation"
SKIP="${SKIP} -W server-Signal_Thread"
SKIP="${SKIP} -W server-ClipCursor"
SKIP="${SKIP} -W ntdll-Threading"
SKIP="${SKIP} -W wined3d-wined3d_guess_gl_vendor"
SKIP="${SKIP} -W winex11-mouse-movements"

# nvapi
SKIP="${SKIP} -W nvapi-Stub_DLL"
SKIP="${SKIP} -W nvcuda-CUDA_Support"
SKIP="${SKIP} -W nvcuvid-CUDA_Video_Support"
SKIP="${SKIP} -W nvencodeapi-Video_Encoder"
SKIP="${SKIP} -W d3d11-Deferred_Context" # depend on nvapi-Stub_DLL
SKIP="${SKIP} -W wined3d-CSMT_Main"      # depend on d3d11-Deferred_Context

# no xaudio
SKIP="${SKIP} -W xaudio2_7-CreateFX-FXEcho"
SKIP="${SKIP} -W xaudio2_7-WMA_support"
SKIP="${SKIP} -W xaudio2_CommitChanges"

# binary diffs
SKIP="${SKIP} -W taskmgr-Memory_Usage"
SKIP="${SKIP} -W shell32-ACE_Viewer"
SKIP="${SKIP} -W shell32-Toolbar_Bitmaps"
SKIP="${SKIP} -W fonts-Missing_Fonts"


# ld: signal_i386.o: in function `NtRaiseException':
# signal_i386.c:(.text+0x31ba): undefined reference to `__syscall_NtContinue'
SKIP="${SKIP} -W ntdll-NtContinue"


# failed to apply
SKIP="${SKIP} -W ntoskrnl.exe-Fix_Relocation"



# Apply
./patches/patchinstall.sh \
  DESTDIR=${dest} \
  --no-autoconf \
  --all \
  --backend=git-apply \
  ${SKIP}
