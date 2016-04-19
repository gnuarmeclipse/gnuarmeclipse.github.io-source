---
layout: page
permalink: /toolchain/install/
title: How to install the ARM toolchain?
author: Liviu Ionescu

date: 2015-09-11 22:49:00 +0300

version-id: 4_9-2015q3
version-date: 20150921

---

## Overview

The build plug-in is highly configurable in terms of executable names and location, so you can use any 32/64-bits ARM GNU toolchain you preffer, but, for better results, the recommended toolchain for **bare metal** target applications is [**GCC ARM Embedded**](http://launchpad.net/gcc-arm-embedded) (formerly GNU Tools for ARM Embedded Processors); for **GNU/Linux** target applications, the **[Linaro](http://www.linaro.org/downloads/)** family of toolchains provides a large selection of choices, for various specific needs (little/big endian, 32/64-bits, etc).

Please note the distinction between the **target platform** and the **host/development platform**.

* the target platform defines the environment where the application will be executed, and in general can be either a bare metal (the application sits directly on the hardware and has intimate control of it, usually including a form of scheduler to allow multiple threads to execute pseudo-simultaneously on the same processor), and applications that sit on top of an operating system, usually a distribution of GNU/Linux optimised for embedded environments
* the host/development platform is the platform where the development tools are executed, usually as cross compilers, and can be, in our case, any platform that supports Eclipse, for example Windows, OS X, GNU/Linux, BSD, etc.

> Note: Be sure you select the proper toolchain for the target platform, otherwise builds will not succeed, or the generated applications will fail to run. **Do not** try to use the GCC ARM Embedded to build  GNU/Linux applications, because the executables will not run on anything than bare metal, and **do not try to use the Linaro toolchains for bare metal applications**.

The installation details described below assume the selection of the GCC ARM Embedded toolchain. For other toolchains, please follow the specific installation instructions.

## Download

Due to portability reasons, the GNU ARM Eclipse plug-ins do not include any toolchain binaries, but they can be downloaded either from the [GCC ARM Embedded project page](http://launchpad.net/gcc-arm-embedded), or, even better, from the [All downloads](http://launchpad.net/gcc-arm-embedded/+download) page, where it is a bit easier to identify which file is required.

Versions from 4_7 up to {{ page.version-id }} were tested and are known to work properly.

![Launchpad]({{ site.baseurl }}/assets/images/2014/01/Launchpad.png)

![The launchpad download page]({{ site.baseurl }}/assets/images/2014/01/LaunchpadDownloads.png)

## Windows

The following steps can be performed on Windows:

* download the latest Windows installer **.exe** file (currently `gcc-arm-none-eabi-{{ page.version-id }}-{{ page.version-date }}-win32.exe`, about 84 MB)
* locate the file (usually in the `...\Downloads\`  folder) and double click it to start the installer
* authenticate with the administrative password, to allow the installer write in system locations

  ![MS_admin]({{ site.baseurl }}/assets/images/2014/01/MS_admin.png)

* select the desired language
* confirm that you want to install the toolchain
* accept the terms of the license agreement
* accept the destination folder, usually a version specific sub-folder of `C:\Program Files\`

  > Note: It is highly recommended to **do not to change the install path**, since the plug-in tries to automatically discover the toolchain in this default location.

  ![The destination folder]({{ site.baseurl }}/assets/images/2014/01/MS_destination_location.png)

* wait a few moments for the installer to copy files
* in the final window be sure you **disable adding the toolchain path to the environment**

  ![Disable adding toolchain path to environment]({{ site.baseurl }}/assets/images/2014/01/MS_finish.png)

* read the `readme.txt` file
* test if the compiler is functional; use the actual install path:

  ```
C:\Users\Liviu Ionescu\>"C:\Program Files\GNU Tools ARM Embedded\4.8 2014q2\bin\arm-none-eabi-gcc.exe" --version
arm-none-eabi-gcc (GNU Tools for ARM Embedded Processors) 4.8.4 20140526 (release) [ARM/embedded-4_8-branch revision 211358]
```

For Windows, the next step would be to install the [build tools (make & rm)]({{ site.baseurl }}/windows-build-tools/).

The complete toolchain documentation is available in the `...\share\doc\pdf\` folder.

If you'll ever need to remove the toolchain, there is an **uninstall.exe** program available in the toolchain root folder.

## OS X

The following steps can be performed on OS X:

* download the latest OS X install tarball file (currently `gcc-arm-none-eabi-{{ page.version-id }}-{{ page.version-date }}-mac.tar.bz2`, about 66 MB)
* locate the file (usually in the `$HOME/Downloads` folder)
* decide on a location to install the toolchain; the recommended folder is `/usr/local/`
* unpack the archive in the destination folder

  > Note: It is highly recommended to **do not use a different install path**, since the plug-in tries to automatically discover the toolchain in this default location.

  ```
$ sudo mkdir -p /usr/local
$ cd /usr/local
$ sudo tar xjf ~/Downloads/gcc-arm-none-eabi-{{ page.version-id }}-{{ page.version-date }}-mac.tar.bz2
```

* the result should be a folder like `/usr/local/gcc-arm-none-eabi-{{ page.version-id }}`
* test if the compiler is functional; use the actual install path:

  ```
$ /usr/local/gcc-arm-none-eabi-4_8-2014q1/bin/arm-none-eabi-gcc --version
arm-none-eabi-gcc (GNU Tools for ARM Embedded Processors) 4.8.4 20140526 (release) [ARM/embedded-4_8-branch revision 211358]
```

  > **DO NOT add the toolchain path to the user or system path!**

The complete toolchain documentation is available in the `.../share/doc/pdf/` folder.

If you'll ever need to remove the toolchain, only remove the `/usr/local/gcc-arm-none-eabi-{{ page.version-id }}`, there are no other components stored in system folders.

### MacPorts

In case you have MacPorts installed, be sure you remove the MacPorts path from the user path (edit the **.profile** in your home folder and comment out the line where `/opt/local/` is added in front of the PATH), especially if you installed any toolchain inside MacPorts, since this will be a serious source of confusion.

## GNU/Linux

The following steps were performed on **Ubuntu 14.04 LTSx64** (please adjust them accordingly for other distributions):

* since the toolchain executables are 32-bits apps, when running on 64-bits machines, be sure you install the following 32-bits libraries (for different versions check the toolchain README for the actual list):

  ```
$ sudo apt-get -y install lib32z1 lib32ncurses5 lib32bz2-1.0
```

* on Ubuntu 15.04 the following libraries are required:

  ```
$ sudo apt-get -y install lib32ncurses5
```

* on Ubuntu 12 LTSx64 all 32-bits libraries were packed in ia32-libs, so you can also use, but be prepared to get a lot of useless libraries:

  ```
$ sudo apt-get -y install ia32-libs
```

* download the latest Linux install tarball file from [Launchpad](https://launchpad.net/gcc-arm-embedded/+download) (currently `gcc-arm-none-eabi-{{ page.version-id }}-{{ page.version-date }}-linux.tar.bz2`, more than 60 MB)

  > Note: DO NOT install the ARM GCC package that comes with your distribution, especially if it is newer than the one provided by Launchpad, since generally it is not supported, and debugging sessions might fail.

* locate the file (usually in the `$HOME/Downloads/`  folder)
* decide on a location to install the toolchain; the recommended folder is `/usr/local/`
* unpack the archive in the destination folder

  > Note: It is highly recommended to **do not use a different install path**, since the plug-in tries to automatically discover the toolchain in this default location.

  ```
$ cd /usr/local
$ sudo tar xjf ~/Downloads/gcc-arm-none-eabi-{{ page.version-id }}-{{ page.version-date }}-linux.tar.bz2
```

* the result should be a folder like `/usr/local/gcc-arm-none-eabi-{{ page.version-id }}`
* test if the compiler is functional; use the actual install path:

  ```
$ /usr/local/gcc-arm-none-eabi-4_8-2014q1/bin/arm-none-eabi-gcc --version
arm-none-eabi-gcc (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]
```

  > **DO NOT add the toolchain path to the user or system path!**

The complete toolchain documentation is available in the `.../share/doc/pdf/` folder.

If you'll ever need to remove the toolchain, only remove the `/usr/local/gcc-arm-none-{{ page.version-id }}`, there are no other components stored in system folders.

## Toolchain path

To be sure you did not miss this recommendation, here it is again:

> **DO NOT add the toolchain path to the user or system path!**

If there would be only one single version of one single toolchain in existence, then it wouldn't be a problem, but as soon as you start real world applications, you will face at least the need to keep multiple versions of the same toolchain installed, if not multiple toolchains, and this is when your trouble starts.

The GNU ARM Eclipse plug-in has an advanced [toolchain path management]({{ site.baseurl }}/toolchain/path/) (presented in more detail in the separate page). Use it!
