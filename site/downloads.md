---
layout: page
permalink: /downloads/
title: How to download the binary files?
author: Liviu Ionescu

date: 2015-09-10 19:54:00
last_modified_at: 2015-09-21 19:12:00

---

During the various install or update steps, it will be necessary to access the binary files with the new releases.

There are two methods:
- **automatic** downloads, via the Eclipse update mechanism, to install and update the Eclipse plug-ins
- **manual** downloads, to install various tools (like OpenOCD/QEMU/Windows Build Tools/etc)

## Eclipse update site

The Eclipse update site is currently hosted on SourceForge, to make use of the wide network of mirror sites SourceForge provides. The public URL is:
- **http://gnuarmeclipse.sourceforge.net/updates**

![GNU ARM Eclipse updates URL]({{ site.baseurl }}/images/2015/install-new-software-updates-url.png)

## GitHub Releases pages

For all other manual downloads, the binary files are published as **GitHub Releases**, for each project.

For example, to access the QEMU binaries:
- go to the **GNU ARM Eclipse QEMU** project at [gnuarmeclipse/qemu](https://github.com/gnuarmeclipse/qemu)
- be sure you are in the **Code** view; if not, select the right side `<>` code icon
- identify the [releases](https://github.com/gnuarmeclipse/qemu/releases) link in the upper line:
  ![Code releases link]({{ site.baseurl }}/images/2015/github-qemu-code-tab-releases.png)
- click the releases link; this will show the Releases view, with the **Latest release** at the top of the page:
  ![The Latest release view. ]({{ site.baseurl }}/images/2015/github-qemu-code-tab-latest-release.png)
- in the left side the release is identified by the associated Git tag and commit ID
- the release description is usually a single phrase brief; for more details regarding the release, it is highly recommended to click the **Continue reading »** link and read the full release page
- the actual binary files are listed in the **Downloads** section; click the desired file and download it with the browser.

## Previous releases

As per the GitHub paradigm, each new release is identified by a unique Git tag, linked to a given Git commit, so **all previous releases are usually preserved**, and remain available mainly for archiving purposes.

## Partial releases

Sometimes tools releases include fixes affecting only a limited number of platforms; to save space, binaries for the platforms that did not include changes are not duplicated, and should be searched for and downloaded from previous releases. Just scroll down the browser windows, possibly to the **Next** page and identify the release that provides the binaries for the desired platform.

![The Latest release view. ]({{ site.baseurl }}/images/2015/github-qemu-code-tab-partial-release.png)

## Deprecated SourceForge files

The previous **Files** section in the **SourceForge** project is now deprecated and will be preserved only for archiving purposes; it will no longer be maintained and future releases will not be published there.

It is highly recommended to use only the **GitHub Releases** pages for all downloads.
