## argv[1]

```c
// ...
    if (GetEnvironmentVariableA( "WINETEST_PLATFORM", p, sizeof(p) ))
        winetest_platform = strdup(p);
    else if (running_under_wine())
        winetest_platform = "wine";

    if (GetEnvironmentVariableA( "WINETEST_DEBUG", p, sizeof(p) )) winetest_debug = atoi(p);
    if (GetEnvironmentVariableA( "WINETEST_INTERACTIVE", p, sizeof(p) )) winetest_interactive = atoi(p);
    if (GetEnvironmentVariableA( "WINETEST_REPORT_SUCCESS", p, sizeof(p) )) winetest_report_success = atoi(p);

    if (!strcmp( winetest_platform, "windows" )) SetUnhandledExceptionFilter( exc_filter );
    if (!winetest_interactive) SetErrorMode( SEM_FAILCRITICALERRORS | SEM_NOGPFAULTERRORBOX );

    if (!argv[1])
    {
        if (winetest_testlist[0].name && !winetest_testlist[1].name)  /* only one test */
            return run_test( winetest_testlist[0].name );
        usage( argv[0] );
    }
    if (!strcmp( argv[1], "--list" ))
    {
        list_tests();
        return 0;
    }
// ...

```

## argv[2]

```c
// ...
    argc = winetest_get_mainargs(&argv);
    for (i = 2; i < argc; ++i)
    {
        if (!strcmp(argv[i], "--validate"))
            enable_debug_layer = TRUE;
        else if (!strcmp(argv[i], "--warp"))
            use_warp_adapter = TRUE;
        else if (!strcmp(argv[i], "--adapter") && i + 1 < argc)
            use_adapter_idx = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--single"))
            use_mt = FALSE;
    }
// ...
```

## Example

```
./test-advapi32-security.exe --list

WINETEST_REPORT_SUCCESS=1 ./test-advapi32-security.exe security --single
```