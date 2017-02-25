---
layout: page
permalink: /developer/change-log/2016/
title: The 2016 GNU ARM Eclipse Plug-ins Change Log
author: Liviu Ionescu

date: 2016-02-09 12:48:00 +0300

---

Entries in this file are in reverse chronological order.

## 2016

### 2016-11-03

* packs: get PDSCs from folders, not from cache (#145)

### 2016-09-04

* packs.ui: fix update packs with errors; 
  * do not return, log and ignore
  * show line & column number for parser error
* packs.ui: version 1.2.2

### 2016-08-18

* stm32f0: update from STM32F0xx\_StdPeriph\_Lib\_V1.5.0.zip
* stm32f0: add 030xC, 070x6, 070xB, 091
* stm32f4 & stm32f4-hal: update to cube 1.12.0
* stm32f4: add 412Cx, 412Rx, 412Vx, 412Zx
* fix Discovery LED names PD12-PD15
* stm32f7 & stm32f7-hal: update to Cube V1.4.0
* stm32f7: add 765x, 767xx, 769xx, 777xx, 779xx
* jlink,openocd,qemu: validate fields only if start server
* core v3.2.1, stm 2.6.1, template 2.5.5, jlink 4.1.2, openocd 4.1.2, qemu 3.1.2

### 2016-06-21

* version 3.1.1-201606210758 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201606210758.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_4.1.1.201606210758.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_4.1.1.201606210758.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.pyocd_1.1.1.201606210758.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_3.1.1.201606210758.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201606210758.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_2.2.1.201606210758.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201606210758.jar
  * features/ilg.gnuarmeclipse.templates.ad_1.1.3.201606210758.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201606210758.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201606210758.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.5.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.core_3.1.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_4.1.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_4.1.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.pyocd_1.1.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_3.1.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_3.1.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_2.2.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.3.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.3.201606210758.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.3.201606210758.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201606210758.jar
  * plugins/ilg.gnuarmeclipse.templates.ad_1.1.3.201606210758.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.5.4.201606210758.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201606210758.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201606210758.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.5.1.201606210758.jar
* make dependency on CDT 8.6 explicit
* add encoding: utf-8 in pom.xml to avoid warnings

### 2016-05-25

* versions gdbjtag+qemu 3.1.1, jlink+openocd 4.1.1 pyocd 1.1.1
* gdbjtag.\*: add Jonah Graham as contributor
* Merge pull request #120 from jonahkichwacoders/cdt_9_and_neon_support
* Update for CDT 9.0, part of Eclipse Neon

### 2016-05-24

* Fix parent pom versions for PyOCD plug-ins

### 2016-04-19

* version 2.12.1-201604190915 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201604190915.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201604190915.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201604190915.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.pyocd_0.2.0.201604190915.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.3.201604190915.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201604190915.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_2.2.1.201604190915.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201604190915.jar
  * features/ilg.gnuarmeclipse.templates.ad_1.1.3.201604190915.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201604190915.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201604190915.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.5.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.core_2.12.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.pyocd_0.2.0.201604190915.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.3.201604190915.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.2.201604190915.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_2.2.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.3.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.3.201604190915.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.3.201604190915.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201604190915.jar
  * plugins/ilg.gnuarmeclipse.templates.ad_1.1.3.201604190915.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.5.4.201604190915.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201604190915.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201604190915.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.5.1.201604190915.jar

### 2016-03-28

* Merge pull request #107 from iulia-vasii/iulia-dev; allow Settings page to open in case toolchain is not defined

### 2016-03-19

* Merge pull request #103 from sukidog/issue102_pyocd; Fix issue #102. Do not prevent user from relying on gdbserver in PATH

### 2016-03-15

* Merge pull request #96 from marek-trmac/develop #94: Fixed access to local repository using file:/// schema
* mbs.cross: v2.2.1
* Merge pull request #99 from marek-trmac/develop; #95: Added support for file protocol used in URL
* packs.data: Repos also convert spaces to _
* packs.data: version 1.2.3

### 2016-03-13

* Merge pull request #93 from flit/develop; pyOCD plugin requested changes
* Merge pull request #91 from iulia-vasii/iulia-dev; fix Apply button in Toolchains tab

### 2016-02-22

* enable per project formatter, Eclipse (built-in)
* Merge pull request #86 from flit/develop; Fix remaining warnings in pyOCD plugin
* Merge pull request #87 from flit/develop; More adjustments to pyOCD launch GUI as per Liviu's request
* reformat

### 2016-02-21

* Merge pull request #84 from flit/pyocd-dev; Various improvements and fixes
* gdbjtag.pyocd: silence warnings, reformat

### 2016-02-15

* Merge pull request #76 from sukidog/cleanup_warn3; templates.ad: fix wrong Activator class specification
* Merge pull request #77 from sukidog/cleanup_warn4; Fix warnings with output specification in build.properties

### 2016-02-14

* core: fix sem ver parsing of short strings

### 2016-02-13

* core: add semVer library
* packs.core: add properties access & alias
* core: make semVer tolerant to partial version
* packs.core: silence warning
* packs.data: accept schema 1.4
* packs.core: version 1.1.3
* packs.data: version 1.2.2
* version: 2.12.1

### 2016-02-10

* version 2.11.3-201602101653 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201602101653.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201602101653.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201602101653.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.3.201602101653.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201602101653.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_2.1.1.201602101653.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201602101653.jar
  * features/ilg.gnuarmeclipse.templates.ad_1.1.3.201602101653.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201602101653.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201602101653.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.5.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.core_2.11.3.201602101653.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.3.201602101653.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.2.201602101653.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_2.1.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.3.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201602101653.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201602101653.jar
  * plugins/ilg.gnuarmeclipse.templates.ad_1.1.3.201602101653.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.5.4.201602101653.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201602101653.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201602101653.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.5.1.201602101653.jar
* templates.core: v2.5.4
* repo: v2.11.3
* templates.core: enable lazy activation

### 2016-02-09

* version 2.11.2-201602091039 released
  * features/ilg.gnuarmeclipse.codered_1.1.1.201602091039.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201602091039.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201602091039.jar
  * features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.3.201602091039.jar
  * features/ilg.gnuarmeclipse.doc.user_1.1.1.201602091039.jar
  * features/ilg.gnuarmeclipse.managedbuild.cross_2.1.1.201602091039.jar
  * features/ilg.gnuarmeclipse.packs_2.2.2.201602091039.jar
  * features/ilg.gnuarmeclipse.templates.ad_1.1.3.201602091039.jar
  * features/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201602091039.jar
  * features/ilg.gnuarmeclipse.templates.freescale_2.2.7.201602091039.jar
  * features/ilg.gnuarmeclipse.templates.stm_2.5.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.codered_1.1.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.core_2.11.2.201602091039.jar
  * plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.3.201602091039.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.2.201602091039.jar
  * plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.cross_2.1.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.managedbuild.packs_1.3.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201602091039.jar
  * plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.packs_1.2.3.201602091039.jar
  * plugins/ilg.gnuarmeclipse.templates.ad_1.1.3.201602091039.jar
  * plugins/ilg.gnuarmeclipse.templates.core_2.5.3.201602091039.jar
  * plugins/ilg.gnuarmeclipse.templates.cortexm_1.3.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201602091039.jar
  * plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201602091039.jar
  * plugins/ilg.gnuarmeclipse.templates.stm_2.5.1.201602091039.jar
* templates.stm: update to f4 hal 1.11.0, f7 hal 1.3.0
* templates.stm: update to f4 cmsis 2.7.0, f7 cmsis 2.4.0
* templates.core: _exit() add reference to __reset()
* add CONTRIBUTING.md
* templates.core: v2.5.3
* templates.stm: v2.5.1
* repo: v2.11.2

## 2015

See [2015]({{ site.baseurl }}/developer/change-log/2015/).
