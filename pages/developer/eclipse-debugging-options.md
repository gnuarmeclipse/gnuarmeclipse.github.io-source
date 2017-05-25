---
layout: page
permalink: /developer/eclipse/debugging-options/
title: Eclipse debugging options
author: Liviu Ionescu

date: 2015-09-10 18:33:00 +0300

---

## Start Eclipse in debugging mode

To start Eclipse with all tracing messages enabled, add `-debug <file>` to the command line:

```
.../Eclipse.app/Contents/MacOS/eclipse -debug https://github.com/gnuarmeclipse/plug-ins/raw/develop/debug.options
```

Alternatively, you can copy the file locally, edit it and point Eclipse to it:

```
.../Eclipse.app/Contents/MacOS/eclipse -debug ${HOME}/tmp/debug.options
```

For convenience, you can also copy into the file as `.options` Eclipse folder (for example as `Eclipse.app/Contents/MacOS/.options`) and start Eclipse without the file name:

```
.../Eclipse.app/Contents/MacOS/eclipse -debug
```

## How Eclipse tracing works?

Individual Eclipse plug-ins check various properties to display debugging trace messages.

### Default debug values

The properties not defined in the file given to `-debug` (or in Eclipse `.options`) default to the values defined in **.options** files located in each plug-in folder (generally set to `false`).

```
org.eclipse.cdt.core/debug=false

# ASTCache debugging
org.eclipse.cdt.core/debug/ASTCache=false
```

### Programatic access

The actual values of the debug options are programatically available via:

```java
String Platform.getDebugOption(String name);
```

Example:

```java
private static final boolean DEBUG = "true".equalsIgnoreCase(Platform.getDebugOption("org.eclipse.cdt.core/debug/ASTCache"));
...
if (DEBUG) {
    System.out.println("message");
}
```
