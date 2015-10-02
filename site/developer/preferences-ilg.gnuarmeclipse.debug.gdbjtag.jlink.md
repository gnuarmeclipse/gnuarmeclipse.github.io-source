---
layout: page
permalink: /developer/preferences/ilg.gnuarmeclipse.debug.gdbjtag.jlink/
title: ilg.gnuarmeclipse.debug.gdbjtag.jlink - persistent values
author: Liviu Ionescu

date: 2015-09-10 21:02:00 +03:00

---

## The workspace storage

The J-Link settings are persistent in the workspace scope, and the storage file is located at:

    .../workspace/.metadata/.plugins/org.eclipse.core.runtime/.settings/ilg.gnuarmeclipse.debug.gdbjtag.jlink.prefs

## The Properties

The J-Link preferences define the device name and all other J-Link related setting from the plug-in settings page.

    flashDeviceName=STM32F407VG
    gdb.client.commands=set mem inaccessible-by-default off
    gdb.client.executable=${cross_prefix}gdb${cross_suffix}
    gdb.client.other=
    gdb.jlink.doDebugInRam=false
    gdb.jlink.doInitialReset=true
    gdb.jlink.doPreRunReset=true
    gdb.jlink.enableFlashBreakpoints=true
    gdb.jlink.enableSemihosting=true
    gdb.jlink.enableSwo=false
    gdb.jlink.init.other=
    gdb.jlink.initialReset.speed=1000
    gdb.jlink.initialReset.type=
    gdb.jlink.preRun.other=
    gdb.jlink.preRunReset.type=
    gdb.jlink.semihosting.client=false
    gdb.jlink.semihosting.telnet=true
    gdb.jlink.speed=auto
    gdb.jlink.swoEnableTarget.cpuFreq=0
    gdb.jlink.swoEnableTarget.portMask=0x1
    gdb.jlink.swoEnableTarget.swoFreq=0
    gdb.server.connection=usb
    gdb.server.connection.address=
    gdb.server.doStart=true
    gdb.server.endianness=little
    gdb.server.executable=${jlink_path}/${jlink_gdbserver}
    gdb.server.interface=swd
    gdb.server.other=-singlerun -strict -timeout 0
    gdb.server.speed=1000

## Launcher defaults

All persistent values can have defaults.

For example the following defaults (plus many more) are available to configure the J-Link debug launcher:

    ilg.gnuarmeclipse.debug.gdbjtag.jlink/gdb.server.executable=${jlink_path}/${jlink_gdbserver}
    ilg.gnuarmeclipse.debug.gdbjtag.jlink/gdb.client.executable=${cross_prefix}gdb${cross_suffix}

    ilg.gnuarmeclipse.debug.gdbjtag.jlink/gdb.server.interface=swd (or jtag)

    ilg.gnuarmeclipse.debug.gdbjtag.jlink/gdb.jlink.enableSemihosting=true
    ilg.gnuarmeclipse.debug.gdbjtag.jlink/gdb.jlink.enableSwo=true

Defining these properties will provide the desired default values to the **Debugging** or **Startup** tabs.

    ilg.gnuarmeclipse.debug.gdbjtag.jlink/tab.main.checkProgram=false

Setting **tab.main.checkProgram** to true will check the program name field and disable the Debug button if the program name is not valid.

## Install defaults

Defining these two properties will provide default values to the corresponding fields in the **Run/Debug** → **SEGGER J-Link** preferences page. The same variables are visible in the **Run/Debug** → **String Substitution** page.

### The executable name

The plug-in will use this definition as default for **\${jlink_gdbserver}**.

    ilg.gnuarmeclipse.debug.gdbjtag.jlink/executable.name=JLinkGDBServer

### The executable location

The plug-in will take a best effort approach to find a location to be used as default for **\{jlink_path}**.

    ilg.gnuarmeclipse.debug.gdbjtag.jlink/install.folder=/Applications/SEGGER/Jlink

If this preference is defined and the executable is there, the plug-in will use it.

if not, the Windows Registry will be searched. If the **InstallFolder** key is found below the **\\SEGGER\\J-Link** subkey, and the executable is found there, the plug-in will use it.

Otherwise the plug-in will try a folder search.

    search.path=\
    ${user.home}/Applications/SEGGER:\
    /Applications/SEGGER

If this preference is defined, the plug-in will use it as search path, otherwise the specific platform defaults available in the **preferences.ini** file are used.

For each folder in the path, the plug-in tries to identify subfolders which look like **folder/\*/${jlink_gdbserver}**; if multiple such subfolders are found (in case multiple versions, like J-Link_V494, J-Link_V496), the list of names is ordered lexicographically and the last one is used.

If not found, another test for **folder/${jlink_gdbserver}** is made.
