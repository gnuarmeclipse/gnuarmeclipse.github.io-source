---
layout: page
title: How to install the OpenOCD binaries?
permalink: /openocd/install/

date: 2015-09-09 19:43:00 +0300

---

## Overview

[OpenOCD](http://openocd.org) is an open source project hosted on [SourceForge](https://sourceforge.net/projects/openocd/), and project maintainers insist that all end-users should compile it from the latest version of the source code available from their repository. There are no special stable branches or tags and there are no clear release dates for future versions. On Windows you need to install MSYS2 and use the appropriate package build procedure.

If you are like us and consider that professional solutions should include stable, hassle free binary distributions, you might be interested to know that a custom packed version of OpenOCD, based on the latest public version (0.9.0) was added to GNU ARM Eclipse, as **GNU ARM Eclipse OpenOCD**. It can be downloaded from the [GitHub Releases](https://github.com/gnuarmeclipse/openocd/releases) page.

So, if you are not interested in building from sources, and appreciate a better integration with the Eclipse plug-in, please feel free to use the GNU ARM Eclipse OpenOCD binaries, and preferably install them in the default locations.

**Warning:** OpenOCD is a very complex project, capable of working with many JTAG probes, but support for them must be explicitly included at build time, so be sure that support for your JTAG probe was included in the binaries you plan to use. The **GNU ARM Eclipse OpenOCD** includes support for most existing probes.

## Documentation

The OpenOCD documentation is available in the [Files](https://sourceforge.net/projects/openocd/files/openocd/) section of the SourceForge project. For version 0.9.0, the manual is [openocd.pdf](http://sourceforge.net/projects/openocd/files/openocd/0.9.0/openocd.pdf/download).

## Windows

For user convenience, the Windows versions of **GNU ARM Eclipse OpenOCD** are packed as Windows setup wizards. Go to the [GitHub Releases](https://github.com/gnuarmeclipse/openocd/releases) page and download the latest version named like:

  * `gnuarmeclipse-openocd-win64-0.8.0-*-setup.exe`
  * `gnuarmeclipse-openocd-win32-0.8.0-*-setup.exe`

Select the `-win64-` file for Windows x64 machines and the `-win32-` file for Windows x32 machines.

Run the setup as usual.

![The OpenOCD Setup]({{ site.baseurl }}/assets/images/2015/openocd-setup-wizard.png)

It is recommended to keep the default install location:

![Accept the default OpenOCD destination folder]({{ site.baseurl }}/assets/images/2015/openocd-setup-destination.png)

The default install location is:

* `C:\Program Files\GNU ARM Eclipse\OpenOCD\*`

The result is a structure like:

![The OpenOCD folders structure]({{ site.baseurl }}/assets/images/2015/windows-folders-openocd.png)

To check if OpenOCD starts, use the following command:

	C:>"C:\Program Files\GNU ARM Eclipse\OpenOCD\0.8.0-201503201840\bin\openocd" --version
	GNU ARM Eclipse 64-bit Open On-Chip Debugger 0.8.0-00036 (2015-03-20-18:40)


### Drivers

As usual on Windows, mastering drivers is a challenge and OpenOCD is no exceptions, so don't be surprised to encounter many incompatible drivers for various JTAG probes. The OpenOCD distribution includes some libusb drivers, and recommends to run the `zadig.exe` tool to activate them. Although this manoeuvre will make OpenOCD happy, it will most probably ruin other USB drivers you might have installed. Our strong recommendation is NOT to do this, and instead use the manufacturer drivers, when compatible with OpenOCD.

#### ST-LINK/V2

One example of compatible drivers are the ST-LINK/V2 USB drivers, from ST, available as part number [STSW-LINK009](http://www.st.com/web/en/catalog/tools/FM147/SC1887/PF260219). Download the `stsw-link009.zip` archive, extract its content to a separate folder, and run the `dpinst_amd64.exe` (or `dpinst_x86.exe`) with administrative privileges.

As for most Windows drivers, to complete the installation, a restart usually helps.

Connect the ST-LINK/v2 or the DISCOVERY board and check in **Control Panel** → **System** → **Device Manager** if the JTAG is operational.

![ST-LINK Windows device]({{ site.baseurl }}/assets/images/2015/windows-devices-stlink.png)

For other probes follow the manufacturer instructions.

Note 1: All Windows tests were performed on Windows 7. If, for any reasons, you still use the venerable Windows XP, some differences may be observed in the USB subsystem; to stay on the safe side, try to always use original manufacturer drivers.

Note 2: OpenOCD v0.7.0 does not work with the current J-Link drivers, so on Windows it is not possible to use OpenOCD with J-Link; use the SEGGER supplied software instead.

#### Zadig

For some devices, for example [ARM-USB-OCD](https://www.olimex.com/Products/ARM/JTAG/) from [Olimex](https://www.olimex.com/), after installing the vendor drivers, you must also install [Zadig](http://zadig.akeo.ie) and convert the vendor drivers to WinUSB drivers.

## OS X

For user convenience, the OS X version of **GNU ARM Eclipse OpenOCD** is packed as an OS X install package. Go to the [GitHub Releases](https://github.com/gnuarmeclipse/openocd/releases) page and download the latest version named like:

*  `gnuarmeclipse-openocd-osx-0.8.0-*.pkg`

As the name implies, this is an OS X package, that can be installed on any recent 64-bit OS X (the latest version was tested on 10.9, 10.10, 10.11).

Run the install as usual.

![Install the OS X package]({{ site.baseurl }}/assets/images/2015/openocd-mac-installer.png)

The package is installed in:

* `/Applications/GNU ARM Eclipse/OpenOCD/*`

To check if OpenOCD starts, use:

	$ /Applications/GNU\ ARM\ Eclipse/OpenOCD/0.8.0-201501181257/bin/openocd --version
	GNU ARM Eclipse 64-bit Open On-Chip Debugger 0.8.0-00036 (2015-01-18-12:57)

## GNU/Linux

The GNU/Linux versions of **GNU ARM Eclipse OpenOCD** are packed as TGZ archives. Go to the [GitHub Releases](https://github.com/gnuarmeclipse/openocd/releases) page and download the latest version named like:

* `gnuarmeclipse-openocd-debian64-0.8.0-201501181055.tgz`
* `gnuarmeclipse-openocd-debian32-0.8.0-201501181055.tgz`

As the name implies, these are Debian `tar.gz` archives, but can be executed on most recent GNU/Linux distributions (they were tested on Debian, Ubuntu, Manjaro, SuSE and Fedora). Select the `-debian64-` file for 64-bit machines and the `-debian32-` file for 32-bit machines.

In case you use an older distribution and encounter difficulties to run **GNU ARM Eclipse OpenOCD**, you can also try to build it from sources on your machine. As a last resort, if your distribution includes an OpenOCD package, you can install it using the specific tools.

To install this package, unpack the archive and copy it to  `/opt/gnuarmeclipse/openocd/${version}`

    sudo mkdir -p /opt/gnuarmeclipse
    cd /opt/gnuarmeclipse
    sudo tar xvf ~/Downloads/gnuarmeclipse-openocd-debian64-0.10.0-201510281129-dev.tgz

Note: although perfectly possible to install it in any location, it is recommended to use this location, since by default the plug-in searches for the executable in this location.

To check if OpenOCD starts and is recent, use:

	$ /opt/gnuarmeclipse/openocd/0.10.0-201510281129-dev/bin/openocd --version
  GNU ARM Eclipse 64-bits Open On-Chip Debugger 0.10.0-dev-00141-g09aeb96-dirty (2015-10-28-11:56)

### UDEV

For the JTAG probes implemented as USB devices (actually most of them), the last installation step on GNU/Linux is to configure the UDEV subsystem. OpenOCD provides an UDEV rules file defining all the supported IDs; to install it, just copy the file to `/etc/udev/rules.d` and eventually notify the daemon:

	$ sudo cp /opt/gnuarmeclipse/openocd/0.10.0-201510281129-dev/contrib/99-openocd.rules \
	 /etc/udev/rules.d/
	$ sudo udevadm control --reload-rules

Note: If you previously installed the J-Link binaries, the USB IDs were already added to UDEV. The above OpenOCD rules file also defines the J-Link ID. Apparently UDEV does not complain; if you encounter problems, just comment out the definition in the OpenOCD file.

## Testing

To test if OpenOCD is able to connect to a specific board, you generally need to select the interface and the processor. As a shortcut, for some well known boards, there are ready made configuration files to set both the interface and the processor. For example, on OS X, to test a connection via ST/LINK v2 to the STM32F4DISCOERY board, you can use the sample below:

	$ /Applications/GNU\ ARM\ Eclipse/OpenOCD/0.8.0-201501181257/bin/openocd \
	 -f board/stm32f4discovery.cfg
	GNU ARM Eclipse 64-bit Open On-Chip Debugger 0.8.0-00036-gb7535dd (2015-01-18-12:57)
	Licensed under GNU GPL v2
	For bug reports, read

	http://openocd.sourceforge.net/doc/doxygen/bugs.html

	srst_only separate srst_nogate 	srst_open_drain connect_deassert_srst
	Info : This adapter doesn't support configurable speed
	Info : STLINK v2 JTAG v14 API v2 SWIM v0 VID 0x0483 PID 0x3748
	Info : using stlink api v2
	Info : Target voltage: 2.905638
	Info : stm32f4x.cpu: hardware has 6 	breakpoints, 4 watchpoints
	^C

## Update OpenOCD path

Right after installing OpenOCD, or updating to a new version, it is necessary to inform Eclipse where the binaries were installed. If OpenOCD was installed in the default location, Eclipse has a mechanism to autodetect the most recent version, but this mechanism sometimes fails, and manual path setting is necessary.

To set the path, first exit Eclipse, and start it again, to allow the autodetect mechanism to give it a try:

* in the _Eclipse_ menu, go to **(Window →) Preferences** → **Run/Debug** → **OpenOCD**

  ![OpenOCD preferences page]({{ site.baseurl }}/assets/images/2015/preferences-run-openocd.png)

* click the **Restore Defaults** button

For more details please refer to the [OpenOCD plug-in]({{ site.baseurl }}/debug/qemu/#define-the-openocd-folder-location) page, where the entire procedure is explained.

## OpenOCD Debugging plug-ins

The OpenOCD debugging **plug-ins are not included** in these packages, and need to be installed [as usual]({{ site.baseurl }}/plugins/install/). Just be sure that the **GNU ARM C/C++ OpenOCD Debugging** plug-ins are selected.

![Install the OpenOCD plug-ins]({{ site.baseurl }}/assets/images/2015/install-new-software-updates-openocd.png)
