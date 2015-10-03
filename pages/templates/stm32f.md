---
layout: page
permalink: /templates/stm32f/
title: STM32Fxx templates
author: Liviu Ionescu

date: 2015-09-11 22:27:00 +0300

---

## Overview

STM provides a large range of Cortex-M micro-controllers, grouped in several families. The GNU ARM Eclipse plug-ins provide support for F0, F1, F2, F3 and F4. Since all templates share common characteristics, the examples shown here will refer only to the F4 family.

## Create a new project

The template can create both C and C++ projects. To create a new C++ project:

* in the *Eclipse* menu, go to **File** → **New → C++ Project**
* in the *Executables* group, select the **STM32F4xx C/C++ Project**

![New STM32F4 project]({{ site.baseurl }}/assets/images/2014/04/NewF4Project.png)

Select the MCU and various project settings:

![Define MCU and project settings]({{ site.baseurl }}/assets/images/2014/04/F4Target.png)


Define the names of the destination folders:

![Define destination folder names]({{ site.baseurl }}/assets/images/2014/04/F4Folders.png)


Accept the default configuration names:

![Build configurations]({{ site.baseurl }}/assets/images/2014/04/Configurations.png)


Define the toolchain name and path:

![Toolchain path]({{ site.baseurl }}/assets/images/2014/04/Toolchain.png)


Note: DO NOT SKIP this step, it is mandatory to have a correct toolchain path defined in order for the build to complete correctly.

The generated project has the following structure:

![Project structure]({{ site.baseurl }}/assets/images/2014/02/F4Project.png)

### Associate a device to the project


Future releases of the wizard will this automatically but for now it is recommended to do it manually.


For more details, please visit the [separate page]({{ site.baseurl }}/eclipse/project/assign-device/).



![Assign a device to the project]({{ site.baseurl }}/assets/images/2013/10/Devices.png)


## Build

As seen in the above picture, the project builds without errors and runs on the STM32F4DISCOVERY board, blinking the LED and printing trace lines on the debugger output window.

## Exclude unused

By default, the template wizard enables the **Exclude unused** option. The result is that unused device drivers source files, although copied in the project, are excluded from build, mainly to save some build time.

If you need to re-include some of the source files you need to right click on the file, select **Resource Configurations** → **Exclude from Build...** and deselect the build configuration you want to include the file.

## Load flash and debug

Once you successfully built the project (be sure the text size in the Print Size step is not zero), you need to connect the board to your development machine and download the program into the board flash memory.

For ARM devices, this is done using a JTAG or SWD probe. Most professional development boards include the standard JTAG connector, and a professional JTAG probe, like J-Link, can be used directly.

Some low cost development boards do not include the standard JTAG connector, but have an on-board version of a JTAG probe. For example, the STM32F4DISCOVERY includes a version of ST/LINK V2, and the board can be directly connected via USB to the development machine. The portable method of using the ST/LINK V2 is via OpenOCD.

For more details on debugging, please refer to the specific [debug][1] pages.

## Troubleshooting

The usual sources for build failures are:

* a wrong or missing toolchain path; go to the project properties, C/C++ Build → Setting → the Toolchains tab and define the correct path;
* missing build tools (make & rm) on Windows; install the build tools.

 [1]: {{ site.baseurl }}/debug/ "Debugging"
