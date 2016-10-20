---
layout: page
title: How to build the OpenOCD binaries?
permalink: /openocd/build-procedure/

date: 2015-09-04 17:02:00 +0300

---

The latest version of the build script is a single run, multi-platform build, generating the Windows 32, Windows 64, GNU/Linux 32, GNU/Linux 64 and macOS distribution packages at once.

The script was developed on macOS, but it also runs on any recent GNU/Linux distribution (just that in this case it cannot generate the macOS package).

## Prerequisites

The main trick that made the multi-platform build possible is [Docker](https://www.docker.com).

Containers based on three docker images are used, one packing MinGW-w64 in a Debian 8, and two packing the basic system in Debian 8 (separate 32/64-bits containers). The more conservative Debian was preferred to generate the GNU/Linux versions, to avoid problems when attempting to run the executables on older versions.

### macOS

#### Install the Command Line Tools

The macOS compiler and other development tools are packed in a separate Xcode add-on. The best place to get it is from the [Developer](https://developer.apple.com/xcode/downloads/) site, although this might require enrolling to the developer program (free of charge).

To test if the compiler is available, use:

```
$ gcc --version
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
Apple LLVM version 6.1.0 (clang-602.0.49) (based on LLVM 3.6.0svn)
Target: x86_64-apple-darwin14.3.0
Thread model: posix
```

#### Install a custom instance of Homebrew

The build process is quite complex, and requires tools not available in the standard Apple macOS distribution. These tools can be installed with Homebrew. To keep these tools separate, a custom instance of Homebrew is installed in `$HOME/opt/homebrew-gae`. Unfortunately, **MacTex** and **XQuartz** are not packed as Homebrew packages, but install as macOS packages and links to them are created (without adding them to the PATH).

The entire process can be automatised with a script, available from a gist:

```
$ git clone https://gist.github.com/46407a070844f764dec6f27bde385797.git ~/Downloads/install-homebrew.gist
$ bash ~/Downloads/install-homebrew.gist/install-homebrew-gae.sh
```
The script runs most of the time with user credentials, but to install MacTex and XQuartz, temporary `sudo` access is required.

#### Install Docker

On macOS, Docker can be installed by following the official [Install Docker on macOS](https://docs.docker.com/installation/mac/) instructions.

### GNU/Linux

#### Install Docker

For any GNU/Linux distribution, follow the [specific instructions](https://docs.docker.com/installation/#installation).

#### Configure Docker to run as regular user

To allow docker to run as a regular user, you need to be a member of the `docker` group.

```
$ sudo groupadd docker
$ sudo gpasswd -a ${USER} docker
$ sudo service docker restart
```

To make these changes effective, logout and login.

The above are for Ubuntu and the Debian family. For other distributions, the last line may differ, for example for Arch Linux use:

```
$ systemctl restart docker
```

#### Install required packages

Since most of the build is performed inside the Docker containers, there are not many requirements for the host, and most of the time these programs are in the standard distribution (`curl`, `git`, `automake`, `patch`, `tar`, `unzip`).

The script checks for them; if the script fails, install them and re-run.

### Docker images

The Docker images are available from [Docker Hub](https://hub.docker.com/u/ilegeul/). They were build using the Dockerfiles available from [ilg-ul/docker on GitHub](https://github.com/ilg-ul/docker).

## Download the build scripts repo

The build script is available from GitHub and can be [viewed online](https://github.com/gnuarmeclipse/build-scripts/blob/master/scripts/build-openocd.sh).

To download it, clone the [gnuarmeclipse/build-scripts](https://github.com/gnuarmeclipse/build-scripts) Git repo. 

```
$ git clone https://github.com/gnuarmeclipse/build-scripts.git  ~/Downloads/build-scripts.git
```

## Check the script

The script creates a temporary build `Work/openocd` folder in the user home. Although not recommended, if for any reasons you need to change this, you can redefine `WORK_FOLDER` variable before invoking the script.

## Preload the Docker images

Docker does not require to explicitly download new images, but does this automatically at first use.

However, since the images used for this build are relatively large, it is recommended to load them explicitly before starting the build:

```
$ bash ~/Downloads/build-scripts.git/build-openocd.sh preload-images
```

The result should look similar to:

```
$ docker images
REPOSITORY          TAG                   IMAGE ID            CREATED             SIZE
ilegeul/debian32    8-gnuarm-gcc-x11-v3   14a0dcce0dd7        11 months ago       1.633 GB
ilegeul/debian      8-gnuarm-gcc-x11-v3   a461714e9b42        11 months ago       1.771 GB
ilegeul/debian      8-gnuarm-mingw        1c04c24123c1        15 months ago       2.486 GB
```

## Build all distribution files

```
$ bash ~/Downloads/build-scripts.git/build-openocd.sh --all
```

About half an hour later, the output of the build script is a set of 5 files in the output folder:

```
$ ls -l output
total 105616
drwxr-xr-x  8 ilg  staff      272 May 11 15:28 debian32
drwxr-xr-x  8 ilg  staff      272 May 11 15:20 debian64
-rw-r--r--  1 ilg  staff  2313130 May 10 11:41 gnuarmeclipse-openocd-debian32-0.8.0-201505100809.tgz
-rw-r--r--  1 ilg  staff  2313130 May 10 11:41 gnuarmeclipse-openocd-debian64-0.8.0-201505100809.tgz
-rw-r--r--  1 ilg  staff  2274022 May 10 11:45 gnuarmeclipse-openocd-osx-0.8.0-201505100809.pkg
-rw-r--r--  1 ilg  staff  2253926 May 10 11:29 gnuarmeclipse-openocd-win32-0.8.0-201505100809-setup.exe
-rw-r--r--  1 ilg  staff  2285654 May 10 11:20 gnuarmeclipse-openocd-win64-0.8.0-201505100809-setup.exe
drwxr-xr-x  8 ilg  staff      272 May 11 15:33 osx
drwxr-xr-x  8 ilg  staff      272 May 11 15:13 win32
drwxr-xr-x  8 ilg  staff      272 May 11 15:13 win64
```

## Subsequent runs

### Separate platform specific builds

Instead of `--all`, you can use any combination of:

```
--win32 --win64 --debian32 --debian64 --osx
```

### clean

To remove all build files, use:

```
$ bash ~/Downloads/build-scripts.git/build-openocd.sh clean
```

## Install hierarchy

The procedure to install GNU ARM Eclipse OpenOCD is platform specific, but relatively straight forward (a Windows setup, an macOS install or a TGZ archive on GNU/Linux). The setup/install asks no special questions, and the defaults are generally ok for most installations.

After install, this package should create structure like this (only the first two depth levels are shown):

```
$ tree -L 2 /Applications/GNU\ ARM\ Eclipse/OpenOCD
/Applications/GNU\ ARM\ Eclipse/OpenOCD
├── bin
│   └── openocd
├── doc
│   ├── openocd.html
│   └── openocd.pdf
├── info
│   ├── BUILD.txt
│   ├── INFO.txt
│   └── build-openocd-osx.sh
├── license
│   ├── hidapi
│   └── openocd
└── scripts
    ├── bitsbytes.tcl
    ├── board
    ├── chip
    ├── cpld
    ├── cpu
    ├── interface
    ├── mem_helper.tcl
    ├── memory.tcl
    ├── mmr_helpers.tcl
    ├── target
    ├── test
    └── tools

16 directories, 9 files
```

No other files are installed in any system folders or other locations.

## Uninstall

To uninstall OpenOCD from a Windows machine, use the `openocd-uninstall.exe` program.

On macOS and GNU/Linux, the GNU ARM Eclipse OpenOCD install folder is self-contained and removing it is enough for completely removing the application.

## Test

A simple test is performed by the script at the end, by launching the executable to check if all shared/dynamic libraries are correctly used.

For a true test you need to first install the package and then run the program form the final location. For example on macOS the output should look like:

```
$ /Applications/GNU\ ARM\ Eclipse/OpenOCD/bin/openocd --version
GNU ARM Eclipse 64-bits Open On-Chip Debugger 0.8.0-00022-g2628c74 (2015-01-15-20:44)
Licensed under GNU GPL v2
For bug reports, read
    http://openocd.sourceforge.net/doc/doxygen/bugs.html
```

## More build details

The script is quite complex, and an attempt to explain its functionality would require some effort. For the final authoritative details, please refer to the comments available in the [script](https://github.com/gnuarmeclipse/build-scripts/blob/master/scripts/build-openocd.sh).
