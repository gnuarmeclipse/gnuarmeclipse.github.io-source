---
layout: page
permalink: /developer/preferences/ilg.gnumcueclipse.debug.gdbjtag.openocd/
title: ilg.gnumcueclipse.debug.gdbjtag.openocd - persistent values
author: Liviu Ionescu

date: 2015-09-10 21:03:00 +0300

---

## The workspace storage

The OpenOCD settings are persistent for each workspace and the storage is located at:

    .../workspace/.metadata/.plugins/org.eclipse.core.runtime/.settings/ilg.gnumcueclipse.debug.gdbjtag.openocd.prefs

## Properties

The persistent properties are:

    gdb.client.commands=set mem inaccessible-by-default off
    gdb.client.executable=${cross_prefix}gdb${cross_suffix}
    gdb.client.other=
    gdb.openocd.doInitialReset=true
    gdb.openocd.doPreRunReset=true
    gdb.openocd.enableSemihosting=true
    gdb.openocd.init.other=
    gdb.openocd.initialReset.type=init
    gdb.openocd.preRun.other=
    gdb.openocd.preRunReset.type=halt
    gdb.server.doStart=true
    gdb.server.executable=${openocd_path}/${openocd_executable}
    gdb.server.other=-f board/stm32f4discovery.cfg
    install.folder=...
    executable.name=openocd

## Launcher defaults

The following defaults are available to configure the OpenOCD debug launcher:

    ilg.gnumcueclipse.debug.gdbjtag.openocd/gdb.server.executable=${openocd_path}/${openocd_executable}
    ilg.gnumcueclipse.debug.gdbjtag.openocd/gdb.client.executable=${cross_prefix}gdb${cross_suffix}

    ilg.gnumcueclipse.debug.gdbjtag.openocd/gdb.server.other=-f board/stm32f4discovery.cfg

Defining these properties will provide the desired default values to the **Debugging** or **Startup** tabs.

    ilg.gnumcueclipse.debug.gdbjtag.openocd/tab.main.checkProgram=false

Setting `tab.main.checkProgram` to true will check the program name field and disable the Debug button if the program name is not valid.

## Install defaults

Defining these two properties will provide default values to the corresponding fields in the **Run/Debug** → **OpenOCD** preferences page. The same variables are visible in the **Run/Debug** → **String Substitution** page.

### The executable name

The plug-in will use this definition as default for `${openocd_executable}`.

    ilg.gnumcueclipse.debug.gdbjtag.openocd/executable.name=openocd

### The executable location

The plug-in will take a best effort approach to find a location to be used as default for `${openocd_path}`.

    ilg.gnumcueclipse.debug.gdbjtag.openocd/install.folder=/Applications/GNU ARM Eclipse/OpenOCD/bin

If this preference is defined and the executable is there, the plug-in will use it.

if not, the Windows Registry will be searched. If the `InstallFolder` key is found below the `\\GNU ARM Eclipse\\OpenOCD` subkey, and the executable is found there, the plug-in will use it.

Otherwise the plug-in will try a folder search.

    search.path=\
    ${user.home}/Applications/GNU ARM Eclipse/OpenOCD:\
    ${user.home}/local/GNU ARM Eclipse/OpenOCD:\
    ${user.home}/local/gnuarmeclipse/OpenOCD:\
    /Applications/GNU ARM Eclipse/OpenOCD:\
    /opt/local:\
    /usr/local

If this preference is defined, the plug-in will use it as search path, otherwise the specific platform defaults available in the `preferences.ini` file are used.

For each folder in the path, the plug-in tries to identify subfolders which look like `folder/*/bin/${openocd_executable}`; if multiple such subfolders are found (in case multiple versions, like 0.8.0, 0.9.0-dev), the list of names is ordered lexicographically and the last one is used.

If not found, another test for `folder/bin/${openocd_executable}` is made.
