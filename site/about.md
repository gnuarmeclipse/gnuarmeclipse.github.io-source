---
layout: page
permalink: /about/
title: About
author: Liviu Ionescu

date: 2015-09-10 19:45:00
last_modified_at: 2015-09-13 22:39:00

---

## Contents

* [The project](#the-project)
* [First edition](#first-edition)
* [Second edition](#second-edition)
* [Migration to GitHub](#migration-to-github)
* [PAD file](#pad-file)
* [Credits](#credits)
* [This site](#this-site)
* [The author](#the-author)


## The project

The **GNU ARM Eclipse plug-in** project was registered on [SourceForge](http://sourceforge.net/projects/gnuarmeclipse/) in November 2006, and initially included an XML only plug-in definition; although functional, it was somehow limited.

### First edition

The first fully functional edition of the plug-in (version 0.5.3) was announced in March 2009, when the plug-in was practically recreated, functionality was extended and more toolchains were supported. The Eclipse specifics, like adding a feature project and an update site project were also added.

### Second Edition

In September 2013, based on the Eclipse CDT and the new developments in ARM Toolchains, work on the second edition of the plug-in started, involving a major rewrite, inspired by the CDT Cross Compile plug-in.

In December 2013, new plug-ins were added to the project: the **STM32Fx templates** and an experimental version of the SEGGER J-Link hardware debugging plug-in.

At the same time, since the project is no longer about a single plug-in, but a family of plug-ins, the SourceForge project name was changed to plural: **GNU ARM Eclipse plug-ins**.

In February 2014, the version 2.x of the plug-ins family was published, bringing official debugging support, via **SEGGER J-Link** and **OpenOCD**. Templates for Freescale were also added.

In July 2014, the experimental version of the Packs plug-in was published, providing management support (list/install/uninstall/outline) for CMSIS Packs.

### Migration to GitHub

In August 2015 the project was migrated to [GitHub](https://github.com/gnuarmeclipse) and restructured as separate sub-projects. For a more stability over time, the blog and wiki sites hosted on the private livius.net server were migrate to the public GitHub Pages.

With this migration also the name was reduced to **GNU ARM Eclipse**.

## PAD file

The project [PAD file](http://en.wikipedia.org/wiki/Portable_Application_Description) is publically available [here](https://github.com/gnuarmeclipse/gnuarmeclipse/blob/develop/info/GNU_ARM_Eclipse_pad.xml).

Note: the current limitation of 120 characters for URLs prevents the GitHub release URLs to be published in PAD files.

## Credits

Many thanks to:

  * Wilfried Holzke who created this project and maintained versions prior to 0.5.3;
  * my good friend Dan Maiorescu, for his invaluable support during the design, development and testing of the plug-ins.

## This site

The first project wiki was created in August 2008 using the SourceForge hosted apps.

In early 2012, the Project Web was redesigned and the developer pages were moved from the SourceForge hosted apps to the Project web, as a MediaWiki site.

Unfortunately SourceForge introduced the policy of blocking outgoing traffic from the Project web pages, and managing WordPress and MediaWiki sites on SourceForge servers became unpractical.

In October 2013, the project documentation was moved to an external [WordPress](http://wordpress.org/) site, and was intended to improve communication with users by keeping them informed about current issues and releases. The original URL was http://gnuarmeclipse.livius.net/blog.

The developer specific pages were also moved to an external MediaWiki site. The original URL was http://gnuarmeclipse.livius.net/wiki.

In Aug 2015 those two sites were first migrated to GitHub Wiki, with content split between multiple projects. Then the entire project pages was migrated to a GitHub Pages site, located at [http://gnuarmeclipse.github.io/](http://gnuarmeclipse.github.io/).

## The author

This plug-in is currently maintained by **Liviu Ionescu**, a senior IT engineer, with expertise in operating systems, compilers, embedded systems and Internet technologies.

He can be reached at [ilg@livius.net](mailto:ilg@livius.net) (this email address is given for courtesy, for all correspondence related to this plug-in please use the project [Support]({{ site.baseurl }}/support/overview/) pages).
