---
layout: page
permalink: /eclipse/project/portability/
title: Project portability
author: Liviu Ionescu

date: 2015-09-11 22:12:00
last_modified_at: 2015-09-11 23:51:00

---

## Goal

In short, a portable project is a project that can be used without changes on any workspace on any platform.

## What this means?

In practical terms, for a project to be portable, this means that all Eclipse configuration files (mainly .cproject, but possibly other files, like debug launch configurations), should not contain references to resource described via absolute paths, or assume fixed locations for resources that can be installed on different locations on different platforms, or use programs that have different names on different platform, etc.

## Collaborative scenario

To fully understand the importance of this issue, imagine a team of programmers collaboratively working on a project and sharing the sources via a common repository. Except extremely strict organisations, developers tend to have their own preferences which also affect their choices for different development platforms (Windows, OS X, GNU/Linux). If everything else can be configured to be more or less identical on all platforms, it happens quite often the path to the toolchain to be different on each platform. Storing the actual toolchain path in the project configuration (shared via the repository), leads to non-portable projects, since always the last commit to the repository will update the path to the one used by the most recent contributor. This will certainly make all other developers unhappy, since after synchronising with the repository, they must manually update the path back to their own location.

## Things to observe for project portability

### Toolchain path

The toolchain path is the classical example of detail that can ruin project portability. Starting with version 2.x, the GNU ARM Eclipse cross build plug-in does not store any toolchain path in .cproject, and does not use such a path; all details related to the toolchain path are stored in the Eclipse workspace, to each toolchain is associated one path, and eventually, for special configurations, for each project can be associated one path. For more details see the separate [Toolchain path management][1] page.

### Include paths

The second common mistake that can compromise project portability is to add absolute references to folders where to search for the include files.

The recommended method to enter include path referring to local project folders is to use relative paths.

![Define relative include paths.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/IncludePath.png)


In most usual cases CDT is smart enough to know the environment where the build process is executed, to properly process these paths. For example when the build is started in the default Debug or Release folders, the actual paths to the include folders is one step up, so it is automatically prefixed with `../`.

![Use of relative include paths.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/UseRelativePaths.png)

An alternative solution is to use the CDT predefined macros, to create paths relative either to the current project folder, with ${ProjDirPath},

![Use ProjDirPath for include paths.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/UseProjDirPath.png)

or something like `${workspace_loc:/other_proj/libs/misc/include}` relative to any project in the workspace.

### Linker script files

Similar solutions can be considered for entering linker scripts. The recommended method is to enter the script names without any path

![Add script files by simple names.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/ScriptFiles.png)

and to define the path to the folder where they are located (usually named **ldscripts**).

![Enter location for linker scripts.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/ldscriptsFolder.png)

As for the include paths, CDT is smart enough to make this definition relative to the build folder:

![Relative linker scripts folder.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/ldscriptsUsage.png)

Alternate solutions are to use paths relative to ${ProjDirPath} or ${workspace_loc}.

### Library paths

Another equally important mistake can be to use absolute paths in the linker configuration, used to search for libraries.

Definitions are similar to the ones explained above for the location of the linker scripts.

### Debug launch configuration

The Eclipse debugging system can be configured to store the debug launch configurations either in a common place in workspace, or in each project. In the later case, special care must be considered to avoid using non-portable definitions, like GDB Server name, command line options, etc.

 [1]: /blog/toolchain-path/ "Toolchain path management"