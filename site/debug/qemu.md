---
layout: page
permalink: /debug/qemu/
title: The QEMU debugging Eclipse plug-in
author: Liviu Ionescu

date: 2015-09-11 22:15:00
last_modified_at: 2015-09-21 18:52:00

---

## Quicklinks

If you already know what are the features of the new plug-in and just want to know how to install/use it, you can directly skip to:

* [QEMU install]({{ site.baseurl }}/qemu/install/)
* [QEMU plug-in usage]({{ site.baseurl }}/debug/qemu/#qemu-plug-in-usage)

## Why a new plug-in?

The short answer is: because a debugging plug-in provides the best integration of the emulator into the Eclipse debugger, making debugging in an emulated environment more convenient than on physical boards.

## Prerequisites

Before being able to use QEMU with the GNU ARM Eclipse plug-ins, you must separately install:

* the QEMU debugging plug-in
* the GDB debugger (client) application, as part of a GNU toolchain
* the GNU ARM Eclipse QEMU.

If you did not do it yet, please follow the instructions in the [QEMU install]({{ site.baseurl }}/qemu/install/) page and return when completed.

The presence of a GDB as part of a GNU toolchain is mandatory, and it is recommended that the version of the GDB client matches the toolchain. Generally only debugging .elf applications is possible, and these applications must be compiled to include GNU compatible debugging information (like dwarf).

## QEMU plug-in usage

### Define the QEMU folder location

Before starting work with QEMU, it is required to define the path to the QEMU folder.

* in the *Eclipse* menu, go to **Preferences** → **Run/Debug** **→** **QEMU**

  ![The QEMU preferences page]({{ site.baseurl }}/images/2015/04/QEMU_Preferences.png)

* click the **Restore Defaults** button
* the plug-in will suggest the default values computed when Eclipse started; if a new version of GNU ARM Eclipse QEMU was installed while Eclipse was active, restart Eclipse and click again the Restore Defaults button
* check the *Executable:* field; it must define the name of the QEMU executable; in most cases it should be already set correctly; if not, edit it to match the correct name;
* check the *Folder:* field; it must point to the actual folder where the GNU ARM Eclipse QEMU was installed on your system, for example `/Applications/GNU ARM Eclipse/QEMU` on OS X
* click the **OK** button

By default, the GDB server is defined as `${qemu_path}/${qemu_executable}`; these two macros are automatically set by the above preference page; for portability reasons, it is recommended to keep this definition in all your debug configurations, and also to have a single place to update the path when a new version of the GNU ARM Eclipse QEMU is released.

### Associate a device to the project

Although not absolutely mandatory, it is recommended to associate a device to the project, so that creating the debugger launch configuration will automatically fill-in the device name.

![Assigning a device to the project]({{ site.baseurl }}/images/2013/10/Devices.png)

Follow the steps in the separate page [Associate a device to the project]({{ site.baseurl }}/eclipse/project/assign-device/) and return to this page to continue.

### Create the debugger launch configuration

Being a standard debugger, this plug-in also uses the Eclipse standard method of creating debugger configurations for each application. After you successfully build your application, you can create a new debug configuration following these steps:

* select the project
* build it and ensure the executable file is available
* expand either the Debug or the Release folder and select the executable you want to debug
* in the *Eclipse* menu, go to **Run** → **Debug Configurations…** or select the down arrow at the right of the bug icon.

  ![The build result]({{ site.baseurl }}/images/2013/10/HelloBuildResult.png)

* double click the **GDB QEMU Debugging** group, or select it and click the top leftmost **New** button.

  ![Create a new QEMU launch configuration]({{ site.baseurl }}/images/2015/04/QEMU_Debugging.png)

* a multi-tab page will be displayed;
* if you started this procedure with the project selected and the project was previously built, the first tab, named **Main**, should be already filled in with the project name (for example hello) and the application file name and location (for example `Debug/hello.elf`).

  ![The Main tab]({{ site.baseurl }}/images/2015/04/HelloMainTab.png)

* click the second tab, named **Debugger**, which contains the configuration options required to start QEMU as a GDB server and the GDB client.

  ![The Debugger tab at first run]({{ site.baseurl }}/images/2015/04/HelloDebuggerTab.png)

* at your first run it is recommended to leave the Board name: field as it is, with a question mark, for the emulator to display the list of supported boards.
* although not mandatory, it is recommended to change the location where the launcher file is stored; for this,
  * select the **Common** tab,
  * set the *Save as:* field to **Shared file**
  * accept the current project name.
  * click the **Apply** button

  ![Store the debug configuration in the project]({{ site.baseurl }}/images/2015/04/HelloCommonTab.png)      

* click the **Close** button.

With the above settings, the debug configuration will be saved in the project, not in the workspace storage.

![The debug launch configuration stored in the project folder]({{ site.baseurl }}/images/2015/04/LauncherInProject.png)

## Start a debug session

With all the above steps completed properly, you can start the debug session:

* in the *Eclipse* menu, go to **Run** → **Debug Configurations...**
* if necessary, expand the** GDB QEMU Debugging** group
* select the newly defined **hello** configuration
* click the bottom **Debug** button

Alternatively, on subsequent runs, you can use the bug specific icon. By default this will start the previously used debug launch configuration; to start a different configuration, use the down arrow button:

![The debugger down arrow selection]({{ site.baseurl }}/images/2015/04/DebugDownArrow.png)

If everything is ok, after a few seconds required to start QEMU, you should see something like this:

![The list of supported boards]({{ site.baseurl }}/images/2015/04/QEMU_FirstRun.png)

This happened because by default the *Board name:* field contains a question mark.

Further configure the debug configuration

* in the *Eclipse* menu, go to **Run** → **Debug Configurations...**
* select **hello**
* select the **Debugger** tab
* in the *Board name:* field, enter **STM32-H103** (a popular Olimex STM32F103 board)
* in the Command line: field, after hello, add `3 2 1`, as an example

  ![The Debugger tab with the board name filled-in]({{ site.baseurl }}/images/2015/04/HelloDebuggerTabH103.png)

* click the Debug button

If everything is ok, after a few seconds required to start the server, to allow it to connect to the target, start the gdb client, download the application and start the debugging session, you should see something like this:

![The first debug]({{ site.baseurl }}/images/2015/04/HelloFirstDebug.png)

Be sure you enable the Remember my decision check box, otherwise Eclipse will ask this question each and every time you launch this debug configuration. Then click the **Yes** button.

If everything is ok, after a few seconds required to start QEMUt, start the gdb client, download the application and start the debugging session, you should see something like this:

![Breakpoint in main()]({{ site.baseurl }}/images/2015/04/BreakpointInMain.png)

Since the first breakpoint was set in the **Debugger** tab to **main**, the execution stopped right at the beginning of the `main()` function.

## Debug operations

Once the debug session started and execution stopped in the first breakpoint (by default set at the beginning of the `main()` function), you can perform any debug operation you need.

The most common operations are:

* single step over one source instruction (click the **Step Over** button)
* single step into the next function called (click the **Step Into** button)
* single step out of the current function (click the **Step Return** button)
* set breakpoints (click the grey side area at the left of the source lines)
* run (click the **Resume** button)
* halt a running program (click the **Suspend** button)
* inspect processor registers (use the **Registers** view)
* inspect memory (use the **Memory** view)

For more details please read the [Running and debugging projects](http://help.eclipse.org/luna/index.jsp?topic=%2Forg.eclipse.cdt.doc.user%2Ftasks%2Fcdt_t_debug_prog.htm) section in the Eclipse documentation.

## View consoles

Each debug process has a dedicated console, to display its standard output and standard error, or to get input for the standard input.

To see the console of any process, just select the process in the top left window. For example the QEMU console will initially look like this:

![The QEMU console]({{ site.baseurl }}/images/2015/04/QEMU_Console.png)

select again the main thread in the debugged application (in the upper left window) and click several times the Step Over button, until you reach the `timer_start()` function.

![Hello single steps]({{ site.baseurl }}/images/2015/04/HelloSingleSteps.png)

The QEMU console should display the program arguments, passed via semihosting, then exercise various output functions.

Click the **Resume** button and execution will resume. Watch the console. After three iterations, execution will complete and QEMU will quit with exit code 0 (success).

![Run the application to completion]({{ site.baseurl }}/images/2015/04/HelloFinalRun.png)

You can experiment with the first argument, which controls the number of iterations in the main loop; edit it to 7 and rerun the application.

## No GDB initialisation files loaded

For having a total control of the debugging session, the debugging plug-ins start the GDB client process with the `--nx` option, which prevents the execution of the commands found in any initialization file; none of the standard files (`system.gdbinit`, `~/.gdbinit`, `./.gdbinit`) are loaded.

To add more commands to the GDB initialisation sequence, use the _Commands:_ field in the _GDB Client Setup_ section.

All commands listed here are passed to the GDB client. By convention, commands prefixed with `mon` will be further passed from the GDB client to the GDB server, in this case the QEMU server.
