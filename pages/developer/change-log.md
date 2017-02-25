---
layout: page
permalink: /developer/change-log/
title: The 2017 GNU ARM Eclipse Plug-ins Change Log
author: Liviu Ionescu

date: 2017-02-24 09:55:00 +0300

---

Entries in this file are in reverse chronological order.

## 2017

### 2017-02-25

* version 3.3.1-201702251311 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201702251311.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_4.1.3.201702251311.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_4.1.3.201702251311.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.pyocd_1.1.2.201702251311.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_3.1.3.201702251311.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201702251311.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_2.3.1.201702251311.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201702251311.jar
  * features/ilg.gnuarmeclipse.templates.ad_1.1.3.201702251311.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201702251311.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201702251311.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.6.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.core_3.3.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_4.1.3.201702251311.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_4.1.3.201702251311.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.pyocd_1.1.2.201702251311.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_3.1.3.201702251311.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_3.1.2.201702251311.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_2.3.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.3.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.3.201702251311.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.3.201702251311.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.2.201702251311.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201702251311.jar
  * plugins/ilg.gnuarmeclipse.templates.ad_1.1.3.201702251311.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.5.5.201702251311.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201702251311.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201702251311.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.6.1.201702251311.jar

### 2017-02-24

* [[issue #177](https://github.com/gnuarmeclipse/plug-ins/issues/177)] gdbjtag.jlink: acceppt ':' in IP field
* version: jlink 4.1.3
* [[issue #175](https://github.com/gnuarmeclipse/plug-ins/issues/175)] mbs.cross: always show Hex in Print Size tool
* [[issue #174](https://github.com/gnuarmeclipse/plug-ins/issues/174)] log external command for debug
* [[issue #173](https://github.com/gnuarmeclipse/plug-ins/issues/173)] gdbjtag.openocd: start without server; do not check the config field if starting without server
* versions: pyocd 1.1.2, gdbjtag 3.1.2
* [[issue #182](https://github.com/gnuarmeclipse/plug-ins/issues/182)] mbs.cross: default toolchain logic; use modified date

### 2017-02-22

* [[issue #181](https://github.com/gnuarmeclipse/plug-ins/issues/181)] mbs.cross: avoid bug 512550
  - workaround for canFinish()
  - get the projectName even if the toolchain page was not entered

### 2017-02-20

* .classpath & prefs: refer to 1.7
* rename parent project as `gnuarmeclipse-parent`
* [[issue #180](https://github.com/gnuarmeclipse/plug-ins/issues/180)] update march & mtune for GCC 6.2
  - deprecate armv2, armv2a, armv3, armv3m
  - add arch armv8.1-a, armv8.1-a+crc
  - add mcpu cortex-a17/a32/a35/a72
  - add mcpu cortex-m23/m33
  - add mcpu qdf24xx
* version: mbs.cross 2.3.1

### 2017-02-16

* add LICENSE file (EPL-1.0)
* [[issue #179](https://github.com/gnuarmeclipse/plug-ins/issues/179)] add `${user.home}/opt` subfolders to the search path for toolchain, openocd and qemu. 
* versions: mbs.cross: 2.2.2, openocd 4.1.3

### 2017-02-04

* [[PR #176](https://github.com/gnuarmeclipse/plug-ins/pull/176)] pyOCD: fix target override combo in Debugger pane

### 2017-02-01

* README.md: add badges

### 2017-01-29

* reformat xml files using tabs

### 2017-01-27

* [[issue #170](https://github.com/gnuarmeclipse/plug-ins/issues/170)] gdbjtag.qemu: add  DeviceName callback in TabDebugger
* versions: core v3.3.1, gdbjtag.qemu 3.1.3

### 2017-01-14

* version 3.2.1-201701141320 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201701141320.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_4.1.2.201701141320.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_4.1.2.201701141320.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.pyocd_1.1.1.201701141320.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_3.1.2.201701141320.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201701141320.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_2.2.1.201701141320.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201701141320.jar
  * features/ilg.gnuarmeclipse.templates.ad_1.1.3.201701141320.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201701141320.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201701141320.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.6.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.core_3.2.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_4.1.2.201701141320.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_4.1.2.201701141320.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.pyocd_1.1.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_3.1.2.201701141320.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_3.1.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_2.2.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.3.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.3.201701141320.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.3.201701141320.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.2.201701141320.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201701141320.jar
  * plugins/ilg.gnuarmeclipse.templates.ad_1.1.3.201701141320.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.5.5.201701141320.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201701141320.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201701141320.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.6.1.201701141320.jar
* mbs.cross: `-include` headers used by scanner (#164)
* mbs.cross: update `-march` & `-mtune`
  * arch: armv8-m.base, armv8-m.main, armv8-m.main+dsp
  * tune: cortex-a72, cortex-r8, exynos-m1, xgene1
* mbs.cross: rename Cross ARM GNU C/C++ Compiler/Linker
* mbs.cross: support cpp abi version 7,8,9
* mbs.cross: support dwarf-5
* mbs.cross: support up to c++1z

### 2017-01-11

* debug consoles: remove the `PROCESS_TYPE_CREATION_ATTR`; functional on Neon.2 

### 2017-01-09

* Merge pull request #109 from sukidog/fix_issue108
* Merge pull request #128 from johnmoule/issue125

## 2016

See [2016]({{ site.baseurl }}/developer/change-log/2016/).

## 2015

See [2015]({{ site.baseurl }}/developer/change-log/2015/).

## 2014

See [2014]({{ site.baseurl }}/developer/change-log/2014/).

## 2013

See [2013]({{ site.baseurl }}/developer/change-log/2013/).

