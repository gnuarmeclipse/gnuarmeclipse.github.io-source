---
layout: page
permalink: /developer/development-environment/
title: The Build environment
author: Liviu Ionescu

date: 2015-09-10 18:32:00 +0300

---

## Liviu Ionescu's build environment

I'm currently using macOS 10.10.x running on a Mac Book Pro 2011, with 8 GB of RAM. The debugging sessions are started from within Eclipse on macOS. I currently have no debug capabilities on other platforms (sorry for this).

For testing the resulting plug-ins binaries on other platforms, I install them on Eclipses within several virtual machines running on Parallels Desktop 10:

-   Ubuntu 14.x, 64-bits
-   Windows 8.1, 64-bits
-   Windows 7, 32-bits

For the multi-platform builds I use [Docker](https://www.docker.com), which on macOS runs under Virtual Box. Running the builds in parallel with using other Parallels Desktop virtual machines is possible, but Virtual Box becomes painfully slow and generally should be avoided.
