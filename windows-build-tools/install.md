---
layout: page
title: How to install the Windows Build Tools
permalink: /windows-build-tools/install/

date: 2015-09-04 12:00:00
last_modified_at: 2015-09-08 13:20:00

---

## Contents

* [Overview](#overview)
* [Mentor Sourcery CodeBench](#mentor-sourcery-codebench)
* [Download the Build Tools setup](#download-the-build-tools-setup)
* [Run the setup](#run-the-setup)
* [Check version](#check-version)
* [Check the global tools path](#check-the-global-tools-path)
* [DO NOT update the user or system path!](#do-not-update-the-user-or-system-path)
* [Uninstall](#uninstall)
* [The echo command](#the-echo-command)

## Overview

If your development platform is Windows, you need to install two additional command line programs, **make** and **rm**, required by the Eclipse external builder.

Unfortunately, most current toolchains do not provide these two programs in their windows distribution.

On OS X and GNU/Linux these programs are part of the standard distributions, either directly or in separate Developer packages, so the following steps do not apply.

## Mentor Sourcery CodeBench

One notable exception is the **[Mentor Sourcery CodeBench Lite](http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/editions/lite-edition/)** toolchain for Windows, which provides two programs, **cs-make** and **cs-rm** (the cs- prefix comes from CodeSourcery, the former name of the company that distributed the toolchain).

Unfortunately it seems that the CodeSourcery setup is not complete, and the bin/sh is not present, so, make is using cmd.exe to run sub processes, which presents the old Windows 8191 characters command line limitation.

So, if you use the CodeBench Lite (not recommended anyway), although you already have these two programs in the toolchain path, if you want to use longer lines and a modern make, preferably install these tools and update the names from cs-make to **make** and from cs-rm to **rm** in the Toolchains configuration tab.

## Download the Windows Build Tools setup

Otherwise, if you use other toolchains, like the recommended [**GNU Tools for ARM Embedded Processors**](http://launchpad.net/gcc-arm-embedded), for your convenience we prepared a small package with the required build tools; just download the most recent **gnuarmeclipse-build-tools-win32-2.\*-\*-setup.exe** file from the [SourceForge download area](https://sourceforge.net/projects/gnuarmeclipse/files/Build Tools/) and proceed with the setup.

## Run the setup

Run the setup with the default settings:

![Windows Build Tools Setup.]({{ site.baseurl }}/images/2015/win-build-tools-setup.png)

By default this will install the programs in the `C:\Program Files\GNU ARM Eclipse\Build Tools` folder:

![Default install destination.]({{ site.baseurl }}/images/2015/win-build-tools-setup-destination.png)

## Check version

Check if the tool is functional; go to the folder where you installed the tools and run `make --version`.

	C:\Program Files\GNU ARM Eclipse\Build Tools\bin>make --version
	GNU Make 4.1
	Built for i686-w64-mingw32
	Copyright (C) 1988-2014 Free Software Foundation, Inc.
	License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
	This is free software: you are free to change and redistribute it.
	There is NO WARRANTY, to the extent permitted by law.

## Check the global tools path

If you installed the build tools as explained above, the setup already added a key to the Windows Registry and the plug-in can read it and automatically configure the PATH.

![Global Tools Path.]({{ site.baseurl }}/images/2015/win-preferences-c-build-global-tools-path.png)

The above definition will make the build tools accessible to all projects in all workspaces.

If needed, you can define different paths per workspace (**Workspace Tools Paths**) or even per project (**Tools Paths** in the project properties).

To check if the paths definitions are effective, go to the project properties page and identify the **PATH** variable. Be sure the **Origin** column reads **BUILD SYSTEM**; if you manually edit it, the Origin will change and will read USER, but this is totally not recommended, since manually editing the path disables further automated updates of the path.

![Environment PATH.]({{ site.baseurl }}/images/2015/win-properties-c-environment.png)

## DO NOT update the user or system path!

As recommended when installing the toolchain, it is recommended to keep this settings outside the user or system path. Microsoft did not provide these programs in their distribution, and it is better to keep it that way, when you need them just explicitly update the build path to use them.

## Uninstall

If needed, you can completely remove the package from your system by running the provided uninstall (**build-tools-uninstall.exe**).

## The echo command

The package also contains an executable for the **echo** command. It is not mandatory for the build to succeed, but it is recommended to have it in the build path, to avoid an annoying CDT bug, that triggers an error during the first build of a new project, claiming that _Program "gcc" not found in PATH_.
