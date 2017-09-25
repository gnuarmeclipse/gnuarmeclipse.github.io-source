---
layout: page
permalink: /developer/build-procedure-v4/
title: How to build the plug-ins?
author: Liviu Ionescu

date: 2015-09-10 20:22:00 +0300

---

## Build

-   select the **ilg.gnumcueclipse.parent** project
-   right click, select **Run As** → **Maven install**
-   wait a while for Maven to load all required modules

The result of a successful build looks like this:

```
[INFO] --- tycho-p2-plugin:0.25.0:update-local-index (default-update-local-index) @ ilg.gnumcueclipse.repository ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO] 
[INFO] GNU MCU Eclipse parent ............................. SUCCESS [  0.153 s]
[INFO] GNU MCU Eclipse core ............................... SUCCESS [  2.347 s]
[INFO] GNU MCU Eclipse debug core ......................... SUCCESS [  0.276 s]
[INFO] GNU MCU Eclipse packages core ...................... SUCCESS [  0.405 s]
[INFO] GNU MCU Eclipse managed build code ................. SUCCESS [  0.655 s]
[INFO] GNU MCU Eclipse managed build feature .............. SUCCESS [  0.137 s]
[INFO] GNU MCU Eclipse templates core ..................... SUCCESS [  0.422 s]
[INFO] GNU MCU Eclipse Cortex-M template .................. SUCCESS [  0.252 s]
[INFO] GNU MCU Eclipse Cortex-M template feature .......... SUCCESS [  0.097 s]
[INFO] GNU MCU Eclipse STM32Fx templates .................. SUCCESS [  1.709 s]
[INFO] GNU MCU Eclipse STM32Fx templates feature .......... SUCCESS [  0.082 s]
[INFO] GNU MCU Eclipse Freescale Kinetis templates ........ SUCCESS [  0.292 s]
[INFO] GNU MCU Eclipse Freescale PEx template ............. SUCCESS [  0.268 s]
[INFO] GNU MCU Eclipse Freescale templates feature ........ SUCCESS [  0.100 s]
[INFO] GNU MCU Eclipse ADuCM template ..................... SUCCESS [  0.396 s]
[INFO] GNU MCU Eclipse ADuCM template feature ............. SUCCESS [  0.080 s]
[INFO] GNU MCU Eclipse GDB debug .......................... SUCCESS [  1.170 s]
[INFO] GNU MCU Eclipse J-Link debug ....................... SUCCESS [  0.648 s]
[INFO] GNU MCU Eclipse debugger Restart button ............ SUCCESS [  0.233 s]
[INFO] GNU MCU Eclipse J-Link debug feature ............... SUCCESS [  0.117 s]
[INFO] GNU MCU Eclipse OpenOCD debug ...................... SUCCESS [  0.478 s]
[INFO] GNU MCU Eclipse OpenOCD debug feature .............. SUCCESS [  0.118 s]
[INFO] GNU MCU Eclipse PyOCD debug ........................ SUCCESS [  0.820 s]
[INFO] GNU MCU Eclipse PyOCD debug feature ................ SUCCESS [  0.088 s]
[INFO] GNU MCU Eclipse QEMU debug ......................... SUCCESS [  0.432 s]
[INFO] GNU MCU Eclipse QEMU debug feature ................. SUCCESS [  0.089 s]
[INFO] GNU MCU Eclipse packages data ...................... SUCCESS [  0.339 s]
[INFO] GNU MCU Eclipse debug packs ........................ SUCCESS [  0.268 s]
[INFO] GNU MCU Eclipse packages ........................... SUCCESS [  0.208 s]
[INFO] GNU MCU Eclipse packages UI ........................ SUCCESS [  0.431 s]
[INFO] GNU MCU Eclipse managed build packs ................ SUCCESS [  0.329 s]
[INFO] GNU MCU Eclipse packages feature ................... SUCCESS [  0.129 s]
[INFO] GNU MCU Eclipse CodeRed perspective ................ SUCCESS [  0.258 s]
[INFO] GNU MCU Eclipse CodeRed perspective feature ........ SUCCESS [  0.151 s]
[INFO] GNU MCU Eclipse documentation ...................... SUCCESS [  0.052 s]
[INFO] GNU MCU Eclipse documentation feature .............. SUCCESS [  0.043 s]
[INFO] GNU MCU Eclipse repository ......................... SUCCESS [  5.770 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 43.399 s
[INFO] Finished at: 2017-02-18T15:18:25+02:00
[INFO] Final Memory: 146M/1424M
[INFO] ------------------------------------------------------------------------
```

The build result is in the `ilg.gnumcueclipse.repository` project
* the `target/ilg.gnumcueclipse.repository-3.3.1-SNAPSHOT.zip` file
* the `target/repository` folder, with the p2 update site

## Debug

Create a file `Eclipse Workspaces/debug.options` with the following content:

```
ilg.gnumcueclipse.core/debug=true

ilg.gnumcueclipse.managedbuild.cross/debug=true
#ilg.gnumcueclipse.managedbuild.packs/debug=true

ilg.gnumcueclipse.debug.core/debug=true
ilg.gnumcueclipse.debug.gdbjtag/debug=true

ilg.gnumcueclipse.debug.gdbjtag.jlink/debug=true
ilg.gnumcueclipse.debug.gdbjtag.openocd/debug=true
ilg.gnumcueclipse.debug.gdbjtag.qemu/debug=true

#ilg.gnumcueclipse.packs/debug=true
#ilg.gnumcueclipse.packs.core/debug=true
#ilg.gnumcueclipse.packs.data/debug=true
#ilg.gnumcueclipse.packs.ui/debug=true

ilg.gnumcueclipse.codered/debug=true
```

To run a debug session using the GNU MCU Eclipse plug-ins:

-   **Run** → **Debug Configurations**
  * select **Eclipse Application**
  * click **New**
    * Name: **Eclipse GNU MCU Plug-ins**
    * Location: `${workspace_loc}/../runtime-Eclipse46`
  * Tab: **Plug-ins**
    * Launch with: **plug-ins selected below**; the Workspace list should include all `ilg.gnumcueclipse.*` plug-ins; the Target Platform list should include all Eclipse, not only CDT, plug-ins; if the Eclipse plug-ins are not in the list, then the Preferences → Plug-in Development -> Target Platform is not Running Platform, and must be changed. The alternative to use **all workspace and enabled plug-ins** might work in some configurations, and can also be used, but if dependencies are not met, manual selection is required.
    * click the **Validate Plug-ins** button; most probably the `org.apache.xmlrpc` plug-in will complain about `javax.xml.bind`; either install it, or disable the plug-in; validate again and disable a few more plug-ins (`org.eclipse.mylyn.bugzilla.core`, `org.eclipse.mylyn.bugzilla.ui`, `org.eclipse.mylyn.builds.ui`, `org.eclipse.mylyn.commons.xmlrpc`, `org.eclipse.mylyn.hudson.ui`).
  * Tab: **Arguments**
    * Program arguments:
      * `-consoleLog`
      * `-debug` `.../GNU\ MCU\ Eclipse/Eclipse\ Workspaces/debug.options`
    * VM arguments:
      * `-ea` (to enable assertions)
      * `-Dorg.eclipse.swt.internal.carbon.smallFonts` (only on macOS)
      * `-Xdock:icon=../Resources/Eclipse.icns`
    * enable **Use the -XstartOnFirstThread argument when launching with SWT**
  * click the **Apply** button
  * click the **Debug** button

Be sure the target platform is the Running Platform, otherwise starting the debug session fails.

## Debug options

as seen before, the debug options are grouped in a file and passed to Eclipse using the `-debug <name>` option.

## Plug-ins cache

When starting debug sessions from within Eclipse, a copy of the run-time is kept under 

```
${workspace_loc}/.metadata/.plugins/org.eclipse.pde.core/Eclipse GNU MCU Plug-ins
```

For unknown reasons, some changes in the source code (like changing properties files) do not trigger a rebuild, and it is normally not possible to test these changes.

The workaround I found was to remove this folder, and Eclipse will recreate it before the next run.

## Debug with CDT sources

A more elaborated configuration is required when willing to run debug sessions using CDT source files from the Git repository, for example to debug issues inside CDT.

Clone the CDT repository:

```
git clone git://git.eclipse.org/gitroot/cdt/org.eclipse.cdt.git org.eclipse.cdt.git
```

Create a new working set named **CDT**

* in the Package Explorer view, click the down pointing triangle, 
* select **Configure Working Sets...** 
  * click the **New...** button
  * select the Resource category
  * fill in the **Working set name:** with CDT
  * click the **Finish** button
  * click the **OK** button
  
Import all CDT projects

* in the _Eclipse_ menu → **File** → **Import...** → General → **Existing Projects into Workspace**
* click the **Next >** button
* browse for the `org.eclipse.cdt.git` folder
* deselect some projects selected
* enable **Add projects(s) to working set** and enter CDT
* click the **Finish** button

Create a new debug configuration

* in the _Eclipse_ menu → **Run** → **Debug Configurations...**
* duplicate 'Eclipse GNU MCU Plug-ins' into 'Eclipse GNU MCU Plug-ins with CDT'
* click the **Add Working Sets..** 
  * select the CDT set
  * click the **OK** button
* using the **Validate Plug-ins** button, disable unwanted plug-ins until the validation passes
* click the **Apply** button
* click the **Debug** buton to start a debug session
