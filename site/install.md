---
layout: page
permalink: /install/
title: How to install GNU ARM Eclipse
author: Liviu Ionescu

date: 2015-09-16 20:56:00
last_modified_at: 2015-09-16 20:56:00

---

## Overview

Although GNU ARM Eclipse is not yet a packed suite to be installed in a single step, the separate steps are relatively easy to perform, and installing the plug-ins and the tools can be successfully completed even by non-experienced users.

> Note for beginners: If performed for the first time, it is recommended to follow the steps **by the book** and avoid _poetic licenses_, since they might lead to tricky situations and subtle functional problems.

The recommended sequence is described below.

## ARM Toolchain

This is generally a mandatory step for all platforms, since most platforms do not come by default with an ARM toolchain.

Please follow the steps in the [Toolchain install]({{ site.baseurl }}/toolchain/install) page.

## Windows Build Tools

This step is Windows specific, and it is highly recommended to use the GNU ARM Eclipse Windows Build Tools, and avoid other `make.exe` programs, even if they apparently work, since subtle differences in path processing exists between different versions of `make`.

Please follow the steps in the [How to install the Windows Build Tools]({{ site.baseurl }}/windows-build-tools/install/) page.

POSIX platforms generally include `make` in the system distribution, or might require to install some developer packages.

## SEGGER J-Link

SEGGER J-Link is the recommended debugger and, if available, please follow the steps in the [How to install the SEGGER J-Link]({{ site.baseurl }}/debug/jlink/install) page.

## OpenOCD

For the unfortunate developers who do not have a J-Link available, the alternative is to follow the steps in the [How to install the OpenOCD binaries]({{ site.baseurl }}/openocd/install) page.

OpenOCD might be needed when using development boards with integrated debuggers, like STM32F4-DISCOVERY boards, although the recommended solution is to prepare a [custom cable]({{ site.baseurl }}/developer/j-link-stm32-boards) and connect them to J-Link.

## QEMU

QEMU is a hardware emulator that can be successfully used to run simple _blinky_ applications, and the default tutorial requires QEMU, so it is highly recommended to install it.

Please follow the steps in the [How to install the QEMU binaries]({{ site.baseurl }}/qemu/install/) page.

## Java

As a prerequisite for Eclipse, Java is required.

Java is no longer a very _hot_ technology, so it is generally not available by default on most platforms and requires separate installation.

More details are available in the [How to install the GNU ARM Eclipse plug-ins]({{ site.baseurl }}/plugins/install/) page.

## Eclipse & CDT

Eclipse is the development platform where the GNU ARM Eclipse plug-ins run. Generally it is not available by default on most platforms and requires separate installation.

More details are available in the [How to install the GNU ARM Eclipse plug-ins]({{ site.baseurl }}/plugins/install/) page.

## Plug-ins

Once the Java & Eclipse are functional, please proceed with plug-ins install, as explains in the  [How to install the GNU ARM Eclipse plug-ins]({{ site.baseurl }}/plugins/install/) page.

## Workspace preferences

As the last install step, but actually a step to be performed after creating each and any Eclipse workspace, it is highly recommended to follow the steps in the [Workspace preferences]({{ site.baseurl }}/eclipse/workspace/preferences) page.
