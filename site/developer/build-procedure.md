---
layout: page
permalink: /developer/build-procedure/
title: How to build the plug-ins?
author: Liviu Ionescu

date: 2015-09-10 20:22:00
last_modified_at: 2015-09-21 19:11:00

---

## Build

-   select the **ilg.gnuarmeclipse.parent** project
-   right click, select Run As → Maven install
-   wait a while for Maven to load all required modules

The result of a successful build looks like this:

    [INFO] --- tycho-p2-plugin:0.22.0:update-local-index (default-update-local-index) @ ilg.gnuarmeclipse.repository ---
    [INFO] ------------------------------------------------------------------------
    [INFO] Reactor Summary:
    [INFO]
    [INFO] GNU ARM Eclipse parent ............................ SUCCESS [  0.702 s]
    [INFO] GNU ARM Eclipse core .............................. SUCCESS [  3.971 s]
    [INFO] GNU ARM Eclipse debug core ........................ SUCCESS [  0.356 s]
    [INFO] GNU ARM Eclipse packages core ..................... SUCCESS [  0.482 s]
    [INFO] GNU ARM Eclipse managed build code ................ SUCCESS [  1.073 s]
    [INFO] GNU ARM Eclipse managed build feature ............. SUCCESS [  0.166 s]
    [INFO] GNU ARM Eclipse templates core .................... SUCCESS [  0.494 s]
    [INFO] GNU ARM Eclipse Cortex-M template ................. SUCCESS [  0.291 s]
    [INFO] GNU ARM Eclipse Cortex-M template feature ......... SUCCESS [  0.091 s]
    [INFO] GNU ARM Eclipse STM32Fx templates ................. SUCCESS [  1.639 s]
    [INFO] GNU ARM Eclipse STM32Fx templates feature ......... SUCCESS [  0.056 s]
    [INFO] GNU ARM Eclipse Freescale Kinetis templates ....... SUCCESS [  0.387 s]
    [INFO] GNU ARM Eclipse Freescale PEx template ............ SUCCESS [  0.360 s]
    [INFO] GNU ARM Eclipse Freescale templates feature ....... SUCCESS [  0.078 s]
    [INFO] GNU ARM Eclipse GDB debug ......................... SUCCESS [  2.039 s]
    [INFO] GNU ARM Eclipse J-Link debug ...................... SUCCESS [  1.070 s]
    [INFO] GNU ARM Eclipse debugger Restart button ........... SUCCESS [  0.292 s]
    [INFO] GNU ARM Eclipse J-Link debug feature .............. SUCCESS [  0.121 s]
    [INFO] GNU ARM Eclipse OpenOCD debug ..................... SUCCESS [  0.467 s]
    [INFO] GNU ARM Eclipse OpenOCD debug feature ............. SUCCESS [  0.076 s]
    [INFO] GNU ARM Eclipse QEMU debug ........................ SUCCESS [  0.519 s]
    [INFO] GNU ARM Eclipse QEMU debug feature ................ SUCCESS [  0.116 s]
    [INFO] GNU ARM Eclipse packages data ..................... SUCCESS [  0.478 s]
    [INFO] GNU ARM Eclipse debug packs ....................... SUCCESS [  0.275 s]
    [INFO] GNU ARM Eclipse packages .......................... SUCCESS [  0.228 s]
    [INFO] GNU ARM Eclipse packages UI ....................... SUCCESS [  0.593 s]
    [INFO] GNU ARM Eclipse managed build packs ............... SUCCESS [  0.415 s]
    [INFO] GNU ARM Eclipse packages feature .................. SUCCESS [  0.088 s]
    [INFO] GNU ARM Eclipse documentation ..................... SUCCESS [  0.066 s]
    [INFO] GNU ARM Eclipse documentation feature ............. SUCCESS [  0.121 s]
    [INFO] GNU ARM Eclipse repository ........................ SUCCESS [  2.797 s]
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 43.950 s
    [INFO] Finished at: 2015-03-12T14:35:41+02:00
    [INFO] Final Memory: 105M/372M
    [INFO] ------------------------------------------------------------------------

## Debug

-   **Run** → **Debug Configurations**
  * select **Eclipse Application**
  * click **New**
    * Name: **Eclipse GNU ARM Plug-ins**
    * Location: ${workspace_loc}/../runtime-EclipseGNUARMPlug-ins
  * Tab: **Plug-ins**
    * Launch with: 'all workspace and enabled plug-ins'
  * Tab: **Arguments**
    * Program arguments: -consoleLog
    * VM arguments: **-ea** (to enable assertions)
  * click the **Apply** button
  * click the **Debug** button

The location of the new Eclipse folder is:

    ${workspace_loc}/.metadata/.plugins/org.eclipse.pde.core/Eclipse GNU ARM Plug-ins
