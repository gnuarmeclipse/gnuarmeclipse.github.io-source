---
layout: page
permalink: /developer/eclipse-runtime-preferences/
title: How Eclipse runtime preferences and defaults work
author: Liviu Ionescu

date: 2015-09-10 18:37:00
last_modified_at: 2015-09-10 18:37:00

---

## Contents
* [Overview](#overview)
* [Multiple APIs](#multiple-apis)
* [Scopes](#scopes)
* [Eclipse preferences](#eclipse-preferences)
* [JFace preferences](#jface-preferences)
* [Persistent stores](#persistent-stores)
* [Defaults](#defaults)
* [Windows path syntax](#windows-path-syntax)
* [References](#references)

Overview
--------

Runtime preferences are key/value pairs used for two purposes:

-   to store persistent values (r/w)
-   to define defaults (r/o)

Multiple APIs
-------------

Accessing preferences is somehow confusing due to the existence of two APIs:

-   the Eclipse preferences
    -   [IPreferencesService](http://help.eclipse.org/luna/index.jsp?topic=%2Forg.eclipse.platform.doc.isv%2Freference%2Fapi%2Forg%2Feclipse%2Fcore%2Fruntime%2Fpreferences%2FIPreferencesService.html) and
    -   [IEclipsePreferences](http://help.eclipse.org/luna/index.jsp?topic=%2Forg.eclipse.platform.doc.isv%2Freference%2Fapi%2Forg%2Feclipse%2Fcore%2Fruntime%2Fpreferences%2FIEclipsePreferences.html), which extends [OSGi Preferences](http://www.osgi.org/javadoc/r4v42/org/osgi/service/prefs/Preferences.html)
-   the JFace preferences
    -   [IPreferenceStore](http://help.eclipse.org/luna/index.jsp?topic=%2Forg.eclipse.platform.doc.isv%2Freference%2Fapi%2Forg%2Feclipse%2Fjface%2Fpreference%2FIPreferenceStore.html)

The Eclipse preferences are hierarchical, while the JFace preferences are flat.

Scopes
------

There are 4 preference scopes, derived from [IScopeContext](http://help.eclipse.org/luna/index.jsp?topic=%2Forg.eclipse.platform.doc.isv%2Freference%2Fapi%2Forg%2Feclipse%2Fcore%2Fruntime%2Fpreferences%2FIScopeContext.html):

-   **project** - [ProjectScope](http://help.eclipse.org/luna/topic/org.eclipse.platform.doc.isv/reference/api/org/eclipse/core/resources/ProjectScope.html) /project/$(projectName)/$(qualifier)
-   **instance** (workspace) - [InstanceScope.INSTANCE](http://help.eclipse.org/luna/topic/org.eclipse.platform.doc.isv/reference/api/org/eclipse/core/runtime/preferences/InstanceScope.html) /instance/$(qualifier)
-   **configuration** (Eclipse) - [ConfigurationScope.INSTANCE](http://help.eclipse.org/luna/topic/org.eclipse.platform.doc.isv/reference/api/org/eclipse/core/runtime/preferences/ConfigurationScope.html) /configuration/$(qualifier)
-   **default** (plug-in or feature) - [DefaultScope.INSTANCE](http://help.eclipse.org/luna/topic/org.eclipse.platform.doc.isv/reference/api/org/eclipse/core/runtime/preferences/DefaultScope.html) /default/$(qualifier)

The default preference search look-up order as defined by the platform is: project, instance, configuration, default.

Eclipse preferences
-------------------

The Eclipse preferences can be access either directly through their specific scopes, or generically via a lookup that will try several scopes in a certain order.

### Generic access

It is recommended that reading preferences be done generically, to access multiple scopes:

    IProject project;

    IScopeContext[] contexts;
    if (project != null) {
        contexts = new IScopeContext[] { new ProjectScope(project),
                InstanceScope.INSTANCE, ConfigurationScope.INSTANCE,
                DefaultScope.INSTANCE };
    } else {
        contexts = new IScopeContext[] { InstanceScope.INSTANCE,
                ConfigurationScope.INSTANCE, DefaultScope.INSTANCE };
    }

    String value = null;

    for (int i = 0; i < contexts.length; ++i) {
        value = contexts[i].getNode(Activator.PLUGIN_ID).get(id, null);

        if (value != null) {
            value = value.trim();

            if (!value.isEmpty()) {
                break;
            }
        }
    }

    if (value != null) {
        return value;
    }

### Direct access

For writing preferences, it is recommended to access directly the specific scope:

    Preferences preferences = new ProjectScope(project).getNode(Activator.PLUGIN_ID);
    preferences.put(id, value);
    preferences.flush();

    Preferences preferences = InstanceScope.INSTANCE.getNode(Activator.PLUGIN_ID);
    preferences.put(id, value);
    preferences.flush();

    Preferences preferences = ConfigurationScope.INSTANCE.getNode(Activator.PLUGIN_ID);
    preferences.put(id, value);
    preferences.flush();


Without an explicit **preferences.flush()**, the file is written when Eclipse quits.

Defaults can also be accessed directly:

    Preferences preferences = DefaultScope.INSTANCE.getNode(Activator.PLUGIN_ID);
    String value = preferences.get(id, defaultValue);

JFace preferences
-----------------

The JFace preferences are a slightly simpler alternative to access a scoped, but flat preferences space.

IPreferenceStore are used by the objects included in the Preferences pages.

The plug-in preferences store by default points to the InstanceScope:

    IPreferenceStore store = Activator.getInstance().getPreferenceStore();
    int i = store.getInt("...");
    String s = store.getString("...");

This translates loosely to a [ScopedPreferenceStore](http://help.eclipse.org/luna/index.jsp?topic=%2Forg.eclipse.platform.doc.isv%2Freference%2Fapi%2Forg%2Feclipse%2Fui%2Fpreferences%2FScopedPreferenceStore.html) with an InstanceScope with a node that matches the plug-in bundle.id.

    IPreferenceStore store = new ScopedPreferenceStore(InstanceScope.INSTANCE, Activator.PLUGIN_ID);

For the Eclipse scope, use:

    IPreferenceStore store = new ScopedPreferenceStore(ConfigurationScope.INSTANCE, Activator.PLUGIN_ID);

For the project scope, use:

    IPreferenceStore store = new ScopedPreferenceStore(new ProjectScope(project), Activator.PLUGIN_ID);

Persistent stores
-----------------

Persistent stores are r/w files where preference values are saved.

Stores are specific to scopes:

-   project
-   instance (workspace)
-   configuration (Eclipse)

The file format is similar to that used for Java properties:

    eclipse.preferences.version=1
    pluginId/key=value
    ...

When using the IPreferencesService, multiple intermediate nodes can be inserted:

    eclipse.preferences.version=1
    pluginId/nodeId/key=value
    ...

### Project store

The project preferences are stored in a file below the project .settings folder:

     project/.settings/<pluginId>.prefs

### Instance (workspace) store

The workspace preferences are stored is in a separate file named after the plug-in ID:

    workspace/.metadata/.plugins/org.eclipse.core.runtime/.settings/<pluginId>.prefs

### Configuration (Eclipse) store

The Eclipse preferences are stored is in a separate file named after the plug-in ID:

    eclipse/configuration/.settings/<pluginId>.prefs

Defaults
--------

Defaults are preference values used to initialise various variables.

Defaults are loaded into internal structures during Eclipse init and plug-in start-up, from several sources (see org.eclipse.core.internal.preferences.DefaultPreferences):

-   command line -pluginCustomization (highest priority)
-   product preferenceCustomization.ini
-   plug-in preferences.ini
-   AbstractPreferenceInitializer (lowest priority)

### In Eclipse startup options

The file containing various defaults can be passed to the Eclipse when started, either as a command line or in config.ini:

-   Eclipse command line option:

	-pluginCustomization <location>

-   in config.ini

	eclipse.pluginCustomization=<location>

the file system location of a properties file containing default settings for plug-in preferences. These default settings override default settings specified in the primary feature. Relative paths are interpreted relative to the current working directory for Eclipse itself.

The properties will refer to values from multiple plug-ins; this requires that each line must mention the plug-in, a '/' separator and the key/value:

    org.eclipse.cdt.debug.core/org.eclipse.cdt.debug.corecDebug.default_expression_format=4

### As product defaults

Any defaults, for any plug-in, can be defined in the product related file, like:

    <property name="preferenceCustomization" value="plugin_customization.ini" />

The syntax for the properties is the same as above, plugin/key=value.

### As plug-in defaults

Defaults can also be defined in the plug-in folder, as **preferences.ini**.

The scope of these properties is the current plug-in; the syntax of this file requires only the key/value, no plug-in id.

    flashDeviceName=STM32F407VG

### In code

To set the default values for preferences use the extension point **org.eclipse.core.runtime.preferences**.

    public class MyInitializer extends AbstractPreferenceInitializer {

      public MyInitializer() {
      }

      @Override
      public void initializeDefaultPreferences() {
        IPreferenceStore store = Activator.getInstance().getPreferenceStore();
        store.setDefault("key", "value");
      }
    }

### Access to defaults

Access to defaults is generally done through the **IPreferencesService** interface, as the last resort when the preference is not found in other scopes.

For example, to lookup an integer preference value for your plug-in, use:

    Platform.getPreferencesService().getInt(Activator.PLUGIN_ID, preferenceKey, defaultValue, null);

Direct access to defaults is also possible via the DefaultScope.

    Preferences preferences = DefaultScope.INSTANCE.getNode(Activator.PLUGIN_ID);
    String value = preferences.get(preferenceKey, defaultValue);

Windows path syntax
-------------------

A word of cautions on Windows: the path may be defined either in the portable way, with forward slashes, or, if you prefer (the brain damaged MS-DOS syntax with) backslashes, they must be escaped by a second backslash (for Java, C and other portable environments, the backslash is used to define special characters, like \\n, or to escape the next character). For example, the following definitions are equivalent:

    default.path.1287942917=${eclipse_home}/../gcc/bin
    default.path.1287942917=${eclipse_home}\\..\\gcc\\bin

References
----------

For more details:

-   [Runtime preferences (IPreferencesService)](http://help.eclipse.org/luna/index.jsp?topic=%2Forg.eclipse.platform.doc.isv%2Fguide%2Fruntime_preferences.htm)
-   [Runtime preferences](http://help.eclipse.org/luna/index.jsp?topic=%2Forg.eclipse.platform.doc.isv%2Freference%2Fmisc%2Fruntime-options.html&cp=2_1_3_0)
-   [Runtime preferences guide](http://help.eclipse.org/luna/index.jsp?topic=%2Forg.eclipse.platform.doc.isv%2Fguide%2Fruntime_preferences.htm&cp=2_0_3_2)
-   [Vogela: Eclipse Preferences - Tutorial](http://www.vogella.com/tutorials/EclipsePreferences/article.html)