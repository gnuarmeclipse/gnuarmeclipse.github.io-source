---
layout: page
permalink: /debug/jlink/install/
title: How to install the SEGGER J-Link
author: Liviu Ionescu

date: 2015-09-11 20:50:00
last_modified_at: 2015-09-21 18:52:00

---

## Why J-Link?

In case you wonder why GNU ARM Eclipse decided to provide support to SEGGER J-Link, the short answer is: **because of [J-Link EDU](http://www.segger.com/j-link-edu.html) and of SWO.** The long answer may include the following:

* **wide processor support** (there is probably no unsupported ARM processor in the entire galaxy, and if you find one in a remote quadrant, I'm pretty sure it'll be shortly added to the list)
* it is a true **multi-platform** solution, providing drivers for **Windows**, **OS X** and **GNU/Linux**
* it comes with a **standard GDB server** implementation, compatible with existing ARM toolchains
* in addition to the classical **JTAG** protocol, it implements the new **SWD** protocol
* when SWD is selected, it is capable to sample the **SWO** pin, for trace messages and other ARM specific debugging
* it is fast, up to **15 MHz** for **JTAG** clock and up to **7.5 MHz SWO** sampling frequency for the new **V9** hardware (12 MHz JTAG / 6 MHz SWO for V8, and even up to **100 MHz SWO** for the high-performance **ULTRA+, PRO** models)
* it supports all possible target voltages, from **1.2V to 5V**
* in addition to the regular debugging functionality, it is also able to write the internal flash, and, even more, it uses a smart flash writing algorithm, to avoid useless writes if the flash blocks did not change
* it is a mature, proven product, with a great support team
* it provides an entire range of probes, [J-Link](http://www.segger.com/jlink_base.html), [J-Link Pro](http://www.segger.com/jlink-pro.html), including a **special priced version for educational use**, the [J-Link EDU](http://www.segger.com/j-link-edu.html) (available from many distributors, for example from [Farnell](http://uk.farnell.com/segger/8-08-90-j-link-edu/jtag-emulator-j-link-edu-usb/dp/2098545))

The J-Link was present on the JTAG market for many years, but, considering the initial prices, only the big companies could afford them. After a fierce fight against Chinese clones, sold for a fraction of the price, in 2012 [SEGGER](http://www.segger.com/) decided to introduce a low price version, [J-Link EDU](http://www.segger.com/j-link-edu.html), restricted to educational and non-commercial usage, making it the JTAG probe of choice for open source GNU ARM development.

## Overview

J-Link comes not only with a GDB server, but with a complete set of drivers and utilities, packed by SEGGER separately for each platform. The same distribution includes drivers for all J-Link probes, so installation is quite simple. The J-Link binaries are available from the [SEGGER site](http://www.segger.com/jlink-software.html). Download the file appropriate for your development platform. Please note that you need to have the **J-Link serial number** at hand, since the download site will ask for it. You can still download the J-Link software if you do not have the serial number, but you have to pass a multiple step confirmations sequence stating that you are not using illegal clones.

## Documentation

The J-Link GDB server is documented in the [UM08001](https://www.segger.com/admin/uploads/productDocs/UM08001_JLink.pdf) manual, available from the [SEGGER J-Link page](http://www.segger.com/jlink-software.html).

## Windows

The Windows file is a ZIP archive, named like **Setup\_JLinkARM\_V480.zip**. After unpacking it, a Windows executable file is obtained, named like **Setup\_JLinkARM\_V480.exe**.

* double click it to start the installation process
* enter the administrative password
* accept the license
* accept the destination folder (C:\Program Files\SEGGER\JLinkARM_V480)
* accept the default USB driver

The result of the install is a folder (a new folder for each new version installed), and a set of driver files installed in the system folders, overwritten with each new install.

![SEGGER Windows distribution]({{ site.baseurl }}/images/2014/01/Segger-win.png)


Please note that on Windows, SEGGER provides both graphical interface and **command line versions** (having the names suffixed with **CL**) for most of their tools. For the J-Link plug-in it is recommended to use only the command line version of the  J-Link GDB server (**JLinkGDBServerCL.exe**).

## OS X

The OS X download is an OS X package installer, like **JLink\_MacOSX\_V480.pkg**.

* double click it to start the installation process
* accept the license
* enter the administrative password, required to write in the global /Applications folder

The result of the install is a folder called **/Applications/SEGGER/JLink/** (the same folder for all versions) where all executables and libraries are stored; please note that, as for many OS X applications, no other driver files are installed in the system folders.

![SEGGER OS X distribution]({{ site.baseurl }}/images/2014/01/Segger-OSX.png)


### USB

On OS X, the USB subsystem automatically identifies and allows access to USB devices, without the need to maintain a manual list similar to the one used by UDEV in GNU/Linux. No other drivers or system configurations are required.

## GNU/Linux

There are multiple packages available for GNU/Linux on the SEGGER download site, built as Debian/Red Hat packages, in 32/64-bit versions, or plain TGZ archives. Select the one appropriate for you system and use the specific tools to install the package. For example, on Ubuntu, to install the 64-bit .deb file, use the following command:

	$ sudo dpkg -i jlink_4.80_x86_64.deb

The J-Link executables are installed in **/usr/bin**.

In case you have a 64-bit machine and install the 32-bit SEGGER package, you might need several 32-bit libraries, depending on distribution.

### UDEV

The install procedure automatically adds **/etc/udev/rules.d/99-jlink.rules** to define the USB IDs of the J-Link devices. No other drivers are required.

## Testing

To test if J-Link is able to connect to a specific board, you generally need to specify the interface (JTAG or SWD) and the device name. By default, J-Link GDBServer will try JTAG but if only SWD is wired (which is very common on custom hardware), you would need to specify the interface (-if SWD). The device name is needed for targets which require special handling on connect (e.g. due to silicon bugs which make auto-detection impossible). For a list of available device names, please refer to the SEGGER [Supported devices](http://www.segger.com/jlink_supported_devices.html) page. Below is an example how to test a JTAG connection to a STM32F103 evaluation board (-device STM32F103RB) on OS X.

	$ /Applications/SEGGER/JLink/JLinkGDBServer -if JTAG -device STM32F103RB
	SEGGER J-Link GDB Server V4.80 Command Line Version

	JLinkARM.dll V4.80 (DLL compiled Dec 20 2013 19:44:31)

	-----GDB Server start settings-----
	GDBInit file:                  none
	GDB Server Listening port:     2331
	SWO raw output listening port: 2332
	Terminal I/O port:             2333
	Accept remote connection:      yes
	Generate logfile:              on
	Verify download:               on
	Init regs on start:            on
	Silent mode:                   off
	Single run mode:               off
	------J-Link related settings------
	J-Link script:                 none
	Target interface:              JTAG
	Host interface:                USB
	Target endian:                 little
	Target interface speed:        0kHz

	Connecting to J-Link...
	J-Link is connected.
	Firmware: J-Link ARM V8 compiled Nov 25 2013 19:20:08
	Hardware: V8.00
	S/N: XXXXXXXXX
	OEM: SEGGER-EDU
	Feature(s): FlashBP, GDB
	Checking target voltage...
	Listening on TCP/IP port 2331
	Connecting to target...
	J-Link found 2 JTAG devices, Total IRLen = 9
	JTAG ID: 0x3BA00477 (Cortex-M3)
	Connected to target
	Waiting for GDB connection...
	^C

On Windows, to start the GDB server, use back-slashes in the path and the CL (command line) version:


	C:>C:\Program Files\SEGGER\JLinkARM_V480\JLinkGDBServerCL


On Ubuntu the command is simple:


	$ /usr/bin/JLinkGDBServer


In all cases, the result should be similar to the one obtained on OS X.

## The J-Link plug-in

If you successfully installed SEGGER binaries, you can proceed to the page documenting how to use the GNU ARM Eclipse [J-Link debugging plug-in][1].

 [1]: {{ site.baseurl }}/debug/jlink/ "The J-Link hardware debugging Eclipse plug-in"
