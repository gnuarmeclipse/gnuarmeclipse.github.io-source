---
layout: page
permalink: /developer/preferences/ilg.gnuarmeclipse.debug.gdbjtag.qemu/
title: ilg.gnuarmeclipse.debug.gdbjtag.qemu - persistent values
author: Liviu Ionescu

date: 2015-09-10 21:05:00 +0300

---

The workspace storage
---------------------

The QEMU setting are persistent for each workspace and the storage is located at:

    .../workspace/.metadata/.plugins/org.eclipse.core.runtime/.settings/ilg.gnuarmeclipse.debug.gdbjtag.qemu.prefs

The properties in this file define the device name and all other setting from the interface.

## Properties
The persistent properties are:

    gdb.client.commands=set mem inaccessible-by-default off
    gdb.client.executable=${cross_prefix}gdb${cross_suffix}
    gdb.client.other=
    gdb.qemu.boardName=STM32F4-Discovery
    gdb.qemu.deviceName=STM32F407VG
    gdb.qemu.doDebugInRam=false
    gdb.qemu.doInitialReset=false
    gdb.qemu.doPreRunReset=true
    gdb.qemu.enableSemihosting=true
    gdb.qemu.init.other=
    gdb.qemu.isVerbose=false
    gdb.qemu.preRun.other=
    gdb.server.doStart=true
    gdb.server.executable=${qemu_path}/${qemu_executable}
    gdb.server.other=


## Launcher defaults

The following defaults are available to configure the QEMU debug launcher:

    ilg.gnuarmeclipse.debug.gdbjtag.qemu/gdb.server.executable=${qemu_path}/${qemu_executable}
    ilg.gnuarmeclipse.debug.gdbjtag.qemu/gdb.client.executable=${cross_prefix}gdb${cross_suffix}

Defining these properties will provide the desired default values to the **Debugging** or **Startup** tabs.

    ilg.gnuarmeclipse.debug.gdbjtag.qemu/tab.main.checkProgram=false

Setting **tab.main.checkProgram** to true will check the program name field and disable the Debug button if the program name is not valid.

## Install defaults

Defining these two properties will provide default values to the corresponding fields in the **Run/Debug** → **QEMU** preferences page. The same variables are visible in the **Run/Debug** → **String Substitution** page.

### The executable name

The plug-in will use this definition as default for **${qemu_executable}**.

    ilg.gnuarmeclipse.debug.gdbjtag.qemu/executable.name=qemu-system-gnuarmeclipse

### The executable location

The plug-in will take a best effort approach to find a location to be used as default for **${qemu_path}**.

    ilg.gnuarmeclipse.debug.gdbjtag.qemu/install.folder=/Applications/GNU ARM Eclipse/QEMU/2.2.92-201504041609-dev/bin

If this preference is defined and the executable is there, the plug-in will use it.

if not, the Windows Registry will be searched. If the **InstallFolder** key is found below the **\\GNU ARM Eclipse\\QEMU** subkey, and the executable is found there, the plug-in will use it.

Otherwise the plug-in will try a folder search.

    search.path=\
    ${user.home}/Applications/GNU ARM Eclipse/QEMU:\
    ${user.home}/local/GNU ARM Eclipse/QEMU:\
    ${user.home}/local/gnuarmeclipse/QEMU:\
    /Applications/GNU ARM Eclipse/QEMU:\
    /opt/local:\
    /usr/local

If this preference is defined, the plug-in will use it as search path, otherwise the specific platform defaults available in the **preferences.ini** file are used.

For each folder in the path, the plug-in tries to identify subfolders which look like **folder/\*/bin/${qemu_executable}**; if multiple such subfolders are found (in case multiple versions), the list of names is ordered lexicographically and the last one is used.

If not found, another test for **folder/bin/${qemu_executable}** is made.
