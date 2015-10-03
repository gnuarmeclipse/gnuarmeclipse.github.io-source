---
layout: page
permalink: /developer/preferences/ilg.gnuarmeclipse.managedbuild.cross/
title: ilg.gnuarmeclipse.managedbuild.cross - persistent values & toolchain ids
author: Liviu Ionescu

date: 2015-09-10 21:06:00 +0300

---

## The build tools path

The build tools path preference is:

    buildTools.path=C:/Program Files/GNU ARM Eclipse/Build Tools/bin

This value can be stored in all persistent scopes (Eclipse, workspace, project).

## The default toolchain

The default toolchain preference is:

    toolchain.name=GNU Tools for ARM Embedded Processors

It is stored in the Eclipse scope.

## Toolchain paths

The toolchain path preferences are:

    toolchain.path.1287942917=/usr/local/gcc-arm-none-eabi-4_8-2014q2/bin

The toolchain ID is described below.

Currently these preferences are stored in the Eclipse scope.

## Toolchain IDs

The numerical value in the path property is the toolchain ID, computed as the absolute value of the **Java hash of the name string**.

The list of supported toolchains and their IDs:

|Name|ID|
|----|---|
|GNU Tools for ARM Embedded Processors|1287942917|
|Sourcery CodeBench Lite for ARM EABI|730666677|
|Sourcery CodeBench Lite for ARM GNU/Linux|132202943|
|devkitPro ARM EABI|599899493|
|Yagarto, Summon, etc. ARM EABI|1195655929|
|Linaro ARMv7 bare-metal EABI|976189281|
|Linaro ARMv7 big-endian bare-metal EABI|1341156853|
|Linaro ARMv7 Linux GNU EABI HF|280381241|
|Linaro ARMv7 big-endian Linux GNU EABI HF|1733862821|
|Linaro AArch64 bare-metal ELF|1871385609|
|Linaro AArch64 big-endian bare-metal ELF|2048201829|
|Linaro AArch64 Linux GNU|1246627524|
|Linaro AArch64 big-endian Linux GNU|681852136|
|Custom|2029746065|

Note: in March 2015, the name of the **Linaro ARMv7 big-endian Linux GNU EABI HF** toolchain was updated to be consistent with the other names (lower case big-endian instead of Big-Endian).

## Defaults

All persistent values can be given defaults, for example:

    ilg.gnuarmeclipse.managedbuild.cross/buildTools.path=C:/Program Files/GNU ARM Eclipse/Build Tools/bin

    ilg.gnuarmeclipse.managedbuild.cross/toolchain.name=GNU Tools for ARM Embedded Processors
    ilg.gnuarmeclipse.managedbuild.cross/toolchain.path.1287942917=/usr/local/gcc-arm-none-eabi-4_8-2014q2/bin

Defaults only properties:

    # One of the following will be set to toolchain.search.path.1287942917.
    toolchain.search.path.windows.1287942917=${user.home}/AppData/Local/Programs/GNU Tools ARM Embedded;c:/Program Files/GNU Tools ARM Embedded;c:/Program Files (x86)/GNU Tools ARM Embedded
    toolchain.search.path.linux.1287942917=${user.home}/local:/usr/local
    toolchain.search.path.osx.1287942917=${user.home}/Applications/GNU Tools ARM Embedded:${user.home}/local:/usr/local

    # Set to false to disable the folder check.
    global.toolchain.path.strict=true
    global.buildTools.path.strict=true
    workspace.toolchain.path.strict=true
    workspace.buildTools.path.strict=true
