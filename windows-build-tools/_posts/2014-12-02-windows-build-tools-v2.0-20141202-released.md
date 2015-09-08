---
layout: post
title:  Build Tools repacked as Setup
download_url: https://github.com/gnuarmeclipse/windows-build-tools/releases/tag/v2.0

author: Liviu Ionescu

date:   2014-12-02 12:00:00
last_modified_at: 2015-09-08 12:34:00

categories:
  - releases
  - windows-build-tools
tags:
  - windows
  - setup
  - build
  - make
  - rm
---

For your convenience, the [Windows Build Tools]({{ site.baseurl }}/windows-build-tools/) were repacked as a Windows setup. 

[Binary files »]({{ page.download_url }})

![Build Tools setup.]({{ site.baseurl }}/images/2015/win-build-tools-setup.png)

Please note that the setup does not install any components outside the selected destination folder, and also includes an uninstall program, to completely remove the tools from the system.

The repacking also corrected a problem with the previous archive (the missing DLLs were added), so the previous archive (Cross Build Tools.zip) is now considered DEPRECATE.

For more information, please read the [dedicated page]({{ site.baseurl }}/windows-build-tools/).

## Download

The new Windows Build Tools can be downloaded from the [GitHub Release]({{ page.download_url }}) page.

The available files are:

	Build-Tools-w32-20141202154847-setup.exe
	Cross.Build.Tools.zip


**Cross Build Tools.zip** is included for archiving purposes and is now considered DEPRECATE.

