---
layout: page
permalink: /developer/preferences/ilg.gnumcueclipse.managedbuild.cross.riscv/
title: ilg.gnumcueclipse.managedbuild.cross.riscv - persistent values & toolchain ids
author: Liviu Ionescu

date: 2017-05-12 17:36:00 +0300

---

## The build tools path

The build tools path preference is:

```
buildTools.path=C:/Program Files/GNU MCU Eclipse/Build Tools/bin
```

This value can be stored in all persistent scopes (Eclipse, workspace, project).

## The default toolchain

The default toolchain preference is:

```
toolchain.name=RISC-V GCC/Newlib
```

It is stored in the Eclipse scope.

## Toolchain paths

The toolchain path preferences are:

```
toolchain.path.2032619395=/Users/ilg/opt/riscv64-unknown-elf-gcc-20170503-x86_64-apple-darwin/bin
```

The toolchain ID is described below.

Currently these preferences are stored in the Eclipse scope.

## Toolchain IDs

The numerical value in the path property is the toolchain ID, computed as the absolute value of the **Java hash of the name string**.

The list of supported toolchains and their IDs:

|Name|ID|
|----|---|
|RISC-V GCC/Newlib|2032619395|
|Custom|2029746065|

## Defaults

All persistent values can be given defaults, for example:

```
ilg.gnumcueclipse.managedbuild.cross.riscv/buildTools.path=C:/Program Files/GNU MCU Eclipse/Build Tools/bin

ilg.gnumcueclipse.managedbuild.cross.riscv/toolchain.name=RISC-V GCC/Newlib
ilg.gnumcueclipse.managedbuild.cross.riscv/toolchain.path.2032619395=/Users/ilg/opt/riscv64-unknown-elf-gcc-20170503-x86_64-apple-darwin/bin
```

Defaults only properties:

```
# One of the following will be set to toolchain.search.path.1287942917.
toolchain.search.path.windows.1287942917=${user.home}/AppData/Local/Programs/GNU MCU Eclipse
toolchain.search.path.linux.1287942917=${user.home}/opt:/usr/opt
toolchain.search.path.osx.1287942917=${user.home}/Applications/GNU MCU Eclipse:${user.home}/local:/usr/local

# Set to false to disable the folder check.
global.toolchain.path.strict=true
global.buildTools.path.strict=true
workspace.toolchain.path.strict=true
workspace.buildTools.path.strict=true
```
