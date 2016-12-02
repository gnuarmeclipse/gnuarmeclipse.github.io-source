---
layout: post
title:  GNU ARM Eclipse plug-ins sun.security.validator.ValidatorException

author: Liviu Ionescu

date:   2016-12-02 11:33:00 +0300

categories:
  - support
  - plugins

tags:
  - GNU
  - ARM
  - Eclipse
  - SourceForge
  - Oracle
  - JDK

---

For historical reasons, the GNU ARM Eclipse update sites for installing new software are hosted by SourceForge, and up to now they successfuly handled more than 4.500.000 downloaded files for this project.

## Problem

Recently SourceForge did a change in the security settings used by their download servers and mirrors. For most of the users this was transparent, but for some, the result when trying to install new software, was the following:

```
An error occurred while collecting items to be installed
session context was:(profile=epp.package.cpp, phase=org.eclipse.equinox.internal.p2.engine.phases.Collect, operand=, action=).
Unable to read repository at http://gnuarmeclipse.sourceforge.net/updates-test/plugins/ilg.gnuarmeclipse.templates.ad_1.1.3.201611031134.jar.
sun.security.validator.ValidatorException: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target
Unable to read repository at http://gnuarmeclipse.sourceforge.net/updates-test/plugins/ilg.gnuarmeclipse.templates.freescale_2.2.7.201611031134.jar.
sun.security.validator.ValidatorException: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target
```

The problem is caused by SourceForge using certificates issued by [Let's Encrypt](https://letsencrypt.org), a new provider not yet in the list of root providers on many environments.

Not finding it on the list, Java tries to authenticate these certificates using additional steps.

Unfortunately, some corporate firewalls prevent these additional steps, and install attempts will fail with the above messages.

## Solutions

The easiest solution is to **update your Java JDK to 8u101 or later**, since in JDK 8u101 Oracle added *Let's Encrypt* to the list of trusted root certificates, and the additional accesses should no longer be needed.

If this is not possible, try to convince your network administrator to reconfigure the firewall to allow Java access to the certificate sites.

## Workaround

As a temporary workaround, you can always **download the plug-ins as an archive**, and install from it. 

Or, you can configure your mobile phone as a hot spot, and try to connect to the internet directly; please note that sometimes this does not work, since  local firewals or antivirus configurations might prevent direct access.
