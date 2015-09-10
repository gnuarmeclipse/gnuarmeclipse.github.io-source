---
layout: page
permalink: /developer/eclipse/tips-tricks/
title: Eclipse tips & tricks
author: Liviu Ionescu

date: 2015-09-10 20:54:00
last_modified_at: 2015-09-10 22:58:00

---

## Contents 
* [Find project from configuration](#find-project-from-configuration)
* [Display a message box from a non-UI thread](#display-a-message-box-from-a-non-ui-thread)
* [Run code in UI thread](#run-code-in-ui-thread)
* [Generate an unpacked plug-in](#generate-an-unpacked-plug-in)
* [Get the path of folder where Eclipse is installed](#get-the-path-of-folder-where-eclipse-is-installed)
* [Get the path of a resource in another plug-in](#get-the-path-of-a-resource-in-another-plug-in)
* [Template shared defaults](#template-shared-defaults)
* [Custom default files](#custom-default-files)
* [Global markers](#global-markers)
* [Configuration folders within PDE](#configuration-folders-within-pde)

## Find project from configuration

    IConfiguration config;
    IProject project = (IProject) config.getManagedProject().getOwner();

## Display a message box from a non-UI thread

The JFace MessageDialog is prefered over SWT MessageBox (which is extremely ugly on some platforms).

    class ErrorMessageDialog implements Runnable {

        public int retCode = 0;

        @Override
        public void run() {
            String[] buttons = new String[] { "Retry", "Ignore", "Abort" };
            MessageDialog dialog = new MessageDialog(shell,
                    "Read error", null, sourceUrl.toString() + "\n"
                            + e.getMessage(), MessageDialog.ERROR,
                    buttons, 0);
            retCode = dialog.open();
        }
    }

    ErrorMessageDialog messageDialog = new ErrorMessageDialog();
    Display.getDefault().syncExec(messageDialog);

    if (messageDialog.retCode == 2) {
        throw e; // Abort
    } else if (messageDialog.retCode == 1) {
        return false; // Ignore
    }

## Run code in UI thread

To schedule execution of a piece of code in the UI thread:

    Display.getDefault().asyncExec(new Runnable() {
        public void run() {
            // Do something
        }
    });

## Generate an unpacked plug-in

If you need to access files from another plug-in, you need to leave it unpacked:

For this add the following line to MANIFEST.MF file:

    Eclipse-BundleShape: dir

## Get the path of folder where Eclipse is installed

    URL url = Platform.getInstallLocation().getURL();
    IPath path = new Path(url.getPath());

## Get the path of a resource in another plug-in

If you need to access files from another plug-in, you need to get the absolute path:

    Bundle bundle = Platform.getBundle(bundleId);
    URL url = FileLocator.find(bundle, new Path(relativePath), null);
    String location;
    try {
        location = FileLocator.resolve(url).getPath();
    } catch (IOException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }

## Template shared defaults

    value = SharedDefaults.getInstance().getSharedDefaultsMap().get(id);

The store requires an update action:

    SharedDefaults.getInstance().updateShareDefaultsMap(SharedDefaults.getInstance().getSharedDefaultsMap());

The preferences are stored in a file name **shareddefaults.xml** located in the workspace:

    workspace/.metadata/.plugins/org.eclipse.cdt.core/shareddefaults.xml

## Custom default files

Deprecated: since this is not exactly standard and leads to many small files, it will be migrated to regular preferences.

The preferences are stored in separate files, stored in separate folders named after the plug-in ID:

    eclipse/configuration/<plug-in-id>/name.prefs

    URL url = Platform.getInstallLocation().getURL();

    IPath path = new Path(url.getPath());
    File file = path.append("configuration")
            .append(Activator.PLUGIN_ID).append(TOOLCHAIN).toFile();
    InputStream is = new FileInputStream(file);

    Properties prop = new Properties();
    prop.load(is);
    ...
    return prop.getProperty(property, "").trim();

## Global markers

To create a marker that has global scope (not associated with any specific resource), you can use the workspace root (IWorkspace.getRoot()) as the resource.

    public static void reportInfo(String message) {
    try {
      IMarker marker = ResourcesPlugin.getWorkspace().getRoot()
                .createMarker(IMarker.PROBLEM);
      marker.setAttribute(IMarker.MESSAGE, message);
      marker.setAttribute(IMarker.SEVERITY, IMarker.SEVERITY_INFO);
      marker.setAttribute(IMarker.LOCATION, "-");
      } catch (CoreException e) {
        System.out.println(message);
      }
    }

## Configuration folders within PDE

When PDE launches a new instance of Eclipse from a debug session, each launch configuration gets a configuration folder:

    ./metadata/.plugins/org.eclipse.pde.core/<launch-name>/