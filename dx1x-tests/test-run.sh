#!/bin/sh

mkdir -p $(pwd)/tests-pfx

export WINEPREFIX="$(pwd)/tests-pfx"

#export WINEDLLOVERRIDES="d3dcompiler_43,d3d11,d3d10,d3d10_1,d3d10core,dxgi=n"

#winecfg
#regedit
#winetricks remove_mono
#dxvk-setup-9999
#winetricks d3dcompiler_43
#exit

##########
# argv[1]
##########
#if (GetEnvironmentVariableA( "WINETEST_PLATFORM", p, sizeof(p) ))
#        winetest_platform = strdup(p);
#    else if (running_under_wine())
#        winetest_platform = "wine";
#
#    if (GetEnvironmentVariableA( "WINETEST_DEBUG", p, sizeof(p) )) winetest_debug = atoi(p);
#    if (GetEnvironmentVariableA( "WINETEST_INTERACTIVE", p, sizeof(p) )) winetest_interactive = atoi(p);
#    if (GetEnvironmentVariableA( "WINETEST_REPORT_SUCCESS", p, sizeof(p) )) winetest_report_success = atoi(p);
#
#    if (!strcmp( winetest_platform, "windows" )) SetUnhandledExceptionFilter( exc_filter );
#    if (!winetest_interactive) SetErrorMode( SEM_FAILCRITICALERRORS | SEM_NOGPFAULTERRORBOX );
#
#    if (!argv[1])
#    {
#        if (winetest_testlist[0].name && !winetest_testlist[1].name)  /* only one test */
#            return run_test( winetest_testlist[0].name );
#        usage( argv[0] );
#    }
#    if (!strcmp( argv[1], "--list" ))
#    {
#        list_tests();
#        return 0;
#    }


##########
# argv[2]
##########
#argc = winetest_get_mainargs(&argv);
#    for (i = 2; i < argc; ++i)
#    {
#        if (!strcmp(argv[i], "--validate"))
#            enable_debug_layer = TRUE;
#        else if (!strcmp(argv[i], "--warp"))
#            use_warp_adapter = TRUE;
#        else if (!strcmp(argv[i], "--adapter") && i + 1 < argc)
#            use_adapter_idx = atoi(argv[++i]);
#        else if (!strcmp(argv[i], "--single"))
#            use_mt = FALSE;
#    }


export DXVK_LOG_LEVEL=error
export WINETEST_PLATFORM=windows
export WINETEST_REPORT_SUCCESS=1
#./test-dxgi.exe dxgi --single 2>&1 > dxgi.test

./test-dxgi.exe 2>&1 > dxgi.test
./test-d3d10-device.exe 2>&1 > d3d10.device.test
./test-d3d10-effect.exe 2>&1 > d3d10.effect.test
./test-d3d10_1.exe 2>&1 > d3d10_1.test
./test-d3d10core.exe 2>&1 > d3d10core.test
./test-d3d11.exe 2>&1 > d3d11.test

./test-d3d9-stateblock.exe 2>&1 > d3d9-stateblock.test
wine explorer.exe /desktop=winecfg,1024x768 test-d3d9-d3d9ex.exe.so 2>&1 > d3d9-d3d9ex.test
wine explorer.exe /desktop=winecfg,1024x768 test-d3d9-device.exe.so 2>&1 > d3d9-device.test
wine explorer.exe /desktop=winecfg,1024x768 test-d3d9-visual.exe.so 2>&1 > d3d9-visual.test
