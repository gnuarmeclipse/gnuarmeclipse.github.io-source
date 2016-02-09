---
layout: page
permalink: /developer/change-log/2015/
title: The 2015 GNU ARM Eclipse Plug-ins Change Log
author: Liviu Ionescu

date: 2015-09-10 20:24:00 +0300

---

Entries in this file are in reverse chronological order.

## 2015

### 2015-12-17

* version 2.11.1.201512141335 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201512141335.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201512141335.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201512141335.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.3.201512141335.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201512141335.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_2.1.1.201512141335.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201512141335.jar
  * features/ilg.gnuarmeclipse.templates.ad_1.1.3.201512141335.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201512141335.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201512141335.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.4.2.201512141335.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.core_2.11.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.3.201512141335.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.2.201512141335.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_2.1.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.3.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201512141335.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201512141335.jar
  * plugins/ilg.gnuarmeclipse.templates.ad_1.1.3.201512141335.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.5.2.201512141335.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201512141335.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201512141335.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.4.2.201512141335.jar

### 2015-12-11

* mbs.cross: aarch64_be-none-elf- -> aarch64_be-elf-

### 2015-12-04

* templates/core: update cmsis-core to 4.5
* templates.stm: update f[47]/hal & core from xPack
* scripts/copy.sh: use xpacks_re tree

### 2015-11-26

* mbs.cross: add extension to define toolchains
* mbs.cross: version 2.1.1
* version: 2.11.1
* mbs.cross: add cpp.linker.flags
* templates.ad: fix package name (aducm36x, not ad)
* templates.ad: version 1.1.3
* templates.stm: f7 family default STM32F745xx
* templates.stm: version 2.4.2

### 2015-11-10

* gdbjtag.qemu: add disableGraphics listener
* gdbjtag.qemu: version 2.1.3
* version 2.10.3

### 2015-11-06

* templates.core: add __dso_handle to _syscalls.c
* templates.core: version 2.5.2
* version 2.10.2.201511061603 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201511061603.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201511061603.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201511061603.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.2.201511061603.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201511061603.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_1.15.2.201511061603.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201511061603.jar
  * features/ilg.gnuarmeclipse.templates.ad_1.1.2.201511061603.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201511061603.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201511061603.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.4.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.core_2.10.2.201511061603.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.2.201511061603.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.2.201511061603.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_1.15.2.201511061603.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.3.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201511061603.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201511061603.jar
  * plugins/ilg.gnuarmeclipse.templates.ad_1.1.2.201511061603.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.5.2.201511061603.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201511061603.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201511061603.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.4.1.201511061603.jar

### 2015-11-03

* mbs.cross: toolchain prefix changed from aarch64-none-elf- to aarch64-elf-

### 2015-10-31

* mbs.cross: add fpv5-d16 & fpv5-sp-d16 to the FPU selection dialog
* mbs.cross: version 1.15.2
* version 2.10.2

### 2015-10-29

* templates.ad: comment out pragma in cmsis_device.h
* versions: mbs.cross 1.14.1, mbs.packs 1.3.1
* version 2.10.1-201510291730 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201510291730.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201510291730.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201510291730.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.2.201510291730.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201510291730.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_1.15.1.201510291730.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201510291730.jar
  * features/ilg.gnuarmeclipse.templates.ad_1.1.2.201510291730.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201510291730.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201510291730.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.4.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.core_2.10.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.2.201510291730.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.2.201510291730.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_1.15.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.3.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201510291730.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201510291730.jar
  * plugins/ilg.gnuarmeclipse.templates.ad_1.1.2.201510291730.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.5.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201510291730.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201510291730.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.4.1.201510291730.jar

### 2015-10-28

* templates.ad: fix extended gcc warnings

### 2015-10-27

* templates.freescale: vectors_*.c distribution
* scripts: copy from micro, gcc/vectors_*.c
* debug.gdbjtag: fix version comparison
* debug.gdbjtag: version 2.2.2

### 2015-10-26

* mbs.cross: redraw Toolchains if toolchain changes
* mbs.packs: fix tab Devices NPE
* mbs.packs: make Devices visible for all projects

### 2015-10-23

* templates.stm: f7 inits comments & cosmetics
* templates.stm: f7 add STM32F746_EVAL leds
* templates.*: pass .md files too
* templates.*: 'GNU ARM Eclipse distribution.'
* templates.ad: fix warnings
* templates.core: set VTOR for __ARM_ARCH_7EM__ too
* templates.ad: version 1.1.2
* templates.ad: fix cmsis_device.h include guards
* templates.ad: fix upper case folder
* shorten 'GNU ARM Eclipse Plug-ins'
* update url to http://gnuarmeclipse.github.io/
* templates.ad: Eclipse-BundleShape: dir
* templates.cortexm: Eclipse-BundleShape: dir

### 2015-10-22

* template.stm: update F4 to hal 1.9.0
* templates.core: rename to README_ARM_CMSIS.md
* template.stm: use README_*.md files
* templates.stm: add F7 cmsis * hal from xpack
* templates.core: version 2.5.1
* templates.stm: supplier="GNU ARM Eclipse"
* templates.stm: update f4 hal_conf.h
* templates.stm: add f7 template
* templates.core: add local HAL_IncTick prototype
* templates.stm: fix warnings in stm32f7xx.h
* templates.stm: rework f7 initialize_hardware.c
* templates.stm: f7 mem320.ld
* templates.stm: f7 un-exclude
* templates.stm: strict prototype for HAL_IncTick()
* templates.stm: f7 .c led defs fixed
* templates.stm: f7 .cpp led I1 definition fixed
* templates.stm: f7 clock set at 192 MHz

### 2015-10-21

* template.stm: use hal 1.8, from xpacks

### 2015-10-19

* template.ad: version 1.1.1
* template.stm: f4 with 1.8.0
* scripts: remove formatter style xml
* templates.cortexm: add CM7
* templates.cortexm: version 1.3.1
* templates.stm: version 2.4.1

### 2015-10-17

* templates.core: fix warnings in cm0, cm0plus, cm3
* templates.ad: copy all cmsis headers

### 2015-10-16

* templates.core: updated to cmsis 4.4
* templates.stm: remove README_CMSIS.txt
* scripts: copy from micro-os separate cmsis
* dos2unix on all files

### 2015-10-15

* template.ad: integrate from AD contribution; consistency tweaks
* version 2.10.1

### 2015-09-25

* templates.stm: fix stm32f446xx.h apostrophe
* templates.core: assert_failed() as weak
* versions: templates.core 2.4.4, stm 2.3.3
* version 2.9.4

### 2015-08-28

* logo folder added
* pad.xml added

### 2015-08-19

* qemu: cmsis both board&name (use persistent values only when both cmsis board and device are missing)
* version: qemu 2.1.2, repo 2.9.3
* version 2.9.3-201508190626 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201508190739.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201508190739.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201508190739.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.2.201508190739.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201508190739.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201508190739.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201508190739.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201508190739.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201508190739.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.3.2.201508190739.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.core_2.9.3.201508190739.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.2.201508190739.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.2.2.201508190739.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201508190739.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201508190739.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.4.3.201508190739.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201508190739.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201508190739.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201508190739.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.3.2.201508190739.jar

### 2015-08-17

* add README.md
* also push to GitHub

### 2015-08-16

* build-qemu: debian rpath fix

### 2015-08-07

* templates: kB simbol (not KB)
* version 2.9.2-201508071246 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201508071246.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201508071246.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201508071246.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.1.201508071246.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201508071246.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201508071246.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201508071246.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201508071246.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201508071246.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.3.2.201508071246.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.core_2.9.2.201508071246.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.2.2.201508071246.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201508071246.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201508071246.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.4.3.201508071246.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201508071246.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201508071246.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201508071246.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.3.2.201508071246.jar

### 2015-08-06

* templates.stm: weak hard init; PLL warning
* templates.stm: F4 C++ template multi-LED

### 2015-08-05

* templates.core: set VTOR only on ARCH_7M
* templates.stm: improved F4 clock settings
* build-qemu.sh: add libwinpthread to win64

### 2015-08-03

* templates.core: HAL_IncTick() in SysTick
* template.stm: SystemClock_Config() for HSI
* versions: repository 2.9.2, core 2.4.3, stm 2.3.2, freescale 2.2.7

### 2015-08-01

* repository 2.9.1-201508011813 published
  * features/ilg.gnuarmeclipse.codered_1.1.1.201508011813.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201508011813.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201508011813.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.1.201508011813.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201508011813.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201508011813.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201508011813.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201508011813.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.6.201508011813.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.3.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.core_2.9.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.2.2.201508011813.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201508011813.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201508011813.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.4.2.201508011813.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201508011813.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201508011813.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.6.201508011813.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.3.1.201508011813.jar

* gdbjtag.qemu: TabDebugger favours CMSIS defs
* qemu-feature: no longer 'Experimental'
* Copyright notice added where missing

### 2015-07-31

* gdbjtag: mode passed to services; breakpoints available only in debug

### 2015-07-30

* gdbjtag: add 'mode' to DebuggerCommands
* gdbjtab.qemu/jlink/openocd: make config visible in Run mode

### 2015-07-29

* gdbjtag.qemu: preferences & defaults
* gdbjtag.qemu: default -d unimp,guest_errors
* gdbjtab.qemu: disable graphics button added

### 2015-07-28

* add 'GNU with spaces' formatting style
* core: getBuildConfigDescription() moved here
* gdbjtag: getCmsisDeviceName() moved to new class

### 2015-07-23

* build-qemu: osx & debian functional

### 2015-07-17

* build-qemu.sh: new OSX build, with SDL
* templates.core: 3/4 blink, 1 full first second

### 2015-07-16

* build-tools.sh: make it work for win64

### 2015-06-23

* packs.data: follow http redirects
* stm32f4 & stm32f4-hal: update for v1.6
* template.stm32: add STM32F446xx

### 2015-06-10

* build-qemu.sh: check docker only for win/deb

### 2015-05-21

* mbs: add toolchain wizard to make projects too
* mbs: prefs & props enumerate non empty toolchains
* mbs: GnuArmTest accepts empty toolchain names
* mbs: Toolchains tab use user defaults
* mbs: new arch (arm7ve, armv8-a+crc) and cpu (cortex-a12, cortex-m0.small-multiply, cortex-m0plus.small-multiply, cortex-m1.small-multiply)

### 2015-05-21

* core: getConfigurationsForProject() added
* core: LabelFakeFieldEditor added
* cross: tools paths edit toolchains in use
* the GnuArmPropertyTester tests toolchain
* mbs: simpler Toolchains tab for make projects

### 2015-05-14

* script to build windows Build Tools added

### 2015-05-12

* qemu build script added

### 2015-05-10

* scripts: openocd docker scripts

### 2015-05-06

* templates, stm: set VTOR
* qemu: --semihosting-cmdline as last option

### 2015-04-07

* release 2.8.1-201504061754 published:
  * features/ilg.gnuarmeclipse.codered_1.1.1.201504061754.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201504061754.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201504061754.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_1.1.1.201504061754.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201504061754.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_1.13.1.201504061754.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201504061754.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.2.5.201504061754.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.5.201504061754.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.2.5.201504061754.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.core_2.8.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_1.1.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_1.13.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.2.2.201504061754.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201504061754.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.1.3.201504061754.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201504061754.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.4.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.2.5.201504061754.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201504061754.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.5.201504061754.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.2.5.201504061754.jar

### 2015-04-06

* templates: semihosting argv[1] loops
* qemu: implement getProjectName() for argv[0]
* qemu: added to generated Eclipse repository

### 2015-04-05

* qemu: semihosting command line in tab Debugger
* qemu: included in the generated repository
* qemu: implement getProjectName() for argv[0]

### 2015-04-02

* templates: semihosting args quoting fixed
* publish: move archives to project folder, not tmp

### 2015-03-31

* stm: f411 vectors duplicates removed

### 2015-03-25

* templates: use \$(newlibDir) & other macros
* .gitignore /target/

### 2015-03-21

* all debuggers big cleanup in defaults location (moved to DefaultsPreferences)
* jlink: -nogui added
* core: Discoverer has distinct functions to read Registry and to search folders
* mbs uses Discoverer
* mbs, openocd & qemu use both InstallLocation and deprecated InstallFolder
* release 2.7.1.201503211846 published:
  * features/ilg.gnuarmeclipse.codered_1.1.1.201503211846.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201503211846.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201503211846.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201503211846.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_1.13.1.201503211846.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201503211846.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.2.4.201503211846.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.4.201503211846.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.2.4.201503211846.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.core_2.7.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_1.13.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.2.2.201503211846.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201503211846.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.1.3.201503211846.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201503211846.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.4.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.2.4.201503211846.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201503211846.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.4.201503211846.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.2.4.201503211846.jar

### 2015-03-16

* gdbjtag, jlink, openocd, qemu: default attributes

### 2015-03-15

* codered: more view shortcuts
* templates: bkpt in default handlers

### 2015-03-14

* codered: preliminary version added

### 2015-03-13

* gdbjtag: preferences for peripherals colours
* mbs.packs: warning in TabDevices
* gdbjtag: use fading background

### 2015-03-12

* core: WinReg kludge for SEGGER key
* debuggers: more explicit messages in preferences

### 2015-03-11

* API baseline increased to Kepler SR2 (8.3.0)
* maven: build agains Kepler SR2, with tycho 0.22
* core: more configurable Discoverer
* jlink: preferences & defaults added

### 2015-03-09

* openocd: no config check if remote server

### 2015-03-06

* qemu: preferences page and defaults
* openocd: updated to use Discoverer after qemu
* openocd & qemu: preferences names updated

### 2015-03-05

* openocd: preferences page and defaults

### 2015-03-04

* cross: precedence of toolchain.path fixed
* cross: more Linaro bare-metal toolchains
* all: .options added to distribution

### 2015-03-03

* all: trace messages changed to logged errors
* cross: add PropertyTester for Tools Paths

### 2015-03-02

* templates: C handlers marked as used, to keep LTO happy
* templates: defaults syscalls=none, trace=DEBUG
* all: conditional trace println() calls

### 2015-02-28

* qemu: feature temporarily disabled, not ready yet
* version 2.6.1
* release 2.6.1.201502281154 published
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.1.2.201502281154.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.1.1.201502281154.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201502281154.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_1.12.1.201502281154.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201502281154.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.2.3.201502281154.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.3.201502281154.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.2.3.201502281154.jar
  * plugins/ilg.gnuarmeclipse.core_2.6.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.1.2.201502281154.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.1.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.1.2.201502281154.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_1.12.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.2.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201502281154.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.1.3.201502281154.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201502281154.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.3.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.2.3.201502281154.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201502281154.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.3.201502281154.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.2.3.201502281154.jar

### 2015-02-26

* cross: hyperlinks to tools paths pages
* cross: DirectoryNotStrictFieldEditor substitutions
* cross: filter in hyperlink to properties removed

### 2015-02-24

* cross: buildTools & toolchain new processing
* cross: defaults to relax DirectoryFieldEditor

### 2015-02-20

* cross: build tools path (complicated) processing
* cross: global tools path back with defaults

### 2015-02-19

* cross: toolchain defaults (name & path) preferences
* cross: additional REG32 key
* cross: cosmetics m_ -\> f; separators

### 2015-02-18

* cross: build tools path support added

### 2015-02-17

* packs: ProgressBar & MessageDialog for Refresh all

### 2015-02-16

* qemu: default & preferences use scopes
* openocd: default & preferences use scopes
* jlink: default & preferences use scopes

### 2015-02-14

* gdbjtag: asyncExec showView

### 2015-02-13

* gdbjtag: use a retrieval manager

### 2015-02-12

* gdbjtag: PeripheralsVMNode cosmetics

### 2015-02-10

* jlink/openocd/qemu: export \*.dsf packages

### 2015-02-09

* jlink: fix NPE in semihosting destroy()
* templates: experimental xcdl main & BlinkLed
* stm: update for hal 1.4.0
* openocd: config default added; defaults fixed

### 2015-02-07

* gdbjtag: terminate logic w/o server
* gdbjtag: fix race when saving peripherals names
* gdbjtag: prevent a NPE in memory block

### 2015-02-06

* gdbjtag: PeripheralMemoryService inits fixed

### 2015-02-05

* jlink: move all defaults to EclipseDefaults
* openocd: use defaults, similar to jlink
* qemu: defaults as for openocd; restore link

### 2015-02-04

* jlink: exit codes updated for v4.96f

### 2015-02-03

* gdbjtag: peripherals are persistent

### 2015-02-02

* gdbjtag: addMemoryBlock() from UI thread
* jlink: add tab.main.checkProgram preference

### 2015-01-23

* gdbjtag: fix NPE in isLaunchConfigurationStarted()

### 2015-01-21

* template.core: weak _start() symbol

### 2015-01-20

* templates: armv6-m simplified exceptions

### 2015-01-19

* gdbjtag: more verbosity on memory monitor
* gdbjtag: use the ImageRegistry to cache images
* core: getImage() & co. added to UIActivator
* packs.ui: use Activator getImage()
* gdbjtag: use getImage() from Activator

### 2015-01-15

* cross: quote spaces in library and other objects

### 2015-01-14

* restart: action & delegate moved here
* openocd: mac path includes /bin/

### 2015-01-13

* openocd: refactor field names fName
* openocd: cleanups
* openocd: persistent defaults
* openocd: Reset defaults code added
* openocd: best effort openocd_path

### 2015-01-10

* jlink: default settings checked and fixed

### 2015-01-08

* gdbjtag & jlink: terminate logic
* openocd & qemu: cosmetics after jlink
* jlink: interface preferences
* jlink: refactor field names fName

### 2015-01-06

* templates: unused params in exceptions
* restart: simplified plugin.xml, to avoid exception
* gdbjtag: explicit process terminate()

### 2015-01-05

* jlink: RAM application message
* restart: Mondareddy fix to enable bug

### 2015-01-03

* jlink&openocd&qemu: backslashes (again)
* openocd&qemu: cleanups
* qemu: refactor field names fName
* qemu: cleanups & cosmetics
* qemu: machine & verbose added to tab Debugger
* gdbjtag: null checks in dispose()

## 2014

See [2014]({{ site.baseurl }}/developer/change-log/2014).
