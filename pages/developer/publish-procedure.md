---
layout: page
permalink: /developer/publish-procedure/
title: How to publish the plug-ins?
author: Liviu Ionescu

date: 2015-09-10 21:07:00 +0300

---

The plug-ins are published both as update sites (on SourceForge, as an Eclipse update site, with multiple mirrors) and as archives (on GitHub as [Releases](https://github.com/gnuarmeclipse/plug-ins/releases)).

The reason SourceForge is still used is that GitHub does not provide a convenient way to publish an Eclipse update site.

## Publish on the SourceForge test site

After each new build, to allow testing on various platforms, the plug-ins are published on the test site.

For this, run the `scripts/publish-updates-test.command` (this is a script that can be executed directly in the macOS Finder).

A typical session looks like:

    $ /Users/ilg/My\ Files/MacBookPro\ Projects/GNU\ ARM\ Eclipse/gnuarmeclipse-se.git/scripts/publish-updates-test.command ; exit;
    Updating Eclipse/updates-test
    Rsync-ing SourceForge Eclipse/updates-test site (-vrCt --exclude=scripts --exclude=.* --delete --checksum)
    Password:
    building file list ... done
    deleting features/ilg.gnuarmeclipse.templates.stm_2.3.1.201507311003.jar
    deleting features/ilg.gnuarmeclipse.templates.freescale_2.2.6.201507311003.jar
    deleting features/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201507311003.jar
    deleting features/ilg.gnuarmeclipse.packs_2.2.2.201507311003.jar
    deleting features/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201507311003.jar
    deleting features/ilg.gnuarmeclipse.doc.user_1.1.1.201507311003.jar
    deleting features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.1.201507311003.jar
    deleting features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201507311003.jar
    deleting features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201507311003.jar
    deleting features/ilg.gnuarmeclipse.codered_1.1.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.templates.stm_2.3.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.templates.freescale_2.2.6.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.templates.core_2.4.2.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.packs_1.2.3.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.managedbuild.packs_1.2.2.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.core_2.9.1.201507311003.jar
    deleting plugins/ilg.gnuarmeclipse.codered_1.1.1.201507311003.jar
    ./
    artifacts.jar
    content.jar
    features/
    features/ilg.gnuarmeclipse.codered_1.1.1.201508011813.jar
    features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201508011813.jar
    features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201508011813.jar
    features/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.1.201508011813.jar
    features/ilg.gnuarmeclipse.doc.user_1.1.1.201508011813.jar
    features/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201508011813.jar
    features/ilg.gnuarmeclipse.packs_2.2.2.201508011813.jar
    features/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201508011813.jar
    features/ilg.gnuarmeclipse.templates.freescale_2.2.6.201508011813.jar
    features/ilg.gnuarmeclipse.templates.stm_2.3.1.201508011813.jar
    plugins/
    plugins/ilg.gnuarmeclipse.codered_1.1.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.core_2.9.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.debug.core_1.2.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_3.2.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_3.2.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.debug.gdbjtag.qemu_2.1.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.3.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.debug.gdbjtag_2.2.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.debug.packs_1.1.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.doc.user_1.1.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.managedbuild.cross_1.14.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.managedbuild.packs_1.2.2.201508011813.jar
    plugins/ilg.gnuarmeclipse.packs.core_1.1.2.201508011813.jar
    plugins/ilg.gnuarmeclipse.packs.data_1.2.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.packs.ui_1.2.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.packs_1.2.3.201508011813.jar
    plugins/ilg.gnuarmeclipse.templates.core_2.4.2.201508011813.jar
    plugins/ilg.gnuarmeclipse.templates.cortexm_1.2.6.201508011813.jar
    plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.2.1.201508011813.jar
    plugins/ilg.gnuarmeclipse.templates.freescale_2.2.6.201508011813.jar
    plugins/ilg.gnuarmeclipse.templates.stm_2.3.1.201508011813.jar

    sent 5124827 bytes  received 890 bytes  330691.42 bytes/sec
    total size is 5120410  speedup is 1.00
    Published on the test site.
    ilg.gnuarmeclipse.repository-2.9.1-SNAPSHOT.zip -> /Users/ilg/My Files/MacBookPro Projects/GNU ARM Eclipse/archive/ilg.gnuarmeclipse.repository-2.9.1-201508011813.zip
    When final, don't forget to publish the archive too!
    It is available from /Users/ilg/My Files/MacBookPro Projects/GNU ARM Eclipse/archive/ilg.gnuarmeclipse.repository-2.9.1-201508011813.zip
    Install new software from http://gnuarmeclipse.sourceforge.net/updates-test
    logout

    [Process completed]

## Install on a separate Eclipse

Test if the new build can be used as an update site, by installing from updates-test on a separate Eclipse (not the one used for development).

## Update the Change log

Scan the Git log and add new entries to the [Change log]({{ site.baseurl }}/developer/change-log/) (pages/developer/change-log.md), grouped by days.

    git log --pretty='%cd * %s' --since 2015-06-24 --reverse --date=short >~/Desktop/ChangeLog.txt

Add an entry with the latest feature & plug-in versions, copied from the publish script output.

## Prepare a new blog post to announce the release

Add a new file to the `_posts/plugins/releases`.

Name the post like: *Release v2.9.3 201508190739*, title: *Version 2.2.1-201404120702 released*.

The structure of the post should contain:

* date, as _Aug 1, 2015_ (italics)
* one intro paragraph with the summary of the changes
* a link to `[Binary files »]()`, currently empty, to be filled with the release URL
* headers like:

```
## New features
## Addressed bugs
## Template issues
## Other changes
## Known problems
```

An example would be the [2.9.1](https://github.com/gnuarmeclipse/plug-ins/wiki/Release-v2.9.1-201508011813) announcement.

Scan the [GitHub Issues](https://github.com/gnuarmeclipse/plug-ins/issues) and the [SourceForge trackers](https://sourceforge.net/p/gnuarmeclipse/_list/tickets) and add references to all tracked issues.

Close issues on the way. Refer to them as **[Issue:#22]**. For SourceForge, refer to them as **[bugs:#98]**, **[feature-requests:#60]**, **[support-requests:#81]**.

## Update the Web

* Jekyll build the **gnuarmeclipse.github.io-source** project
* Git Push & Sync the **gnuarmeclipse.github.io-source** project
* Git Push & Sync the **gnuarmeclipse.github.io** project

## Publish on the main SourceForge updates site

When all ready, run the `scripts/publish-updates.command`:

    ilg-mbp:~ ilg$ /Users/ilg/My\ Files/MacBookPro\ Projects/GNU\ ARM\ Eclipse/gnuarmeclipse-se-git/scripts/publish-updates.command ; exit;
    Do you really want to publish? (Yes)? Yes
    Updating Eclipse/updates
    Rsync-ing SourceForge Eclipse/updates site
    Password:
    building file list ... done
    deleting features/ilg.gnuarmeclipse.templates.stm_1.6.1.201401111229.jar
    deleting features/ilg.gnuarmeclipse.managedbuild.cross_1.7.1.201401111229.jar
    deleting features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.2.1.201401111229.jar
    deleting plugins/ilg.gnuarmeclipse.templates.stm_1.6.1.201401111229.jar
    deleting plugins/ilg.gnuarmeclipse.templates.core_1.1.1.201401111229.jar
    deleting plugins/ilg.gnuarmeclipse.managedbuild.cross_1.7.1.201401111229.jar
    deleting plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.2.1.201401111229.jar
    ./
    artifacts.jar
    content.jar
    features/
    features/ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.4.1.201402140758.jar
    features/ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.1.1.201402140758.jar
    features/ilg.gnuarmeclipse.managedbuild.cross_1.8.1.201402140758.jar
    features/ilg.gnuarmeclipse.templates.freescale_1.2.1.201402140758.jar
    features/ilg.gnuarmeclipse.templates.stm_1.7.1.201402140758.jar
    features/org.eclipse.cdt.cross.arm.gnu_0.5.5.201310221100.jar
    plugins/
    plugins/ilg.gnuarmeclipse.debug.gdbjtag.jlink_1.4.1.201402140758.jar
    plugins/ilg.gnuarmeclipse.debug.gdbjtag.openocd_1.1.1.201402140758.jar
    plugins/ilg.gnuarmeclipse.debug.gdbjtag.restart_1.1.1.201402140758.jar
    plugins/ilg.gnuarmeclipse.managedbuild.cross_1.8.1.201402140758.jar
    plugins/ilg.gnuarmeclipse.templates.core_1.2.1.201402140758.jar
    plugins/ilg.gnuarmeclipse.templates.freescale.pe_1.1.2.201402140758.jar
    plugins/ilg.gnuarmeclipse.templates.freescale_1.2.1.201402140758.jar
    plugins/ilg.gnuarmeclipse.templates.stm_1.7.1.201402140758.jar
    plugins/org.eclipse.cdt.cross.arm.gnu_0.5.5.201310221100.jar

    sent 3926827 bytes  received 1714 bytes  270933.86 bytes/sec
    total size is 3999834  speedup is 1.02
    Published on the main site.
    logout

    [Process completed]

Do not close the terminal before copy/paste the list to the ChangeLog page!.

## Clean the mess in the local archive folder

-   go to **.../GNU ARM Eclipse/archive**
-   move the latest archive to **releases/plug-ins**
-   move the other archives to **internal**

## Push the develop branch

* in SourceTree, switch to the **develop** branch
* push the **develop** branch to GitHub

## Create a new GitHub release

* be sure the **develop** branch is up to date and set as default
* go to the [GitHub Releases](https://github.com/gnuarmeclipse/plug-ins/releases) page
* click **Draft a new release**
* name the tag like **v2.9.3-201508190739**
* select the **develop** branch
* name the release like **GNU ARM Eclipse plug-ins v2.9.3-201508190739**
* as description, copy the first paragraph from the Web release page
* add a link to the Web page `[Continue reading »]()`
* get URL from web and update the above link
* attach binaries (drag and drop from the archives folder will do it)
* click the **Publish Release** button

Note: at this moment the system should send a notification to all clients watching this project.

## Publish on SourceForge

* go to [SourceForge Files](http://sourceforge.net/projects/gnuarmeclipse/files/Current%20Releases/)
* select the folder corresponding to the latest version (currently **3.x**); create a new one if necessary
* click the **Add File** button
* drag and drop the file (for example ilg.gnuarmeclipse.repository-3.1.1-201606210758.zip) in the upload window and click the **Upload** button
* click the **Done** button
* check it the new file was published; click the info icon
* enable the **Windows**, **macOS** and **Linux** buttons
* after a while the new upload will be marked as latest version

## Share on Facebook

* go to the new post and follow the Share link.
* DO NOT select **On your own Timeline**, but **On a Page you manage**
* select GNU ARM Eclipse
* posting as GNU ARM Eclipse
* click **Share link**
* check the post in the [Facebook page](https://www.facebook.com/gnuarmeclipse)

## Update the Eclipse Marketplace records

* go to [Eclipse Marketplace](https://marketplace.eclipse.org/content/gnu-arm-eclipse)
* log in
* click **Edit**
* update version number, minimum Eclipse versions.

## Merge develop into master

* in SourceTree, switch to the **master** branch
* merge the **develop** branch into **master**
* switch to **develop**
* push both branches to GitHub.
