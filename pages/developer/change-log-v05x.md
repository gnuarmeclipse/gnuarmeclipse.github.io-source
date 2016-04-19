---
layout: page
permalink: /developer/change-log/v05x/
title: The GNU ARM Eclipse Plug-ins v0.5.x Change Log
author: Liviu Ionescu

date: 2015-09-10 20:29:00 +0300

---

Entries in this file are in direct chronological order.


## 2009

### 2009-08-22

-   C/C++ linker options added
  * --Xlinker --print-gc-sections
  * --Xlinker --print-map
  * --Xlinker --cref
-   C/C++ compiler options added
  * -fno-inline-functions
-   C++ compiler options added
  * -Wabi
  * -Weffc++
-   C/C++ compiler optimization default to -Os instead of -O3
-   browse type 'file' removed from Map Filename, since it is not properly rendered

### 2009-08-21

-   patches from Freddie Chopin applied
  * C/C++ linker --gc-sections added
  * C/C++ linker -nostartfiles enabled for C, disabled for C++
  * C/C++ linker -nostdlibs disabled
  * C++ compiler -no-rtti option added
  * C/C++ compiler signed char as option, default is unsigned (compiler default)
-   experimental toolchain presence support not completed, temporarily disabled until properly implemented

### 2009-04-18

-   '-nostdlib' enabled by default for linkers
-   'CodeSourcery G++ Lite' for Windows toolchain presence tested (by attempting to execute 'arm-none-eabi-gcc') [experimental]
-   'CodeSourcery G++ Lite' for Linux toolchain presence tested (by attempting to execute 'arm-none-eabi-gcc') [experimental]
-   'GNUARM' (and derivatives) toolchain presence tested (by attempting to execute 'arm-elf-gcc') [experimental]
-   PATH automatic discovery for Windows versions of 'CodeSourcery G++ Lite' and 'GNUARM 4.1.1', by using Windows Registry information. No need to have them in the system PATH.

### 2009-04-07

-   C Linker empty makefile bug fixed (spaces in secondaryOutputs/targetTool)
-   about.\* files moved here from the feature project; the ARM icon is now visible in the Help -\> About window.
-   update site URL renamed from <http://gnuarmeclipse.sourceforge.net/update> to <http://gnuarmeclipse.sourceforge.net/updates>

### 2009-04-03

-   org.eclipse.cdt.core.templateAssociations (schema in org.eclipse.cdt.core) points to all toolchain bases, as specified in schema examples and used in org.eclipse.cdt.managebuilder.gnu.ui. (not yet functional)

### 2009-04-07

-   Discovery Options implemented for all toolchains.

### 2009-04-13

-   patches from Freddie Chopin applied
  * linker --gc-sections added
  * linker -nostartfiles enabled for C, disabled for C++
  * linker -nostdlibs disabled
  * C++ compiler -no-rtti option added
  * C/C++ compiler signed char as option, default is unsigned (compiler default)
-   recompiled with Eclipse 3.5 & CDT 6.0

2010
----

### 2010-01-15

-   ported on Eclipse 3.5 SR1 (Galileo), with CDT 6.0

### 2010-01-26

-   license changed from GPL to EPL

### 2010-01-15

-   no functional changes, only a clean repack of the update site and of the published archive.

### 2010-04-20

-   the confusion between Host OS and Guest OS when selecting the CodeSourcery G++ Lite toolchain was finally sorted out. The basic toolchain when targeting for embedded systems is ARM EABI. The arm-none-eabi toolchain is intended to generate programs for running on ARM ported Linux, not embedded systems.

### 2010-06-09

-   GNU/Linux CodeSourcery toolchain fixed (changed from arm-none-linux-gnueabi-\* to arm-none-eabi-\*)

### 2010-06-28

-   properties on a source file triggered an error when selecting Tool Settings. This was due to a bug in ARMManagedCommandLineGenerator, where the parent of Tool may be ResourceConfiguration instead of ToolChain (bug \#3024374 added a better support, by climbing the hierarchy).

### 2010-07-06

-   development ported on Mac OS X, Eclipse 3.5.2
-   CodeSourcery added to Mac OS X
-   Mac OS X missing GNUARM configuration reference fixed
-   (\#3024374) individual properties processed; ITool.getParent() should climb up the hierarchy via getSuperClass(); this is also a better fix for \#3021757.
-   (\#3024483) New Yagarto Toolchain uses EABI; Yagarto toolchain split from common Windows GCC configurations

### 2010-07-07

-   Yagarto discovery code was referring to CodeSourcery; fixed
-   (\#3014562) support for devkitPro ARM toolchain added (arm-eabi-g++)

### 2010-07-13

-   (\#3028902) assembler listing support added to source files as Wa,-adhlns="\$@.lst"

### 2010-07-15

-   the Wiki page [How to build]({{ site.baseurl }}/developer/build-procedure/) and this page (Change log) were created from project text files.

### 2010-07-29

version 0.5.3.201007292300 released

-   the Java code is compiled with 1.5 restrictions, otherwise it does not work on most platforms (\#3036456)
-   the update site was regenerated from scratch, without build.properties and it seems the categories are now displayed (\#2833594)
-   the files ChangeLog.txt, HowToBuild.txt were removed from the repository
-   the file README.txt was simplified

### 2010-07-31

version 0.5.3.201007311800 released

-   the download area was reorganised, files are now published in subfolders like **gnuarmeclipse/0.5.3**
-   the old files were moved to Previous Releases
-   the gnuarm-update.sh script was updated to publish both to the update site and to the download area
-   the missing category in the update site seems to be a bug in the Eclipse p2 code; the workaround is to remove the fature and reassign it before the build
-   this release shows the category as **CDT GNU Cross Development Tools**

### 2010-08-10

-   (\#2744055) code to identify options change added; interface update code still to be found.
-   the license code in the feature project was fixed (the first line contained a space after the final '\\', terminating it prematurely)

### 2010-10-06

* version 0.5.3.201010061939 released
-   (\#3077091) new -mcpu= values: cortex-a5, cortex-a9, cortex-m1, cortex-m0, iwmmxt2, marvell-f

### 2010-10-14

* verson 0.5.3.201010141144 released
-   (\#3087264) new -mcpu= values: cortex-m4

2011
----

### 2011-11-26

* version 0.5.4.201111262136 released
-   mainly ported to Eclipse 3.7 (CDT 8.0), no functional changes

### 2011-12-03

* version 0.5.4.201112030833 released
-   clean regenerate the update site, to avoid the need to uncheck "Group by Category"

2012
----

### 2012-01-24

-   (3475135) support for Mac OS X Yagarto was added
-   the scripts/publish-updates.sh was added, no need to commit binaries to SVN

### 2012-01-26

-   version 0.5.4.201201250003 released
-   (3480038) Plug-in install on Eclipse Indigo 3.7.1 fixed (the plug-in itself was ok, the problem was in the publish procedure, updated recently).

### 2012-02-17

-   (3479739) support for Summon Toolchain added (patch 3487283 applied)
-   (3479737) support for floating point added as
    -   -mfloat-abi=name and
    -   -mfpu=name
-   support for endiannes added as
    -   -mlittle-endian and
    -   -mbig-endian
-   (3148636) label for -fdata sections renamed as "Data Sections"

### 2012-02-21

-   the Windows path for Summon toolchain was changed from *arm-toolchain* to *summon-arm-toolchain*

### 2012-02-25

-   version 0.5.4.201202210114 released

2013
----

### 2013-09-16

-   start work on 0.5.5
-   New cpus: arm720, arm710t, arm720t, arm740t, strongarm1110, arm1156t2f-s, cortex-a7, cortex-a15, cortex-a53, cortex-m0plus, marvell-pj4, fa526, fa626, fa606te, fa626te, fmp626, fa726te
-   accept spaces in project names (but still need CDT patch)

### 2013-09-17

-   Toolchains added:
    -   Tools for Embedded (arm-none-eabi-)
    -   Sourcery Lite Linux (arm-none-linux-gnueabi-)
    -   Linaro AArch64 Bare (aarch64-none-elf-)
    -   Linaro AArch64 Linux (aarch64-linux-gnu-)
    -   Linaro GNUEABIHF Linux (arm-linux-gnueabihf-)
-   xml name convention changed, to use parenthesis
-   new FPU types: ‘fp-armv8’, ‘neon-fp-armv8’, and ‘crypto-neon-fp-armv8’.
-   FPU Type enabled even for default Float ABI
-   startfiles always enabled
-   toolchain default debug format instead of dwarf
-   elf32-littlearm, elf32-bigarm, elf32-little, elf32-big, tekhex removed from CreateFlash output type;
-   flash binary outputType automatically computed

### 2013-09-18

-   compiler -ffunction-sections, -fdata-sections and linker -Xlinker --gc-sections, defaults true
-   C/C++ Hello ARM World templates added locally

### 2013-09-19

-   AArch64 target configuration using separate structure

### 2013-09-24

-   second edition (SE) started, git created

### 2013-09-27

-   missing -pg added to most configs
-   first functional SE (1.1.0), based on 0.5.5, with all commands configurable, including make and rm (using config macros)

### 2013-09-28

-   version 0.5.5.201309281715 released
-   new version ids renamed to ilg.gnuarmeclipse.managedbuild.cross\* (SE)
-   ARM configuration with arm/thumb, unalignedaccess added, selection IDs end in .enable/.disable instead of .yes/.no (SE)

### 2013-09-30

-   wizard to select toolchain functional, except discovery (SE)

### 2013-10-05

-   cross_toolchain_flags added as macro and used for discovery (SE)

### 2013-10-07

-   separate Optimization entry (SE)

### 2013-10-09

-   shared libs functionality restored (SE)

### 2013-10-11

-   toolchain family renamed architecture; toolchain tab added and functional (SE)

### 2013-10-12

-   change dependencies to Kepler CDT 8.2.0 (SE)

### 2013-10-13

-   Toolchain Settings tab displayed only for this plug-in (SE)
-   internal ids containing .base. corrected (SE)

### 2013-10-15

-   CXA_ATEXEIT twice, fixed (SE)
-   createflash.choice ID fixed (SE)
-   maven tycho functional (SE)

### 2013-10-16

-   publish script added (SE)
-   version 0.5.5.201310111213 released (end of life)
-   version 1.1.0.201310161930 released (experimental)

Note: al further changes refer, unless explicitly mentioned, to SE.

### 2013-10-17

-   SourceForge site updated
-   documentation updated

### 2013-10-19

-   version 1.1.1.201310191701 released
-   linker script file changed to multiple files; no more browse and spaces escaped in code
-   new 'Custom' toolchain added as arm-none-eabi-
-   a new Cortex-M3 template added
