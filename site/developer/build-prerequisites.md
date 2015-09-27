---
layout: page
permalink: /developer/build-prerequisites/
title: Build prerequisites
author: Liviu Ionescu

date: 2015-09-10 20:20:00

---

## Install & Configure Eclipse

### Install Java

Install Sun JDK 1.7 or later (required since Eclipse 4.4); JRE is not enough, without JDK you will not be able to run debug sessions.

### Prepare folders

*   in a place of you choice, create a folder **GNU ARM Eclipse**
*   inside it create two more folders, **Eclipses** and **Eclipse Workspaces**

### Install Eclipse RCP

This instance of Eclipse will be used for actual development.

-   go to [Eclipse download site](http://www.eclipse.org/downloads/)
-   download **Eclipse for RCP and RAP Developers**, preferably the 64-bit version (for example eclipse-rcp-luna-R-macosx-cocoa-x86_64.tar.gz)
-   unpack the archive
-   rename eclipse to **eclipse-44-rcp-cdt**
-   move it to **.../GNU ARM Eclipse/Eclipses**
-   on Windows, create a shortcut for eclipse.exe, rename it **Eclipse 4.4 RCP CDT - Shortcut** and copy it to the desktop or a place of your choice
-   on OS X, create a Finder alias for Eclipse.app, rename it **Eclipse 4.4 RCP CDT alias** and move it to a place of your choice
-   on GNU/Linux, create a link for eclipse, rename it **Eclipse 4.4 RCP CDT alias** and move it to a place of your choice
-   start the new Eclipse
-   create a new workspace, preferably in a separate folder, like **Eclipse Workspaces/workspace-44-rcp** (note: be sure you create the workspace where you need it to be, since moving later is generally not supported by Eclipse; if you need this, preferably create a new workspace)
-   check if you installed the right Eclipse; go to the Eclipse menu **Help** (**Eclipse** on OS X) → **About Eclipse** and the first line should read **Eclipse for RCP and RAP Developers**
-   **Help** → **Install New Software**
  * Work with: Luna - <http://download.eclipse.org/releases/luna>
    * In **Programming Languages**
      * select **C/C++ Development Tools**
      * select **C/C++ Development Tools SDK**
    * In **Mobile and Device Development**
      * select **C/C++ GDB Hardware Debugging**
    * click the **Next** button
    * accept the terms of the license agreement
    * click the **Finish** button
  * wait for the new plug-ins to be installed
-   restart
  Note: without the CDT sources available in the SDK, the extension point schemas will not be available so attempts to add new elements to the extensions will not be possible, and only 'Generic' elements will be offered.
-   install base API
  * go to <http://www.eclipse.org/cdt/downloads.php>, and download **cdt-master-8.3.0.zip** (required to keep compatibility with Kepler 4.3)
  * unpack the archive
  * move the new folder to in the Eclipses folder
  * in Eclipse menu: **Preferences...** → **Plug-in Development** → **API Baselines**
    * click the **Add Baseline...** button
      * set Name: to 8.3.0
      * browse Location: to .../GNU ARM Eclipse/cdt-master-8.3.0 (or set to this folder and click the **Reset** button)
      * click the **Finish** button
    * click the **OK** button
  * click the **OK** button

### Create and configure the workspace

-   change the workspace preferences
  * go to Eclipse menu → **Preferences**
  * **General** → **Workspace**
    * disable **Build automatically**
    * enable **Refresh on access**
    * enable **Save automatically before rebuild**
    * set **Text file encoding: UTF-8**
    * press the **Apply** button
  * **General** → **Editors** → **Text Editors**
    * enable **Show Print Margin** (80)
    * enable **Show Line Numbers**
    * press the **Apply** button
    * press the **OK** button
  * **Run/Debug** → **Console**
    * disable Limit console output
  * **Java** → **Editor** → **Folding**
    * disable **Header Comments**
    * disable **Imports**

### Install Eclipse CDT

This separate instance of Eclipse will be used to test the plug-in.

-   go to [Eclipse download site](http://www.eclipse.org/downloads/)
-   download **Eclipse IDE for C/C++ Developers** (eclipse-cpp-luna-R-macosx-cocoa-x86_64.tar.gz)
-   unpack the archive
-   rename **eclipse** to **eclipse-4.4-cdt-test**
-   on Mac OS X, enter the folder, make a Finder alias of the **Eclipse.app**, rename it **Eclipse 4.4 CDT test alias** and move it to a place of your choice (the Desktop, for example)

## Clone the repository

On Unix systems, the recommended method is using a command line:

    $ cd .../GNU ARM Eclipse
    $ git clone https://github.com/gnuarmeclipse/plug-ins.git plug-ins.git

On Windows, without a git command, you can use Eclipse to clone the Git repository

* Eclipse Menu: **File** → **Import**
  * Git → **Projects from Git**
  * click **Next**
* Select Repository Source
  * select **Clone URI**
  * click **Next**
* Source Git Repository
  * URI: https://github.com/gnuarmeclipse/plug-ins.git
  * click **Next**
* Branch Selection
  * select all branches
  * click **Next**
* Local Destination
  * Directory: .../GNU ARM Eclipse/plug-ins.git
  * Initial branch: stable (or devel, for the latest development version)
  * click **Next**
* Select a wizard to use for importing projects
  * click **Cancel** (do NOT import any projects)

## Import the projects

Import projects using Maven

* Eclipse Menu: **File** → **Import**
* Select
  * Maven → **Existing Maven Projects**
  * click **Next**
* Maven Projects
  * Root Directory: .../GNU ARM Eclipse/plug-ins.git
  * Add project(s) to working set: GNU ARM Eclipse
  * click **Finish**
If doing this on a fresh Eclipse, accept to install **Tycho Project Configurators**.
Restart.

## Associate to Git

-   select al projects
-   right click Share projects
  * select Git
  * click **Next**
  * accept the locations
  * click **Finish**
-   select projects one by one; the git repository should appear after the project names
