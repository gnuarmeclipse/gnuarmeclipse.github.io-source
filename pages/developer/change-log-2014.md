---
layout: page
permalink: /developer/change-log/2014/
title: The 2014 GNU ARM Eclipse Plug-ins Change Log
author: Liviu Ionescu

date: 2015-09-10 20:26:00 +03:00

---

Entries in this file are in reverse chronological order.

## 2014

### 2014-12-31

* jlink: use DebuggerCommandsService
* gdbjtag: fix server exit status
* jlink: update error messages (add -1)
* gdbjtag: resolveAll do not report undefined
* jlink&openocd&qemu: extractNameFromPath()
* jlink&openocd&qemu: double backslashes trimming

### 2014-12-30

* openocd: use DebuggerCommandsService
* qemu: use DebuggerCommandsService
* openocd: more Configuration functions

### 2014-12-29

* openocd: debug in RAM
* qemu: debug in RAM
* jlink: debug in RAM

### 2014-12-28

* openocd: more double backslashes
* jlink & openocd & qemu: queueCommands in DebugUtils
* openocd: VariableInitializer renamed
* jlink: VariableInitializer renamed
* jlink&openocg&qemu: DebugUtils.resolveAll
* jlink&openocd&qemu: tbreak fix

### 2014-12-27

* core: duplicateBackslashes added
* openocd: more double backslashes
* openocd: server&client command names
* core: splitCommandLineOptions added to StringUtils
* gdbjtag: server monitor always returns status
* templates.core: no DEBUGEN test for semihosting
* qemu: first functional version (experimental)
* gdbjtag: windows registry support
* jlink: updated to use WindowsRegistry
* qemu: use WindowsRegistry to get path

### 2014-12-26

* openocd: double backslash on windows
* qemu: clone openocd
* qemu: references to openocd replaced by qemu

### 2014-12-24

* openocd: updated to use the server backend
* jlink: updated after last openocd changes

### 2014-12-23

* packs.data: explicit disconnect for http connections
* gdbjtag & jlink: better timeout & cancel
* jlink: start with external gdb server
* templates.core: semihosting comment updated
* jlink: dsf files moved to package
* openocd: dsf files moved to package

### 2014-12-22

* templates.core: semihosting fault processing
* packs: improve URL download error processing

### 2014-12-19

* jlink: cosmetics in the message box
* versions: repo 2.5.1, jlink 3.1.1, gdbjtag 2.1.1
* repository 2.5.1-201412191510 published
  * features /ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.1.1.201412191510.jar
  * features /ilg.gnuarmeclipse.debug.gdbjtag.openocd_2.1.1.201412191510.jar
  * features /ilg.gnuarmeclipse.doc.user_1.1.1.201412191510.jar
  * features /ilg.gnuarmeclipse.managedbuild.cross_1.12.1.201412191510.jar
  * features /ilg.gnuarmeclipse.packs_2.2.1.201412191510.jar
  * features /ilg.gnuarmeclipse.templates.cortexm_1.2.3.201412191510.jar
  * features /ilg.gnuarmeclipse.templates.freescale_2.2.3.201412191510.jar
  * features /ilg.gnuarmeclipse.templates.stm_2.2.3.201412191510.jar
  * plugins /ilg.gnuarmeclipse.core_1.1.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.debug.core_1.2.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.1.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.openocd_2.1.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.restart_1.2.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag_2.1.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.debug.packs_1.1.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.doc.user_1.1.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.cross_1.12.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.packs_1.2.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.packs.core_1.1.2.201412191510.jar
  * plugins /ilg.gnuarmeclipse.packs.data_1.1.2.201412191510.jar
  * plugins /ilg.gnuarmeclipse.packs.ui_1.1.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.packs_1.2.2.201412191510.jar
  * plugins /ilg.gnuarmeclipse.templates.core_2.2.2.201412191510.jar
  * plugins /ilg.gnuarmeclipse.templates.cortexm_1.2.3.201412191510.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201412191510.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale_2.2.3.201412191510.jar
  * plugins /ilg.gnuarmeclipse.templates.stm_2.2.3.201412191510.jar

### 2014-12-18

* template.stm: vectors fixed and tested for all
* cortexm & klxx: 'cmsis' lower case folder name
* cortexm: defaults m4, DEBUG
* packs: remove cached packs on unzip error
* jlink & gdbjtag: prepareMessageBoxText()
* jlink: '-singlerun -strict -timeout 0'
* jlink: connect to running button enabled

### 2014-12-17

* jlink & gdbjtag: better synch, windows ok

### 2014-12-16

* jlink & gdbjtag: separate server launch sequence
* jlink & gdbjtag: new start & error reporting ok

### 2014-12-14

* jlink & gdbjtag: server code relocated to GnuArmGdbServerBackend and GdbServerBackend
* jlink: use a much simpler Backend
* jlink & gdbjtag: serverBackend cleaned & checked

### 2014-12-13

* scripts: add 'force' option to always upload
* gdbjtag & jlink: checkLaunchConfigurationStarted

### 2014-12-12

* gdbjtag: PeripheralMemoryService split into functions
* gdbjtag: new GdbServerBackend added, no content

### 2014-12-10

* gdbjtag: inheritance fully implemented; log() exceptions
* gdbjtag: peripherals view dispose fixed
* gdbjtag: add comparator to sort Peripheral columns
* gdbjtag: update entire peripheral after write

### 2014-12-09

* gdbjtag: edit enumerations functional
* gdbjtag: derivedFrom node searched for all types

### 2014-12-08

* gdbjtag: parseScaledNonNegative conforms to SVD
* gdbjtag: colour in yellow the entire line
* gdbjtag: fix getDisplayResetValue() to show reset value only for registers, skip fields, to avoid excepion
* gdbjtag: ignore '+' at the beginning of scaledNonNegative numbers
* show enumerations; not yet editable
* core: capitalizeFirst() affects only first char; remove conversion to lower case

### 2014-12-07

* stm 2.2.3, fsc: 2.2.3, cm: 1.2.3
* templates: nano as boolean, not string, use linker.usenewlibnano=true instead of linker.other += "--specs=nano.specs"

### 2014-12-06

* cross: -fno-move-loop-invariants added to the common Optimisations group, for use on Debug
* cross: version 1.12.1, repo: 2.4.3
* templates: add optimization.nomoveloopinvariants

### 2014-12-05

* jlink: counted requestMonitors bugs fixed

### 2014-12-04

* gdbjtag.restart: fix StackOverflow exception by copying the command and the class locally
* gdbjtag.restart: version 1.2.1

### 2014-11-28

* debug.gdbjtag: write-only fields are readable
* debug.gdbjtag: 1.1.2
* mbs.packs: performApply added on TabDevices

### 2014-11-26

* all templates: default debugging format on debug
* packs: remove partially installed pack folder
* repository 2.4.2-201411261616 published
  * features /ilg.gnuarmeclipse.debug.gdbjtag.jlink_2.2.1.201411261616.jar
  * features /ilg.gnuarmeclipse.debug.gdbjtag.openocd_2.1.1.201411261616.jar
  * features /ilg.gnuarmeclipse.doc.user_1.1.1.201411261616.jar
  * features /ilg.gnuarmeclipse.managedbuild.cross_1.11.1.201411261616.jar
  * features /ilg.gnuarmeclipse.packs_2.2.1.201411261616.jar
  * features /ilg.gnuarmeclipse.templates.cortexm_1.2.2.201411261616.jar
  * features /ilg.gnuarmeclipse.templates.freescale_2.2.2.201411261616.jar
  * features /ilg.gnuarmeclipse.templates.stm_2.2.2.201411261616.jar
  * plugins /ilg.gnuarmeclipse.core_1.1.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.debug.core_1.2.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.jlink_2.2.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.openocd_2.1.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.restart_1.1.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag_1.1.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.debug.packs_1.1.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.doc.user_1.1.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.cross_1.11.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.packs_1.2.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.packs.core_1.1.2.201411261616.jar
  * plugins /ilg.gnuarmeclipse.packs.data_1.1.2.201411261616.jar
  * plugins /ilg.gnuarmeclipse.packs.ui_1.1.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.packs_1.2.2.201411261616.jar
  * plugins /ilg.gnuarmeclipse.templates.core_2.2.2.201411261616.jar
  * plugins /ilg.gnuarmeclipse.templates.cortexm_1.2.2.201411261616.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201411261616.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale_2.2.2.201411261616.jar
  * plugins /ilg.gnuarmeclipse.templates.stm_2.2.2.201411261616.jar

### 2014-11-20

* cross: add cortex-m7

### 2014-11-17

* templates: _write.c moved to application
* cross: add explicit newlib nano options

### 2014-11-16

* debug.gdbjtag: Peripherals error processing
* debug.jtag: immediate executor for getPeripherals

### 2014-11-15

* template.stm: multi-region RAM init for F[34]
* cross: fpu_unit=default for non hard or softfp
* packs: get(svd.file) with parent
* packs: 1.2.2, packs.core: 1.1.2, packs.data: 1.1.2

### 2014-11-14

* openocd: enable support for Peripherals view
* openocd: warnings and copyright notice
* openocd: version 2.1.1

### 2014-11-09

* template.stm: warnings in vectors fixed

### 2014-11-06

* template.core: default SysTick_Handler returns
* template.stm: disable SysTick after HAL_Init()

### 2014-11-05

* templates.core: OS_HAS_NO_CORE_DEBUG
* templates.core: DATA_END_GUARD_VALUE
* template.cortexm: FLASH ORIGIN=0x0
* cortexm: 1.2.2, stm/freescale/core: 2.2.2

### 2014-11-03

* debug.gdbjtag: clear Peripherals after close.

### 2014-11-01

* debug.gdbjtag: id to colors updated to plug-in

### 2014-10-31

* packs.data & gdbjtag: getSVDAbsolutePath fix
* core: fix isMacOSX()
* jlink: try to set jlink_path to most recent
* core: fix isWindows()
* jlink: set jlink_path for win64 too
* jlink: get jlink path from registry (on windows)
* debug.gdbjtag: maven name fixed
* jlink: search for linux path /opt/SEGGER/JLink

### 2014-10-30

* svdPath xp added

### 2014-10-29

* debug.gdbjtag: created from debug.core
* debug & cross: add new xp for C project properties
* debug & cross: xp renamed cproject.extra

### 2014-10-25

* versions: jlink 2.2.1
* core & debug.core: preferences.ini removed
* jlink: get defaults from standard properties
* jlink: copyrights & warnings fixed

### 2014-10-22

* mbs.packs: Edit disabled in Devices
* debug.core: Peripherals dispose monitors
* jlink: defaults.prefs added
* versions: jlink 2.2.1

### 2014-10-15 (develop)

* cross.packs: Docs NPE fixed
* repository 2.4.1-201410142110 published
  * features /ilg.gnuarmeclipse.debug.gdbjtag.jlink_2.1.1.201410142110.jar
  * features /ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.3.1.201410142110.jar
  * features /ilg.gnuarmeclipse.doc.user_1.1.1.201410142110.jar
  * features /ilg.gnuarmeclipse.managedbuild.cross_1.11.1.201410142110.jar
  * features /ilg.gnuarmeclipse.packs_2.1.1.201410142110.jar
  * features /ilg.gnuarmeclipse.templates.cortexm_1.2.1.201410142110.jar
  * features /ilg.gnuarmeclipse.templates.freescale_2.2.1.201410142110.jar
  * features /ilg.gnuarmeclipse.templates.stm_2.2.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.core_1.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.debug.core_1.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.jlink_2.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.3.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.restart_1.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.debug.packs_1.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.doc.user_1.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.cross_1.11.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.packs_1.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.packs.core_1.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.packs.data_1.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.packs.ui_1.1.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.packs_1.2.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.templates.core_2.2.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.templates.cortexm_1.2.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale_2.2.1.201410142110.jar
  * plugins /ilg.gnuarmeclipse.templates.stm_2.2.1.201410142110.jar

### 2014-10-14 (develop)

* all templates: add -flto option
* build.packs: Docs updated by devices changes
* packs: outline visible on first click

### 2014-10-13 (develop)

* Merge branch 'stable' into develop
* all templates: accept '/' in folder name
* cross.build: -flto added
* packs: schema 1.3 preliminary support
* packs: outline opens header/source\*/linkerScript
* packs: single line pack descriptions

### 2014-10-12 (develop)

* debug.core: cluster arrays
* core & debug.core: preferences.ini added
* templates.core: avoid option duplicates

### 2014-10-08 (develop)

* all: explicit dependendencies to Kepler R versions
* debug.core: Peripherals register arrays

### 2014-10-07 (develop)

* all features: update site url added via p2.inf

### 2014-10-06 (develop)

* all: branding info added to all plug-ins

### 2014-10-01 (develop)

* jlink: use cmsis name

### 2014-09-29 (develop)

* debug.core: svd empty properties
* packs: fix cache for DevicesTab

### 2014-09-27 (develop)

* packs: PacksStorage & GenericParser in core
* static name cosmetics
* debug.packs: remove PeripheralView1
* debug: first functional Peripheral view

### 2014-08-29 (develop)

* packs: use DurationMonitor
* debug.core: Peripherals data model finalised

### 2014-08-28 (develop)

* core: use some Platform constants

### 2014-08-26 (develop)

* core: StringUtils & CProjectPacksStorage & Xml
* .classpath with src/
* references to core strings & utils updated
* jlink: updated to use debug.core
* debug.core: Peripherals display the device list

### 2014-08-22 (develop)

* debug.core added
* mbs.packs: Documents instead of Docs
* templates: syscalls semihosting stdint.h

### 2014-08-10 (develop)

* packs: TabDocs more accurate

### 2014-08-09 (develop)

* packs: DocsView takes content from project

### 2014-08-08 (develop)

* packs: TabDevices functional
* packs: better model/view separation for TabDevices

### 2014-08-05 (develop)

* pack: parser cleanups
* packs: DocsView with actions to open documents
* packs: OutlineView updated to use Openers

### 2014-08-01 (develop)

* debug.packs: shows svd peripherals (unfiltered)

### 2014-07-31 (develop)

* packs: install packs missing mkdir fixed
* packs: busy indicator with depth counter
* packs: zip icon changed from jar to zip
* packs: DocsView with absolute path

### 2014-07-30 (develop)

* packs: DataManager reorganised; javadocs added

### 2014-07-29 (develop)

* packs: tree iterator added
* packs: DocsView show device & board docs
* packs: Leaf getProperty() always with default
* packs: code moved to DataManager
* packs: isLeaf() optimisation to ITreeIterator

### 2014-07-28 (develop)

* packs: do not go down to variants

### 2014-07-27 (develop)

* packs: devices&boards parsed from cached pdsc tree
* pdsc: devices & boards fully in DataManager

### 2014-07-26 (develop)

* packs: parsers & serialisers; DocsView
* packs: xcdl parser/serialiser schemaVersion
* packs: cached devices tree

### 2014-07-24 (develop)

* features: include ilg.managedbuild.core

### 2014-07-23 (develop)

* packs: packs.ui as a separate plug-in
* doc: plug-in & feature added, placeholder for now
* cross: TabDevice extracted as separate plug-in
* ilg.gnuarmeclipse.core plug-in added
* all: use common AbstractActivator classes
* debug.packs: plug-in created

### 2014-07-22 (develop)

* packs: update serialVersionUIDs

### 2014-07-21 (develop)

* packs & cross: code moved to data & core
* repository: references to new plug-ins added
* cross: data manager call in createControls()
* packs.core: additional check in proxy

### 2014-07-20 (develop)

* packs: use custom markers
* packs: core & data with extension point
* cross: remove dependence to packs

### 2014-07-19

* cross [bugs:\#117]: Optimize for debugg (-Og) fixed
* 2.3.2-201407190854 published
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.6.1.201407190854.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.3.1.201407190854.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.restart_1.1.1.201407190854.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.cross_1.10.2.201407190854.jar
  * plugins /ilg.gnuarmeclipse.packs_1.1.1.201407190854.jar
  * plugins /ilg.gnuarmeclipse.templates.core_2.1.1.201407190854.jar
  * plugins /ilg.gnuarmeclipse.templates.cortexm_1.1.1.201407190854.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201407190854.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale_2.1.1.201407190854.jar
  * plugins /ilg.gnuarmeclipse.templates.stm_2.1.1.201407190854.jar
* packs: core & data plug-ins added (develop)

### 2014-07-18

* packs: devices & boards for build extracted
* packs: add the Device tab to C/C++ settings
* packs: processDevicePropertiesGroup()
* cross: TabDevices filled in, selections change content

### 2014-07-16

* cross: toolchains.prefs new name
* packs: reports added to the Problems window
* stm: f1-stdPeriph.pack -\> f1-stdperiph.pack finally fixed
* develop branch

### 2014-07-15

* maven update .classpath & .project
* cross: toolchain defaults fixed (again)
* cross: version 1.10.2
* repo: 2.3.2 version

### 2014-07-12

* packs: perspective renamed just 'Packs'
* stm: version 2.2.1
* 2.3.1-201407120554 published
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.6.1.201407120554.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.3.1.201407120554.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.restart_1.1.1.201407120554.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.cross_1.10.1.201407120554.jar
  * plugins /ilg.gnuarmeclipse.packs_1.1.1.201407120554.jar
  * plugins /ilg.gnuarmeclipse.templates.core_2.1.1.201407120554.jar
  * plugins /ilg.gnuarmeclipse.templates.cortexm_1.1.1.201407120554.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201407120554.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale_2.1.1.201407120554.jar
  * plugins /ilg.gnuarmeclipse.templates.stm_2.2.1.201407120554.jar

### 2014-07-11

* template.stm: update to use F4 cube 1.3
* template.stm: STM32F411xE added, with 128K RAM
* jlink & openocd: support project-less debug

### 2014-07-10

* openocd: linux path "/usr/bin"

### 2014-07-09

* openocd: improved error processing
* jlink & openocd: default paths, where possible
* cross/jlink/openocd: Utils.isMacOSX() fixed

### 2014-07-08

* jlink & openocd: InstanceScope preferences cross: toolchain name & path in Eclipse prefs

### 2014-07-07

* jlink&openocd: executable macros \${jlink_gdbserver} \${openocd_executable} added
* jlink: version 1.6.1
* openocd: version 1.3.1
* revert "cross: cross command wizard runWithoutWizard"

### 2014-07-04

* cross [feature-requests:\#49]: cross command wizard runWithoutWizard

### 2014-06-26

* cross [feature-requests:\#54]: multiple toolchains defaults
* jlink/openocd [feature-requests:\#51]: setDefaults() in tabs
* cross [feature-requests:\#49]: export managedbuild.cross.ui

### 2014-06-24

* cross [feature-requests:\#54]: toolchain defaults
* cross: version 1.10.1

### 2014-06-16

* packs: copy examples functional
* packs: copy dest folder; outline for package
* repo: version increased to 2.3.1

### 2014-06-13

* packs: views refresh/setInput() fixed

### 2014-06-12

* packs: selectors added to package nodes
* packs: fully functional (again!)
* packs: RefreshHandler revised

### 2014-06-11

* packs: all views functional, except selections

### 2014-06-09

* packs: outline links functional
* packs: example nodes have outlines

### 2014-06-08

* packs: packs & outline views updated

### 2014-06-06

* packs: KeywordsView updated to use storage
* packs: devices & boards views updated

### 2014-06-05

* packs: storage keeps content
* packs: Node extends Leaf

### 2014-06-04

* packs: ready to parse content.xml

### 2014-06-03

* packs: content.xml generated

### 2014-06-02

* packs: content.xml generated

### 2014-06-01

* packs: components added to outline

### 2014-05-31

* packs: file name convention in a single place
* packs: better filtering

### 2014-05-29

* packs: examples added below versions
* packs: CopyExampleAction added, no content

### 2014-05-28

* pack: open editor/browser in outline
* packs: outline right click viewer actions
* packs: keywords view added

### 2014-05-27

* pack: use of parser for brief too

### 2014-05-23

* pack: full outline functional

### 2014-05-19

* packs: first preliminary published
* packs: devices hierarchy simplified

### 2014-05-17

* packs: install & remove fully functional

### 2014-05-14

* packs: install packs functional

### 2014-05-09

* packs: filters functional

### 2014-05-07

* packs: devices & boards populated

### 2014-05-06

* packs: Packages view has content

### 2014-04-30

* packs: parse CMSIS index.idx functional

### 2014-04-29

* packs: preliminary perspective & views
* packs: table tree view tests

### 2014-04-28

* cross [bugs:\#108]: shared lib projects fixed
* versions: cross 1.9.3, global 2.2.3

### 2014-04-27

* packs: preferences functional

### 2014-04-24

* 2.2.2-201404240550 published
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.5.1.201404240550.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.2.2.201404240550.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.restart_1.1.1.201404240550.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.cross_1.9.2.201404240550.jar
  * plugins /ilg.gnuarmeclipse.templates.core_2.1.1.201404240550.jar
  * plugins /ilg.gnuarmeclipse.templates.cortexm_1.1.1.201404240550.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201404240550.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale_2.1.1.201404240550.jar
  * plugins /ilg.gnuarmeclipse.templates.stm_2.1.1.201404240550.jar
* tycho 0.20.0
* in preparation for Eclipse 4.4 Luna, switch development to JDK 7

### 2014-04-16

* cross [bugs:\#105]: GNU Linker Error Parser added to c/cpp link tools
* openocd [bugs:\#104]: Allocate console for OpenOCD kept grey on windows

### 2014-04-12

* 2.2.1-201404120702 published
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.5.1.201404120702.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.2.1.201404120702.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.restart_1.1.1.201404120702.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.cross_1.9.1.201404120702.jar
  * plugins /ilg.gnuarmeclipse.templates.core_2.1.1.201404120702.jar
  * plugins /ilg.gnuarmeclipse.templates.cortexm_1.1.1.201404120702.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201404120702.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale_2.1.1.201404120702.jar
  * plugins /ilg.gnuarmeclipse.templates.stm_2.1.1.201404120702.jar
  * plugins /org.eclipse.cdt.cross.arm.gnu_0.5.5.201310221100.jar

### 2014-04-11

* jlink & openocd: if (DEBUG) in tabs
* versions: jlink 1.5.1, openocd 1.2.1, freescale 2.1.1

### 2014-04-10

* jlink: gdb client commands persistent
* openocd: persistence added to most fields

### 2014-04-09

* jlink: persistence for most fields
* templates.stm: F1 \^M glitch

### 2014-04-07

* templates.core: system updated (_cxx.cpp)
* templates.(core|cortexm|stm): _cxx.cpp always included
* templates.core: updated for Freescale
* templates.freescale: functional, old removed
* templates.stm: J-Link names added to blink leds
* jlink: backend exception when server fails, fixed
* scripts: copy-from-micro-os.sh added; vectors.sed

### 2014-04-03

* template.stm: F2 config all enabled
* templates.stm: vectors from assembly, F4 & F1 updated
* template.cortexm: someWarnings & update to match other templates; copy folders, where possible

### 2014-04-02

* cross build: -Wall default to false
* freescale.pe: updated with options from stm
* templates.stm: someWarnings option added, default to true; mostWarnings default changed to false
* templates.core: newlib assert.c added
* templates.stm: USE_FULL_ASSERT added; CopyFolders used to copy entire source folders

### 2014-04-01

* templates.stm: F2 functional

### 2014-03-31

* templates.stm: F3 functional
* templates.core: diag, no ITM on non v7
* templates.stm: F[014] excluded files implemented
* templates.stm: clean old files

### 2014-03-30

* templates.stm: excludeUnused; no TRACE
* templates.stm: F[01] no TRACE

### 2014-03-29

* templates.core: Trace.h inlines
* templates.cortexm: updated after F1

### 2014-03-28

* templates.(core|stm): always blinky prints seconds
* templates.core: sections.ld data sections; add startup guard checks
* openocd: Apply updates to multiple fields
* stm32f0\*: original stm files
* stm32f[14].pack vectors cosmetics
* templates.stm: F0 functional again
* template.stm: F[14] -Werror default false
* template.stm: stm32f0\* warnings fixed

### 2014-03-27

* templates.core: common functional for F1 & F4
* templates.stm: F1 and F4 updated and functional
* templates.core: ConditionalCopyFolders added
* templates.stm: F1 and F4 use copy folder; -Werror
* templates.stm: file by file code removed F[14]
* templates.stm&freescale: Eclipse-BundleShape: dir
* templates.core: pattern matched in copyFolder
* templates.core: freestanding
* templates.core: F[14] copyFolder for cmsis
* tempates.stm: F4 clock init uses HSE_VALUE

### 2014-03-26

* template cortexm & stm: ccnature
* jlink: server Other with macro substitution
* cross build: -MT"\$@" replaced by cmdLineGenerator, to filter the .d to .o
* jlink: default server speed increased to 1000

### 2014-03-25

* templates.core: processes with absolute path; ConditionalAddFiles/AppendCreate also work with absolute paths
* templates.core: semihosting asm code names
* templates.core: main file common pieces
* template.core: Trace files added
* template.cortexm: updated to use common files
* template.stm: F4 using common files
* jlink: explicitly set remote address & port
* templates.core: tracing fixes
* templates.stm: F4 blink functional
* top folder info added (BUILD.txt, GCC.txt)
* scripts: copy-from-micro-os.sh added
* cross build: CM3 template removed
* templates.core: trace separated from syscalls
* templates.cortexm: updated for new trace
* info: BUILD with 256M ram for maven

### 2014-03-24

* templates.stm: F4 overhauled, compiles

### 2014-03-22

* templates.core: Eclipse-BundleShape: dir
* template.cortexm: common variables; the syscalls, trace, useMostWarnings, useOg, useNano were renamed from CM\*, to make them the same for all templates
* templates.core: SetPropertyToPluginResource validations; fix NPE if bundle has no resource
* templates.core: cmsis_device.h added

### 2014-03-21

* templates.core: common code added here
* cortexm: revised to use the common files

### 2014-03-20

* template cortexm: preliminary version
* template cortexm: use micro-os sources

### 2014-03-18

* cross build: first attempt to fix major dependency bug -MT"\$@", using updated command line
* cross build: warnings and optimisations
  * -Wuninitialized spelling fixed
  * -Wunused
  * -Wpadded
  * -Wmissing-prototypes
  * -Wstrict-prototypes
  * -Wbad-function-cast
  * -Wctor-dtor-privacy
  * -Wnoexcept
  * -Wnon-virtual-dtor
  * -Wstrict-null-sentinel
  * -Wsign-promo
  * -fabi-version=
  * -fno-use-cxa-atexit
  * -fno-threadsafe-statics
* cross build: .unitialized removed

### 2014-03-17

* cross build: options and defaults
  * optimization.nousecxaatexit moved to c++
  * warnings.badfunctioncast moved to c
  * defaults gnu11 and gnu++11
* jlink & openocd: set cwd to project
* jlink: enable Apply after changes in fixed speed
* jlink: enable Apply after changes in gdb client
* cross build: Tab Toolchains update fixed; changing the configuration was not functional, due to a complicated notification system
* cross build: --save-temps added to .S/.c/.cpp

### 2014-03-04

* jlink: second reset warning added
* openocd: second reset warning added
* openocd: launch cwd set to project

### 2014-03-03

* stm: F4 chip names updated
* cross build: ProjectStorage exceptions; after project rename there were many exception due to name change; turned into println()

### 2014-03-02

* stm: refurbished, with similar c & c++
* template.core: ConditionalSetProperty added

### 2014-02-24

* freescale: c++ separate LED code
* templates.core: ConditionalAppendToMBSString added

### 2014-02-21

* freescale: fully configurable leds

### 2014-02-20

* cross: -mcpu & -march updated for 4.8
* reordered lexicographically
  * -mcpu= +arm610 +cortex-r5 +cortex-r7 +generic-armv7-a
  * -march= +armv6s-m +armv7e-m
* cross: cs-make/cs-rm instead of cs_make/cs_rm

### 2014-02-19

* cross: TabToolchains with enable/disable for specific lib/exe fields
* stm & freescale: C++ SysTick_Handler
* jlink & openocd: TabDebugger shared (private changed to protected)

### 2014-02-18

* 2.1.2-201402180751 published (maintenance release)
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.4.2.201402180751.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.1.1.201402180751.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.restart_1.1.1.201402180751.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.cross_1.8.1.201402180751.jar
  * plugins /ilg.gnuarmeclipse.templates.core_1.2.1.201402180751.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale.pe_1.1.2.201402180751.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale_1.2.1.201402180751.jar
  * plugins /ilg.gnuarmeclipse.templates.stm_1.7.2.201402180751.jar
  * plugins /org.eclipse.cdt.cross.arm.gnu_0.5.5.201310221100.jar
* disable swo numeric fields when jtag is selected
* F4 bug fixed (no defs issued, build failed)

### 2014-02-14

* 2.1.1-201402140758 published
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.4.1.201402140758.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.1.1.201402140758.jar
  * plugins /ilg.gnuarmeclipse.debug.gdbjtag.restart_1.1.1.201402140758.jar
  * plugins /ilg.gnuarmeclipse.managedbuild.cross_1.8.1.201402140758.jar
  * plugins /ilg.gnuarmeclipse.templates.core_1.2.1.201402140758.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale.pe_1.1.2.201402140758.jar
  * plugins /ilg.gnuarmeclipse.templates.freescale_1.2.1.201402140758.jar
  * plugins /ilg.gnuarmeclipse.templates.stm_1.7.1.201402140758.jar
  * plugins /org.eclipse.cdt.cross.arm.gnu_0.5.5.201310221100.jar
* jlink: compatibility with old config added

### 2014-02-13

* cross: toolchain path no longer stored in .cproject
* jlink/openocd: JTAGDeviceName prefixed with GNU ARM
* freescale.pe: updated for new wizard process name

### 2014-02-12

* jlink: gdb client other options field added
* openocd: gdb client other options field added
* jlink/openocd: gdb --version messages in clear
* jlink: KHz -\> kHz
* jlink/cross: wider text fields (for linux)

### 2014-02-11

* cross: prefer-\>use global path
* freescale.pe: only for C, start wizard if asked
* openocd: larger config edit

### 2014-02-10

* templates: support for C++ projects
* stm: update for c++
* cross: prefer global path
* jlink/openocd/freescale: removed Experimental

### 2014-02-07

* freescale: klxx blinky cleaned
* freescale: klxx template, variant 'empty' added

### 2014-02-06

* freescale: kl25 code moved to kl25_sc_rev10 and trimmed, to make place to kl46
* freescale: MKL46Z4 added

### 2014-02-05

* freescale.pe: selective manual/auto wizard
* jlink: segger suggestions (validations)
* jlink: -s default for the server

### 2014-02-04

* freescale: main.c split; no empty posible
* cross/stm/freescale/freescale.pe: templateAssoc
* templates.core: conditional processes added
* freescale: use conditional processes

### 2014-02-03

* jlink: server default speed 30; larger type fields

### 2014-02-01

* freescale: semihosting argc/argv functional
* jlink: SEGGER suggestions implemented
* jlink: enable swo target cpu/swo freq persistent
* jlink: enable swo mask saved as hex

### 2014-01-31

* jlink: clrbp before and regs after reset

### 2014-01-30

* jlink: no monitor interface/device/endianess used, all config done via server

### 2014-01-28

* restart: debug Restart button as separate plug-in
* openocd: 4444 console disabled (requires telnet client), log ok
* openocd: TabDebugger order of controls changed
* restart: dependecies added for jlink & openocd
* freescale: klxx led functional

### 2014-01-27

* freescale: KLxx template builds properly
* openocd: preliminary functional version
* freescale: klxx memory map fixed

### 2014-01-25

freescale: PEx code moved to separate plug-in

### 2014-01-22

* jlink: other options split into substrings
* jlink: -select ubs/ip added
* cross: -T browseType changed to ‘file’, to allow browsing

### 2014-01-20

* freescale: template for pex added

### 2014-01-13

* jlink: symbols loaded not before connection, but just before load

### 2014-01-11

* 1.8.1-201401111229 published (cross_1.7.1, stm_1.6.1, jlink 1.2.1, core 1.1.1)
* cross: create listing defaults to false

### 2014-01-10

* STM more explanations in trace_impl.h

### 2014-01-09

* STM F4 template with different ram size in mem.ld
* STM sections.ld also defines __end, __end__, to make it build with newlib from 4.8
* cross: FPU unit persistency fixed

## [2013]({{ site.baseurl }}/developer/change-log/2013)
