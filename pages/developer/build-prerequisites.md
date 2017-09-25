---
layout: page
permalink: /developer/build-prerequisites/
title: Build prerequisites
author: Liviu Ionescu

date: 2015-09-10 20:20:00 +0300

---

## Install & Configure Eclipse

### Install Git for Windows

On Windows, the `git` command is available in the [Git for Windows](https://git-scm.com/download/win) package.

It also comes with a minimal POSIX environment. To access it, start the `bash.exe` program.

### Install SourceTree

For a convenient access to Git, it is recommended to install [SourceTree](https://www.sourcetreeapp.com/), available for macOS and Windows.

### Install Java

Install Sun JDK 1.8 or later (required since Eclipse 4.6); JRE is not enough, without JDK you will not be able to run debug sessions.

### Prepare folders

*   in a place of you choice, create a folder `GNU MCU Eclipse`
*   inside it create two more folders, `Eclipses` and `Eclipse Workspaces`

### Install Eclipse IDE for Eclipse Commiters

This instance of Eclipse will be used for actual development.

-   go to [Eclipse download site](http://www.eclipse.org/downloads/) and follow the [download packages](https://www.eclipse.org/downloads/eclipse-packages/) link
-   download **Eclipse IDE for Eclipse Committers**, preferably the 64-bits version (for example eclipse-committers-neon-3-macosx-cocoa-x86_64.tar.gz)
-   unpack the archive
-   rename `Eclipse.app` to `Eclipse-com-cdt-46.app` (`eclipse` to `eclipse-com-cdt-46` on Windows)
-   move it to `.../GNU MCU Eclipse/Eclipses`
- create shortcut to desktop:
  -   on Windows, create a shortcut for `eclipse.exe`, rename it `e46-gme.lnk` and copy it to the desktop or a place of your choice
  -   on macOS, create a Finder alias for `Eclipse.app`, rename it `E46 GME` and move it to a place of your choice
  -   on GNU/Linux, create a link for `eclipse`, rename it `E46 GME` and move it to a place of your choice

###   Start the new Eclipse

-   create a new workspace, preferably in a separate folder, like `Eclipse Workspaces/w-gme-46` (note: be sure you create the workspace where you need it to be, since moving later is generally not supported by Eclipse; if you need this, preferably create a new workspace)
-   check if you installed the right Eclipse; go to the _Eclipse_ menu → **Help** (*_Eclipse_* on macOS) → **About Eclipse** and the first line should read **Eclipse IDE for Eclipse Committers**
-   **Help** → **Install New Software**
  * Work with: `Neon - http://download.eclipse.org/releases/neon`
    * In **Programming Languages**
      * select **C/C++ Development Tools**
      * select **C/C++ Development Tools SDK**
      * optional: Autotools, CMake, Docker, LLVM, Unit Testing, ...
    * In **Mobile and Device Development**
      * select **C/C++ GCC Cross Compile Support**
      * select **C/C++ GDB Hardware Debugging**
      * select **C/C++ Memory View Enhancements**
    * In **General Purpose Tools**
      * select **m2e - Maven Integration for Eclipse**
    * click the **Next** button
    * accept the terms of the license agreement
    * click the **Finish** button
  * wait for the new plug-ins to be installed
-   restart

Note: without the CDT sources available in the SDK, the extension point schemas will not be available so attempts to add new elements to the extensions will not be possible, and only 'Generic' elements will be offered

### Install base API

* go to <http://www.eclipse.org/cdt/downloads.php>, and download `cdt-9.2.1.zip` (for compatibility with Ecipse 4.6 Neon.3)
* unpack the archive
* move the new folder to in the Eclipses folder
* in the _Eclipse_ menu → **(Window →) Preferences** → **Plug-in Development** → **Target Platform**
  * click the **Add...** button
  * select **Nothing: Start with an empty target**
  * Next
    * Enter name: **9.2.1 Neon**
    * click **Add** → **Directory**
    * click **Browse** → `cdt-9.2.1`
    * click the **Finish** button
  * click the **Reload** button
  * click the **Finish**
* select **Running Platform as Active** (mandatory!)
* OK

Selecting the running platform is required when starting Eclipse to Run or Debug, without it the core plug-ins will not be available.

* in the _Eclipse_ menu → **(Window →) Preferences** → **Plug-in Development** → **API Baselines**
  * click the **Add Baseline...** button
  * select **A target platform**
    * Enter name: 9.2.1 Neon
    * select 9.2.1 Neon
    * click the **Refresh** button
    * click the **Finish** button
  * click the **OK** button
* click the **OK** button

### Create and configure the workspace

-   change the workspace preferences
  * go to the _Eclipse_ menu → **(Window →) Preferences...**
  * **General** → **Workspace**
    * disable **Build automatically**
    * enable **Refresh on access**
    * enable **Save automatically before rebuild**
    * set **Text file encoding: UTF-8**
    * click the **Apply** button
  * **General** → **Editors** → **Text Editors**
    * enable **Show Print Margin** (80)
    * enable **Show Line Numbers**
    * click the **Apply** button
  * **General** → **Editors** → **File Associations**
    * click **Add** and add *.inf, *.sh, *.command, *.ini
    * for each, click the **Add** button in the Associate editors area
    * associate with the Text Editor
    * click the **OK** button
  * **Run/Debug** → **Console**
    * disable Limit console output
    * click the **Apply** button
  * **Java** → **Editor** → **Folding**
    * disable **Header Comments**
    * disable **Imports**
    * click the **Apply** button
  * **XML** → **XML Files** → **Editor**
    * Line width 72
    * enable **Split multiple attributes...**
    * disable **Align final bracket...**
    * enable **Preserve whitespace..**
    * enable **Clear all blank lines**
    * disable **Format comments**
    * enable **Insert whitespace before closing..**
    * enable **Indent using tabs**
    * click the **Apply** button
  * click the **OK** button

### Install several Eclipse CDT instances

These separate instances of Eclipse will be used to test the plug-in.

Go to [Eclipse download site](http://www.eclipse.org/downloads/) and follow the [download packages](https://www.eclipse.org/downloads/eclipse-packages/) link

#### Eclipse 4.6 Neon.3

-   download **Eclipse IDE for C/C++ Developers** (`eclipse-cpp-neon-3-macosx-cocoa-x86_64.tar.gz`)
-   unpack the archive
-   rename *_Eclipse_* to **eclipse-cdt-test-46**
-   on macOS, make a Finder alias of the **Eclipse.app**, rename it **E46 CDT test** and move it to a place of your choice (the Desktop, for example)

## Clone the repository

On Unix systems, the recommended method is using a command line:

```bash
$ cd .../GNU\ MCU\ Eclipse
$ git clone https://github.com/gnu-mcu-eclipse/eclipse-plugins.git eclipse-plugins.git
```

On Windows, the `git` command is available in the [Git for Windows](https://git-scm.com/download/win) package.

## Import the projects

Import projects using the Maven importer:

* _Eclipse_ menu → **File** → **Import**
* Select
  * General → **Existing Projects into Workspace**
  * click **Next**
* Import Projects
  * Root Directory: `.../GNU MCU Eclipse/eclipse-plugins.git`
  * enable **Search for nested projects**
  * disable **Add project(s) to working set**
  * click **Finish**

## Configure the working sets

Create Workspace Sets (for example one for plug-ins, one for features, one for repositories and one for the parent project).

In the Package Explorer:

* click the down pointing triangle icon and select **Configure Working Sets**.
  * click the **New** button
  * click the **Resource** category
  * Give the set a name (for example GNU MCU Eclipse plug-ins)
  * select the desired projects
  * click the **Finish** button
  * repeat for all desires sets
* click the **OK** button

## Create the Maven run configuration

To ensure that Maven considers only the desired plugin versions during the build, it is necessary to pass a command line option when starting Maven, to ignore local artifacts:

```
-Dtycho.localArtifacts=ignore
``` 

Without this option, Maven might issue many warnings, like:

```
[INFO] Resolving dependencies of MavenProject: ilg.gnumcueclipse:ilg.gnumcueclipse.core:3.3.1-SNAPSHOT @ /Users/ilg/My Files/MacBookPro Projects/GNU MCU Eclipse/plug-ins.git/ilg.gnumcueclipse.core/pom.xml
[WARNING] The following locally built units have been used to resolve project dependencies:
[WARNING]   org.eclipse.cdt.make.core/7.3.0.201702180936
[WARNING]   org.eclipse.cdt/9.2.0.201702180936
[WARNING]   org.eclipse.cdt.core.native/5.10.0.201702180936
[WARNING]   org.eclipse.cdt.managedbuilder.core/8.4.0.201702180936
[INFO] Resolving class path of MavenProject: ilg.gnumcueclipse:ilg.gnumcueclipse.core:3.3.1-SNAPSHOT @ /Users/ilg/My Files/MacBookPro Projects/GNU ARM Eclipse/plug-ins.git/ilg.gnumcueclipse.core/pom.xml
```

Unfortunately I did not find a way to pass this option in the pom files, and it must be passed only on the command line.

To start the Maven build from Eclipse

* select the **gnumcueclipse-plugins** project
* _Eclipse_ menu → **Run** → **Run Configurations...**
* double click the **Maven Build** enty
* **Name:** `GME clean verify` 
* in the Main tab
  * Goals: `clean verify`
  * add a new parameter, name `tycho.localArtifacts`, value `ignore`
* click the **Apply** button
* in the JRE tab
  * Execution environment JavaSE-1.8
* click the **Apply** button  
* click the **Run** button

## CDT Wiki

For more details, see [https://wiki.eclipse.org/CDT](https://wiki.eclipse.org/CDT), especially the [Getting started with CDT development](https://wiki.eclipse.org/Getting_started_with_CDT_development) page.
