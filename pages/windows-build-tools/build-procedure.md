---
layout: page
title: How to build the Windows Build Tools binaries?
permalink: /windows-build-tools/build-procedure/

date: 2015-09-04 17:02:00 +0300

---

The latest version of the build script is a single run, multi-platform build, generating the Windows 32, Windows 64 distribution packages at once.

The script was developed on macOS, but it also runs on any recent GNU/Linux distribution.

## Prerequisites

The main trick that made the multi-platform build possible is [Docker](https://www.docker.com).

The Windows build uses MinGW-w64 in a Debian 8 container.

### macOS

#### Install Docker

On macOS, install **boot2docker**, following the official [Install Docker on macOS](https://docs.docker.com/installation/mac/) instructions.

#### Install the Command Line Tools

The macOS development tools are packed in a separate Xcode add-on. The best place to get it is from the [Developer](https://developer.apple.com/xcode/downloads/) site, although this might require enrolling to the developer program (free of charge).

To test if git is available, use:

```
$ git --version
git version 2.3.2 (Apple Git-55)
```

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

Since most of the build is performed inside the Docker containers, there are not many requirements for the host, and most of the time these programs are in the standard distribution (**curl**, **git**, **automake**, **patch**, **tar**, **unzip**).

The script checks for them; if the script fails, install them and re-run.

### Docker images

The Docker images are available from [Docker Hub](https://hub.docker.com/u/ilegeul/). They were build using the Dockerfiles available from [ilg-ul/docker on GitHub](https://github.com/ilg-ul/docker).

## Download the build script

The script is available from the GitHub git repository and can be [viewed online](https://github.com/gnuarmeclipse/build-scripts/blob/master/scripts/build-windows-build-tools.sh).

To download it use the [Raw](https://github.com/gnuarmeclipse/build-scripts/raw/master/scripts/build-windows-build-tools.sh) link. If the browser fails, use the following command in a terminal:

```
curl -L https://github.com/gnuarmeclipse/build-scripts/raw/master/scripts/build-windows-build-tools.sh \
    -o ~/Downloads/build-windows-build-tools.sh
```

## Check the script

The script creates a temporary build **Work/build-tools** folder in the the user home. Although not recommended, if for any reasons you need to change this, you can redefine WORK_FOLDER variable before invoking the script.

## Preload the Docker images

Docker does not require to explicitly download new images, but does this automatically at first use.

However, since the images used for this build are relatively large, it is recommended to load them explicitly before starting the build:

```
bash ~/Downloads/build-windows-build-tools.sh preload-images
```

The result should look similar to:

```
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
ilegeul/debian      8-gnuarm-mingw      b8261b27add4        3 minutes ago       2.692 GB
```

## Build all distribution files

```
bash ~/Downloads/build-windows-build-tools.sh --all
```

About half an hour later, the output of the build script is a set of 5 files in the output folder:

```
$ ls -l output
total 3680
-rw-r--r--   1 ilg  staff   685323 May 14 23:30 gnuarmeclipse-build-tools-win32-2.5-201505142015-setup.exe
-rw-r--r--   1 ilg  staff  1194597 May 14 23:23 gnuarmeclipse-build-tools-win64-2.5-201505142015-setup.exe
drwxr-xr-x  13 ilg  staff      442 May 14 23:24 win32
drwxr-xr-x  13 ilg  staff      442 May 14 23:17 win64
```

## Subsequent runs

### Separate platform specific builds

Instead of **--all**, you can use any combination of:

```
--win32 --win64
```

### clean

To remove all build files, use:

```
bash ~/Downloads/build-windows-build-tools.sh clean
```

## Install hierarchy

The procedure to install the GNU ARM Eclipse Build Tools is simple. The setup asks no special questions, and the defaults are generally ok for most installations.

After install, this package should create structure like this (only the first two depth levels are shown):

```
$ tree -L 2 Build\ Tools/bin/version
├── COPYING
├── INFO.txt
├── bin
│   ├── busybox.exe
│   ├── echo.exe
│   ├── libiconv-2.dll
│   ├── libintl-8.dll
│   ├── make.exe
│   ├── rm.exe
│   └── sh.exe
├── gnuarmeclipse
│   ├── BUILD.txt
│   ├── CHANGES.txt
│   ├── build-build-tools.sh
│   ├── build-helper.sh
│   └── config.log
└── license
    ├── busybox
    └── make-4.1

5 directories, 14 files
```

No other files are installed in any system folders or other locations.

## Uninstall

To uninstall the Build Tools from a Windows machine, use the **build-tools-uninstall.exe** program.

## More build details

The script is quite complex, and an attempt to explain its functionality would require some effort. For the final authoritative details, please refer to the comments available in the [script](https://github.com/gnuarmeclipse/build-scripts/blob/master/scripts/build-windows-build-tools.sh).
