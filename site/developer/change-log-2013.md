---
layout: page
permalink: /developer/change-log/2013/
title: The 2013 GNU ARM Eclipse Plug-ins Change Log
author: Liviu Ionescu

date: 2015-09-10 20:28:00

---

Entries in this file are in reverse chronological order.

## 2013

### 2013-12-30

* STM F4 template updated to v1.3.0

### 2013-12-29

* STM template structure simplified, only src and libs are sources

### 2013-12-28

* Toolchains settings tab visible for Make projects too
* template for STM32F0 added and functional
* version scheme changed
  *   site increased from 1.1.7 to 1.8.1
  *   cross increased from 1.1.6 to 1.7.1
  *   stm increased from 1.1.5 to 1.6.1 (prepared for STM32F0 addition)
  *   template core renamed from 1.1.0 to 1.1.1

### 2013-12-27

* internal builder trims, command line without INPUT, since the file name is solved by the input option (preferably placed at the end)
* linker script quoted even on Unix (otherwise internal builder fails)
* toolchain changes no longer crashes with NPE
* toolchain change works even from empty toolchain (ProcessorExpert)

### 2013-12-24

* 1.1.7-201312241058 published (cross_1.1.6, stm_1.1.5, jlink 1.1.2)
* spaces in linker -T now accepted
* GDB server/client absolute path with spaces accepted

### 2013-12-22

* 1.1.7-201312221905 published (cross_1.1.6, stm_1.1.5, jlink 1.1.2)
* stm32f4 template defines E407 green led
* all plug-ins dependencies updated for Kepler 4.3 R

### 2013-12-21

* jlink updated for v4.80

### 2013-12-19

* jlink semihosting functional

### 2013-12-16

* jlink restart re-arms tbreak

### 2013-12-14

* jlink uses macros and path from build config

### 2013-12-13

* the GDB server console functional for jlink, version increased to 1.1.2

### 2013-12-11

* STM32F4 FMC/FSMC fixed

### 2013-12-10

* STM32F templates updated, version increased to 1.1.5

### 2013-11-28

* jlink 1.1.1 with Restart button functional

### 2013-11-25

* 1.1.7, including jlink 1.1.0

### 2013-11-22

* 1.1.6-201311220955 published (cross_1.1.6, stm_1.1.4)
* template syscalls order (start with none)
* semi-hosting spelled without ‘-‘

### 2013-11-21

* init part of startup tab implemented and functional

### 2013-11-20

* jlink with all tabs defined locally, functional, but no changes from DSF

### 2013-11-19

* jlink with two static defined tabs
* Bundle-Localization: plugin added to template plugins to make the localisation substitution

### 2013-11-18

* output to bin, apiAnalysisBuilder added, Activator prints trace on output
* STM32Fx plug-in name fixed (was F10x)
* document stimulus port in swo write
* preliminary jlink support plug-in; does not show tabs yet

### 2013-11-14

* _sbrk() checks _Heap_Limit instead of SP (RTOS can allocate it below)

### 2013-11-13

* echo updates-test url in publish-updates-test.command
* automatically select fpv4spd16 for cortex-m4 and float hard or softfp
* libgloss/syscalls.c included, to allow separate _sbrk
* _sbrk enforces align(4)

### 2013-11-12

* main-tail common part used in all templates
* _sbrk() added to standalone configurations
* syscalls selection added to F3 & F4 templates
* _write_trace_semihosting_stdout() error processing more elaborate
* add an empty __register_exitproc() in startup_cm.c to avoid startup crash when using startup files

### 2013-11-11

* cross 1.1.6, stm 1.1.4
* multi-config reentrancy issue fixed
* when using startup files, the DEBUG version of ResetHandler is not naked, to allow breakpoints
* F1 template, separate main, libs and options for retarget, semihost, none

### 2013-11-10

* sections.ld _end definition based on _end_noinit
* void\* casts to init array pointers
* Hello World templates include the librdimon linker options to compile directly

### 2013-11-09

* 1.1.5-201311101919 released
* .noinit section added to templates
* multi configuration toolchain settings fixed

### 2013-11-08

* F3 template completed

### 2013-11-07

* trace functional on swo, semihosting output and debug
* count seconds in main loop

### 2013-11-06

* F1 template updated after F4

### 2013-11-05

* F4 template functional

### 2013-11-03

* F4 template startup code in .c

### 2013-11-02

* changing the rm command now regenerates the makefile

### 2013-10-30

* 1.1.4-201310301732 released
* stm32f4x template added (v1.1.1)
* stm32f1 ldscript flash start address changed to 0x08000000
* on stm32f1 remove semi-hosting from Release
* cross plug-in ARM inits adjusted to accomodate template settings

### 2013-10-29

* 1.1.3-201310290722 released
* large stm32f10x_stdperiph_lib_um.chm removed

### 2013-10-28

* templates.core added to handle option setting on debug configs
* .st renamed .stm

### 2013-10-27

* for the moment, disable usb, version 1.1.0 ready
* st feature added

### 2013-10-26

* ilg.gnuarmeclipse.templates.st added, for C/C++, configurable mem.ld, blink led sample
* test <if condition="..."></if> in templates, ok

### 2013-10-25

* options .lstfilename renamed .asmlisting

### 2013-10-24

* Include files (-include) added
* options \*.includepaths renamed \*.include.paths
* category Directories renamed Includes
* substitute macros in toolchain path

### 2013-10-23

* cs_make, cs_rm renamed cs-make, cs-rm, as per Sourcery definitions.

### 2013-10-22

* 0.5.5.201310221100 & 1.1.2.201310221203
* [bug:\#56] due to a .classpath bug in 0.5.5, Maven generated plug-in could not find any .class file; fixed (FE)
* min jdk1.6 and all platforms allowed (to match SE no restriction build)

### 2013-10-21

* the Toolchains OK button is functional now
* more explanatory comments in the mem.ld file

### 2013-10-20

* "\\n" added to printf() in C templates
* hello world message streamlined

### 2013-10-19

* version 1.1.1.201310191701 released
* linker script file changed to multiple files; no more browse and spaces escaped in code
* new 'Custom' toolchain added as arm-none-eabi-
* a new Cortex-M3 template added

### 2013-10-17

* SourceForge site updated
* documentation updated

### 2013-10-16

* publish script added (SE)
* version 0.5.5.201310111213 released (end of life)
* version 1.1.0.201310161930 released (experimental)

### 2013-10-15

* CXA_ATEXEIT twice, fixed
* createflash.choice ID fixed
* maven tycho functional

### 2013-10-13

* Toolchain Settings tab displayed only for this plug-in
* internal ids containing .base. corrected

### 2013-10-12

* change dependencies to Kepler CDT 8.2.0

### 2013-10-11

* toolchain family renamed architecture; toolchain tab added and functional

### 2013-10-09

* shared libs functionality restored

### 2013-10-07

* separate Optimization entry

### 2013-10-05

* cross_toolchain_flags added as macro and used for discovery

### 2013-09-30

* wizard to select toolchain functional, except discovery

### 2013-09-28

* version 0.5.5.201309281715 released (FE)
* new version ids renamed to ilg.gnuarmeclipse.managedbuild.cross\*
* ARM configuration with arm/thumb, unalignedaccess added, selection IDs end in .enable/.disable instead of .yes/.no

### 2013-09-27

* missing -pg added to most configs (FE)
* first functional SE (1.1.0), based on 0.5.5, with all commands configurable, including make and rm (using config macros)
