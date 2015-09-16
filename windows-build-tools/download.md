---
layout: page
permalink: /windows-build-tools/download/
title: How to download the GNU ARM Eclipse Windows Build Tools
author: Liviu Ionescu

date: 2015-09-16 20:02:00
last_modified_at: 2015-09-16 20:45:00

---

## GitHub Releases

All versions of the GNU ARM Eclipse Windows Build Tools are available via the [GitHub Releases](https://github.com/gnuarmeclipse/windows-build-tools/releases) page. For details how to reach it, see the [Downloads]({{ site.baseurl }}/downloads/) page.

![Windows Build Tools Releases]({{ site.baseurl }}/images/2015/github-gae-build-tools-releases.png)

## 64/32-bits

Starting with version v2.6 there are separate 64/32-bits binaries. If running a modern 64-bits Windows, it is highly recommended to download the 64-bits version, since it not only reduces the risk of 32-bits DLL rebases, but also the 64-bits `make` seems to run slightly faster.
