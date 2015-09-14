---
layout: page
permalink: /plugins/features/
title: GNU ARM Eclipse Plug-ins Features
author: Liviu Ionescu

date: 2015-09-10 19:59:00
last_modified_at: 2015-09-14 11:43:00

---

## Contents

* [Main features](#main-features)
* [Supported toolchains](#supported-toolchains)
* [Extra build steps](#extra-build-steps)
* [Discovery Options & Indexing](#discovery-options--indexing)
* [Simplified multiple tools configurations](#simplified-multiple-tools-configurations)
* [Fully configurable toolchains](#fully-configurable-toolchains)
* [Advanced toolchain path management](#advanced-toolchain-path-management)
* [Functional ready to run templates](#functional-ready-to-run-templates)
* [Debugging support](#debugging-support)
* [The packages manager perspective](#the-packages-manager-perspective)
* [Peripherals registers view in debug](#peripherals-registers-view-in-debug)
* [Device and board documentation files](#device-and-board-documentation-files)

## Main features

The main features of the GNU ARM Eclipse family of plug-ins are:

  * create/build/manage embedded ARM and AArch64 applications, using the managed project features of Eclipse CDT, i.e. without having to manually create and maintain makefiles
  * provide ready to run templates for some ARM Cortex-M processors
  * provide debugging support via JTAG/SWD
  * provide a special view to examine and modify peripheral registers during debug sessions

Other features of the cross build plug-in are:

  * supports a wide range of 32 and 64-bits toolchains
  * provides extra build steps to generate the binary files required to write the controller flash memory
  * supports the automatic discovery of system paths and macro definitions for accurate indexing and auto-completion
  * provides common options for all toolchains
  * provides fully configurable toolchain definitions
  * provides advanced toolchain path management
  * improved project portability
  * ... and many more


## Supported toolchains

The build plug-in supports most existing toolchains currently available for both 32 and 64-bits ARM processors.

### ARM toolchains

* [**GNU Tools for ARM Embedded Processors**][1] (arm-none-eabi-*)
* **[Linaro][2] **ARMv7 **bare-metal EABI** (arm-none-eabi-*)
* **[Linaro][2] **ARMv7 **big-endian bare-metal EABI** (armeb-none-eabi-*)
* **[Linaro][2] **ARMv7 **Linux GNU EABI HF** (arm-linux-gnueabihf-*)
* **[Linaro][2] **ARMv7 **big-endian Linux GNU EABI HF** (armeb-linux-gnueabihf-*)
* **[Mentor Sourcery CodeBench Lite](http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/editions/lite-edition/)** for **ARM EABI** (arm-none-eabi-*)
* **[Mentor Sourcery CodeBench Lite](http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/editions/lite-edition/)** for **ARM GNU/Linux** (arm-none-linux-gnueabi-*)
* devkit **ARM EABI** (arm-eabi-*) (obsolete, no longer maintained)
* Yagarto, Summon, etc. **ARM EABI** (arm-none-eabi-*) (obsolete, no longer maintained)

### AArch64 toolchains

* **[Linaro][3] AArch64 bare-metal ELF** (aarch64-none-elf-*)
* **[Linaro][3] AArch64 big-endian bare-metal ELF** (aarch64_be-none-elf-*)
* **[Linaro][3] AArch64 Linux GNU** (aarch64-linux-gnu-*)
* **[Linaro][3] AArch64 big-endian Linux GNU** (aarch64_be-linux-gnu-*)

![The list of supported toolchains.]({{ site.baseurl }}/images/2015/wizard-toolchains.png)

## Extra build steps

In addition to building the ELF file, the build plug-in can also create a binary file (**ihex**, **srec**, **binary**) to be programmed in the processor flash memory.

Since resources are usually limited, the plug-in can also display the program size, and create a listing.

![An example of how secondary targets are generated.]({{ site.baseurl }}/images/2015/console-build-secondary.png)

## Discovery Options & Indexing

Frankly, this is mainly a CDT feature, but in order for it to work, the build plug-in must provide the CDT with various toolchain details, like compiler command (for example arm-none-eabi-gcc), compiler options and the right path to the toolchain binary.

To understand **Discovery Options**, you need to understand what **Indexing** is. In order to allow Eclipse user to navigate to definitions, to declarations, to allow smart completion, refactoring and all these nice features, the CDT needs to have **exactly** the same knowledge of the source files as the compiler. For this, it also needs to know the system headers used at compile time and the default preprocessor definitions issued by the compiler. GCC provides a magic combination of command options to do this (`-E -P -v -dD ${plugin_state_location}/specs.c`), so the CDT needs to issue the proper compiler commands (one for each language, C & C++). The build plug-in provides these details, for each toolchain.

This feature also provides a quick check if you configured properly your environment: after creating a new project, you should see the special folder **Includes** in the root of your project, containing the paths of the system include files used by your compiler. If you don't see this, you probably misconfigured the toolchain path.

![Example of automatically detected include paths.]({{ site.baseurl }}/images/2015/project-explorer-includes.png)

## Simplified multiple tools configurations

In addition to being tedious, setting options for each tool (C compiler, C++ compiler, linker) might also be a source of subtle errors when incompatible options are used for different tools.

To minimise the risk of such errors, and to make the plug-in easier to use, unlike in most other CDT compiler settings plug-ins, special configuration entries were defined at toolchain level instead of specific tools. Options enabled at this level are used for all tools, without exception.

![Example of common options used for all tools.]({{ site.baseurl }}/images/2015/properties-c-settings-tool-optimization.png)

## Fully configurable toolchains

Toolchain definitions include most of the configurable details, not only the prefix and the path, allowing the use of almost any GNU compatible toolchain.

![All toolchain details can be configured.]({{ site.baseurl }}/images/2015/properties-c-settings-toolchains.png)

## Advanced toolchain path management

The traditional way of accessing the toolchain components was to add the toolchain path to the system PATH and later do nothing special inside Eclipse. Unfortunately this model does not scale; serious development often requires multiple toolchains (either different versions of the same toolchain, or even toolchains from different sources) on the same machine, and polluting the system PATH is a source of major headaches.

The GNU ARM Eclipse cross build plug-in provides advanced toolchain path management; for more details, please read the separate [Toolchain path management][4] page

## Improved project portability

Even more, for improved project portability, the toolchain path is stored in the workspace, in preference to the path stored in the project.

Project portability is essential for team collaboration, when multiple developers use different platform to develop a single project. Without project portability, after a Windows machine would commit the project to a central repository, OS X or GNU/Linux users would have to manually adjust the path in their projects after each update, and the other way around; for more details, please read the separate [Project portability][5] page.

## Functional ready to run templates

For beginners, who need initial help to put all details together for their first project, a complete sample, with startup code, linker scripts, semi-hosting enabled and all necessary options already set, can be a major time saver.

The **Hello ****World **ARM Cortex-M3 C Project template was destined exactly for such cases; please see the [Tutorial: Create a test project][6] for more details.

![The Cortex-M3 template project.]({{ site.baseurl }}/images/2015/NewCM3ProjectResult.png)

Even more, specific templates are available for the STM families of processors **STM32F[01234]x**, and for some Freescale **KLxx** processors. They create the classical application that blinks a LED, and, specific for the Debug configuration, prints a string on the tracing (SWV or semi-hosting) output.

## Debugging support

During the lifetime of a project, creating/editing source files and building binaries are certainly important activities, but in many cases the most time is spent during debugging sessions, and a reliable debugging environment is an absolute must.

There are many debugging techniques and tools, but we recommend two solutions:

* the [SEGGER J-Link](http://www.segger.com/jlink_base.html) probe with its integrated GDB server, via [the J-Link plug-in][7]
* the [OpenOCD](http://openocd.sourceforge.net) GDB server for many other JTAG probes.

  ![The J-Link Debugger tab.]({{ site.baseurl }}/images/2015/preferences-run-jlink-debugger-tab.png)

We also recommend the use of specific ARM debugging support, like tracing via the SWO output, with a second choice for semihosting output (both are supported by the J-Link plug-in).

## The packages manager perspective

The GNU ARM Eclipse plug-ins were the first open source tools to benefit from the new CMSIS Packs technology promoted by ARM.

Packages are a convenient way to distribute software components, hardware descriptions and documentation, in a structured way.

There are many packages available, mostly maintained by Keil, and in order to conveniently manage them a dedicated perspective was created, with filtering and outline capabilities.

![The Packs perspective.]({{ site.baseurl }}/images/2015/perspective-packs.png)

Among other things, the packages metadata include a complete list of devices, grouped by vendor, family, sub-family, and a list of development boards. These extra data allow to easily associate additional properties (like device name) to projects, and later use these definition to automate other configurations, like debugging sessions.

![Assigning a device and board to the project.]({{ site.baseurl }}/images/2015/properties-c-settings-device-tab.png)

## Peripherals registers view in debug

One of the great features of CMSIS Packs is the availability of hardware descriptions for all Cortex-M devices, with details down to the register field level.

These descriptions can be used to assist the debugger in examining and modifying memory mapped peripheral registers.

![The peripheral registers view.]({{ site.baseurl }}/images/2015/debug-view-peripheral-registers.png)

## Device and board documentation files

The CMSIS packs also provide lots of documentation files, like device data sheets, user manuals, references manuals, and also board related files, including schematics and other manuals.

The list of documentation files is shown in a separate view, located on the right of the **Outline** view. In case the **Documents** view is not visible, a **Reset** is needed for the **C/C++** perspective (right click the perspective button and select Reset).

To open the individual documents, double click their names and specific viewers will open, generally outside Eclipse.

![The documentation view.]({{ site.baseurl }}/images/2015/view-documents.png)

 [1]: http://launchpad.net/gcc-arm-embedded
 [2]: http://launchpad.net/gcc-linaro
 [3]: http://launchpad.net/linaro-toolchain-binaries
 [4]: {{ site.baseurl }}/toolchain/path/ "Toolchain path management"
 [5]: {{ site.baseurl }}/eclipse/project/portability/ "Project portability"
 [6]: {{ site.baseurl }}/tutorials/hello-arm/
 [7]: {{ site.baseurl }}/debug/jlink/ "The J-Link hardware debugging Eclipse plug-in"
