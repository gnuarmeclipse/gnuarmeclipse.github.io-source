---
layout: post
title:  GNU ARM Eclipse Windows Build Tools v2.6-201507152002 released
download_url: https://github.com/gnuarmeclipse/windows-build-tools/releases/tag/v2.6

author: Liviu Ionescu

date:   2015-07-15 12:00:00

categories:
  - releases
  - windows-build-tools
tags:
  - windows
  - setup
  - build
  - make
  - rm
  - busybox

---

Version v2.6-201507152002 is a new release of the GNU ARM Eclipse Windows Build Tools, adding support for Windows 64-bits.

[Binary files »]({{ page.download_url }})

## Improvements

The GNU ARM Eclipse Build Tools v2.6 package includes the **version 4.1 of GNU make** (built from MSYS2 source files), and version **1.24.0-git of BusyBox**, which provides a convenient implementation for sh/rm/echo.

The main change from v2.4 is a patch that allows BusyBox to run correctly on 64-bits Windows systems. Apparently this not only makes usage safer, by avoiding the DLL32 mess, but also slightly improves build performances.

## Known problems

* none so far

## Download

The new Windows Build Tools can be downloaded from the [GitHub Release]({{ page.download_url }}) page.

The MD5 sums of the files are:

	d52c5c3bedc8b34acdcb8384d8b2cfc3  
	gnuarmeclipse-build-tools-win32-2.6-201507152002-setup.exe

	a47b0a38355ee9449cb3930beb303762  
	gnuarmeclipse-build-tools-win64-2.6-201507152002-setup.exe
