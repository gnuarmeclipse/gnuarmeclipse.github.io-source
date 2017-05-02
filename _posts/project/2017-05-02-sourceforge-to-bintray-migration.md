---
layout: post

title: 'GNU ARM Eclipse plug-ins update sites migrated to Bintray'

author: Liviu Ionescu

date: 2017-05-02 11:15:00 +0300

categories:
  - news
  - project

tags:
  - featured
  - SourceForge
  - Bintray
  - downloads
  - update

---

After serving almost 6 million downloaded files, the **Eclipse update sites** were **migrated** from the venerable SourceForge **to the new Bintray site**.

## Rationale

After several security incidents, by the end of 2016, SourceForge decided to change the security certificates and to mandate the use of HTTPS. This resulted in a large number of complains from users behind firewalls, who were no longer able to access the Eclipse update sites, and had to manually download archives and install locally. Although not at all the fault of GNU ARM Eclipse (the root of the problem seems to be in the Oracle Java libraries), the SourceForge desire to use stronger encryption was in the end perceived as a bad user experience by GNU ARM Eclipse users, a situation that we cannot accept.

## GitHub 

The main development site used by the project is and will remain GitHub, but since GitHub Releases currently do not support subfolders, publishing the Eclipse update sites on GitHub Releases is not an option. Publishing on GitHub Pages or even directly as a Git project might have been technically possible, but neither are intended for high volume downloads and do not provide any analytics.

## Bintray servers

[Bintray](https://bintray.com/) is a modern solution for software distribution, with many new features compared to the traditional SourceForge `rsync` approach.

The Bintray page to manage the downloads is [https://bintray.com/gnu-mcu-eclipse](https://bintray.com/gnu-mcu-eclipse), with several separate repositories, each with its own statistics.

The new internal URL addresses used for downloads are:

- [https://dl.bintray.com/gnu-mcu-eclipse/updates](https://dl.bintray.com/gnu-mcu-eclipse/updates)
- [https://dl.bintray.com/gnu-mcu-eclipse/updates-test](https://dl.bintray.com/gnu-mcu-eclipse/updates-test)
- [https://dl.bintray.com/gnu-mcu-eclipse/updates-experimental](https://dl.bintray.com/gnu-mcu-eclipse/updates-experimental)

## SourceForge redirects

The physical files may be stored on Bintray, but the official URL addresses to be used for installs/updates will remain on SourceForge, since SourceForge provides a convenient redirect solution:

- [https://gnu-mcu-eclipse.sourceforge.io/updates](https://gnu-mcu-eclipse.sourceforge.io/updates)
- [https://gnu-mcu-eclipse.sourceforge.io/updates-test](https://gnu-mcu-eclipse.sourceforge.io/updates-test)
- [https://gnu-mcu-eclipse.sourceforge.io/updates-experimental](https://gnu-mcu-eclipse.sourceforge.io/updates-experimental)

For compatibility reasons, the old URLs will continue to be active and maintained, being redirected to the same Bintray locations:

- [http://gnuarmeclipse.sourceforge.net/updates](http://gnuarmeclipse.sourceforge.net/updates)
- [http://gnuarmeclipse.sourceforge.net/updates-test](http://gnuarmeclipse.sourceforge.net/updates-test)

## Expected issues

This change is expected to have no negative consequences on existing Eclipse installations. Enterprise networks with absurd security limitations which prevented direct access to the update site and required manual downloads of the release archives may (or may not...) have a better chance for normal Eclipse install/update.

The change in the public URL should be seamless, with all future plug-ins versions to automatically point to the new URLs.

_**Many thanks to all those who use this project!**_
