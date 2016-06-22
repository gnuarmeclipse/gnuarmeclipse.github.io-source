---
layout: main
permalink: /
title: Welcome to GNU ARM Eclipse!
author: Liviu Ionescu

date: 2015-09-07 18:31:00 +0300

---

The **GNU ARM Eclipse** is an open source project that includes a family of Eclipse plug-ins and tools for multi-platform embedded ARM development, based on GNU toolchains. This project is hosted on [GitHub](https://github.com/gnuarmeclipse) and [SourceForge](http://sourceforge.net/projects/gnuarmeclipse/).

## The GNU ARM Eclipse plug-ins

These plug-ins provide Eclipse CDT (C/C++ Development Tooling) extensions for GNU ARM toolchains like **GNU Tools for ARM Embedded Processors**, **Linaro**, etc.

In short, the GNU ARM Eclipse plug-ins allow to create, build, debug and in general to **manage ARM and AArch64 projects** (executables and static/shared libraries, in both 32 and 64-bits versions) with the Eclipse framework (currently tested up to Eclipse 4.6 Neon). The plug-ins run on Windows, GNU/Linux and macOS. For more details please visit the [Features]({{ site.baseurl }}/plugins/features/) page.

![Create new STM32F4 C++ project]({{ site.baseurl }}/assets/images/2015/intro-new-f4-project.png)

## Additional tools

Apart from the main Eclipse plug-ins, this project also includes several additional tools, distributed as separate packages.

* **GNU ARM Eclipse Windows Build Tools**

  The **GNU ARM Eclipse Windows Build Tools** subproject includes the additional tools required on Windows (**make** & **rm**).

* **GNU ARM Eclipse OpenOCD**

  The **GNU ARM Eclipse OpenOCD** subproject is a new distribution of [OpenOCD](http://openocd.org/), customised for a better/more convenient integration with the **GNU ARM OpenOCD Debugging** plug-in. Binaries for Windows, GNU/Linux and macOS are available.

* **GNU ARM Eclipse QEMU**

  The **GNU ARM Eclipse QEMU** subproject is a fork of [QEMU](http://wiki.qemu.org/Main_Page) (an open source machine emulator), intended to provide support for Cortex-M emulation in GNU ARM Eclipse. Binaries for Windows, GNU/Linux and macOS are available.

  ![The STM32F4-Discovery 4 LEDs]({{ site.baseurl }}/assets/images/2015/stm32f4-discovery-leds.png)

## Let us know if you enjoyed it!

We definitely enjoyed working on the project! If you successfully installed **GNU ARM Eclipse** and enjoyed using it, please let us know; here are some advices:

* the best way to praise us would be to **donate** - if you want to speed up development and future versions to include more and more great features, please consider donnating; any contribution, small or generous, will be highly appreciated;
* go to the project [Facebook page](https://www.facebook.com/gnuarmeclipse) and click the **Like** button, write your opinion on the visitor posts wall, or share any of the web posts and pages with your friends;
* star the project using the [GitHub Stars](https://github.com/gnuarmeclipse/plug-ins/stargazers);
* write a short review in the main [SourceForge Project](http://sourceforge.net/projects/gnuarmeclipse) page.

Thank you,

Liviu Ionescu
