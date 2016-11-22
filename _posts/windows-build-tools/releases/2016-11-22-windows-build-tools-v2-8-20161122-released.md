---
layout: post
title:  GNU ARM Eclipse Windows Build Tools v2.8-20161122* released
download_url: https://github.com/gnuarmeclipse/windows-build-tools/releases/tag/v2.8

author: Liviu Ionescu

date:   2016-11-22 21:20:00 +0300

categories:
  - releases
  - windows-build-tools

tags:
  - windows
  - setup
  - build
  - make
  - makedir
  - rm
  - busybox

---

Version 2.8-201611221915 is a maintenance release of the GNU ARM Eclipse Windows Build Tools.

[Binary files »]({{ page.download_url }})

## Content

The GNU ARM Eclipse Build Tools v2.8 package includes the **version 4.1 of GNU make** (built from MSYS2 source files), and version **1.26.0-git of BusyBox**, which provides a convenient implementation for sh/rm/echo/mkdir.

## Changes

The main functional change in v2.8 is the addition of `mkdir.exe` (actually a copy of `busybox.exe`).

## Known problems

* none so far

## Download

The new Windows Build Tools can be downloaded from the [GitHub Release]({{ page.download_url }}) page.

The MD5 sums of the files are:

```
4cae81d8019ef50c12c5b63e94ebf05a  
gnuarmeclipse-build-tools-win32-2.8-201611221915-setup.exe

87432980919ec3e39dcce56d107ab0b4  
gnuarmeclipse-build-tools-win64-2.8-201611221915-setup.exe
```
