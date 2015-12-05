---
layout: page
permalink: /plugins/install/
title: How to install the GNU ARM Eclipse plug-ins?
author: Liviu Ionescu

date: 2015-09-11 22:06:00 +0300

---


## Quicklinks

If you know what this is all about and you just need the update site details:

* name: **GNU ARM Eclipse Plug-ins**
* URL: `http://gnuarmeclipse.sourceforge.net/updates`

## Prerequisites

Since these are Eclipse plug-ins, they obviously require a functional Eclipse CDT, which requires Java.

### Win XP - a word of caution

For the old-timers, a word of caution about Windows XP: recent Java distributions (from 7 up) are [no longer certified for XP](http://www.oracle.com/technetwork/java/javase/config-417990.html), so, even if they might seem to work, you are on thin ice. If possible, avoid using XP at all; otherwise use only the 32-bit version, with 32-bit Java and Eclipse.

### Win XP 64

The warning is even more important for Win XP 64, which, in certain configurations, has difficulties to start 32-bit applications (like the JLink GDB Server or OpenOCD). Although generally Win XP 64 is not recommended at all, if you really need to use it, preferably experiment with a 32-bit Java and a 32-bit Eclipse.

However please note that no support requests referring to Win XP 64 will be processed.

### Java

The recommended package is the official [Oracle **Java SE**](http://www.oracle.com/technetwork/java/javase/index.html). The **OpenJDK Java** used in Ubuntu is also fine. The minimum is JDK 1.7, or even JRE 1.7 (the Java Runtime Environment), but, as said before, better use the latest JDK. On OS X the last Apple Java implementation is 1.6, so it is required to use the Oracle 1.7 or later.

For example, on Ubuntu 14.04 LTS, you can install the OpenJDK run-time and test if it was properly installed with the following commands:

    $ sudo apt-get -y install default-jdk
    $ java -version
    java version "1.7.0_85"
    OpenJDK Runtime Environment (IcedTea 2.6.1) (7u85-2.6.1-5ubuntu0.14.04.1)
    OpenJDK 64-Bit Server VM (build 24.85-b03, mixed mode)


### Eclipse & CDT

The oldest Eclipse supported by the plug-ins is Eclipse 4.3 Kepler (CDT 8.3), and the recommended version is 4.4 SR2. Do not try to install them on Juno, Indigo, or older versions, since the install will fail.

The plug-ins also run on Eclipse 4.5 Mars, but there might be some small problems, for example the Restart button in the Debug view seems not working at all.

Just go to the [Eclipse download site](http://www.eclipse.org/downloads/) and get the **Eclipse IDE for C/C++ Developers** archive appropriate for your platform, preferably the 64-bit version. Unpack it at a place of your choice and start using it.

> Note: on GNU/Linux be sure you manually install the Eclipse; **DO NOT** try to install it via the Synaptics package manager, or similar, since usually you get an older version and the CDT plug-ins are not included.

### CDT

The minimum CDT version is 8.3. Do not try to use earlier versions, since either the install will fail, or it will not run properly.

As mentioned before, the recommended way is to use a fresh **Eclipse IDE for C/C++ Developers** for the cross ARM development projects. Even if you did so, but especially if you did not do so, it is a good idea to check if you really have the latest version available. For this, enter the _Eclipse_ menu and go to **Help** → **Install New Software**

![Install new software]({{ site.baseurl }}/assets/images/2013/10/InstallNewSoftware.png)

* select *Work with:* **Kepler**
* if the *Group items by category *is enabled, expand the **Programming Languages** group
* select the **C/C++ Development Tools** feature
* click the **Next** button and follow the usual installation procedure

![CDT install]({{ site.baseurl }}/assets/images/2013/10/InstallCDT.png)

### Compatibility issues

Please note that starting with 1.1.x, compatibility with Eclipses previous than 4.3 Kepler was no longer possible. If, for any reasons, you need a solution for older Eclipse versions, you can try the GNU ARM Eclipse Plug-in version 0.5.5, but please keep in mind that this old version is no longer maintained.

## Plug-ins install

The following samples are from Eclipse 4.3 Kepler on OS X. Other platforms may behave slightly different, but the idea is the same.

**Warning:** Be sure your Eclipse is 4.3 or later, otherwise the plug-ins will refuse to install, claiming **Missing requirements** and **Cannot satisfy dependency**.

### The recommended way

The recommended way to install these plug-ins is to use the Eclipse standard install/update mechanism: In the _Eclipse_ menu → **Help** → **Install New Software...**

* in the *Install* window, click the **Add...** button (on future updates, just select the URL in the **Work with:** combo)
* fill in *Name:* with **GNU ARM Eclipse Plug-ins**
* fill in *Location:* with **http://gnuarmeclipse.sourceforge.net/updates**
* click the **OK** button

![AddRepository]({{ site.baseurl }}/assets/images/2013/10/AddRepository.png)

* normally the main window should list a group named **CDT GNU Cross Development Tools**; expand it
* (in case the main window will list *There are no categorized items*, you are probably using a very old version; disable the Group items by category option)
* select all the plug-ins (the one marked *End of life* is needed only for compatibility with previous version, normally can be safely skipped)
* click the **Next** button and follow the usual installation procedure

![Plug-ins install]({{ site.baseurl }}/assets/images/2014/04/PluginsInstall.png)

Once you define the update site URL, further updates are greatly simplified (**Help** → **Check For Updates**).

### Installation problems

There are cases when the on-line access to the SourceForge mirror servers might not be reliable. In these cases the Eclipse update system may fail. For example:

![Failed install]({{ site.baseurl }}/assets/images/2013/10/FailedInstall.png)

If this happens, Eclipse remains in a confused state and rarely can recover itself.

The workaround is to remove the GNU ARM Eclipse update site from the available sites, restart Eclipse and add it again.

For this go to _Eclipse_ menu → **(Window →) Preferences** → **Install/Update** → **Available Software Sites**:

![Remove from available site list]({{ site.baseurl }}/assets/images/2013/10/AvailableSites.png)


If this still fails, the alternative method is to manually download the latest version archive and to perform the install from it, as presented below.

### The alternate way

If, for any reason, you need to install a specific version of the plug-in, the solution is to download the archive from [SourceForge Files](http://sourceforge.net/projects/gnuarmeclipse/files/Current%20Releases/) and to point the Eclipse update mechanism to the local archive: In the* Eclipse* menu → **Help** → **Install New Software...**

* in the *Install* window, click the **Add...** button
* in the *Add Repository* window, click the **Archive...** button
          * in the *Repository archive* window, select the downloaded .zip archive
          * click the **OK** button
* click the OK button
* follow the usual installation procedure

![Add repository from archive]({{ site.baseurl }}/assets/images/2013/10/AddArchiveRepository.png)

## Off-line install

If, for any reasons, you need to install the GNU ARM Eclipse plug-ins on a system without permanent Internet connection, and decide for the alternate way presented above, please be aware that the debug plug-ins require the presence of the **C/C++ GDB Hardware Debugging** plug-in. Usually this plug-in is not included in the standard package, but is present in the **CDT Optional Features** category, packed with the CDT archives available from the [CDT download site](https://www.eclipse.org/cdt/downloads.php). Download the desired archive, add it to your update sites, select the C/C++ GDB Hardware Debugging plug-in, restart as usual, and then install the GNU ARM Eclipse plug-ins from the local archive, as above.

![Install the GDB Hardware]({{ site.baseurl }}/assets/images/2013/10/GDB_Hardware_Install.png)

Note: Attempts to install the GNU ARM Eclipse plug-ins off-line without having the C/C++ GDB Hardware Debugging installed fails with an error related to installing the *ilg.gnuarmeclipse.debug.gdbjtag.jlink.feature.group* and other debugging features.

On-line install do not have this problem since the Eclipse automatically downloads the C/C++ GDB Hardware Debugging plug-in from the CDT update site.

## Plug-ins versions

One of the confusing details of the GNU ARM Eclipse plug-ins versioning system is matching the version from the release announcement (for example **Version 2.6.1-201502281154 released**) with existing plug-ins/features.

The short answer is that the announced version refers to the update site, also packed as an archive, and available from SourceForge. The same version is also used for the **ilg.gnuarmeclipse.core** plug-in:

![Installed plug-ins]({{ site.baseurl }}/assets/images/2013/10/Plugins.png)

Although the core plug-in is referred by all features, this version number cannot be found in the list of the features:

![Installed features]({{ site.baseurl }}/assets/images/2013/10/Features.png)

However, the common point for all these magic numbers is the release date, *201502281154* in this case, which is identical for all plug-ins and features.

Thus, the recommended method to **identify plug-ins and features** is **by date, not by version**, which differs from object to object.

## Set workspace preferences

After completing the installation of the plug-ins it is recommended to [set the workspace preference][1].

## Toolchain and debugging support

By completing the above steps, the Eclipse environment is ready, and you can start creating projects right away. However, for being able to build and debug these projects, you also need to install:

* the [toolchain][2]
* the optional [build tools][3] (if you are running on Windows)
* the [debugging][4] tools

It is also highly recommended to install the Packs plug-in, to switch to the Packs perspective and using the [Packs manager][5] to install the packages related to the devices in use. Even if Packs support is not complete yet, you still can benefit from the existing CMSIS Packs, for example by using the [peripherals registers view][6] in debug, the documentation view in the C/C++ perspective, etc.

Follow the above steps and when everything is ready, proceed to [create and build a test project][7].

## Support

If you encountered any problems when installing the plug-ins, pleas refer to the [Support][8] page and **do not** post comments to the blog pages containing support requests.

 [1]: {{ site.baseurl }}/eclipse/workspace/preferences/ "Workspace preferences"
 [2]: {{ site.baseurl }}/toolchain/install/ "Toolchain install"
 [3]: {{ site.baseurl }}/windows-build-tools/ "Build tools (make & rm) on Windows"
 [4]: {{ site.baseurl }}/debug/ "Debugging"
 [5]: {{ site.baseurl }}/plugins/packs-manager/ "Packs manager"
 [6]: {{ site.baseurl }}/debug/peripheral-registers/ "The peripherals registers view"
 [7]: {{ site.baseurl }}/tutorials/blinky-arm/ "Tutorial: Create a test project"
 [8]: {{ site.baseurl }}/support/
