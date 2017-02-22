---
layout: page
permalink: /developer/build-prerequisites/
title: Build prerequisites
author: Liviu Ionescu

date: 2015-09-10 20:20:00 +0300

---

## Install & Configure Eclipse

### Install Java

Install Sun JDK 1.8 or later (required since Eclipse 4.6); JRE is not enough, without JDK you will not be able to run debug sessions.

### Prepare folders

*   in a place of you choice, create a folder `GNU ARM Eclipse`
*   inside it create two more folders, `Eclipses` and `Eclipse Workspaces`

### Install Eclipse IDE for Eclipse Commiters

This instance of Eclipse will be used for actual development.

-   go to [Eclipse download site](http://www.eclipse.org/downloads/) and follow the [download packages](https://www.eclipse.org/downloads/eclipse-packages/) link
-   download **Eclipse IDE for Eclipse Committers**, preferably the 64-bits version (for example eclipse-committers-neon-2-macosx-cocoa-x86_64.tar.gz)
-   unpack the archive
-   rename `Eclipse.app` to `Eclipse-com-cdt-46.app`
-   move it to `.../GNU ARM Eclipse/Eclipses`
- create shortcut to desktop:
  -   on Windows, create a shortcut for `eclipse.exe`, rename it `E46 GAE.lnk` and copy it to the desktop or a place of your choice
  -   on macOS, create a Finder alias for `Eclipse.app`, rename it `E46 GAE` and move it to a place of your choice
  -   on GNU/Linux, create a link for `eclipse`, rename it `E46 GAE` and move it to a place of your choice

###   Start the new Eclipse

-   create a new workspace, preferably in a separate folder, like `Eclipse Workspaces/w-gae-46` (note: be sure you create the workspace where you need it to be, since moving later is generally not supported by Eclipse; if you need this, preferably create a new workspace)
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

* go to <http://www.eclipse.org/cdt/downloads.php>, and download `cdt-8.6.0.zip` (required to keep compatibility with Eclipse 4.4 Luna SR2)
* unpack the archive
* move the new folder to in the Eclipses folder
* in the _Eclipse_ menu → **(Window →) Preferences** → **Plug-in Development** → **Target Platform**
  * click the **Add...** button
  * select **Nothing: Start with an empty target**
  * Next
    * Enter name: **8.6.0 Luna**
    * click **Add** → **Directory**
    * click **Browse** → `cdt-8.6.0`
    * click the **Finish** button
  * click the **Reload** button
  * click the **Finish**
* select **Running Platform as Active** (mandatory!)
* OK

Selecting the running platform is required when starting Eclipse to Run or Debug, without it the core plug-ins will not be available.

* in the _Eclipse_ menu → **(Window →) Preferences** → **Plug-in Development** → **API Baselines**
  * click the **Add Baseline...** button
  * select **A target platform**
    * Enter name: 8.6.0 Luna
    * select 8.6.0 Luna
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
    * click the **OK** button
    * click the **Apply** button
  * **Run/Debug** → **Console**
    * disable Limit console output
    * click the **Apply** button
  * **Java** → **Editor** → **Folding**
    * disable **Header Comments**
    * disable **Imports**
    * click the **Apply** button
  * click the **OK** button

### Install several Eclipse CDT instances

These separate instances of Eclipse will be used to test the plug-in.

Go to [Eclipse download site](http://www.eclipse.org/downloads/) and follow the [download packages](https://www.eclipse.org/downloads/eclipse-packages/) link

#### Eclipse 4.6 Neon

-   download **Eclipse IDE for C/C++ Developers** (`eclipse-cpp-neon-2-macosx-cocoa-x86_64.tar.gz`)
-   unpack the archive
-   rename *_Eclipse_* to **eclipse-cdt-test-46**
-   on macOS, make a Finder alias of the **Eclipse.app**, rename it **E46 CDT test** and move it to a place of your choice (the Desktop, for example)

#### Eclipse 4.5 Mars

-   download **Eclipse IDE for C/C++ Developers** (`eclipse-cpp-mars-2-macosx-cocoa-x86_64.tar.gz`)
-   unpack the archive
-   rename *_Eclipse_* to **eclipse-cdt-test-45**
-   on macOS, make a Finder alias of the **Eclipse.app**, rename it **E45 CDT test** and move it to a place of your choice (the Desktop, for example)

#### Eclipse 4.4 Luna

-   download **Eclipse IDE for C/C++ Developers** (`eclipse-cpp-luna-SR2-macosx-cocoa-x86_64.tar.gz`)
-   unpack the archive
-   rename *_Eclipse_* to **eclipse-cdt-test-44**
-   on macOS, make a Finder alias of the **Eclipse.app**, rename it **E44 CDT test** and move it to a place of your choice (the Desktop, for example)

## Clone the repository

On Unix systems, the recommended method is using a command line:

```
$ cd .../GNU ARM Eclipse
$ git clone https://github.com/gnuarmeclipse/plug-ins.git plug-ins.git
```

On Windows, the `git` command is available in the [Git for Windows](https://git-scm.com/download/win) package.

## Import the projects

Import projects using the Maven importer:

* _Eclipse_ menu → **File** → **Import**
* Select
  * Maven → **Existing Maven Projects**
  * click **Next**
* Maven Projects
  * Root Directory: `.../GNU ARM Eclipse/plug-ins.git`
  * keep all selected
  * Add project(s) to working set: GNU ARM Eclipse
  * click **Finish**
If doing this on a fresh Eclipse
  * accept m23 settings
  * accept to install **Tycho Project Configurators**
  * click **Finish**
* Restart

## Configure the working sets

In the Package Explorer:

* click the down pointing triangle icon and select **Configure Working Sets**.
  * select GNU ARM Eclipse and click the **Edit...** button
  * click the **Select All** button
  * click the **Finish** button
* click the **OK** button

## Create the Maven run configuration

To ensure that Maven considers only the desired plugin versions during the build, it is necessary to pass a command line option when starting Maven, to ignore local artifacts:

```
-Dtycho.localArtifacts=ignore
``` 

Without this option, Maven will issue many warnings, like:

```
[INFO] Resolving dependencies of MavenProject: ilg.gnuarmeclipse:ilg.gnuarmeclipse.core:3.3.1-SNAPSHOT @ /Users/ilg/My Files/MacBookPro Projects/GNU ARM Eclipse/plug-ins.git/ilg.gnuarmeclipse.core/pom.xml
[WARNING] The following locally built units have been used to resolve project dependencies:
[WARNING]   org.eclipse.cdt.make.core/7.3.0.201702180936
[WARNING]   org.eclipse.cdt/9.2.0.201702180936
[WARNING]   org.eclipse.cdt.core.native/5.10.0.201702180936
[WARNING]   org.eclipse.cdt.managedbuilder.core/8.4.0.201702180936
[INFO] Resolving class path of MavenProject: ilg.gnuarmeclipse:ilg.gnuarmeclipse.core:3.3.1-SNAPSHOT @ /Users/ilg/My Files/MacBookPro Projects/GNU ARM Eclipse/plug-ins.git/ilg.gnuarmeclipse.core/pom.xml
```

Unfortunately I did not find a way to pass this option in the pom files, and it must be passed only on the command line.

To start the Maven build from Eclipse ... (TODO)

* select the **gnuarmeclipse-parent** project
* _Eclipse_ menu → **Run** → **Run Configurations...**
* double click the **Maven Build** enty
* in the Main tab
  * Goals: `clean install`
  * add a new parameter, name `tycho.localArtifacts`, value `ignore`
* click the **Apply** button
* click the **Run** button

## CDT Wiki

For more details, see [https://wiki.eclipse.org/CDT](https://wiki.eclipse.org/CDT), especially the [Getting started with CDT development](https://wiki.eclipse.org/Getting_started_with_CDT_development) page.



