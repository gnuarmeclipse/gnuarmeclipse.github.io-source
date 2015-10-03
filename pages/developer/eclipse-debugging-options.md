---
layout: page
permalink: /developer/eclipse/debugging-options/
title: Eclipse debugging options
author: Liviu Ionescu

date: 2015-09-10 18:33:00 +0300

---

Eclipse plug-ins check various properties to display debugging trace messages.

The default properties are defined in **.options** files located in each plug-in folder.

    org.eclipse.cdt.core/debug=false

    # ASTCache debugging
    org.eclipse.cdt.core/debug/ASTCache=false

The debug options are available via:

    String Platform.getDebugOption(String name);

Example:

    private static final boolean DEBUG= "true".equalsIgnoreCase(Platform.getDebugOption("org.eclipse.cdt.core/debug/ASTCache"));
    ...
    if (DEBUG) {
      System.out.println("message");
    }
