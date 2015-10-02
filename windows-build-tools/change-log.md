---
layout: page
title: The 2015 Windows Build Tools Change Log
permalink: /windows-build-tools/change-log/

date: 2015-09-04 17:02:00 +03:00

---

## 2015

### 2015-08-30

* files moved from gnuarmeclipse Git to a separate project

### 2015-08-16

* build-qemu: debian rpath fix
  - use chrpath to change elf and .so rpath
  - use 8-gnuarm-gcc-x11-v2, which includes chrpath
  - validate $ORIGIN in elf

### 2015-08-05
* build-qemu.sh: add libwinpthread to win64

### 2015-07-23
* build-qemu: tar without j for .xz
* build-quemu: clean fixed; non-win zlib fixed
* build-qemu: libz, libjpg, libpixman
  - no more pixman submodule
  - use pkg-config-dbg everywhere
  - use PKG_CONFIG_LIBDIR everywhere
* build-helper: the linux functions renamed *_so

### 2015-07-20
* build-qemu: osx & debian functional
  - --no-strip added
  - libpng12 not 16
  - copy more licences
* build-helper: user libs no longer search system

### 2015-07-19
* build-qemu: most libs locally
  - osx functional
  - debian: crash in graphics
  - windows: sdl displays nothing

### 2015-07-18
* build-qemu: debian with user sdl
  - no pthreads
* build-qemu: sdl compiled from sources for osx
* build: debian64 functional
  - requires libsdl1.2 and libsdl-image1.2

### 2015-07-17
* build-qemu.sh: new OSX build, with SDL
  - copy board images

### 2015-07-16
* build-tools.sh: make it work for win64
  - make mingw64_defconfig
  - busybox 9fe16f6

### 2015-06-10
* build-qemu.sh: check docker only for win/deb
  - in build-qemu.sh add prepare-docker
  - use it conditionally


### 2015-05-20
* build qemu: show md5 sums
  - reorder targets, move osx in front
* build tools: md5sum -t fixed
* qemu build: repo actions added
* Docker folder moved to /Host/Work
* md5sum -t explicitly

### 2015-05-19
* md5 sum computation for osx fixed
  - openocd repo actions code added

### 2015-05-15
* build scripts: add md5
* build QEMU: enable pixman submodule

### 2015-05-14
* build Build Tools: clean msys2
* build openocd: cosmetics
* build QEMU: fix DLL list
* build-helper: include version in pkgbuild id
  - to allow multiple instances
* build Build Tools: copy DLLs
* script to build windows Build Tools added

### 2015-05-13
* build use 8-gnuarm-mingw; preload-images


### 2015-05-12
* qemu build script added
  - openocd updated to use new helper
  - qemu libs code moved to separate file

### 2015-05-11
* build-openocd: WORK_FOLDER, build-images
  - user can define custom WORK_FOLDER
  - a build-images command builds all 3 Docker images
* openocd build script: docker script uses helper
  - move functions to build helper

### 2015-05-10
* scripts: openocd docker scripts
  - build windows, debian & os x in one run

Note: Earlier versions were stored in QEMU & OpenOCD repositories.
